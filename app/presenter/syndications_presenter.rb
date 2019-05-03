class SyndicationsPresenter < Presenter
  def to_s
     @object.map { |record| SyndicationPresenter.new(record) }
  end

  alias_method :to_str, :to_s
end
