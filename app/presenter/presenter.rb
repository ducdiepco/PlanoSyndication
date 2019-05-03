class Presenter
  attr_reader :object

  def initialize(object)
    @object = object
  end

  def to_s
    raise 'to_s called on parent.'
  end

  def empty?
  end
end
