class FeaturedsController < ApplicationController
  def index
      @feat_auth = GoogleBooks.search('inauthor:"George Elliott Clarke"',
                      {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc",
                         :count => 20,
                         :order_by => 'newest'})
  end

  def show
     @feat_pub = GoogleBooks.search('inpublisher:"Goose Lane Editions"',
                  {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc",
                    :count => 30,
                    :order_by => 'newest'})
  end
end
