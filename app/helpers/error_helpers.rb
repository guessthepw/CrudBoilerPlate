helpers do
  def errors?
    if @errors && @errors.length > 0
      return true
    else
      return false
    end
  end
end
