class PublicController < ApplicationController
  def main
      @categories = Category.all
  end
end
