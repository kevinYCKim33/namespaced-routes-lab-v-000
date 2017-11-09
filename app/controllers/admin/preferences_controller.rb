class Admin::PreferencesController < ApplicationController
  before_action :get_preference, only: [:index, :edit, :update]


  def index
  end

  def edit
  end

  def update
    binding.pry
    @preference.update(preference_params)
    redirect_to preferences_path
  end

  private
    def get_preference
      @preference = Preference.last
    end

    def preference_params
      params.require(:preference).permit(:artist_song_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
    end

end
