class WeddingsController < ApplicationController
  before_action :set_wedding, only: [:show, :edit, :update, :destroy]

  def index
    @weddings = Wedding.all
  end

  def show
  end

  def new
    @wedding = Wedding.new
  end

  def edit
  end

  def create
    @wedding = Wedding.new(wedding_params)

    respond_to do |format|
      if @wedding.save
        format.html { redirect_to @wedding, notice: 'Wedding was successfully created.' }
        format.json { render :show, status: :created, location: @wedding }
      else
        format.html { render :new }
        format.json { render json: @wedding.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @wedding.update(wedding_params)
        format.html { redirect_to @wedding, notice: 'Wedding was successfully updated.' }
        format.json { render :show, status: :ok, location: @wedding }
      else
        format.html { render :edit }
        format.json { render json: @wedding.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @wedding.destroy
    respond_to do |format|
      format.html { redirect_to weddings_url, notice: 'Wedding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_wedding
      @wedding = Wedding.find(params[:id])
    end

    def wedding_params
      params.require(:wedding).permit(:name, :owner_id)
    end
end
