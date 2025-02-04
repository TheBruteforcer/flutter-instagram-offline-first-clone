// ignore_for_file: public_member_api_docs

import 'package:env/env.dart';

enum Flavor { development, staging, production }

sealed class AppEnv {
  const AppEnv();

  String getEnv(Env env);
}

class AppFlavor extends AppEnv {
  const AppFlavor._({required this.flavor});

  factory AppFlavor.development() =>
      const AppFlavor._(flavor: Flavor.development);
  factory AppFlavor.staging() => const AppFlavor._(flavor: Flavor.staging);
  factory AppFlavor.production() =>
      const AppFlavor._(flavor: Flavor.production);

  final Flavor flavor;

  @override
  String getEnv(Env env) => switch (env) {
        Env.supabaseUrl => switch (flavor) {
            Flavor.development => "https://hwagajxvaxirdgxrfjvv.supabase.co",
            Flavor.production => "https://hwagajxvaxirdgxrfjvv.supabase.co",
            Flavor.staging => "https://hwagajxvaxirdgxrfjvv.supabase.co",
          },
        Env.powerSyncUrl => switch (flavor) {
            Flavor.development => "https://67a12f79488578ca45cae343.powersync.journeyapps.com",
            Flavor.production => "https://67a12f79488578ca45cae343.powersync.journeyapps.com",
            Flavor.staging => "https://67a12f79488578ca45cae343.powersync.journeyapps.com",
          },
        Env.supabaseAnonKey => switch (flavor) {
            Flavor.development => "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh3YWdhanh2YXhpcmRneHJmanZ2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzg1NTExNjEsImV4cCI6MjA1NDEyNzE2MX0.Q5zZCz-ZxlKcYK7rOWjHyG6V4bbc5_z4H2vA7ge3wdk",
            Flavor.production => "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh3YWdhanh2YXhpcmRneHJmanZ2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzg1NTExNjEsImV4cCI6MjA1NDEyNzE2MX0.Q5zZCz-ZxlKcYK7rOWjHyG6V4bbc5_z4H2vA7ge3wdk",
            Flavor.staging => "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh3YWdhanh2YXhpcmRneHJmanZ2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzg1NTExNjEsImV4cCI6MjA1NDEyNzE2MX0.Q5zZCz-ZxlKcYK7rOWjHyG6V4bbc5_z4H2vA7ge3wdk",
          },
        Env.fcmServerKey => switch (flavor) {
            Flavor.development => "794309841892",
            Flavor.production => "794309841892",
            Flavor.staging => "794309841892",
          },
        Env.iOSClientId => switch (flavor) {
            Flavor.development => "794309841892-kkdhme2u2r8fup8ijhskjtubudpq1noa.apps.googleusercontent.com",
            Flavor.production => "794309841892-kkdhme2u2r8fup8ijhskjtubudpq1noa.apps.googleusercontent.com",
            Flavor.staging => "794309841892-kkdhme2u2r8fup8ijhskjtubudpq1noa.apps.googleusercontent.com",
          },
        Env.webClientId => switch (flavor) {
            Flavor.development => "794309841892-6h2mjp3esb9qp7gk7k39pmisc2865kf8.apps.googleusercontent.com",
            Flavor.production => "794309841892-6h2mjp3esb9qp7gk7k39pmisc2865kf8.apps.googleusercontent.com",
            Flavor.staging => "794309841892-6h2mjp3esb9qp7gk7k39pmisc2865kf8.apps.googleusercontent.com",
          }
      };
}
