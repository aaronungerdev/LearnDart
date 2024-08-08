//extension
//toLowerCase()

void main() {
  if ('admin'.isAdmin('admin')) {
    print(true);
  }

  String? name;
  name.isAdmin('admin');
}

// extension StringUserCheckExtension on String {
//   bool isAdmin(String? admin) {
//     return this.toLowerCase() == 'admin'.toLowerCase();
//   }
// }

extension StringUserCheckExtension on String? {
  bool isAdmin(String? admin) {
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}
