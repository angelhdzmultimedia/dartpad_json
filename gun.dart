export Gun;
export Bullet;
export BulletShell;

class Gun {
  Future<BulletShell> shoot(Bullet bullet) {
    return Future.delayed(Duration(milliseconds: 1), () {
      return BulletShell(bullet);
    });
  }
}

class BulletShell {
  Bullet bullet;
  
  BulletShell(Bullet this.bullet);
}

class BulletType {
static const String LRN = 'Lead Round Nose';
static const String FMJ = 'Full Metal Jacket';
//Lead Round Nose (LRN)
//Wad Cutter (WC)
//Semi Wad Cutter (SWC)
//Semi-Jacketed (SJ)
//Full Metal Jacket (FMJ)
//Semi-Jacketed Hollow Point (SJHP)
//Jacketed Hollow Point (JHP)
//Special (RCBD)
}

class Bullet {
  final Duration speed;
  final String type;
  
  Bullet({this.speed, this.type});
}

