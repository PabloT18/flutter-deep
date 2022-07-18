import 'package:equatable/equatable.dart';

class UpdateData extends Equatable {
  const UpdateData({
    this.version,
    this.packageAndroid,
    this.packageIOs,
    this.forzada,
    this.fecha,
    this.caracteristica,
  });

  /// Version de la App
  final String? version;

  // Paquete de Android
  final String? packageAndroid;

  /// Paquete de IOs
  final String? packageIOs;

  /// Si la actualizacion es obligatoria
  final String? forzada;

  /// Fecha de publicacion de la actualizacion
  final DateTime? fecha;

  /// Caracteristica de la publicacion
  final String? caracteristica;

  /// Empty user which represents an unauthenticated user.
  static const empty = UpdateData();

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == UpdateData.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != UpdateData.empty;

  @override
  List<Object?> get props => [
        version,
        packageAndroid,
        packageIOs,
        forzada,
        fecha,
        caracteristica,
      ];
}
