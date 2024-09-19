enum Routes {
  splash('/splash'),
  logout('/logout'),
  login('/login');

  const Routes(this.path);

  final String path;

  @override
  String toString() => path;
}
