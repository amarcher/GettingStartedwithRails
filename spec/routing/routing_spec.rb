require 'rails_helper'

RSpec.describe "routing to articles", :type => :routing do
  it "routes /article/:id to articles#show for id" do
    expect(:get => "/articles/1").to route_to(
      :controller => "articles",
      :action => "show",
      :id => "1"
    )
  end

  it "does not expose a list of profiles" do
    expect(:get => "/article").not_to be_routable
  end
end
