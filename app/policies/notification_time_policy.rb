class NotificationTimePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user_id: user.id)
    end
  end
  attr_reader :user, :notification_time
  def initialize(user, notification_time)
    @user = user
    @notification_time = notification_time
  end
  
  def index?
    true
  end
  
  def create?
    true
  end
  
  def new?
    true
  end
  
  def edit?
    true
  end
  
  def update?
    notification_time.user.id == user.id
  end
  
  def destroy?
    notification_time.user.id == user.id
  end
end
