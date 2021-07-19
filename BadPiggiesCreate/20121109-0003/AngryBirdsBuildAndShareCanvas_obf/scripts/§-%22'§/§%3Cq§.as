package §-"'§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §7!@§.§+`§;
   import §;"7§.§="<§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§@u§;
   import §?!'§.Popup;
   import §]";§.§!<§;
   import §]";§.§4!p§;
   import com.rovio.assets.§69§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.text.AntiAliasType;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §<q§ extends Popup
   {
      
      private static const §1%§:int = 3;
      
      private static const §@;§:Number = 10;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1%§ = 3;
            do
            {
               §@;§ = 10;
            }
            while(_loc2_);
            
         }
      }
      
      private var §4'§:§=!r§;
      
      private var §=9§:Number = 1;
      
      public function §<q§(param1:XML, param2:§>!V§)
      {
         var _loc39_:Boolean = true;
         var _loc40_:Boolean = false;
         var _loc9_:§6W§ = null;
         var _loc22_:* = null;
         var _loc23_:§=!r§ = null;
         var _loc24_:§=!r§ = null;
         var _loc25_:§=!r§ = null;
         var _loc26_:int = 0;
         var _loc27_:§4!p§ = null;
         var _loc28_:BitmapData = null;
         var _loc29_:Bitmap = null;
         var _loc30_:MovieClip = null;
         var _loc31_:Class = null;
         var _loc32_:MovieClip = null;
         var _loc33_:TextField = null;
         var _loc34_:Class = null;
         var _loc35_:MovieClip = null;
         var _loc36_:§=!r§ = null;
         if(!(_loc40_ && param2))
         {
            super(param1,param2);
         }
         §§push((AngryBirdsFP11.§>!7§ as §+`§).xp);
         if(_loc39_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push((AngryBirdsFP11.§>!7§ as §+`§).§#!r§ - (AngryBirdsFP11.§>!7§ as §+`§).§<R§);
         if(_loc39_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push((AngryBirdsFP11.§>!7§ as §+`§).newBolts);
         if(_loc39_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push((AngryBirdsFP11.§>!7§ as §+`§).newCoins);
         if(_loc39_)
         {
            §§push(§§pop() - (AngryBirdsFP11.§>!7§ as §+`§).oldCoins);
            if(_loc39_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push((AngryBirdsFP11.§>!7§ as §+`§).§&3§);
         if(_loc39_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Object = (AngryBirdsFP11.§>!7§ as §+`§).newItems;
         _loc9_ = param2.getItemByName("ContainerRewards") as §6W§;
         var _loc10_:§@u§ = getItemByName("MovieClip_Block") as §@u§;
         var _loc11_:§@u§ = getItemByName("MovieClip_Bolt") as §@u§;
         var _loc12_:§@u§ = getItemByName("MovieClip_Coin") as §@u§;
         if(_loc39_)
         {
            getItemByName("Button_Close").setVisibility(true);
            while(true)
            {
               _loc12_.setVisibility(false);
               while(_loc39_ || _loc3_)
               {
                  _loc11_.setVisibility(false);
                  loop3:
                  while(true)
                  {
                     (getItemByName("TextField_Bolts") as §!!]§).setVisibility(false);
                     while(true)
                     {
                        addr200:
                        addr191:
                        while(true)
                        {
                           (getItemByName("TextField_Blocks") as §!!]§).setVisibility(false);
                           continue loop3;
                        }
                        if(_loc40_ && param2)
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr200);
                        }
                        else
                        {
                           §§push((AngryBirdsFP11.§>!7§ as §+`§).oldXpLevel);
                           if(_loc39_ || param2)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc13_:* = §§pop();
                           if(_loc39_ || _loc3_)
                           {
                              §§push(AngryBirdsFP11.§>!7§);
                              if(!_loc40_)
                              {
                                 if((§§pop() as §+`§).§&3§)
                                 {
                                    if(!(_loc40_ && param1))
                                    {
                                       addr320:
                                       §§push((AngryBirdsFP11.§>!7§ as §+`§).newXpLevel);
                                       if(_loc39_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       _loc13_ = §§pop();
                                       addr327:
                                    }
                                    §§goto(addr327);
                                 }
                                 addr293:
                                 (getItemByName("TextField_Progress_Level") as §!!]§).setText(_loc13_.toString());
                                 (getItemByName("TextField_Progress_Level") as §!!]§).setVisibility(true);
                                 if(_loc39_)
                                 {
                                    if(_loc39_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr293);
                                       }
                                       var _loc14_:Array = new Array();
                                       if(_loc39_ || _loc3_)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc40_)
                                          {
                                             §§push(0);
                                             if(!_loc40_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(_loc39_ || param1)
                                                   {
                                                      (getItemByName("TextField_Bolts") as §!!]§).setText("+" + _loc5_);
                                                      if(_loc39_ || param1)
                                                      {
                                                         addr348:
                                                         (getItemByName("TextField_Bolts") as §!!]§).setVisibility(true);
                                                         if(!_loc40_)
                                                         {
                                                            _loc11_.setVisibility(true);
                                                            if(!_loc40_)
                                                            {
                                                               addr346:
                                                               if(false)
                                                               {
                                                                  §§goto(addr348);
                                                               }
                                                               §§push(§7I§.§[E§);
                                                               if(!(_loc40_ && param1))
                                                               {
                                                                  §§push(§7I§.§[E§);
                                                                  if(_loc39_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop().§ ";§(_loc11_.mClip,{
                                                                        "scaleX":this.§=9§,
                                                                        "scaleY":this.§=9§
                                                                     },{
                                                                        "scaleX":0,
                                                                        "scaleY":0
                                                                     },0.4,§7I§.§;!C§));
                                                                     if(!_loc40_)
                                                                     {
                                                                        §§push(§7I§.§[E§);
                                                                        if(_loc39_ || param1)
                                                                        {
                                                                           §§push(§§pop().§ ";§(getItemByName("TextField_Bolts").mClip,{
                                                                              "scaleX":1,
                                                                              "scaleY":1
                                                                           },{
                                                                              "scaleX":0,
                                                                              "scaleY":0
                                                                           },0.4,§7I§.§;!C§));
                                                                           if(_loc39_)
                                                                           {
                                                                              §§push(§§pop().§]g§(§§pop(),§§pop()));
                                                                              if(!(_loc40_ && param1))
                                                                              {
                                                                                 _loc23_ = §§pop();
                                                                                 if(_loc39_)
                                                                                 {
                                                                                    _loc14_.push(_loc23_);
                                                                                    addr472:
                                                                                    §§push(_loc6_);
                                                                                    if(!(_loc40_ && param2))
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc39_)
                                                                                       {
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             if(!(_loc40_ && _loc3_))
                                                                                             {
                                                                                                (getItemByName("TextField_Coins") as §!!]§).setText("+" + _loc6_);
                                                                                                if(_loc39_)
                                                                                                {
                                                                                                   addr502:
                                                                                                   (getItemByName("TextField_Coins") as §!!]§).setVisibility(true);
                                                                                                   if(!(_loc40_ && _loc3_))
                                                                                                   {
                                                                                                      _loc12_.setVisibility(true);
                                                                                                      if(!_loc39_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr633:
                                                                                                      _loc10_.setVisibility(true);
                                                                                                      addr679:
                                                                                                      _loc25_ = §7I§.§[E§.§]g§(§7I§.§[E§.§ ";§(_loc10_.mClip,{
                                                                                                         "scaleX":this.§=9§,
                                                                                                         "scaleY":this.§=9§
                                                                                                      },{
                                                                                                         "scaleX":0,
                                                                                                         "scaleY":0
                                                                                                      },0.4,§7I§.§;!C§),§7I§.§[E§.§ ";§(getItemByName("TextField_Blocks").mClip,{
                                                                                                         "scaleX":1,
                                                                                                         "scaleY":1
                                                                                                      },{
                                                                                                         "scaleX":0,
                                                                                                         "scaleY":0
                                                                                                      },0.4,§7I§.§;!C§));
                                                                                                      addr636:
                                                                                                      addr678:
                                                                                                      addr660:
                                                                                                      addr658:
                                                                                                      addr640:
                                                                                                      addr638:
                                                                                                      if(!(_loc40_ && this))
                                                                                                      {
                                                                                                         _loc14_.push(_loc25_);
                                                                                                      }
                                                                                                      var _loc15_:int = 0;
                                                                                                      var _loc16_:MovieClip = null;
                                                                                                      var _loc17_:* = Number(0);
                                                                                                      var _loc18_:* = Number(0);
                                                                                                      var _loc19_:Class;
                                                                                                      var _loc20_:Font = new (_loc19_ = §69§.§ 0§("BadPiggiesEmbed"))();
                                                                                                      var _loc21_:TextFormat;
                                                                                                      (_loc21_ = new TextFormat()).color = 16777215;
                                                                                                      if(!_loc40_)
                                                                                                      {
                                                                                                         _loc21_.size = 26;
                                                                                                         if(_loc39_)
                                                                                                         {
                                                                                                            addr735:
                                                                                                            _loc21_.font = _loc20_.fontName;
                                                                                                         }
                                                                                                         var _loc37_:int = 0;
                                                                                                         var _loc38_:* = _loc8_;
                                                                                                         addr1352:
                                                                                                         for(_loc22_ in _loc38_)
                                                                                                         {
                                                                                                            if(_loc39_)
                                                                                                            {
                                                                                                               _loc26_ = _loc8_[_loc22_].valueOf();
                                                                                                            }
                                                                                                            _loc27_ = §!<§.§[!@§(_loc22_);
                                                                                                            if(!_loc40_)
                                                                                                            {
                                                                                                               addr828:
                                                                                                               §§push(_loc15_ % §1%§ == 0);
                                                                                                               if(_loc39_ || param2)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     addr839:
                                                                                                                     §§pop();
                                                                                                                     if(!(_loc40_ && param2))
                                                                                                                     {
                                                                                                                        addr783:
                                                                                                                        §§push(_loc15_);
                                                                                                                        if(!_loc40_)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(_loc39_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              if(_loc39_)
                                                                                                                              {
                                                                                                                                 addr793:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc40_ && param1))
                                                                                                                                    {
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc40_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr814:
                                                                                                                                             §§push(Number(_loc16_.y));
                                                                                                                                             if(_loc39_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                _loc17_ = §§pop();
                                                                                                                                                if(!_loc40_)
                                                                                                                                                {
                                                                                                                                                   addr824:
                                                                                                                                                   §§push(Number(_loc16_.x));
                                                                                                                                                   if(_loc39_)
                                                                                                                                                   {
                                                                                                                                                      _loc18_ = §§pop();
                                                                                                                                                      if(_loc39_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr783);
                                                                                                                                                         }
                                                                                                                                                         addr848:
                                                                                                                                                         (_loc16_ = new MovieClip()).y = _loc17_;
                                                                                                                                                         if(_loc39_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr922:
                                                                                                                                                            addr921:
                                                                                                                                                            if(_loc15_ % §1%§ == 0)
                                                                                                                                                            {
                                                                                                                                                               addr925:
                                                                                                                                                               _loc16_.y = _loc17_ + 80;
                                                                                                                                                               _loc16_.x = _loc18_;
                                                                                                                                                               addr930:
                                                                                                                                                            }
                                                                                                                                                            addr883:
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            if(!(_loc40_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(_loc39_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() == §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr896:
                                                                                                                                                                     if(_loc39_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        _loc16_.y = (_loc9_.y + _loc9_.height) / 2 - 40;
                                                                                                                                                                        addr863:
                                                                                                                                                                        _loc9_.mClip.addChild(_loc16_);
                                                                                                                                                                        if(_loc39_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc40_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc39_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc39_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(false)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr883);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr931:
                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc39_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr935:
                                                                                                                                                                                          _loc28_ = §="<§.§[E§.§`d§(_loc27_.§+!A§);
                                                                                                                                                                                          _loc29_ = new Bitmap(_loc28_);
                                                                                                                                                                                          (_loc30_ = new MovieClip()).x = _loc16_.width;
                                                                                                                                                                                          if(!_loc40_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc30_.y += 48;
                                                                                                                                                                                             addr1074:
                                                                                                                                                                                             if(_loc29_.width >= 80)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1061:
                                                                                                                                                                                                _loc29_.scaleY = 80 / _loc29_.width;
                                                                                                                                                                                                _loc29_.scaleX = _loc29_.scaleY;
                                                                                                                                                                                                addr1051:
                                                                                                                                                                                                if(_loc39_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc39_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1027:
                                                                                                                                                                                                      if(_loc29_.height >= 60)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1032:
                                                                                                                                                                                                         if(!(_loc40_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc29_.scaleY = 60 / _loc29_.height;
                                                                                                                                                                                                            _loc29_.scaleX = _loc29_.scaleY;
                                                                                                                                                                                                            addr1045:
                                                                                                                                                                                                            if(!_loc40_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1003:
                                                                                                                                                                                                               _loc29_.x = -_loc29_.width / 2;
                                                                                                                                                                                                               addr1011:
                                                                                                                                                                                                               if(_loc39_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc29_.y = -_loc29_.height / 2;
                                                                                                                                                                                                                  addr988:
                                                                                                                                                                                                                  if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc40_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr973:
                                                                                                                                                                                                                        _loc30_.addChild(_loc29_);
                                                                                                                                                                                                                        if(_loc39_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc16_.addChild(_loc30_);
                                                                                                                                                                                                                           if(!_loc40_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc39_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr971:
                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr973);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 (_loc33_ = (_loc32_ = new (_loc31_ = §69§.§ 0§("TextField_Count"))()).text).antiAliasType = AntiAliasType.ADVANCED;
                                                                                                                                                                                                                                 if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc33_.autoSize = "left";
                                                                                                                                                                                                                                    if(!_loc40_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1104:
                                                                                                                                                                                                                                       _loc33_.text = "+" + _loc26_;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    _loc35_ = new (_loc34_ = §69§.§ 0§("Unlocked_Icon"))();
                                                                                                                                                                                                                                    if(!(_loc40_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc26_ == -1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1262:
                                                                                                                                                                                                                                          _loc33_.text = "";
                                                                                                                                                                                                                                          _loc35_.x = _loc29_.x + _loc29_.width / 2 + 24;
                                                                                                                                                                                                                                          _loc35_.y = _loc29_.y + _loc29_.height / 2 + 12;
                                                                                                                                                                                                                                          _loc30_.addChild(_loc35_);
                                                                                                                                                                                                                                          addr1245:
                                                                                                                                                                                                                                          addr1258:
                                                                                                                                                                                                                                          if(_loc39_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1209:
                                                                                                                                                                                                                                             _loc33_.textColor = 16777215;
                                                                                                                                                                                                                                             addr1213:
                                                                                                                                                                                                                                             if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc33_.setTextFormat(_loc21_);
                                                                                                                                                                                                                                                _loc33_.selectable = false;
                                                                                                                                                                                                                                                addr1201:
                                                                                                                                                                                                                                                if(!_loc40_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc33_.x = _loc29_.x + _loc29_.width / 2 + 24;
                                                                                                                                                                                                                                                   addr1189:
                                                                                                                                                                                                                                                   if(_loc39_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1150:
                                                                                                                                                                                                                                                      _loc33_.y = _loc29_.y + _loc29_.height / 2 + 12;
                                                                                                                                                                                                                                                      if(!(_loc40_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc39_ || param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc30_.addChild(_loc33_);
                                                                                                                                                                                                                                                            if(!_loc40_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc39_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc40_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc40_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1148:
                                                                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1150);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        _loc36_ = §7I§.§[E§.§ ";§(_loc30_,{
                                                                                                                                                                                                                                                                           "scaleX":this.§=9§,
                                                                                                                                                                                                                                                                           "scaleY":this.§=9§
                                                                                                                                                                                                                                                                        },{
                                                                                                                                                                                                                                                                           "scaleX":0,
                                                                                                                                                                                                                                                                           "scaleY":0
                                                                                                                                                                                                                                                                        },0.4,§7I§.§;!C§);
                                                                                                                                                                                                                                                                        if(_loc39_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc14_.push(_loc36_);
                                                                                                                                                                                                                                                                           _loc16_.x = _loc9_.width / 2 - _loc16_.width / 2 - §@;§ + _loc30_.width / 2;
                                                                                                                                                                                                                                                                           addr1350:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        _loc16_.graphics.beginFill(0,0);
                                                                                                                                                                                                                                                                        addr1298:
                                                                                                                                                                                                                                                                        _loc16_.graphics.drawRect(0,0,_loc16_.width,_loc16_.height);
                                                                                                                                                                                                                                                                        addr1346:
                                                                                                                                                                                                                                                                        if(!_loc40_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc39_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc40_ && param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc16_.graphics.endFill();
                                                                                                                                                                                                                                                                                 if(_loc39_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(false)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1298);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1351:
                                                                                                                                                                                                                                                                                    _loc15_++;
                                                                                                                                                                                                                                                                                    §§goto(addr1352);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1298);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1350);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1346);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1326:
                                                                                                                                                                                                                                                                        §§goto(addr1326);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1245);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1213);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1201);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1150);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1262);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1189);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1262);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1208:
                                                                                                                                                                                                                                                §§goto(addr1208);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1258);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1265:
                                                                                                                                                                                                                                          §§goto(addr1265);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1209);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1148);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1104);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1011);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr973);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr988);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1045);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1032);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1074);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1051);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1003);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1061);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1067:
                                                                                                                                                                                                §§goto(addr1067);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1027);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr971);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1352);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1351);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr925);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr930);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr896);
                                                                                                                                                                        }
                                                                                                                                                                        addr914:
                                                                                                                                                                        §§goto(addr914);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr925);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr863);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr922);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr921);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr863);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1352);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr814);
                                                                                                                                                   addr824:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1352);
                                                                                                                                             }
                                                                                                                                             §§goto(addr828);
                                                                                                                                          }
                                                                                                                                          §§goto(addr824);
                                                                                                                                       }
                                                                                                                                       §§goto(addr848);
                                                                                                                                    }
                                                                                                                                    §§goto(addr935);
                                                                                                                                 }
                                                                                                                                 §§goto(addr931);
                                                                                                                              }
                                                                                                                              §§goto(addr839);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr828);
                                                                                                                     }
                                                                                                                     §§goto(addr1352);
                                                                                                                  }
                                                                                                                  §§goto(addr793);
                                                                                                               }
                                                                                                               §§goto(addr839);
                                                                                                            }
                                                                                                            §§goto(addr824);
                                                                                                         }
                                                                                                         if(_loc39_ || this)
                                                                                                         {
                                                                                                            if(_loc14_.length > 0)
                                                                                                            {
                                                                                                               this.§4'§ = §7I§.§[E§.§5!@§.apply(§7I§.§[E§,_loc14_);
                                                                                                               this.§4'§.play();
                                                                                                               addr1393:
                                                                                                               addr1412:
                                                                                                            }
                                                                                                            §0"#§.§9"2§("Sound_Editor_Unlock");
                                                                                                            if(!_loc40_)
                                                                                                            {
                                                                                                               if(_loc39_ || param1)
                                                                                                               {
                                                                                                                  if(_loc40_)
                                                                                                                  {
                                                                                                                     §§goto(addr1393);
                                                                                                                  }
                                                                                                                  return;
                                                                                                               }
                                                                                                               §§goto(addr1412);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1393);
                                                                                                      }
                                                                                                      §§goto(addr735);
                                                                                                   }
                                                                                                   addr619:
                                                                                                   (getItemByName("TextField_Blocks") as §!!]§).setVisibility(true);
                                                                                                   if(!(_loc40_ && param2))
                                                                                                   {
                                                                                                      §§goto(addr633);
                                                                                                   }
                                                                                                   §§goto(addr636);
                                                                                                }
                                                                                                §§push(§7I§.§[E§);
                                                                                                if(!_loc40_)
                                                                                                {
                                                                                                   §§push(§7I§.§[E§);
                                                                                                   if(_loc39_)
                                                                                                   {
                                                                                                      §§push(§§pop().§ ";§(_loc12_.mClip,{
                                                                                                         "scaleX":this.§=9§,
                                                                                                         "scaleY":this.§=9§
                                                                                                      },{
                                                                                                         "scaleX":0,
                                                                                                         "scaleY":0
                                                                                                      },0.4,§7I§.§;!C§));
                                                                                                      if(!_loc40_)
                                                                                                      {
                                                                                                         addr549:
                                                                                                         §§push(§7I§.§[E§);
                                                                                                         if(!_loc40_)
                                                                                                         {
                                                                                                            addr553:
                                                                                                            §§push(§§pop().§ ";§(getItemByName("TextField_Coins").mClip,{
                                                                                                               "scaleX":1,
                                                                                                               "scaleY":1
                                                                                                            },{
                                                                                                               "scaleX":0,
                                                                                                               "scaleY":0
                                                                                                            },0.4,§7I§.§;!C§));
                                                                                                            if(!(_loc40_ && param1))
                                                                                                            {
                                                                                                               §§push(§§pop().§]g§(§§pop(),§§pop()));
                                                                                                               if(!(_loc40_ && param2))
                                                                                                               {
                                                                                                                  _loc24_ = §§pop();
                                                                                                                  if(_loc39_ || param1)
                                                                                                                  {
                                                                                                                     _loc14_.push(_loc24_);
                                                                                                                     addr598:
                                                                                                                     if(_loc4_ > 0)
                                                                                                                     {
                                                                                                                        if(!(_loc40_ && this))
                                                                                                                        {
                                                                                                                           addr608:
                                                                                                                           (getItemByName("TextField_Blocks") as §!!]§).setText("+" + _loc4_);
                                                                                                                           if(_loc39_)
                                                                                                                           {
                                                                                                                              §§goto(addr619);
                                                                                                                           }
                                                                                                                           §§goto(addr633);
                                                                                                                        }
                                                                                                                        §§goto(addr619);
                                                                                                                     }
                                                                                                                     §§goto(addr633);
                                                                                                                  }
                                                                                                                  §§goto(addr598);
                                                                                                               }
                                                                                                               §§goto(addr679);
                                                                                                            }
                                                                                                            §§goto(addr678);
                                                                                                         }
                                                                                                         §§goto(addr660);
                                                                                                      }
                                                                                                      §§goto(addr658);
                                                                                                   }
                                                                                                   §§goto(addr640);
                                                                                                }
                                                                                                §§goto(addr638);
                                                                                             }
                                                                                             §§goto(addr633);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr598);
                                                                                 }
                                                                                 §§goto(addr472);
                                                                              }
                                                                           }
                                                                           §§goto(addr633);
                                                                        }
                                                                        §§goto(addr553);
                                                                     }
                                                                     §§goto(addr549);
                                                                  }
                                                               }
                                                               §§goto(addr633);
                                                            }
                                                            §§goto(addr502);
                                                         }
                                                         §§goto(addr608);
                                                      }
                                                      §§goto(addr502);
                                                   }
                                                   §§goto(addr633);
                                                }
                                                §§goto(addr472);
                                             }
                                          }
                                          §§goto(addr598);
                                       }
                                       §§goto(addr346);
                                    }
                                    §§goto(addr327);
                                 }
                                 addr302:
                                 §§goto(addr302);
                              }
                           }
                           §§goto(addr320);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr250);
      }
      
      private function §1!a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0"#§.§9"2§("Sound_Star_Pig");
         }
      }
   }
}
