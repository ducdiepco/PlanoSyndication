class SyndicationPresenter < Presenter
  def to_s
    object.body
  end

  alias_method :to_str, :to_s
end
