require 'spec_helper'

describe Article do

  it "is not valid without a title" do
    article = Article.new(title: nil)
    article.should_not be_valid
  end

  it "raises an error when saving with no author" do
    article = Article.new(author: nil)
    expect{ article.save! }.to raise_error
  end

end
