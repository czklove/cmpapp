class CourseInfo {
  bool success;
  List<Models> models;
  int pageCount;
  int count;

  CourseInfo({this.success, this.models, this.pageCount, this.count});

  CourseInfo.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['models'] != null) {
      models = new List<Models>();
      json['models'].forEach((v) {
        models.add(new Models.fromJson(v));
      });
    }
    pageCount = json['PageCount'];
    count = json['Count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.models != null) {
      data['models'] = this.models.map((v) => v.toJson()).toList();
    }
    data['PageCount'] = this.pageCount;
    data['Count'] = this.count;
    return data;
  }
}

class Models {
  String id;
  String nAME;
  String aLLNAME;
  String aUTHOR;
  String tIME;
  String iMGURL;
  String dIGEST;

  Models(
      {this.id,
      this.nAME,
      this.aLLNAME,
      this.aUTHOR,
      this.tIME,
      this.iMGURL,
      this.dIGEST});

  Models.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nAME = json['NAME'];
    aLLNAME = json['ALLNAME'];
    aUTHOR = json['AUTHOR'];
    tIME = json['TIME'];
    iMGURL = json['IMGURL'];
    dIGEST = json['DIGEST'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['NAME'] = this.nAME;
    data['ALLNAME'] = this.aLLNAME;
    data['AUTHOR'] = this.aUTHOR;
    data['TIME'] = this.tIME;
    data['IMGURL'] = this.iMGURL;
    data['DIGEST'] = this.dIGEST;
    return data;
  }
}