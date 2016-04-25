class Comment < ActiveRecord::Base
  belongs_to :user

  # include ActsAsCommentable::Comment
  # acts_as_commentable
  # belongs_to :commentable, :polymorphic => true

  default_scope -> { order('created_at ASC') }

  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of comments.
  #acts_as_voteable

  # NOTE: Comments belong to a user
end
