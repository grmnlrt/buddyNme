class WishlistsController < ApplicationController
  before_action :set_wishlist, only: [ :show, :edit, :update, :destroy ]

  def index
    @wishlists = Wishlist.all
  end

  def show
  end

  def new
    @wishlist = Wishlist.new
  end

  def create
    @wishlist = Wishlist.new(wishlist_params)
    @wishlist.save
    if @wishlist.save
      redirect_to user_wishlist_path(@wishlist)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @wishlist.update(wishlist_params)
    @wishlist.save
    redirect_to user_wishlist_path(@wishlist)
  end

  def destroy
    @wishlist.destroy
    redirect_to user_wishlists_path
  end

  private

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

  def wishlist_params
    params.require(:wishlist).permit(:name)
  end
end
