class ArticlesController < InheritedResources::Base

  private

    def article_params
      params.require(:article).permit(:title, :description, :shop_id)
    end
end

