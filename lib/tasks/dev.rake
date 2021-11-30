namespace :dev do
  desc "Configuração do ambiente de teste!"
  task setup: :environment do
    100.times do |i|
      Article.create!(
        featured: Faker::Boolean.boolean,
        title: Faker::Space.company,
        url: Faker::Internet.url,
        imageUrl: Faker::Company.logo,
        newsSite: Faker::Job.title,
        summary: Faker::Job.title,
        publishedAt: Faker::Job.title,
        launches_attributes: [provider: Faker::Job.title],
        events_attributes: [ provider: Faker::Job.title]
      )
    end
  end
end
