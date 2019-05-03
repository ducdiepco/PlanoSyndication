class SyndicationsQuery
  attr_reader :relation, :params

  def initialize(params = {}, relation = Syndication)
    @relation = relation
    @params = params
  end

  def search_by_name(format: 'txt', order: :desc)
    relation.where(name: "#{params[:name]}.#{format}").order(created_at: order)
  end
end
