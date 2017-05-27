require 'rails_helper'

feature 'Creating rankings' do
  def log_in(user); end

  let(:user) { create(:user) }

  scenario 'new' do
    log_in user
  end
end
