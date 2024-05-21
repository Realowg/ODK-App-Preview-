/// This class is used in the [userprofile_item_widget] screen.

// ignore_for_file: must_be_immutable
class UserprofileItemModel {
  UserprofileItemModel({this.jacobjones, this.ksubscribing, this.id}) {
    jacobjones = jacobjones ?? "Jacob Jones";
    ksubscribing = ksubscribing ?? "80K Subscribing";
    id = id ?? "";
  }

  String? jacobjones;

  String? ksubscribing;

  String? id;
}
