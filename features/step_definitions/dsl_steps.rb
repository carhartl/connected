Given(/^a class$/) do
  class Foo; end
end

When(/^I use the Connected module$/) do
  Foo.extend Connected::Connect
end

Then(/^I should have DSL like class methods$/) do
  Foo.must_respond_to(:connect)
end
