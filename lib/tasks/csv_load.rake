require 'csv'

namespace :csv_load do
  desc 'Run All'
  task all: [:reset_pks, :cryptids, :sightings]

  desc 'Load CSV for Cryptid'
  task cryptids: :environment do
    Cryptid.destroy_all
    CSV.foreach('./db/data/cryptid_data.csv', headers: true) do |row|
      Cryptid.create!(row.to_hash)
    end
    puts 'Cryptid Imported'
  end

  desc 'Load CSV for Sighting'
  task sightings: :environment do
    Sighting.destroy_all
    CSV.foreach('./db/data/sighting_data.csv', headers: true) do |row|
      sighting = Sighting.create!(row.to_hash)
      trails = row.to_hash['trail_links'].split
      trails.first.gsub!('["', '')
      trails.last.gsub!(']', '')

      trails.map { |t| t.sub!('",', '') }
      trails.map { |t| t.delete!('\"') }

      sighting.update!(trail_links: trails)
    end
    puts 'Sightings Imported'
  end

  desc 'Reset all Primary Keys'
  task reset_pks: :environment do
    ActiveRecord::Base.connection.tables.each do |t|
      ActiveRecord::Base.connection.reset_pk_sequence!(t)
    end
  end
end
