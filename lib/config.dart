enum Environment {
  staging("http://164.90.225.28.", "staging"),
  production("http://164.90.225.28", "production");

  const Environment(this.url, this.env);

  final String url;
  final String env;
}

Environment environment = Environment.staging;
