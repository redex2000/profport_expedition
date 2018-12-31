class ExpeditionPolicy < ApplicationPolicy
  def index?
    user.cosmonaut? || user.commandor?
  end

  def create?
    user.commandor?
  end

  def show?
    user.cosmonaut? || user.commandor?
  end

  def update?
    user.commandor?
  end

end