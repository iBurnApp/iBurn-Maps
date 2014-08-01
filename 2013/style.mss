Map {
  //background-color: white;
}

#boundries[Name="Fence"] {
  line-width:.5;
  line-color:#9C9C9C;
}


#art {
  line-width:1;
  line-color:#168;
}

#plazas {
  line-color:#594;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#ae8;
}

#streets [zoom > 14] {
  ::outline {
    line-color:#000;
    line-width:6;
  }
  line-color:#FFF;
  line-width: 3;
}

#streets [zoom > 16] {
   ::outline {
    line-width:10;
  }
  line-color:#FFF;
  line-width: 6;
}

#streets [zoom < 15] {
  line-color:black;
  line-width: 1;
}

#streetsLabel [zoom > 14] {
  ::labels {
  text-name: [Name];
  text-size: 16;
  text-face-name: "Skia Regular";
  text-placement: line;
  text-halo-fill: white;
  text-halo-radius: 2px;
  text-fill: black;
  text-allow-overlap:false;
  text-min-padding: 10;
    }
}

#toilets [zoom > 14] {
 point-file: url(images/toilet.svg);
  point-transform:"scale(.2)";
  [zoom >15]{
    point-transform:"scale(.3)";
  }
}

[zoom > 14]{
  point-allow-overlap:true;
  point-file:url(images/clear.png);
  #pois2 [Name = "First Aid (Main)"]{
	  point-file: url(images/firstaid.svg);
  	  point-transform:"scale(.2)";
      [zoom >15] {
        point-transform:"scale(.3)";
      }
  }
  #pois2 [Name = "First Aid (3:00)"]{
    [zoom > 17] {
      point-file: url(images/firstaid.svg);
    }
  	  point-transform:"scale(.3)"
  }
  #pois2 [Name = "First Aid (9:00)"]{
	[zoom > 17] {
    point-file: url(images/firstaid.svg);
    }
  	  point-transform:"scale(.3)"
  }
}


#pois [zoom > 14]{
  point-allow-overlap:true;
  point-file:url(images/clear.png);
  [Name = "The Man"]  {
    point-file: url(images/man.svg);
  	point-transform:"scale(.02)";
    [zoom > 15]{
      point-transform:"scale(.04)";
    }
  }
  [Name = "Ranger HQ"] {
    point-file: url(images/ranger.svg);
    point-transform:"scale(.18)";
    [zoom >15]{
      point-transform:"scale(.3)";
    }
  }
  [Name = "Ranger Outpost (Berlin)"] {
    point-file: url(images/ranger.svg);
    [zoom <= 17] {
      point-file: url(images/firstaid+ranger.svg);
    }
    point-transform:"scale(.18)";
    [zoom >15]{
      point-transform:"scale(.3)";
    }
  }
  [Name = "Ranger Outpost (Tokyo)"] {
    point-file: url(images/ranger.svg);
    [zoom <= 17] {
      point-file: url(images/firstaid+ranger.svg);
    }
    point-transform:"scale(.18)";
    [zoom >15]{
      point-transform:"scale(.3)";
    }
  }
}


