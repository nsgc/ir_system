feature 'User Account' do
  scenario 'sign up' do
    visit root_path

    click_on 'アカウント作成'

    fill_in 'メールアドレス', with: 'foo@example.com'
    fill_in 'パスワード', with: 'foo@example.com'
    fill_in 'パスワード (確認)', with: 'foo@example.com'

    click_on '登録'

    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end

  context 'when there is a created account' do
    given(:user) { create(:user) }

    scenario 'sign in' do
      visit root_path

      click_on 'ログイン'

      fill_in 'メールアドレス', with: user.email
      fill_in 'パスワード', with: user.password

      click_on 'Log in'

      expect(page).to have_content 'Signed in successfully.'
    end

    scenario 'sign out' do
      sign_in user

      visit root_path

      click_on 'ログアウト'

      expect(page).to have_content 'Signed out successfully.'
    end
  end
end
