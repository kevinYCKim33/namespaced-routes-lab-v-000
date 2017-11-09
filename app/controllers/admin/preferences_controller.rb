class Admin::PreferencesController < ApplicationController
  before_action :get_preference, only: [:index, :edit, :update]


  def index
  end

  def edit
  end

  def update
  end

  private
    def get_preference
      @preference = Preference.last
    end



end
