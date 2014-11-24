require 'spec_helper'

describe Post do
  
  context "demonstarte datamapper works" do
    it 'should be created and then retreived from the database' do
      expect(Post.count).to eq(0)
      Post.create(:posted_by => "Shan Hasan", :body => "Hi i'm just testing this post to see if it works")
      expect(Post.count).to eq(1)

      post = Post.first
      expect(post.posted_by).to eq('Shan Hasan')
      expect(post.body).to eq("Hi i'm just testing this post to see if it works")

      post.destroy
      expect(Post.count).to eq(0)
    end
  end
end