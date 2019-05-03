module Constraint
  class SyndicationName
    def matches?(request)
      name = request.path_parameters[:name]
      format = request.path_parameters[:format]
      Syndication.distinct.pluck(:name).include?("#{name}.#{format}")
    end
  end
end
