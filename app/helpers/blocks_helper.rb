module BlocksHelper
  def has_one_name(block)
    if block.midasi
      'midasis'
    elsif block.text
      'texts'
    elsif block.mimage
      'mimages'
    else
      nil
    end
  end
end
