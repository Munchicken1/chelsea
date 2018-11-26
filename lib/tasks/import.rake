require 'csv'
namespace :import do
  desc "Import items from csv"
  task :items => :environment do
    filename = File.join Rails.root, "products.csv"
    counter = 0
    CSV.foreach(filename, headers: true) do |row|
      item = Item.create!(name: row['name'], color: row['color'], width: row['width'], height: row['height'], rabbet: row['rabbet'], pcs: row['pcs'], ft: row['ft'], condition: row['condition'], img_url: row['img_url'])
      puts "#{name} - #{item.errors.full_messages.join(",")}" if item.errors.any?
      counter += 1 if item.persisted?
    end
    puts "Imported #{counter} items"
  end
end
