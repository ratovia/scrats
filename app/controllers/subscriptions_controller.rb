class SubscriptionsController < ApplicationController
  def index
    @subscriptions = Subscription.all.order(created_at: :desc)
  end

  def show
    @subscription = Subscription.find_by(id: params[:id])
  end

  def new
    # view new.html.erb
  end

  def create
    @subscription = Subscription.new(name: params[:name])
    @subscription.save
    redirect_to('/subscriptions')
  end

  def destroy
    @subscription = Subscription.find_by(id: params[:id])
    @subscription.destroy
    redirect_to('/subscriptions')
  end

  def edit
    @subscription = Subscription.find_by(id: params[:id])
  end

  def update
    @subscription = Subscription.find_by(id: params[:id])
    @subscription.name = params[:name]
    @subscription.save
    redirect_to('/subscriptions')
  end

end
