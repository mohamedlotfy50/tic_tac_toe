'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "00cc7a53b7a82bf0cb1e4b0a46d41138",
".git/config": "7b5d32cedae5249789b7e73fd1692f75",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "dfebbe193e255e26c1b45fa445375b01",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "d3f1480cf529ceb736f8411f12d6882f",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "7c884cb8f08dffafd5e0b096c11c13b0",
".git/logs/refs/heads/master": "8134d7b89fbdf9d9c65f829705982413",
".git/logs/refs/heads/release": "1cffc652f67d41eeba8988ec168e3ac5",
".git/logs/refs/remotes/origin/release": "bd1b7385287483f47a2412768f301d32",
".git/objects/09/6602b1fb19d9a4ad47473b4c62f6e25548b356": "14979803cb688584bf75742bffbce0a1",
".git/objects/0b/c8216d8f8e25c1cb24c533bb1e34bb42127af9": "1a16aa1fbf587dbc8b39a43329831a6a",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/28/f57a308256f194f5912b2f520683b7c4b00dc4": "4514fac0a8c4a2246383464f3d8651d1",
".git/objects/29/281a0337d6d6efbf680ca40a14fcb671d28f53": "6002098063af9995e5f2ae5936e37536",
".git/objects/29/e44b1bcff2372d35ad63d465f4fdaf355fb2e5": "1741ca5e1909d0584cf778e3f333a9b9",
".git/objects/2e/a21e77964c5a5180c62f256bcdd99a35d7e076": "39c62d01c911f4651b1b7abb9df5ac23",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/38/355a089003d0098f059b64687d67bb5713e848": "4237e77a38d85e6ac10f566273464e96",
".git/objects/42/1c8094439458af9e857b5a154062bec5fcf9ac": "6bf3afa000a63eaaceb98bb8b385f3ef",
".git/objects/4a/8bd9546a583c4a405d345dd417d11d73fdeb7d": "89ea8cf2824c8340d02009465d663a97",
".git/objects/59/76946bb0bb5d1e8d30839b946e1f9eb4b0df7f": "4861e8b0015e09874849df50b5c586e2",
".git/objects/68/a4593631c9e009b770ddba3f48d2d0250aac1e": "03b44407f1eb40a98a1ca4b9fe60da48",
".git/objects/6e/b9606ed415ee09532d2e6fd0785ae9ebf3c9b6": "aa5b6885d1f0aa94e9497413364c7d89",
".git/objects/75/eac83e09c357abe17e32fea93c8141b7ac3010": "45bb8145936400b0ac1cb00aac7ea6fb",
".git/objects/76/9bf2376a9adbb4c49a020f716f4f9cb9554aa5": "87e8b288ce723e113c8b762682f10438",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7f/a961e1a8a176190bfda7e15ea8f1fe8b1658e4": "2c2b5918566c517fdb29684b5ac4b8b9",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/96/209be9cb91dc33e0b4d7caaa64adb2d19078ea": "a12faa53980453f3d2f15e49eaf33db8",
".git/objects/a1/219de8a5b979a8c6204e5c7a4408b91eb297e1": "3ef3896b0ce049f017898f3d0be817be",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/be/69a4af0088f90914dd00af88393d0c4296c3de": "01e1e1b9381a9402438869fb3933873f",
".git/objects/ca/d5923fe29bc3ae0cac2384dc86f597bcc77777": "aca2069336e6b8552f1c18d4ab022984",
".git/objects/d2/d34f19cc3cb0f3fa05d1ba6d1f4654f72e285f": "a82ff48991b5d3c0bd1b601126635681",
".git/objects/d9/925a787262d0c4c3feadaef432b5b920258a64": "96cf3a0e59cf1d6550c02697a5016086",
".git/objects/db/de6acabe93efdc6fc918834c387049b2d94a4f": "9e6beb0d337869560ad66148abb436a5",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e6/0204bde764cf5d1bd188648a8cdb171c239888": "af626ad63248d72011776564d04aac0b",
".git/objects/ed/cc41e030bd6601da90fec7a574655fe26e4711": "22d11d8c031d01b16351ba3501192be4",
".git/objects/f1/58339c49f252144b0e665ab8aed9b52b99dca3": "fba69544fe09d78646ccfa6606e51ef6",
".git/objects/f7/437834127981350db3e5923f9d9c2a9d9ad197": "7c3bcfd921ff95a6936cd5effe952b3c",
".git/refs/heads/master": "a1059ecd63bddfd175e6df7a3810c49d",
".git/refs/heads/release": "14a0e5361e278ad14995b14cefe7e547",
".git/refs/remotes/origin/release": "14a0e5361e278ad14995b14cefe7e547",
"assets/AssetManifest.json": "5210c0edc74e8ba91e32701d55be938e",
"assets/assets/fonts/Dancing_Script/DancingScript-Bold.ttf": "d45862789a79a733f148e5177ea6953a",
"assets/assets/fonts/Dancing_Script/DancingScript-Regular.ttf": "c4434ab21f7144bbcf88c9a35ae3f075",
"assets/assets/music/Come-Play-with-Me.mp3": "d16b119a85039371a74822c334d23a3e",
"assets/assets/music/Luke-Bergs-Take-It-Easy.mp3": "8384c37a6f6aeecf9197d9315c270e71",
"assets/assets/music/mixkit-achievement-bell-600.wav": "14a5bc1168182fb20d9a054a163aa5d3",
"assets/assets/music/mixkit-metal-hammer-hit-833.wav": "5cc8d264b213ec5446a438b87f85e9c0",
"assets/assets/music/mixkit-retro-arcade-game-over-470.wav": "1c01342cb38433682e7d9bedf9d57b19",
"assets/FontManifest.json": "f6335f5222a0c81a11d19868016cc8a9",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "72b5b89b3e5781933454ca35d1eea9c5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "7fdb92cdaf86ead91763bb3b3130e0d3",
"/": "7fdb92cdaf86ead91763bb3b3130e0d3",
"main.dart.js": "9b8edb8bb41f73c7c110310a9cdbc302",
"manifest.json": "7e96daf28bd218b0852f5dc6f5e5e0fc",
"version.json": "0b4eee640a82bef7d03c01d4c302a025"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
