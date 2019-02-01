require 'byebug'
require 'rails_helper'

RSpec.describe SongsController, type: :controller do
  # before(:song1) { Song.create(name: "song", artist_id: 1, genre_id: 1)}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      Song.create(name: "song", artist_id: 1, genre_id: 1)
      get :show, id: 1
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      Song.create(name: "song", artist_id: 1, genre_id: 1)
      get :edit, id: 1
      expect(response).to have_http_status(:success)
    end
  end

end
