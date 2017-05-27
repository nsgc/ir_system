require 'rails_helper'

feature 'Creating rankings' do
  given(:user) { create(:user) }

  scenario 'new' do
    sign_in user
  end
end
