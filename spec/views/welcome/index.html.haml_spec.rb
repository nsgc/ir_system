describe 'welcome/index.html.haml' do
  before do
    render
  end

  subject { rendered }

  it { is_expected.to have_text('IR System へようこそ！') }
  it { is_expected.to have_text('新着 IR') }

  context 'when some rankings has been created' do
    before do
      create(:ranking, name: '大会', started_at: Time.current, ended_at: Time.current.next_month)
    end

    it { is_expected.to have_text(%w(名前 開始日時 終了日時 参加人数)) }
    it { is_expected.to have_text(*%w(大会)) }
  end
end
