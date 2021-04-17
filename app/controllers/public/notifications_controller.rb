class Public::NotificationsController < ApplicationController
  # before_action :authenticate_user!

  # def index
  #   notifications = current_user.passive_notifications.page(params[:page]).per(8)

  #   if notifications.present?
  #     notifications.where(checked: false).each do |notification|
  #       notification.update_attributes(checked: true)
  #     end
  #   end

  #   # 自分がチャットを送った時の通知は表示しない。(相手がチャットを送った時のみ)
  #   @my_notifications = notifications.where.not(visitor_id: current_user.id)
  # end

  def update
  end

  # 通知の既読処理
  def checked
    notifications = current_user.passive_notifications.all

    notifications.where(checked: false).each do |notification|
      notification.update_attributes(checked: true)
    end

    redirect_back(fallback_location: root_url)
  end
end
