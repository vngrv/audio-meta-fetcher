
class MetaFetcher
  def initializer(id3)
    raise "No ID3 tags" if id3 !~ /^TAG/
    
    @title, @artist, @album, @year, @comment, @genre = id3.unpack('xxxA30A30A30A4A30C1')
    @comment, @track = @comment.unpack('Z*@28C1') if @comment =~ /\0.$/
  end
end

