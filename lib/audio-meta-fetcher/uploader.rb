class Audio
  def partial_upload(filename) 
    File.open(filename) do |mp3|
      mp3.seek(-128, IO::SEEK_END)
      mp3.read
    end
  end

  def upload(filename)
    File.open(filename)
  end
end
