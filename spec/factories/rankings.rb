FactoryGirl.define do
  factory :ranking do
    user nil
    name 'Sample Ranking'
    started_at Time.current
    ended_at Time.current.next_month
  end
end
