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

  itemSubmit = $('#item_submit')

  getLocation (coords) ->
    console.log coords

    url = "//maps.googleapis.com/maps/api/geocode/json?latlng=#{coords.latitude},#{coords.longitude}&sensor=true"
    $.get url, (response) -> console.log parseLocation(response)
