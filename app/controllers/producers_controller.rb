class ProducersController < ApplicationController
  def index
    @producers = Producer.all
  end

  def create
    @producer = Producer.create(producer_params)
    if @producer.errors.any?
      render :new
    else
      redirect_to producer_path(@producer)
    end
  end

  def show
    @producer = Producer.find(params[:id])
  end

  def new
    @producer = Producer.new
  end

  def edit
    @producer = Producer.find(params[:id])
  end

  def destroy
  end

  def update
    @producer = Producer.find(params[:id])
    @producer.update(producer_params)
    redirect_to producer_path(@producer)
  end

  private
  def producer_params
    params.require(:producer).permit(:name, :description, :priority)
  end
end
