class ProducersController < ApplicationController
  def index
    @producers = Producer.all
  end

  def create
    @producer = Producer.create(name: params[:producer][:name])
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
  end

  def destroy
  end

  def update
  end
end
