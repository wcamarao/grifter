regex = /^[\s\w]+,\s[\s\w]+/

getLocation = (response) ->
  return unless response.status == 'OK' && response.results

  for result in response.results
    if result.types && result.types.indexOf('locality') > -1

      address = result['formatted_address']
      match = address && address.match regex
      return match && match[0]

# sf = '//maps.googleapis.com/maps/api/geocode/json?latlng=37.773592,-122.420349&sensor=true'
# $.get sf, (response) -> console.log getLocation(response)

$ ->
  itemPicture = $('#item_picture')
  itemPicturePreview = $('#item_picture_preview')
  itemPicturePlaceholder = $('#item_picture_placeholder')

  itemPicturePlaceholder.click -> itemPicture[0].click()

  itemPicture.change ->
    return unless @files && @files[0]
    reader = new FileReader()
    reader.onload = (e) -> itemPicturePreview.attr('src', e.target.result)
    reader.readAsDataURL(@files[0])
    itemPicturePlaceholder.val(@files[0].name)
