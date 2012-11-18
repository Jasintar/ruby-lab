FactoryGirl.define do
  factory :problem, class: Problem do
    prefix "A"
    title "Title"
    body "The body"
    input "The input"
    output "The output"

    factory :prepared_problem do
      state "prepared"
    end

    factory :unprepared_problem do
      state "unprepared"
    end
  end



end
