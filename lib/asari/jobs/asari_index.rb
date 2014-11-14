class AsariIndex
  @queue = :asari_index

  def self.perform(obj, id, fields)
    object = Marshal.restore(obj)
    object.add_item(id, fields)
  end
  
end
