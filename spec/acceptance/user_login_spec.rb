require 'rails_helper'

feature 'User acount' do
  scenario 'Sign up as a user' do
    visit root_path
    click_on 'アカウント作成'
    expect(page).to have_content('アカウント作成')

    fill_in 'メールアドレス', with: 'you@example.com'
    fill_in 'パスワード', with: '12345678'
    fill_in 'パスワード (確認)', with: '12345678'
    click_on '登録'

    expect(page).to have_content('ログアウト')
  end

  xfeature 'Sign in and Sign out' do
    background do
      create(:user)
    end

    scenario 'Sign in as a user' do
      visit root_path
      click_on 'ログイン'
      expect(page).to have_content('ログイン')

      fill_in 'メールアドレス', with: 'test@sample.com'
      fill_in 'パスワード', with: 'password'
      click_on 'ログイン'

      expect(page).to have_content('test@sample.com')
    end
  end
end
