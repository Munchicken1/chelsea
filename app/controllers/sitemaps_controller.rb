class SitemapsController < ApplicationController

    def index
        @host = "#{request.protocol}#{request.host}"
        @items = Item.all
    end
end