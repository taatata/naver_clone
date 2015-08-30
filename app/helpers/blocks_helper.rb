module BlocksHelper
  def has_one_name(block)
    if block.midasi
      'midasis'
    elsif block.text
      'texts'
    elsif block.mimage
      'mimages'
    elsif block.quote
      'quotes'
    elsif block.movie
      'movies'
    elsif block.link
      'links'
    else
      nil
    end
  end
end
