require 'csv'
namespace :import_CO do
  desc "Import Close-Out items from csv"
  task :items => :environment do
    filename = File.join Rails.root, "CO_import.csv"
    counter = 0
    CSV.foreach(filename, headers: true) do |row|
      item = Item.create!(name: row['name'], color: row['color'], width: row['width'], height: row['height'], rabbet: row['rabbet'], pcs: row['pcs'], ft: row['ft'], condition: row['condition'], img_url: row['img_url'], category: row['category'])
      puts "#{name} - #{item.errors.full_messages.join(",")}" if item.errors.any?
      counter += 1 if item.persisted?
    end
    puts "Imported #{counter} items"
  end
end
