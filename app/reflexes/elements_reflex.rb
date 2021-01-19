class ElementsReflex < ApplicationReflex

  def sort
    # binding.pry
    elements = JSON.parse(element.dataset.elements[:elements])

    elements.each do |element|
      element_record = Element.find(element['id'])
      element_record.update(position: element['position'])
    end
    # This is a hack. Might break with future versions of StimulusReflex.
    @halted = true
  end
end
