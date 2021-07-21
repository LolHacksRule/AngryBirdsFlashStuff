package §2H§
{
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §&"5§.§7!P§;
   import §'p§.§%+§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §+h§.Popup;
   import §,a§.§<!m§;
   import §,a§.§]!>§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §^!y§.§'"#§;
   import com.rovio.assets.§>!]§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.text.AntiAliasType;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §0Q§ extends Popup
   {
      
      private static const §'"5§:int = 3;
      
      private static const §1L§:Number = 10;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'"5§ = 3;
            do
            {
               §1L§ = 10;
            }
            while(!_loc2_);
            
         }
      }
      
      private var §[!l§:§3^§;
      
      private var §?a§:Number = 1;
      
      public function §0Q§(param1:XML, param2:§'s§)
      {
         var _loc39_:Boolean = true;
         var _loc40_:Boolean = false;
         var _loc9_:§`!T§ = null;
         var _loc22_:* = null;
         var _loc23_:§3^§ = null;
         var _loc24_:§3^§ = null;
         var _loc25_:§3^§ = null;
         var _loc26_:int = 0;
         var _loc27_:§]!>§ = null;
         var _loc28_:BitmapData = null;
         var _loc29_:Bitmap = null;
         var _loc30_:MovieClip = null;
         var _loc31_:Class = null;
         var _loc32_:MovieClip = null;
         var _loc33_:TextField = null;
         var _loc34_:Class = null;
         var _loc35_:MovieClip = null;
         var _loc36_:§3^§ = null;
         if(_loc39_ || _loc3_)
         {
            super(param1,param2);
         }
         §§push((AngryBirdsFP11.§>" § as §'"#§).xp);
         if(_loc39_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push((AngryBirdsFP11.§>" § as §'"#§).§!T§ - (AngryBirdsFP11.§>" § as §'"#§).§=!Q§);
         if(_loc39_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push((AngryBirdsFP11.§>" § as §'"#§).newBolts);
         if(_loc39_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push((AngryBirdsFP11.§>" § as §'"#§).newCoins);
         if(_loc39_)
         {
            §§push(§§pop() - (AngryBirdsFP11.§>" § as §'"#§).oldCoins);
            if(!(_loc40_ && param1))
            {
               addr132:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push((AngryBirdsFP11.§>" § as §'"#§).§[!W§);
            if(_loc39_)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:Object = (AngryBirdsFP11.§>" § as §'"#§).newItems;
            _loc9_ = param2.getItemByName("ContainerRewards") as §`!T§;
            var _loc10_:§%+§ = getItemByName("MovieClip_Block") as §%+§;
            var _loc11_:§%+§ = getItemByName("MovieClip_Bolt") as §%+§;
            var _loc12_:§%+§ = getItemByName("MovieClip_Coin") as §%+§;
            if(!_loc40_)
            {
               getItemByName("Button_Close").setVisibility(true);
               loop0:
               while(true)
               {
                  _loc12_.setVisibility(false);
                  loop1:
                  while(true)
                  {
                     _loc10_.setVisibility(false);
                     loop2:
                     while(true)
                     {
                        _loc11_.setVisibility(false);
                        loop3:
                        while(_loc39_)
                        {
                           (getItemByName("TextField_Bolts") as §`!<§).setVisibility(false);
                           addr210:
                           if(!(_loc39_ || param2))
                           {
                              continue;
                           }
                           if(!_loc39_)
                           {
                              continue loop2;
                           }
                           (getItemByName("TextField_Coins") as §`!<§).setVisibility(false);
                           if(!_loc40_)
                           {
                              if(!_loc39_)
                              {
                                 continue loop1;
                              }
                              if(false)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    (getItemByName("TextField_Blocks") as §`!<§).setVisibility(false);
                                    addr203:
                                    while(true)
                                    {
                                       if(!(_loc40_ && param2))
                                       {
                                          §§goto(addr210);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             continue loop5;
                                          }
                                          addr228:
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                              §§push((AngryBirdsFP11.§>" § as §'"#§).oldXpLevel);
                              if(!_loc40_)
                              {
                                 §§push(int(§§pop()));
                              }
                              var _loc13_:* = §§pop();
                              if(!_loc40_)
                              {
                                 §§push(AngryBirdsFP11.§>" §);
                                 if(_loc39_ || _loc3_)
                                 {
                                    if((§§pop() as §'"#§).§[!W§)
                                    {
                                       while(true)
                                       {
                                          §§push(AngryBirdsFP11.§>" §);
                                          addr305:
                                          while(true)
                                          {
                                             §§push((§§pop() as §'"#§).newXpLevel);
                                             if(!(_loc40_ && param1))
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             _loc13_ = §§pop();
                                             addr317:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                       addr303:
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       (getItemByName("TextField_Progress_Level") as §`!<§).setText(_loc13_.toString());
                                       addr289:
                                       while(true)
                                       {
                                          (getItemByName("TextField_Progress_Level") as §`!<§).setVisibility(true);
                                          if(!_loc39_)
                                          {
                                             continue;
                                          }
                                          if(_loc39_)
                                          {
                                             if(!_loc40_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop8;
                                             }
                                             §§goto(addr303);
                                          }
                                          §§goto(addr317);
                                       }
                                       var _loc14_:Array = new Array();
                                       if(!(_loc40_ && param2))
                                       {
                                          §§push(_loc5_);
                                          if(_loc39_)
                                          {
                                             §§push(0);
                                             if(!(_loc40_ && this))
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(!_loc40_)
                                                   {
                                                      (getItemByName("TextField_Bolts") as §`!<§).setText("+" + _loc5_);
                                                      if(_loc39_)
                                                      {
                                                         while(true)
                                                         {
                                                            (getItemByName("TextField_Bolts") as §`!<§).setVisibility(true);
                                                            if(!(_loc40_ && _loc3_))
                                                            {
                                                               _loc11_.setVisibility(true);
                                                               if(!(_loc40_ && param1))
                                                               {
                                                                  if(false)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(§7!E§.§2=§);
                                                                  if(_loc39_ || param1)
                                                                  {
                                                                     §§push(§7!E§.§2=§);
                                                                     if(!(_loc40_ && param2))
                                                                     {
                                                                        §§push(§§pop().§<!C§(_loc11_.mClip,{
                                                                           "scaleX":this.§?a§,
                                                                           "scaleY":this.§?a§
                                                                        },{
                                                                           "scaleX":0,
                                                                           "scaleY":0
                                                                        },0.4,§7!E§.§8""§));
                                                                        if(!(_loc40_ && param1))
                                                                        {
                                                                           §§push(§7!E§.§2=§);
                                                                           if(!_loc40_)
                                                                           {
                                                                              §§push(§§pop().§<!C§(getItemByName("TextField_Bolts").mClip,{
                                                                                 "scaleX":1,
                                                                                 "scaleY":1
                                                                              },{
                                                                                 "scaleX":0,
                                                                                 "scaleY":0
                                                                              },0.4,§7!E§.§8""§));
                                                                              if(!_loc40_)
                                                                              {
                                                                                 §§push(§§pop().§7#§(§§pop(),§§pop()));
                                                                                 if(_loc39_ || this)
                                                                                 {
                                                                                    _loc23_ = §§pop();
                                                                                    if(!(_loc40_ && _loc3_))
                                                                                    {
                                                                                       _loc14_.push(_loc23_);
                                                                                       addr472:
                                                                                       §§push(_loc6_);
                                                                                       if(!_loc40_)
                                                                                       {
                                                                                          addr475:
                                                                                          §§push(0);
                                                                                          if(_loc39_)
                                                                                          {
                                                                                             addr478:
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                if(_loc39_ || param2)
                                                                                                {
                                                                                                   addr486:
                                                                                                   (getItemByName("TextField_Coins") as §`!<§).setText("+" + _loc6_);
                                                                                                   if(_loc39_ || this)
                                                                                                   {
                                                                                                      (getItemByName("TextField_Coins") as §`!<§).setVisibility(true);
                                                                                                      if(!(_loc40_ && _loc3_))
                                                                                                      {
                                                                                                         _loc12_.setVisibility(true);
                                                                                                         if(!(_loc40_ && _loc3_))
                                                                                                         {
                                                                                                            addr526:
                                                                                                            §§push(§7!E§.§2=§);
                                                                                                            if(!(_loc40_ && param2))
                                                                                                            {
                                                                                                               §§push(§7!E§.§2=§);
                                                                                                               if(_loc39_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§<!C§(_loc12_.mClip,{
                                                                                                                     "scaleX":this.§?a§,
                                                                                                                     "scaleY":this.§?a§
                                                                                                                  },{
                                                                                                                     "scaleX":0,
                                                                                                                     "scaleY":0
                                                                                                                  },0.4,§7!E§.§8""§));
                                                                                                                  if(!(_loc40_ && param1))
                                                                                                                  {
                                                                                                                     addr569:
                                                                                                                     §§push(§7!E§.§2=§);
                                                                                                                     if(!_loc40_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§<!C§(getItemByName("TextField_Coins").mClip,{
                                                                                                                           "scaleX":1,
                                                                                                                           "scaleY":1
                                                                                                                        },{
                                                                                                                           "scaleX":0,
                                                                                                                           "scaleY":0
                                                                                                                        },0.4,§7!E§.§8""§));
                                                                                                                        if(_loc39_)
                                                                                                                        {
                                                                                                                           addr593:
                                                                                                                           §§push(§§pop().§7#§(§§pop(),§§pop()));
                                                                                                                           if(!(_loc40_ && param2))
                                                                                                                           {
                                                                                                                              _loc24_ = §§pop();
                                                                                                                              if(!(_loc40_ && this))
                                                                                                                              {
                                                                                                                                 _loc14_.push(_loc24_);
                                                                                                                                 addr613:
                                                                                                                                 addr615:
                                                                                                                                 addr614:
                                                                                                                                 if(_loc4_ > 0)
                                                                                                                                 {
                                                                                                                                    if(_loc39_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       (getItemByName("TextField_Blocks") as §`!<§).setText("+" + _loc4_);
                                                                                                                                       if(_loc39_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       addr648:
                                                                                                                                       _loc10_.setVisibility(true);
                                                                                                                                       _loc25_ = §7!E§.§2=§.§7#§(§7!E§.§2=§.§<!C§(_loc10_.mClip,{
                                                                                                                                          "scaleX":this.§?a§,
                                                                                                                                          "scaleY":this.§?a§
                                                                                                                                       },{
                                                                                                                                          "scaleX":0,
                                                                                                                                          "scaleY":0
                                                                                                                                       },0.4,§7!E§.§8""§),§7!E§.§2=§.§<!C§(getItemByName("TextField_Blocks").mClip,{
                                                                                                                                          "scaleX":1,
                                                                                                                                          "scaleY":1
                                                                                                                                       },{
                                                                                                                                          "scaleX":0,
                                                                                                                                          "scaleY":0
                                                                                                                                       },0.4,§7!E§.§8""§));
                                                                                                                                       if(!_loc40_)
                                                                                                                                       {
                                                                                                                                          _loc14_.push(_loc25_);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr648);
                                                                                                                                 }
                                                                                                                                 var _loc15_:int = 0;
                                                                                                                                 var _loc16_:MovieClip = null;
                                                                                                                                 var _loc17_:* = Number(0);
                                                                                                                                 var _loc18_:Number = 0;
                                                                                                                                 var _loc19_:Class;
                                                                                                                                 var _loc20_:Font = new (_loc19_ = §>!]§.§1!8§("BadPiggiesEmbed"))();
                                                                                                                                 var _loc21_:TextFormat;
                                                                                                                                 (_loc21_ = new TextFormat()).color = 16777215;
                                                                                                                                 if(!_loc40_)
                                                                                                                                 {
                                                                                                                                    _loc21_.size = 26;
                                                                                                                                    if(_loc39_ || param1)
                                                                                                                                    {
                                                                                                                                       addr750:
                                                                                                                                       _loc21_.font = _loc20_.fontName;
                                                                                                                                    }
                                                                                                                                    loop13:
                                                                                                                                    for(_loc22_ in _loc8_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc40_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          _loc26_ = _loc8_[_loc22_].valueOf();
                                                                                                                                       }
                                                                                                                                       _loc27_ = §<!m§.§"!F§(_loc22_);
                                                                                                                                       if(!(_loc40_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc15_);
                                                                                                                                          loop14:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§'"5§);
                                                                                                                                             addr866:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() % §§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() == 0);
                                                                                                                                                   addr869:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                         }
                                                                                                                                                         addr871:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         loop21:
                                                                                                                                                         while(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc39_ || _loc3_))
                                                                                                                                                            {
                                                                                                                                                               continue loop13;
                                                                                                                                                            }
                                                                                                                                                            while(_loc16_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc40_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc40_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(_loc16_.y));
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc17_ = §§pop();
                                                                                                                                                                        if(!_loc40_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop13;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop14;
                                                                                                                                                                     }
                                                                                                                                                                     addr872:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               _loc28_ = §7!P§.§2=§.§"k§(_loc27_.§!F§);
                                                                                                                                                               _loc29_ = new Bitmap(_loc28_);
                                                                                                                                                               (_loc30_ = new MovieClip()).x = _loc16_.width;
                                                                                                                                                               if(!(_loc40_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  _loc30_.y += 48;
                                                                                                                                                                  if(_loc29_.width >= 80)
                                                                                                                                                                  {
                                                                                                                                                                     addr1081:
                                                                                                                                                                     _loc29_.scaleY = 80 / _loc29_.width;
                                                                                                                                                                     _loc29_.scaleX = _loc29_.scaleY;
                                                                                                                                                                     addr1068:
                                                                                                                                                                     if(_loc40_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     addr1087:
                                                                                                                                                                     §§goto(addr1087);
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc29_.height >= 60)
                                                                                                                                                                  {
                                                                                                                                                                     addr1056:
                                                                                                                                                                     _loc29_.scaleY = 60 / _loc29_.height;
                                                                                                                                                                     _loc29_.scaleX = _loc29_.scaleY;
                                                                                                                                                                     addr1062:
                                                                                                                                                                  }
                                                                                                                                                                  _loc29_.x = -_loc29_.width / 2;
                                                                                                                                                                  addr1094:
                                                                                                                                                                  if(_loc39_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc29_.y = -_loc29_.height / 2;
                                                                                                                                                                     addr1009:
                                                                                                                                                                     _loc30_.addChild(_loc29_);
                                                                                                                                                                     addr1033:
                                                                                                                                                                     if(!_loc40_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc39_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc39_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              _loc16_.addChild(_loc30_);
                                                                                                                                                                              if(!(_loc40_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc40_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc40_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc39_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc39_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(false)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1009);
                                                                                                                                                                                             }
                                                                                                                                                                                             (_loc33_ = (_loc32_ = new (_loc31_ = §>!]§.§1!8§("TextField_Count"))()).text).antiAliasType = AntiAliasType.ADVANCED;
                                                                                                                                                                                             if(!_loc40_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc33_.autoSize = "left";
                                                                                                                                                                                                if(_loc39_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc33_.text = "+" + _loc26_;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc35_ = new (_loc34_ = §>!]§.§1!8§("Unlocked_Icon"))();
                                                                                                                                                                                             if(!(_loc40_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc26_ == -1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1292:
                                                                                                                                                                                                   _loc33_.text = "";
                                                                                                                                                                                                   _loc35_.x = _loc29_.x + _loc29_.width / 2 + 24;
                                                                                                                                                                                                   _loc35_.y = _loc29_.y + _loc29_.height / 2 + 12;
                                                                                                                                                                                                   addr1288:
                                                                                                                                                                                                   addr1295:
                                                                                                                                                                                                   if(_loc39_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc30_.addChild(_loc35_);
                                                                                                                                                                                                      addr1248:
                                                                                                                                                                                                      if(!(_loc40_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1232:
                                                                                                                                                                                                         _loc33_.textColor = 16777215;
                                                                                                                                                                                                         addr1236:
                                                                                                                                                                                                         if(_loc39_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc33_.setTextFormat(_loc21_);
                                                                                                                                                                                                            addr1224:
                                                                                                                                                                                                            if(_loc39_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc33_.selectable = false;
                                                                                                                                                                                                               addr1217:
                                                                                                                                                                                                               if(_loc39_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc33_.x = _loc29_.x + _loc29_.width / 2 + 24;
                                                                                                                                                                                                                  addr1198:
                                                                                                                                                                                                                  if(_loc39_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1173:
                                                                                                                                                                                                                        _loc33_.y = _loc29_.y + _loc29_.height / 2 + 12;
                                                                                                                                                                                                                        _loc30_.addChild(_loc33_);
                                                                                                                                                                                                                        if(!(_loc40_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc39_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc39_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1173);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 _loc36_ = §7!E§.§2=§.§<!C§(_loc30_,{
                                                                                                                                                                                                                                    "scaleX":this.§?a§,
                                                                                                                                                                                                                                    "scaleY":this.§?a§
                                                                                                                                                                                                                                 },{
                                                                                                                                                                                                                                    "scaleX":0,
                                                                                                                                                                                                                                    "scaleY":0
                                                                                                                                                                                                                                 },0.4,§7!E§.§8""§);
                                                                                                                                                                                                                                 if(!_loc40_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc14_.push(_loc36_);
                                                                                                                                                                                                                                    _loc16_.x = _loc9_.width / 2 - _loc16_.width / 2 - §1L§ + _loc30_.width / 2;
                                                                                                                                                                                                                                    addr1384:
                                                                                                                                                                                                                                    if(!(_loc40_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc16_.graphics.beginFill(0,0);
                                                                                                                                                                                                                                       addr1347:
                                                                                                                                                                                                                                       _loc16_.graphics.drawRect(0,0,_loc16_.width,_loc16_.height);
                                                                                                                                                                                                                                       _loc16_.graphics.endFill();
                                                                                                                                                                                                                                       addr1364:
                                                                                                                                                                                                                                       if(_loc39_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc40_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc39_ || param2)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(false)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1347);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1396:
                                                                                                                                                                                                                                                _loc15_++;
                                                                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1384);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1364);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1357:
                                                                                                                                                                                                                                       §§goto(addr1357);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1395:
                                                                                                                                                                                                                                    §§goto(addr1395);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1347);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1236);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1198);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1185:
                                                                                                                                                                                                                        §§goto(addr1185);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1248);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1217);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1224);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1288);
                                                                                                                                                                                                            addr1243:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1288);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1295);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1292);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1232);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1243);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1068);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1056);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1062);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1033);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1009);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1094);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1081);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1094);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1056);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1081);
                                                                                                                                                            }
                                                                                                                                                            (_loc16_ = new MovieClip()).y = _loc17_;
                                                                                                                                                            if(_loc39_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               loop24:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§'"5§);
                                                                                                                                                                  loop25:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() % §§pop() == 0)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc40_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc16_.y = _loc17_ + 80;
                                                                                                                                                                           addr950:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc16_.x = _loc18_;
                                                                                                                                                                              addr937:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr950:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr950);
                                                                                                                                                                     }
                                                                                                                                                                     loop26:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                        if(!_loc39_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        if(!_loc39_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop25;
                                                                                                                                                                        }
                                                                                                                                                                        if(§§pop() == §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           loop27:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc40_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc16_.y = (_loc9_.y + _loc9_.height) / 2 - 40;
                                                                                                                                                                                 loop28:
                                                                                                                                                                                 while(_loc39_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc9_.mClip.addChild(_loc16_);
                                                                                                                                                                                       if(_loc39_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc40_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop27;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop28;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop21;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop26;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr950);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr937);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr883);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop24;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr950);
                                                                                                                                                         }
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc40_)
                                                                                                                                                            {
                                                                                                                                                               continue loop13;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr955);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1396);
                                                                                                                                                         addr842:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr872);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr851);
                                                                                                                                    }
                                                                                                                                    if(_loc39_)
                                                                                                                                    {
                                                                                                                                       if(_loc14_.length > 0)
                                                                                                                                       {
                                                                                                                                          loop32:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§[!l§ = §7!E§.§2=§.§2!u§.apply(§7!E§.§2=§,_loc14_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§[!l§.play();
                                                                                                                                                addr1433:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr1414:
                                                                                                                                                if(_loc39_ || param2)
                                                                                                                                                {
                                                                                                                                                   continue loop32;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §5!U§.playSound("Sound_Editor_Unlock");
                                                                                                                                          if(!_loc39_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr1414);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1428);
                                                                                                                                 }
                                                                                                                                 §§goto(addr750);
                                                                                                                              }
                                                                                                                              §§goto(addr613);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr648);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr526);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr648);
                                                                                             }
                                                                                             §§goto(addr613);
                                                                                          }
                                                                                          §§goto(addr615);
                                                                                       }
                                                                                       §§goto(addr614);
                                                                                    }
                                                                                    §§goto(addr472);
                                                                                 }
                                                                                 §§goto(addr648);
                                                                              }
                                                                              §§goto(addr593);
                                                                           }
                                                                           §§goto(addr648);
                                                                        }
                                                                        §§goto(addr569);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr648);
                                                            }
                                                            break;
                                                         }
                                                         addr634:
                                                         (getItemByName("TextField_Blocks") as §`!<§).setVisibility(true);
                                                         if(_loc40_ && _loc3_)
                                                         {
                                                         }
                                                         §§goto(addr648);
                                                      }
                                                      §§goto(addr526);
                                                   }
                                                   §§goto(addr634);
                                                }
                                                §§goto(addr472);
                                             }
                                             §§goto(addr478);
                                          }
                                          §§goto(addr475);
                                       }
                                       §§goto(addr486);
                                    }
                                 }
                                 §§goto(addr305);
                              }
                              §§goto(addr289);
                           }
                           §§goto(addr203);
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr228);
         }
         §§goto(addr132);
      }
      
      private function §8X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §5!U§.playSound("Sound_Star_Pig");
         }
         do
         {
            §5!U§.playSound("Sound_Star_Pig");
         }
         while(_loc2_);
         
      }
   }
}
