void main() {
  var c = CustomMap._internal().map();
  var disp = c?.displayMap();
  print("Using : $disp Maps");
}

//Singleton
class CustomMap extends ICustomMaps {
  static final CustomMap _instance = CustomMap._internal();
  CustomMap get singleton {
    return _instance;
  }

  CustomMap._internal() {
    // initialization logic
  }

  ICustomMaps map() {
    return GoogleMaps();
  }
}

class ICustomMaps {
  String displayMap() {
    print("Displaying Default Map");
    return "Displaying Default Map";
  }
}

class GoogleMaps implements ICustomMaps {
  @override
  String displayMap() {
    print("Displaying Google Map");
    return "Google";
  }
}

class HereMap implements ICustomMaps {
  @override
  String displayMap() {
    print("Displaying Here Map");
    return "Here";
  }
}
