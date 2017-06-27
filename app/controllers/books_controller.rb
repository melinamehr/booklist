class BooksController < ApplicationController

  def index
    @books = Book.all

      respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @books }
      format.text
      format.csv { render :csv => @books }
    end
  end
end
