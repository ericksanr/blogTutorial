class ArticlesController < ApplicationController
    def index
        @articles = Article.all #Take all the articles saved
    end

    def show
        @article = Article.find (params[:id]) #seeks for the article selcted, by id
    end
end
