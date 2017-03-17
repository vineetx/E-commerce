FactoryGirl.define do
  factory :most_ordered do
    product_id 1
    frequency 1
  end
  factory :user do
    email "vikasvr23@gmail.com"
    password "123456"
  end

  factory :cart

  factory :product do
    trait :book do
      name {Faker::Book.title}
      description {Faker::Book.genre}
      category "Books"
      photo File.new(Rails.root.join('app', 'assets','images', 'book.jpg'))
    end
    trait :shoe do
      name {Faker::Company.name}
      description {Faker::Color.color_name}
      category "Shoes"
      photo File.new(Rails.root.join('app', 'assets','images', 'shoe.jpg'))
    end
    trait :shirt do
      name {Faker::Company.name}
      description {Faker::Color.color_name}
      category "Shirts"
      photo File.new(Rails.root.join('app', 'assets','images', 'tshirt.jpeg'))
    end

    trait :jacket do
      name {Faker::Company.name}
      description {Faker::Color.color_name}
      category "Jackets"
      photo File.new(Rails.root.join('app', 'assets','images', 'jacket.jpg'))
    end

    trait :watch do
      name {Faker::Company.name}
      description {Faker::Color.color_name}
      category "Watches"
      photo File.new(Rails.root.join('app', 'assets','images', 'watch.jpg'))
    end

    trait :headphones do
      name {Faker::Company.name}
      description {Faker::Color.color_name}
      category "Headphones"
      photo File.new(Rails.root.join('app', 'assets','images', 'headphones.jpg'))
    end

    price { rand(1000..5000) }
  end


end
