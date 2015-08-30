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
    else
      nil
    end
  end
end
