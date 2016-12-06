class WishlistsController < UsersController

  def show
    @wishlist = Wishlist.new
    # @line_items = @wishlist.line_items
    @wishlist_total = 0
    # book_id = params[:book_id]
    # @wishlist_book = wishlist[book_id]
    # @user = User.find(params[:id])
  end

  def add_book
    book_id = params[:product_id].to_s

    item = wishlist[book_id] || {"quantity" => 0}
    item["quantity"] += 1
    wishlist[book_id] = item
    update_wishlist wishlist

    redirect_to :back
  end

  def remove_item
    book_id = params[:book_id].to_s

    item = wishlist[book_id] || {"quantity" => 1}
    item["quantity"] -= 1
    wishlist[book_id] = item
    wishlist.delete(book_id) if item["quantity"] < 1
    update_wishlist wishlist

    redirect_to :back
  end

  def wishlist_total
    total = 0
    wishlist.each do |book_id, details|
      if book_id = Book.find_by(id: product_id)
        total += details['quantity'].to_i
      end
    end
    total
  end

end
