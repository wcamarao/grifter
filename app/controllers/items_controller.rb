class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :set_form_vars, only: [:new, :edit]

  def index
    @items = Item.find(:all, :order => :created_at)
  end

  def show
    @item_is_owned_by_current_user = current_user.try(:id) == @item.user.try(:id)
    @trade = Trade.new unless @item_is_owned_by_current_user
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = 1

    if @item.save
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @item.destroy
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def set_form_vars
    is_new = @item.nil? || @item.new_record?
    @picture_placeholder = is_new ? 'Choose File' : 'Choose Another File'
    @submit_label = is_new ? 'Add Item' : 'Update Item'
  end

  def item_params
    params.require(:item).permit(:name, :picture, :location, :value, :description, :lonlat).merge({
      :user_id => current_user.try(:id)
    })
  end
end
