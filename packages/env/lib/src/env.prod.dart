import 'package:envied/envied.dart';


/// {@template env}
/// Dev Environment variables. Used to access environment variables in the app.
/// {@endtemplate}
@Envied(path: '.env.dev', obfuscate: true)
abstract class EnvDev {
  /// Supabase url secret.
  @EnviedField(varName: 'SUPABASE_URL', obfuscate: true)
  static String supabaseUrl = "https://hwagajxvaxirdgxrfjvv.supabase.co";

  /// Supabase anon key secret.
  @EnviedField(varName: 'SUPABASE_ANON_KEY', obfuscate: true)
  static String supabaseAnonKey =  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh3YWdhanh2YXhpcmRneHJmanZ2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzg1NTExNjEsImV4cCI6MjA1NDEyNzE2MX0.Q5zZCz-ZxlKcYK7rOWjHyG6V4bbc5_z4H2vA7ge3wdk";

  /// PowerSync ulr secret.
  @EnviedField(varName: 'POWERSYNC_URL', obfuscate: true)
  static String powersyncUrl = "https://67a12f79488578ca45cae343.powersync.journeyapps.com";

  /// Firebase cloud messaging server key secret.
  @EnviedField(varName: 'FCM_SERVER_KEY', obfuscate: true)
  static String fcmServerKey = "794309841892";

  /// iOS client id key secret.
  @EnviedField(varName: 'IOS_CLIENT_ID', obfuscate: true)
  static String iOSClientId = "794309841892-kkdhme2u2r8fup8ijhskjtubudpq1noa.apps.googleusercontent.com";

  /// Web client id key secret.
  @EnviedField(varName: 'WEB_CLIENT_ID', obfuscate: true)
  static String webClientId = "794309841892-6h2mjp3esb9qp7gk7k39pmisc2865kf8.apps.googleusercontent.com";
}
