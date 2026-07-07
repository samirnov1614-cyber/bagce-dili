# BAĞÇE dili — Android APK

Bu layihə "BAĞÇE dili" proqramlaşdırma dilinin Android tətbiqi üçün APK faylıdır.

## Qurulma

### Tələblər
- Android Studio 2022.1 və ya daha yeni
- Android SDK 21+ (minimum API level)
- Java 11 və ya daha yeni

### Addımlar

1. **Layihəni klonlayın:**
   ```bash
   git clone https://github.com/samirnov1614-cyber/bagce-dili.git
   cd bagce-dili
   ```

2. **Android Studio-da açın:**
   - Android Studio açın
   - "Open an existing Android Studio project" seçin
   - Layihə qovluğunu seçin

3. **APK-ı qurğu əmrləri ilə yaradın:**
   ```bash
   ./gradlew assembleRelease
   ```

   APK faylı buradadır:
   ```
   app/build/outputs/apk/release/app-release.apk
   ```

4. **Emulator-da test edin:**
   - Android Studio-da emulator başlatın
   - Layihənin üzərində sağ klikləyin və "Run" seçin

## Xüsusiyyətlər

✅ Tam JavaScript dəstəyi  
✅ UTF-8 Azərbaycanca dil dəstəyi  
✅ WebView ilə HTML render etmə  
✅ Offline mod (assets-dən yüklənir)  

## Lisenziya

MIT
