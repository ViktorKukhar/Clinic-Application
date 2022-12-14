class CategoriesController < InheritedResources::Base

  def index
    @categories = Category.all
  end

  private
    def category_params
      params.require(:category).permit(:name, :description)
    end
end
