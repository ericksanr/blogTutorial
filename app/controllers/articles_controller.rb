class ArticlesController < ApplicationController
    def index
        @articles = Article.all #Take all the articles saved
    end

    def show
        @article = Article.find (params[:id]) #seeks for the article selcted, by id
    end

    def new
        @article = Article.new 
    end

    def create
        @article = Article.new(article_params)
    

    if @article.save
        redirect_to articles_path
    else
        render :new
        
    end
end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])

        if @article.update(article_params)
            redirect_to @article

        else
            render:edit
    end
end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to root_path
    end




private 
def article_params
    params.require(:article).permit(:title, :body)
end
end
