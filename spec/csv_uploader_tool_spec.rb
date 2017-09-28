require 'rubygems'
gem 'rspec'
require 'csv_uploader_tool'

describe CsvUploader do
  it "should create csv_uploader tool" do
    CsvUploader.create.should be_is_a CsvUploader
  end

  it "should save file" do
    uploader = CsvUploader.create
    uploader.save "stream" do |filename|
      filename.should_not be_empty
    end
  end
end