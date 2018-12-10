namespace :export do
  desc "Prints Item.all in a seeds.rb way."
  task :seeds_format => :environment do
    Item.order(:id).all.each do |item|
      puts "Item.create(#{item.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
