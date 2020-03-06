class DoodlesController < ApplicationController
  #before_action :set_user, only: [:create, :update, :destroy, :private_doodles]
  skip_before_action :authorize_request, only: [:public_doodles, :public_doodles_by_category]

  # GET /categories/:category_id/doodles
  def index
    @category = Category.find(params[:category_id])
    @doodles = current_user.doodles
    json_response(@doodles.where(category_id: @category.id))
  end

  # Public doodles route GET /doodles
  def public_doodles
    @doodles = Doodle.all
    json_response(@doodles)
  end

  # Public doodles GET doodles/:category_id
  def public_doodles_by_category
    @category = Category.find(params[:category_id])
    json_response(@category.doodles)
  end

  # Private doodles route GET user/doodles
  def private_doodles
    @doodles = current_user.doodles
    json_response(@doodles)
  end

  # GET /categories/:category_id/doodles/:id
  def show
    @doodles = current_user.doodles
    @category = Category.find(params[:category_id])
    @doodles_cat = @doodles.where(category_id: @category.id)
    @doodle = @doodles_cat.find(params[:id])
    json_response(@doodle)
  end

  # POST /categories/:category_id/doodles
  def create
    @doodles = current_user.doodles
    @category = Category.find(params[:category_id])
    @doodle = @doodles.where(category_id: @category.id).create(doodle_params)
    json_response(status: 'SUCCESS', message: 'doodle created successfully.', data: @doodle)
  end

  # PUT /categories/:category_id/doodles/:id
  def update
    @doodles = current_user.doodles
    @category = Category.find(params[:category_id])
    @doodles_cat = @doodles.where(category_id: @category.id)
    @doodle = @doodles_cat.find(params[:id]).update(doodle_params)
    json_response(status: 'SUCCESS', message: 'doodle updated successfully.', data: @doodle)
  end

  # DELETE /categories/:category_id/doodles/:id
  def destroy
    @doodles = current_user.doodles
    @category = Category.find(params[:category_id])
    @doodles_cat = @doodles.where(category_id: @category.id)
    @doodle = @doodles_cat.find(params[:id])
    @doodle.delete
    json_response(status: 'SUCCESS', message: 'doodle deleted successfully.')
  end

  private

  def doodle_params
    params.permit(:title, :path, :created_by)
  end

  #def set_user
  #  @user = User.find_by!(params[:id])
  #end

end