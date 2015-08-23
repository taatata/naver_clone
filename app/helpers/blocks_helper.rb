module BlocksHelper
  def has_one_name(block)
    if block.midasi
      'midasis'
    elsif block.text
      'texts'
    else
      nil
    end
  end
end
