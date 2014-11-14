class AsariIndexRemover
  @queue = :asari_index

  def self.perform(obj, id)
    object = Marshal.restore(obj)
    object.remove_item(id)
  end
  
end
