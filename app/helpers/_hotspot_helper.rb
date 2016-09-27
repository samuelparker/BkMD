helpers do
  def load_hotspot_menu(name)
    @hotspot = Hotspot.find_by(name: name)
  end
end