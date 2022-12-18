class Question < ApplicationRecord
  include PhotoUploader::Attachment(:photo)
end
