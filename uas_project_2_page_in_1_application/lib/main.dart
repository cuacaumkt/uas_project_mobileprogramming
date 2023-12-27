import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateAccountScreen(),
    );
  }
}

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool agreeToPrivacyPolicy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://img.freepik.com/free-vector/circuits-blue-red-gradient-digital-background_23-2148821701.jpg?w=1800&t=st=1703683810~exp=1703684410~hmac=a9555ad9108a1026eb06c508794c1b6d47db4607203749c6a17950397bbc5015',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                ),
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Checkbox(
                    value: agreeToPrivacyPolicy,
                    onChanged: (value) {
                      setState(() {
                        agreeToPrivacyPolicy = value!;
                      });
                    },
                  ),
                  Text(
                    'I agree with the privacy policy',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Implementasi untuk membuat akun dengan email dan password
                },
                child: Text('Create Account'),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    'https://seeklogo.com/images/G/github-logo-2E3852456C-seeklogo.com.png',
                    height: 50,
                    width: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implementasi untuk membuat akun dengan GitHub
                    },
                    child: Text('Login with GitHub'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    'https://cdn.icon-icons.com/icons2/2631/PNG/512/google_search_new_logo_icon_159150.png',
                    height: 50,
                    width: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implementasi untuk membuat akun dengan Google
                    },
                    child: Text('Login with Google'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final List<String> photos = [
    'https://api.mediadownloader.app/get?__sig=ROb5kcwITWvzbdaVvcZaSw&__expires=1703686749&uri=https%3A%2F%2Finstagram.fdac134-1.fna.fbcdn.net%2Fv%2Ft51.2885-15%2F329229696_895101494966039_6971550984229957525_n.jpg%3Fstp%3Ddst-jpg_e35_s1080x1080%26_nc_ht%3Dinstagram.fdac134-1.fna.fbcdn.net%26_nc_cat%3D111%26_nc_ohc%3DU0CWPOs_z5QAX8GP2CK%26edm%3DAP_V10EBAAAA%26ccb%3D7-5%26oh%3D00_AfCY8Z9CBHrmDOQVtD-S7xQPZgGeFEnNORreaLoPE63gkA%26oe%3D65907CDD%26_nc_sid%3D2999b8&__srvid=instagram&__cid=mTY2wLHa1yPMcXBdrchsqQ',
    'https://proxy.mediadownloader.app/get?__sig=ttPu68pxMEiugS9PJWZFIg&__expires=1703686799&uri=https%3A%2F%2Fscontent-fra3-2.cdninstagram.com%2Fv%2Ft51.2885-15%2F323312856_1182053735738668_3177495881384474673_n.jpg%3Fstp%3Ddst-jpg_e35_p1080x1080%26_nc_ht%3Dscontent-fra3-2.cdninstagram.com%26_nc_cat%3D104%26_nc_ohc%3Dx5eF0bMTsCUAX_nUSmn%26edm%3DAP_V10EBAAAA%26ccb%3D7-5%26oh%3D00_AfB3torCgKvyTOVluuy2pvwzCt-4vfQgM6J_3U4MwqqSQQ%26oe%3D65918734%26_nc_sid%3D2999b8&__srvid=instagram&__cid=mTY2wLHa1yPMcXBdrchsqQ',
    'https://proxy.mediadownloader.app/get?__sig=54ec8bAVwzGGfRyExkhNEQ&__expires=1703686842&uri=https%3A%2F%2Fscontent-iev1-1.cdninstagram.com%2Fv%2Ft51.2885-15%2F320927731_126639470059063_1233205411850924675_n.jpg%3Fstp%3Ddst-jpg_e35_p1080x1080%26_nc_ht%3Dscontent-iev1-1.cdninstagram.com%26_nc_cat%3D107%26_nc_ohc%3D-hQZCdM4CrYAX8IO1PE%26edm%3DAP_V10EBAAAA%26ccb%3D7-5%26oh%3D00_AfBHMm9zFO2XRr1KxUagEze8Tc6062RnLTmHfN2UAtJRlQ%26oe%3D6590DBED%26_nc_sid%3D2999b8&__srvid=instagram&__cid=mTY2wLHa1yPMcXBdrchsqQ',
    // ... tambahkan URL foto-foto Anda di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://img.freepik.com/free-vector/circuits-blue-red-gradient-digital-background_23-2148821701.jpg?w=1800&t=st=1703683810~exp=1703684410~hmac=a9555ad9108a1026eb06c508794c1b6d47db4607203749c6a17950397bbc5015',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://www.w3schools.com/howto/img_avatar.png', // Ganti dengan URL gambar profil Anda
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.people),
                    SizedBox(width: 8.0),
                    Text('123 Friends'),
                    SizedBox(width: 16.0),
                    Icon(Icons.photo),
                    SizedBox(width: 8.0),
                    Text('${photos.length} Photos'),
                    SizedBox(width: 16.0),
                    Icon(Icons.comment),
                    SizedBox(width: 8.0),
                    Text('789 Comments'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Muhammad Yoga Prasetya Ilmi',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Location: Tenggarong, Indonesia',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Quotes: "hahiho hahiho hahiho"',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Albums', // Judul untuk bagian album
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                // Daftar album foto menggunakan GridView
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: photos.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Implementasi untuk menampilkan foto secara penuh
                      },
                      child: Image.network(
                        photos[index],
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
