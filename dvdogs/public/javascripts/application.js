// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
  function initialize_map(objType, id) {
//    alert("initializing the map: " + objType + ", " + id);
    // default centered on Death Valley
    var latlng = new google.maps.LatLng(36.338446, -117.47087);
    var myOptions = {
      zoom: 8,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.TERRAIN
    };
    var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

    var mapUrl = getMapKml(objType, id);
    //alert("shibby!:" + mapUrl);
    
    // use that layer now
    var ctaLayer = new google.maps.KmlLayer(mapUrl);
    ctaLayer.setMap(map);
    
  }
  
  function getMapKml(objType, id) {
    // this won't work with localhost, because when sent to google, it must be a publicly available url.    
    var this_domain = document.domain;
    if (this_domain == "localhost") {
      this_domain += ":3000";
    }
    var randomnumber=Math.floor(Math.random()*101);
    var mapUrl = "http://" + this_domain + "/" + objType + "/get_kml/"+ randomnumber + "/" + id + ".kml";
    return mapUrl;
  }
