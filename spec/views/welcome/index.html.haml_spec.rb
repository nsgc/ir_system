describe 'welcome/index.html.haml' do
  before do
    visit root_path
  end

  subject { page }

  context 'general' do
    it { is_expected.to have_text('IR System へようこそ！') }
    it { is_expected.to have_text('新着 IR') }
  end

  context 'when some rankings has been created' do
    before do
      user = create(:user)
      create(:ranking, user: user)
      visit root_path
    end

    %w(名前 開始日時 終了日時 参加人数).each do |text|
      it { is_expected.to have_text(text) }
    end
    it { is_expected.to have_text('Sample Ranking') }
  end
end
