class Api::V1::SyndicationsController < ApplicationController
  self.permitted_attrs = %i[name]

  def show
    result = SyndicationsQuery.new(model_params).search_by_name
    if result.count > 0
      render plain: SyndicationsPresenter.new(result)
    else
      render_no_results
    end
  end
end
