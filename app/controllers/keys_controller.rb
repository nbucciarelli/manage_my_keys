class KeysController < ApplicationController
  respond_to :json, :html

  before_filter :authenticate_user!  
  before_filter :find_key, only: [:edit, :update, :destroy]
  def new
    @key = current_user.keys.new
    respond_with @key
  end
  
  def create
    @key = current_user.keys.new params[:key]
    if @key.save
      respond_with @key, location: root_path
    else
      render :new
    end
  end
  
  def edit
    respond_with @key
  end
  
  def update
    if @key.update_attributes params[:key]
      respond_with @key, location: root_path
    else
      render :edit
    end
  end
  
  def destroy
    @key.delete
    respond_with @key, location: root_path
  end

private
  def find_key
    @key = Key.find params[:id]
  end
end
