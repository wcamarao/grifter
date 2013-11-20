addressRegex = /^[\s\w]+,\s[\s\w]+/

getLocation = (callback) ->
  navigator.geolocation.getCurrentPosition (pos) ->
    callback(_.pick(pos.coords, 'latitude', 'longitude'))

parseLocation = (response) ->
  return unless response.status == 'OK' && response.results

  for result in response.results
    if result.types && result.types.indexOf('locality') > -1

      address = result['formatted_address']
      match = address && address.match addressRegex
      return match && match[0]

$ ->
  return unless $('#new_item').size() > 0 || $('form.edit_item').size() > 0

  itemPicture = $('#item_picture')
  itemPicturePreview = $('#item_picture_preview')
  itemPicturePlaceholder = $('#item_picture_placeholder')
  itemLocationPreview = $('#item_location_preview')
  itemLocation = $('#item_location')
  itemLonlat = $('#item_lonlat')
  itemSubmit = $('#item_submit')

  itemPicturePlaceholder.click -> itemPicture[0].click()

  itemPicture.change ->
    return unless @files && @files[0]
    reader = new FileReader()
    reader.onload = (e) -> itemPicturePreview.attr('src', e.target.result)
    reader.readAsDataURL(@files[0])
    itemPicturePlaceholder.val(@files[0].name)

  getLocation (coords) ->
    console.log coords
    url = "//maps.googleapis.com/maps/api/geocode/json?latlng=#{coords.latitude},#{coords.longitude}&sensor=true"
    itemLonlat.val "POINT (#{coords.longitude} #{coords.latitude})"

    $.get url, (response) ->
      location = parseLocation(response)
      itemLocationPreview.html(itemLocationPreview.text() + " <strong>#{location}</strong>")
      itemLocation.val(location)
