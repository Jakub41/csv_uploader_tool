class CsvStream

  BUFFER_SIZE = 1024

  def initialize(file)
    @file = file
  end

  class << self
    def write(stream, dir, filename)
      file = CsvMaker.create_file(dir, filename)
      file_stream = CsvStream.new(file)
      file_stream.write stream
      file_stream.close
      file.path
    end

    def fetch(dir)
      all_files  = Dir[dir+'/*'].select {|x| x =~ /_.*(csv)/ }
      actual_names = []
      all_files.each do |path|
        actual_names  << File.basename(path)
      end
      actual_names
    end
  end

  def write(stream)
    while(bytes = stream.read(BUFFER_SIZE))
      @file.write bytes
    end
  end

  def close
    @file.close unless @file.closed?
  end
end
