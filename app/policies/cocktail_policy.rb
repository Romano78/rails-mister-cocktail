class CocktailPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    admin_or_allowed
  end

  def destroy?
    admin_or_allowed
  end

  private

  def admin_or_allowed
    record.user == user || user.admin
  end
end
