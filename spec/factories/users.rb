FactoryGirl.define do
  factory :user do
    email "sea@sea.com"
    password "secret"
    name "seaBirch"

    trait :no_user do
      role "no_user"
    end

    trait :user do
      role "user"
    end

    #admin would have to added as a boolean value into the user_table schema
    #through a migration in order for it to work here.

    # trait :admin do
    #   is_admin true
    # end

  end
end
