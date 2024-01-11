class RecipeResponse {
  int? s;
  List<RecipeDetails>? d;
  int? t;
  P? p;

  RecipeResponse({this.s, this.d, this.t, this.p});

  RecipeResponse.fromJson(Map<String, dynamic> json) {
    s = json['s'];
    if (json['d'] != null) {
      d = <RecipeDetails>[];
      json['d'].forEach((v) {
        d!.add(new RecipeDetails.fromJson(v));
      });
    }
    t = json['t'];
    p = json['p'] != null ? new P.fromJson(json['p']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['s'] = s;
    if (d != null) {
      data['d'] = d!.map((v) => v.toJson()).toList();
    }
    data['t'] = t;
    if (p != null) {
      data['p'] = p!.toJson();
    }
    return data;
  }
}

class RecipeDetails {
  String? id;
  String? title;
  Ingredients? ingredients;
  String? instructions;
  String? image;

  RecipeDetails({this.id, this.title, this.ingredients, this.instructions, this.image});

  RecipeDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['Title'];
    ingredients = json['Ingredients'] != null
        ? Ingredients.fromJson(json['Ingredients'])
        : null;
    instructions = json['Instructions'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = id;
    data['Title'] = title;
    if (ingredients != null) {
      data['Ingredients'] = ingredients!.toJson();
    }
    data['Instructions'] = instructions;
    data['Image'] = image;
    return data;
  }
}

class Ingredients {
  String? s1;
  String? s2;
  String? s3;
  String? s4;
  String? s5;
  String? s6;
  String? s7;
  String? s8;
  String? s9;
  String? s10;
  String? s11;
  String? s12;
  String? s13;
  String? s14;
  String? s15;
  String? s16;
  String? s17;
  String? s18;

  Ingredients(
      {this.s1,
        this.s2,
        this.s3,
        this.s4,
        this.s5,
        this.s6,
        this.s7,
        this.s8,
        this.s9,
        this.s10,
        this.s11,
        this.s12,
        this.s13,
        this.s14,
        this.s15,
        this.s16,
        this.s17,
        this.s18});

  Ingredients.fromJson(Map<String, dynamic> json) {
    s1 = json['1'];
    s2 = json['2'];
    s3 = json['3'];
    s4 = json['4'];
    s5 = json['5'];
    s6 = json['6'];
    s7 = json['7'];
    s8 = json['8'];
    s9 = json['9'];
    s10 = json['10'];
    s11 = json['11'];
    s12 = json['12'];
    s13 = json['13'];
    s14 = json['14'];
    s15 = json['15'];
    s16 = json['16'];
    s17 = json['17'];
    s18 = json['18'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['1'] = s1;
    data['2'] = s2;
    data['3'] = s3;
    data['4'] = s4;
    data['5'] = s5;
    data['6'] = s6;
    data['7'] = s7;
    data['8'] = s8;
    data['9'] = s9;
    data['10'] = s10;
    data['11'] = s11;
    data['12'] = s12;
    data['13'] = s13;
    data['14'] = s14;
    data['15'] = s15;
    data['16'] = s16;
    data['17'] = s17;
    data['18'] = s18;
    return data;
  }
}

class P {
  int? limitstart;
  int? limit;
  int? total;
  int? pagesStart;
  int? pagesStop;
  int? pagesCurrent;
  int? pagesTotal;

  P(
      {this.limitstart,
        this.limit,
        this.total,
        this.pagesStart,
        this.pagesStop,
        this.pagesCurrent,
        this.pagesTotal});

  P.fromJson(Map<String, dynamic> json) {
    limitstart = json['limitstart'];
    limit = json['limit'];
    total = json['total'];
    pagesStart = json['pagesStart'];
    pagesStop = json['pagesStop'];
    pagesCurrent = json['pagesCurrent'];
    pagesTotal = json['pagesTotal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['limitstart'] = limitstart;
    data['limit'] = limit;
    data['total'] = total;
    data['pagesStart'] = pagesStart;
    data['pagesStop'] = pagesStop;
    data['pagesCurrent'] = pagesCurrent;
    data['pagesTotal'] = pagesTotal;
    return data;
  }
}