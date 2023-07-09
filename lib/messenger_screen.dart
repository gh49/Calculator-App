import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage("https://pyxis.nymag.com/v1/imgs/62f/e33/d2ada77e4389025a90426a81e0012fbe3a-negan.rsquare.w700.jpg"),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              "Chats",
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.camera_alt,
                  size: 20.0,
                  color: Colors.white,
                ),
              )
          ),
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.edit,
                  size: 20.0,
                  color: Colors.white,
                ),
              )
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[350],
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Search",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 120.0,
              child: ListView.separated(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return buildStoryItem();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 15.0,
                  );
                },
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return buildChatItem();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20.0,
                    );
                  },
                  itemCount: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChatItem() {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 35.0,
              backgroundImage: NetworkImage("https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/large/800/Rick-Grimes.The-Walking-Dead.webp"),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 1.0,
                end: 1.0,
              ),
              child: CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.green[400],
              ),
            ),
          ],
        ),
        SizedBox(
          width: 15.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rick Grimes",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Where is Carl?",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                    child: Container(
                      width: 7.0,
                      height: 7.0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                    "2:00pm",
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildStoryItem() {
    return Container(
      width: 78.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 35.0,
                backgroundImage: NetworkImage("https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/large/800/Rick-Grimes.The-Walking-Dead.webp"),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 1.0,
                  end: 1.0,
                ),
                child: CircleAvatar(
                  radius: 10.0,
                  backgroundColor: Colors.green[400],
                ),
              ),
            ],
          ),
          Text(
            "Rick Grimes",
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
