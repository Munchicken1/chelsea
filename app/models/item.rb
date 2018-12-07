class Item < ApplicationRecord
  # include Elasticsearch::Model
  # include Elasticsearch::Model::Callbacks
  # ElasticSearch Index
    # settings index: { number_of_shards: 1 } do
    #   mappings dynamic: 'false' do
    #     indexes :name, analyzer: 'english'
    #     indexes :color, analyzer: 'english'
    #   end
    # end

    def self.search(search)
      if search
        where('name LIKE ? OR color LIKE ? OR category LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
      else
        all
      end
    end

    # def self.colorsearch(colorsearch)
    #   if colorsearch
    #     where('color LIKE ?', "%#{colorsearch}%")
    #   else
    #     all
    #   end
    # end
end
