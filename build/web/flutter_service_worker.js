'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "c83c694cd5a912996fb8467a4229c3b9",
"assets/assets/fonts/MySocialIcons.ttf": "345787fe6cbe5bf827f3a84436278f6f",
"assets/assets/fonts/Ubuntu-Bold.ttf": "e00e2a77dd88a8fe75573a5d993af76a",
"assets/assets/fonts/Ubuntu-Medium.ttf": "8e22c2a6e3a3c679787e763a97fa11f7",
"assets/assets/fonts/Ubuntu-Regular.ttf": "2505bfbd9bde14a7829cc8c242a0d25c",
"assets/assets/images/man.png": "6459a78b8d655079c08d4249cbcc0db5",
"assets/assets/images/pic_of_me.png": "12775018503136c5a9fe55e0222f4928",
"assets/assets/logos/GEHC_logo.png": "dbf2df154e4be2e50ebc07cca0b5065c",
"assets/assets/logos/green_earth_logo.png": "b795a9a454c215d7e6a69957ba4923a3",
"assets/assets/logos/MSU_logo.png": "0d70bde2ed19be6f5067652c76fa0ad5",
"assets/assets/logos/whirlpool_logo.png": "cf41e743597ef81b309fdaac24b6b4ed",
"assets/assets/Resume_Samuel_Polym.pdf": "79f841149133de2429431e7db3c227ed",
"assets/FontManifest.json": "927f2f13a2d04e1dbe1ab15efbdb72fa",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "613add4bc75842ca39e31b57d1d06540",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "572112ff9fdb68298e432d2e249fe7ea",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/android-icon-144x144.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/android-icon-192x192.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/android-icon-36x36.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/android-icon-48x48.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/android-icon-72x72.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/android-icon-96x96.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/android-icon.png": "7df1ca9a58ceeca4db5d20eae3af08be",
"icons/apple-icon-114x114.png": "7df1ca9a58ceeca4db5d20eae3af08be",
"icons/apple-icon-120x120.png": "23321393bd79ecd0f65eea08b4fe502d",
"icons/apple-icon-144x144.png": "6fc014ab2da2bcef3248e007fce7e11f",
"icons/apple-icon-152x152.png": "440b6f962245129a1294f7488172e1d3",
"icons/apple-icon-180x180.png": "9fba3052c74ac5673efa105d8cccfeb6",
"icons/apple-icon-57x57.png": "18f58ab587bf5f74da3fe694afdca77f",
"icons/apple-icon-60x60.png": "0ad109ac60c3688f90004367553c9bd9",
"icons/apple-icon-72x72.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/apple-icon-76x76.png": "695529cfaa5dd85fec036e4ed9417d3e",
"icons/apple-icon.png": "e8a067d2da2c5bd075758d53b9c06f5e",
"icons/browserconfig.xml": "97775b1fd3b6e6c13fc719c2c7dd0ffe",
"icons/favicon.ico": "d12300342b3b6c57e92b0157eba9c8e8",
"icons/ms-icon-144x144.png": "23321393bd79ecd0f65eea08b4fe502d",
"icons/ms-icon-150x150.png": "440b6f962245129a1294f7488172e1d3",
"icons/ms-icon-310x310.png": "98d70e9b4849755569cc8f4c89027609",
"icons/ms-icon-70x70.png": "695529cfaa5dd85fec036e4ed9417d3e",
"index.html": "2e5bf8b5288d7f87cb59935f84aa2589",
"/": "2e5bf8b5288d7f87cb59935f84aa2589",
"main.dart.js": "0a0651313191d994df7fa7862fcf64e6",
"manifest.json": "68b0f52417904a37047f851bf1794020",
"styles.css": "21a7ddc006a6fc873199b1e8903db6e4",
"version.json": "2e5718ddc601847d341ce2c7a7f54a49"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
