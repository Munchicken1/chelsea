class Item < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  # ElasticSearch Index
    settings index: { number_of_shards: 1 } do
      mappings dynamic: 'false' do
        indexes :name, analyzer: 'english'
        indexes :color, analyzer: 'english'
      end
    end
end
