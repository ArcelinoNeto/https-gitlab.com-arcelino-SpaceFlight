class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :imageUrl, :newsSite, :summary, :publishedAt
  attribute :events
  attribute :launches

  # has_many :events
  # has_many :launches

  def events
    object.events.map do |event|
      {
        id: event.id,
        provider: event.provider
      }
    end  
  end
  
  def launches
    object.launches.map do |launch|
      {
        id: launch.id,
        provider: launch.provider
      }
    end
  end
  
end
