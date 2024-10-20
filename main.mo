// hesap makinesi uygulaması

actor HesapMakinesi {

  var hucre : Int = 0;

  // toplama işlemi
  public func toplama(n : Int) : async Int {
    hucre += n;
    return hucre;
  };

  // cıkarma işlemi
  public func cikarma(n : Int) : async Int {
    hucre -= n;
    return hucre;
  };

  // carpma işlemi
  public func carpma(n : Int) : async Int {
    hucre *= n;
    return hucre;
  };

  // bölme işlemi
  public func bolme(n : Int) : async ?Int {
    if (n == 0) {
      // Sıfıra bölme hatası, null döner.
      return null;
    } else {
      hucre /= n;
      return ?hucre;
    };
  };

  // hesap makinesini temizle ve hücreyi sıfırla
  public func temizle() : async () {
    hucre := 0;
  };
};
// (muhammedtekin)
