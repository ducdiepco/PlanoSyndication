Rails.application.routes.draw do
  scope path: '/syndication', defaults: { format: 'txt' }  do
    # get '/:name' => 'api/v1/syndications#show', constraints: ::Constraint::SyndicationName.new
    get '/:name' => 'api/v1/syndications#show', as: 'get_syndications'
  end
end
