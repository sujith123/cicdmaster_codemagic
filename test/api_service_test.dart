import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:your_project/api_service.dart'; // 👈 Replace with your actual import

@GenerateMocks([ApiService])
import 'api_service_test.mocks.dart';

void main() {
  test('returns mocked data', () async {
    final mockApiService = MockApiService();

    when(mockApiService.fetchData()).thenAnswer((_) async => 'mocked data');

    final result = await mockApiService.fetchData();

    expect(result, 'mocked data');
  });
}
