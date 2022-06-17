package §?!N§
{
   import § "g§.§ H§;
   import § "g§.§%!2§;
   import § #s§.§%§;
   import § #s§.Item;
   import §!!?§.§,!K§;
   import §!!?§.§<#a§;
   import §!!t§.StateTournamentResults;
   import §!"e§.§"?§;
   import §!§.§="D§;
   import §#!E§.§2#Q§;
   import §%4§.CoinShopPopup;
   import §&!P§.§@#m§;
   import §'#g§.§&"Y§;
   import §'#g§.§1"i§;
   import §+#B§.§0"+§;
   import §+#B§.§5"w§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §2!X§.§&#!§;
   import §2!X§.§8#,§;
   import §2!X§.Avatar;
   import §4!n§.§#$>§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §5!$§.§#$-§;
   import §5!$§.§&!v§;
   import §5!$§.§>§;
   import §5!$§.§>;§;
   import §5"c§.§8K§;
   import §9#K§.§#D§;
   import §9#K§.§=#f§;
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §;$5§.AbstractPopup;
   import §;w§.§5"_§;
   import §=#§.§%#y§;
   import §=#§.§&#t§;
   import §=#§.§1!"§;
   import §>"9§.§[#%§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?#h§.§3#=§;
   import §]"'§.§@"%§;
   import §^$'§.§2$§;
   import com.rovio.assets.§2"O§;
   import flash.display.Bitmap;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class AvatarCreatorPopup extends AbstractPopup implements §["b§, §0"+§, §="D§
   {
      
      public static const ID:String = "AvatarCreatorPopup";
      
      private static const §[!_§:String = "In-app Shop Avatars";
      
      private static var §5!t§:Class = §!$6§;
      
      public static var §%"%§:String;
      
      public static const STATE_NAME:String = "CreatorState";
      
      private static var §[">§:String;
      
      public static var §@&§:Array;
      
      private static var §[!A§:§&#!§;
      
      private static var §4j§:Boolean = true;
       
      
      private var §%$!§:Item = null;
      
      private var §'"V§:Boolean = false;
      
      private var §<"t§:String;
      
      private var §7"B§:Array;
      
      private var §`!$§:Array;
      
      private var §7!`§:Boolean = false;
      
      private var §-Y§:§&#t§;
      
      private var §8#k§:String;
      
      private var §9"7§:String;
      
      private var §?3§:Wallet;
      
      private var §[!6§:Boolean;
      
      private var §?X§:String;
      
      private var §&#S§:Boolean;
      
      private var §?#Q§:Array;
      
      private var §-I§:Array;
      
      private var §+#8§:Boolean = true;
      
      private var § m§:Array;
      
      private var §#"1§:Boolean = false;
      
      public function AvatarCreatorPopup(param1:int, param2:int, param3:String = null)
      {
         this.§7"B§ = [];
         this.§`!$§ = [];
         this.§ m§ = ["Cool Avatar!","Sweet Avatar!","Nice Avatar!","Awesome Avatar!"];
         super(param1,param2,§#D§.§%"l§(§5!t§),ID);
         this.§?X§ = param3;
      }
      
      public static function §>"_§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §@&§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function § "a§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §@&§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §`"§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §@&§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §4#b§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §@&§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §-#J§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §@&§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §>"1§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §@&§)
         {
            if(_loc2_.itemId == param1 && _loc2_.isNew == true && !_loc2_.available)
            {
               return true;
            }
         }
         return false;
      }
      
      protected static function get userProgress() : §2#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§;
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      override protected function init() : void
      {
         super.init();
         if(this.§?X§)
         {
            this.§8#k§ = this.§?X§;
         }
         if(userProgress.§!#h§("1000-2"))
         {
            §8#Y§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            §8#Y§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §%"%§ = AngryBirdsBase.SERVER_ROOT;
         if(§[!A§ == null)
         {
            §[!A§ = new §&#!§();
         }
         if(§@"%§(AngryBirdsBase.singleton.dataModel).§&$4§.§0"§)
         {
            this.§8"e§(true);
            §@"%§(AngryBirdsBase.singleton.dataModel).§&$4§.addEventListener(Event.COMPLETE,this.§%"9§);
         }
         this.§'"V§ = false;
      }
      
      protected function §&C§(param1:Event) : void
      {
         AngryBirdsBase.singleton.popupManager.§2;§(id);
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return §8#Y§.mClip.AvatarCreatorContainer.walletContainerClip;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
      
      private function §#"8§() : void
      {
         this.§8"e§(true);
         §@"%§(AngryBirdsBase.singleton.dataModel).§&$4§.loadItems();
         §@"%§(AngryBirdsBase.singleton.dataModel).§&$4§.addEventListener(Event.COMPLETE,this.§%"9§);
      }
      
      private function §%"9§(param1:Event) : void
      {
         §@"%§(AngryBirdsBase.singleton.dataModel).§&$4§.removeEventListener(Event.COMPLETE,this.§%"9§);
         this.§+#8§ = false;
         this.§67§();
      }
      
      private function §4"l§() : void
      {
         var _loc6_:§&!v§ = null;
         var _loc7_:int = 0;
         var _loc8_:§#$>§ = null;
         var _loc9_:Array = null;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc15_:String = null;
         var _loc1_:§>;§ = §8#Y§.getItemByName("Repeater_Items") as §>;§;
         var _loc2_:§>;§ = §8#Y§.getItemByName("Repeater_Tabs") as §>;§;
         var _loc3_:Class = §2"O§.§`>§("Tag_New");
         var _loc4_:Class = §2"O§.§`>§("Tag_Sale");
         this.§?#Q§ = new Array();
         this.§-I§ = new Array();
         if(§@#m§.§?q§.items.§%#Z§.length > 0)
         {
            _loc2_.§[e§("Repeater_Tabs_Tab_0").§'"g§(§@#m§.§?q§.items.§%#Z§[0].name as String);
            for each(_loc6_ in _loc2_.§,#i§)
            {
               _loc7_ = 0;
               for each(_loc8_ in _loc6_.§,#i§)
               {
                  if(§@#m§.§?q§.items.§%#Z§[_loc7_].name == _loc8_.name)
                  {
                     _loc9_ = §@#m§.§?q§.items.§%Z§(§@#m§.§?q§.items.§%#Z§[_loc7_].name);
                     _loc10_ = false;
                     _loc11_ = false;
                     _loc12_ = 0;
                     while(_loc12_ < _loc9_.length)
                     {
                        if(AvatarCreatorPopup.§>"1§(_loc9_[_loc12_].mId))
                        {
                           this.§?#Q§.push(_loc9_[_loc12_].mId);
                           if(!_loc10_)
                           {
                              _loc13_ = new _loc3_();
                              _loc13_.x += 7;
                              _loc13_.y += 10;
                              _loc8_.mClip.addChild(_loc13_);
                              _loc10_ = true;
                           }
                        }
                        if(AvatarCreatorPopup.§`"§(_loc9_[_loc12_].mId))
                        {
                           this.§-I§.push(_loc9_[_loc12_].mId);
                           if(!_loc11_)
                           {
                              _loc14_ = new _loc4_();
                              _loc8_.mClip.addChild(_loc14_);
                              _loc11_ = true;
                           }
                        }
                        _loc12_++;
                     }
                  }
                  _loc7_++;
               }
            }
         }
         var _loc5_:int = 0;
         while(_loc5_ < §@#m§.§?q§.items.§%#Z§.length)
         {
            _loc15_ = §@#m§.§?q§.items.§%#Z§[_loc5_].name;
            _loc1_.§[e§("Repeater_Items_Tab_" + _loc5_).§'"g§(_loc15_);
            _loc5_++;
         }
         _loc1_.§6!^§("Repeater_Items_Tab_0");
         _loc2_.§6!^§("Repeater_Tabs_Tab_0");
      }
      
      private function §8#_§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§[!A§)
         {
            if(§[!A§.parent)
            {
               if(§[!A§.parent.contains(§[!A§))
               {
                  §[!A§.parent.removeChild(§[!A§);
               }
            }
         }
         param1.addChild(§[!A§);
         §[!A§.scaleX = §[!A§.scaleY = param2;
         §[!A§.x = param3;
         §[!A§.y = param4;
      }
      
      private function §67§() : void
      {
         var _loc6_:§>#8§ = null;
         var _loc7_:Array = null;
         var _loc8_:Avatar = null;
         var _loc9_:§>#8§ = null;
         this.§'"V§ = true;
         var _loc1_:§>;§ = §8#Y§.getItemByName("Repeater_Items") as §>;§;
         _loc1_.§""]§(§"?§.§=>§(),§8#,§);
         var _loc2_:§>;§ = §8#Y§.getItemByName("Repeater_Tabs") as §>;§;
         _loc2_.§""]§(§"?§.§-C§(),§8#,§);
         this.§8"e§(false);
         if(§@&§ == null)
         {
            return;
         }
         var _loc3_:String = userProgress.userID;
         var _loc4_:String;
         if((_loc4_ = userProgress.avatarString) == null || _loc4_ == "")
         {
            this.§7!`§ = true;
         }
         var _loc5_:§1!"§;
         (_loc5_ = new §1!"§(_loc3_,false,§1!"§.§+$=§)).x = 13;
         _loc5_.y = 9;
         §8#Y§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc5_);
         if(§4j§)
         {
            _loc6_ = §8#Y§.getItemByName("AvatarHolderClip") as §>#8§;
            this.§8#_§(_loc6_.mClip);
            if(_loc4_ != "" && _loc4_ != null)
            {
               _loc7_ = §2$§.§-"^§(_loc4_);
               _loc8_ = §[!A§.§9+§(_loc7_);
               §@#m§.§?q§.§#U§ = _loc8_;
            }
            else
            {
               this.§5"3§(§@#m§.§["E§);
               §[!A§.§,"h§("backgrounds1");
            }
            this.§4"l§();
            §4j§ = false;
         }
         else
         {
            _loc9_ = §8#Y§.getItemByName("AvatarHolderClip") as §>#8§;
            this.§8#_§(_loc9_.mClip);
            §[!A§.§4p§();
            §[!A§.§2t§.§>"<§();
            this.§4"l§();
         }
         this.§@#4§(_loc2_);
         this.§9!$§();
      }
      
      private function §@#4§(param1:§>;§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(this.§8#k§)
         {
            _loc2_ = §"?§.§@"M§(this.§8#k§);
            if(_loc2_ != -1)
            {
               _loc3_ = this.§8#k§.substr("CATEGORY".length);
               §8#Y§.setText(_loc3_,"Textfield_CategoryTitle");
               param1.§6!^§("Repeater_Items_Tab_" + _loc2_);
               if(§@#m§.§?q§.items.§%#Z§.length > 0)
               {
                  param1.§[e§("Repeater_Tabs_Tab_0").§'"g§(§@#m§.§?q§.items.§%#Z§[_loc2_].name as String);
               }
            }
            this.§8#k§ = null;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var _loc4_:§#$>§ = null;
         var _loc5_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§8#,§ = null;
         var _loc14_:String = null;
         var _loc15_:int = 0;
         var _loc16_:§8#,§ = null;
         var _loc17_:String = null;
         var _loc18_:int = 0;
         var _loc19_:Array = null;
         var _loc20_:§,!K§ = null;
         var _loc22_:String = null;
         var _loc23_:Item = null;
         var _loc24_:CoinShopPopup = null;
         var _loc25_:String = null;
         var _loc26_:String = null;
         if(param3 is §#$>§)
         {
            _loc4_ = param3 as §#$>§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §&!v§)
               {
                  if(((_loc4_.mParentContainer as §&!v§).mParentContainer as §>;§).upperCaseName == "REPEATER_TABS")
                  {
                     if((_loc5_ = §"?§.§@"M§(param2)) != -1)
                     {
                        §[#%§.playSound("Shop_Selection",§[#%§.§-"I§,0,0.7);
                        param2.substr("CATEGORY".length);
                        (§8#Y§.getItemByName("Repeater_Items") as §>;§).§6!^§("Repeater_Items_Tab_" + _loc5_);
                        var _loc27_:int = 0;
                        var _loc28_:* = (_loc4_.mParentContainer as §&!v§).§,#i§;
                        while(§§hasnext(_loc28_,_loc27_))
                        {
                           (§§nextvalue(_loc27_,_loc28_) as §8#,§).§1#8§();
                        }
                        (param3 as §8#,§).§6$E§();
                        this.§,#b§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §&!v§).mParentContainer as §>;§).upperCaseName == "REPEATER_ITEMS")
                  {
                     §[#%§.playSound("Menu_Select",§[#%§.§-"I§);
                     if((_loc9_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§5"3§(param2);
                     }
                     else if(_loc9_ == 0)
                     {
                        this.§ !l§(param2.substring("REMOVE_".length));
                     }
                     this.§9!$§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc10_ = param2.toUpperCase().substr(4);
            _loc11_ = §"?§.§@"M§(_loc10_);
            _loc12_ = 0;
            for each(_loc13_ in ((param3 as §#$>§).mParentContainer as §&!v§).§,#i§)
            {
               if(_loc12_ != _loc11_)
               {
                  (_loc13_ as §8#,§).§1#8§();
               }
               else
               {
                  (_loc13_ as §8#,§).§6$E§();
               }
               _loc12_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc14_ = param2.toUpperCase().substr(3);
            _loc15_ = §"?§.§@"M§(_loc14_);
            _loc12_ = 0;
            for each(_loc16_ in ((param3 as §#$>§).mParentContainer as §&!v§).§,#i§)
            {
               if(_loc12_ == _loc15_)
               {
                  (_loc16_ as §8#,§).§1#8§();
               }
               _loc12_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §[#%§.playSound("Shop_Selection",§[#%§.§-"I§,0,0.7);
               §@#m§.§?q§.§#U§.§-?§();
               this.§9!$§();
               this.§,#b§();
               break;
            case "RANDOMIZE_AVATAR":
               §[#%§.playSound("Shop_Selection",§[#%§.§-"I§,0,0.7);
               §@#m§.§?q§.§#U§.§!#G§();
               this.§9!$§();
               break;
            case "BUY_THESE":
               §[#%§.playSound("Shop_Buy",§[#%§.§-"I§);
               _loc17_ = §2$§.§<"z§(this.§7"B§);
               _loc18_ = 0;
               for each(_loc23_ in this.§7"B§)
               {
                  _loc18_ += § "a§(_loc23_.mId);
               }
               if(_loc18_ > dataModel.§8!8§.§"$6§)
               {
                  this.§'"V§ = false;
                  (_loc24_ = new CoinShopPopup(§%#§.NORMAL,§9#5§.TOP,CoinShopPopup.§-$7§)).addEventListener(§5"_§.CLOSE,this.§[#j§);
                  AngryBirdsBase.singleton.popupManager.openPopup(_loc24_);
                  return;
               }
               this.§8"e§(true);
               this.§`!$§ = [];
               _loc19_ = _loc17_.split("-");
               for each(_loc25_ in _loc19_)
               {
                  _loc26_ = this.§>"@§(_loc25_);
                  §5"w§.§8>§(_loc26_);
                  this.§`!$§.push(_loc25_);
               }
               _loc20_ = new §,!K§(_loc17_,[]);
               new §1"i§(_loc20_,new §<#a§(1,0,_loc18_),ID).addEventListener(§8K§.§`#y§,this.§0"7§);
               break;
            case "SET_AVATAR":
               §[#%§.playSound("Shop_Selection",§[#%§.§-"I§,0,0.7);
               this.§7!`§ = false;
               this.§8"e§(true);
               _loc22_ = §@#m§.§?q§.§#U§.§+"5§();
               this.§=]§(_loc22_);
               this.§,#b§();
               break;
            case "SET_PROFILE":
               §[#%§.playSound("Shop_Selection",§[#%§.§-"I§,0,0.7);
               this.§7!`§ = true;
               this.§8"e§(true);
               this.§=]§("");
               this.§,#b§();
               break;
            case "CLOSE_AVATAR":
               close();
               break;
            case "BRANDED_SHOP":
               this.hide();
               break;
            case "EASTER_EGG_2":
               §8#Y§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               userProgress.§?!7§("1000-2");
               break;
            case "SCROLL_RIGHT":
               §[#%§.playSound("Shop_Selection",§[#%§.§-"I§,0,0.7);
               this.§,#b§();
               break;
            case "SCROLL_LEFT":
               §[#%§.playSound("Shop_Selection",§[#%§.§-"I§,0,0.7);
               this.§,#b§();
         }
      }
      
      protected function §[#j§(param1:Event) : void
      {
      }
      
      private function §>"@§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §@#m§.§?q§.§#U§.§6# §())
         {
            if(_loc2_.categorySID + _loc2_.sId == param1)
            {
               return _loc2_.name as String;
            }
         }
         return "";
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.§"[§(this.§?3§);
         super.hide(param1,param2);
      }
      
      private function §0$%§(param1:*) : void
      {
         this.§8"e§(false);
      }
      
      private function §7!7§() : void
      {
         this.§8"e§(false);
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         §5"w§.§^h§();
         §5"w§.trackPageView(this);
         var _loc2_:§>#8§ = §8#Y§.getItemByName("AvatarSavedAnimation") as §>#8§;
         _loc2_.setVisibility(false);
         this.§[D§(new Wallet(this,true,true,true));
         this.§?3§.§5#k§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§!!g§);
         §@#m§.§?q§.§3"y§();
         if(§[!A§.§2t§ == null)
         {
            §[!A§.§]!m§(§@#m§.§?q§.§7"3§());
         }
         if(!this.§'"V§)
         {
            this.§67§();
         }
      }
      
      private function §!!g§(param1:MouseEvent) : void
      {
         this.§'"V§ = false;
      }
      
      private function §,#F§(param1:Boolean) : void
      {
         var _loc2_:§%#5§ = null;
         var _loc3_:§8#,§ = null;
         for each(_loc2_ in §@#m§.§?q§.items.§%#Z§)
         {
            if(_loc2_.name.toUpperCase() != "CATEGORYBIRDS" && _loc2_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc3_ = §8#Y§.getItemByName(_loc2_.name.toUpperCase()) as §8#,§;
               _loc3_.setVisibility(param1);
            }
         }
      }
      
      private function §%!'§(param1:Boolean) : void
      {
         §8#Y§.getItemByName("Button_Unequip").setVisibility(param1);
         §8#Y§.getItemByName("Button_Random").setVisibility(param1);
      }
      
      public function §9!$§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§>;§ = §8#Y§.getItemByName("Repeater_Items") as §>;§;
         var _loc2_:Number = 0;
         while(_loc2_ < §@#m§.§?q§.items.§%#Z§.length)
         {
            _loc3_ = §@#m§.§?q§.items.§%#Z§[_loc2_].name;
            if((_loc4_ = §@#m§.§?q§.§#U§.§<#6§(_loc3_)) == null)
            {
               _loc1_.§[e§("Repeater_Items_Tab_" + _loc2_).§'"g§(_loc3_);
            }
            else
            {
               _loc1_.§[e§("Repeater_Items_Tab_" + _loc2_).§'"g§(_loc4_.mId);
               if(_loc3_.toUpperCase() == "CATEGORYBIRDS")
               {
                  if(_loc4_.mId.indexOf("GreenDay") > -1)
                  {
                     this.§,#F§(false);
                     this.§%!'§(false);
                  }
                  else
                  {
                     this.§,#F§(true);
                     this.§%!'§(true);
                  }
               }
            }
            _loc2_++;
         }
         this.§,#b§();
      }
      
      public function §0"7§(param1:Event = null) : void
      {
         var _loc2_:§1"i§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         this.§8"e§(false);
         if(param1 && param1.currentTarget is §1"i§)
         {
            _loc2_ = param1.currentTarget as §1"i§;
         }
         §5"w§.trackPageView(this,§5"w§.§9`§);
         var _loc3_:Array = new Array();
         for each(_loc4_ in this.§`!$§)
         {
            _loc5_ = this.§>"@§(_loc4_);
            §5"w§.§8"Q§(_loc5_);
            (_loc6_ = new Object()).sku = _loc4_;
            _loc6_.name = _loc5_;
            _loc6_.price = 0;
            _loc6_.quantity = 1;
            _loc3_.push(_loc6_);
         }
         §5"w§.trackTransactionItems(_loc2_.orderId,§[!_§,"1 x ",_loc3_);
         this.§`!$§ = [];
         if(param1 && param1.currentTarget is §1"i§)
         {
            (param1.currentTarget as §1"i§).removeEventListener(Event.COMPLETE,this.§0"7§);
         }
         this.§#"8§();
      }
      
      private function §=]§(param1:String) : void
      {
         this.§9"7§ = this.§<"t§;
         this.§<"t§ = param1;
         var _loc2_:URLRequest = §2"6§.§;z§(§%"%§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new §'!n§();
         _loc3_.addEventListener(Event.COMPLETE,this.§;#t§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§#!f§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1!c§);
         _loc3_.load(_loc2_);
      }
      
      protected function §1!c§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:§@#G§ = new WarningPopup(§%#§.§3t§,§9#5§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §;#t§(param1:Event) : void
      {
         var _loc2_:§3#=§ = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:§>#8§ = null;
         if(this.§<"t§ != null)
         {
            userProgress.avatarString = this.§<"t§;
            §%!2§.§@"1§(new § H§(this.§<"t§,userProgress.userID),true,true);
            §%#y§.§&"l§(this.§<"t§);
            _loc2_ = AngryBirdsBase.singleton.§1h§();
            if(_loc2_ is StateTournamentResults)
            {
               (_loc2_ as StateTournamentResults).§+!1§();
            }
            _loc3_ = this.§<"t§.split("-");
            for each(_loc4_ in _loc3_)
            {
               if(this.§9"7§)
               {
                  if(this.§9"7§.indexOf(_loc4_) == -1)
                  {
                     §5"w§.§!#-§(_loc4_);
                  }
               }
               else
               {
                  §5"w§.§!#-§(_loc4_);
               }
            }
         }
         if(this.§'"V§)
         {
            this.§8"e§(false);
            (_loc5_ = §8#Y§.getItemByName("AvatarSavedAnimation") as §>#8§).setVisibility(true);
            _loc5_.mClip.gotoAndPlay(1);
            this.§,#b§();
         }
      }
      
      private function §#!f§(param1:IOErrorEvent) : void
      {
         var _loc2_:§>#8§ = null;
         if(this.§'"V§)
         {
            this.§8"e§(false);
            _loc2_ = §8#Y§.getItemByName("AvatarSavedAnimation") as §>#8§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function § !l§(param1:String) : void
      {
         §@#m§.§?q§.§#U§.§ !l§(param1);
         this.§,#b§();
      }
      
      public function §5"3§(param1:String) : void
      {
         var _loc4_:Avatar = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §@#m§.§?q§.items.getItem(param1);
         var _loc3_:Avatar = §@#m§.§?q§.§#U§;
         if(_loc2_)
         {
            if(_loc2_.§1! §.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§@"e§().mId != _loc2_.mId)
            {
               _loc4_ = §@#m§.§?q§.§&!i§(_loc2_.mId);
               §[!A§.§]!m§(_loc4_,110,174);
               _loc4_.§-?§();
               _loc4_.§>"#§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§;#R§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §[!A§.§,"h§(_loc6_.mId);
                        }
                        _loc4_.§>"#§(_loc6_);
                     }
                  }
               }
               if(_loc4_.§<#6§("CATEGORYBACKGROUNDS") == null)
               {
                  _loc4_.§>"#§(§@#m§.§?q§.items.getItem("Backgrounds1"));
               }
            }
            else if(_loc2_.§1! §.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §[!A§.§,"h§(_loc2_.mId);
               §@#m§.§?q§.§#U§.§>"#§(_loc2_);
            }
            else
            {
               §@#m§.§?q§.§#U§.§>"#§(_loc2_);
            }
         }
         else
         {
            §=#f§.log("[Warning!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§,#b§();
      }
      
      private function §,#b§() : void
      {
         var _loc3_:§%#5§ = null;
         var _loc4_:Item = null;
         var _loc10_:Array = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc15_:§8#,§ = null;
         var _loc16_:int = 0;
         var _loc17_:Array = null;
         var _loc18_:§&"Y§ = null;
         var _loc20_:Boolean = false;
         var _loc21_:Object = null;
         var _loc22_:§"S§ = null;
         var _loc23_:§"S§ = null;
         var _loc24_:§>#8§ = null;
         var _loc25_:§>#8§ = null;
         var _loc26_:§>#8§ = null;
         var _loc27_:§>#8§ = null;
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = false;
         var _loc30_:Boolean = false;
         var _loc31_:Boolean = false;
         var _loc32_:int = 0;
         var _loc33_:§8#,§ = null;
         var _loc34_:Object = null;
         var _loc1_:int = 0;
         this.§#"1§ = false;
         var _loc2_:String = userProgress.avatarString;
         if(_loc2_ != null && _loc2_ != "")
         {
            _loc10_ = _loc2_.split("-");
            _loc12_ = §@#m§.§?q§.§#U§.§+"5§().split("-");
            if(_loc10_.length != _loc12_.length)
            {
               this.§#"1§ = true;
            }
            for each(_loc13_ in _loc12_)
            {
               if(_loc2_.indexOf(_loc13_) == -1)
               {
                  this.§#"1§ = true;
               }
            }
         }
         for each(_loc3_ in §@#m§.§?q§.items.§%#Z§)
         {
            (§8#Y§.getItemByName(_loc3_.name.toUpperCase()) as §8#,§).§9!L§();
         }
         this.§7"B§ = [];
         for each(_loc4_ in §@#m§.§?q§.§#U§.§;#R§)
         {
            _loc15_ = §8#Y§.getItemByName(_loc4_.category.toUpperCase()) as §8#,§;
            _loc16_ = § "a§(_loc4_.mId);
            _loc15_.§1$§(_loc4_.mId,_loc16_);
            if(_loc16_ > 0)
            {
               this.§7"B§.push(_loc4_);
            }
            _loc1_ += _loc16_;
         }
         if(_loc1_ > 0)
         {
            §8#Y§.getItemByName("BuyTheseButton").setVisibility(true);
            §8#Y§.getItemByName("Textfield_Price").setVisibility(true);
            §8#Y§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            §8#Y§.getItemByName("BuyTheseButton").setVisibility(false);
            §8#Y§.getItemByName("Textfield_Price").setVisibility(false);
            §8#Y§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§7!`§)
         {
            (§8#Y§.getItemByName("SetAvatarProfileButton") as §"S§).setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (§8#Y§.getItemByName("SetFacebookProfileButton") as §"S§).setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
         }
         else if(_loc1_ > 0)
         {
            (§8#Y§.getItemByName("SetAvatarProfileButton") as §"S§).setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (§8#Y§.getItemByName("SetFacebookProfileButton") as §"S§).setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (§8#Y§.getItemByName("SetFacebookProfileButton") as §"S§).setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(this.§#"1§)
            {
               (§8#Y§.getItemByName("SetAvatarProfileButton") as §"S§).setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (§8#Y§.getItemByName("SetAvatarProfileButton") as §"S§).setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
            }
         }
         §8#Y§.setText(_loc1_ + "","Textfield_Price");
         if(this.§-Y§ == null)
         {
            this.§-Y§ = new §&#t§();
            this.§-Y§.§[[§();
         }
         var _loc5_:§"S§ = §8#Y§.getItemByName("SetAvatarProfileButton") as §"S§;
         while(_loc5_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc5_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc6_:String = §@#m§.§?q§.§#U§.§+"5§();
         var _loc7_:Bitmap;
         (_loc7_ = new Bitmap(this.§-Y§.render(_loc6_,null))).x = -8;
         _loc7_.y = -12;
         _loc5_.mClip.SetAvatarHolder.addChild(_loc7_);
         var _loc8_:§>;§ = §8#Y§.getItemByName("Repeater_Items") as §>;§;
         var _loc9_:§&!v§;
         if(_loc9_ = §8#Y§.getItemByName(_loc8_.§&"'§) as §&!v§)
         {
            §8#Y§.setText("Page " + (_loc9_.§#"0§ + 1).toString() + "/" + _loc9_.§%$8§,"Textfield_PageNumber");
            if(_loc9_.§%$8§ == 1)
            {
               §8#Y§.getItemByName("Textfield_PageNumber").setVisibility(false);
               §8#Y§.getItemByName("Button_Scroll1").setVisibility(false);
               §8#Y§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               §8#Y§.getItemByName("Textfield_PageNumber").setVisibility(true);
               _loc22_ = §8#Y§.getItemByName("Button_Scroll1") as §"S§;
               _loc23_ = §8#Y§.getItemByName("Button_Scroll2") as §"S§;
               _loc24_ = §8#Y§.getItemByName("NewTag_left") as §>#8§;
               _loc25_ = §8#Y§.getItemByName("NewTag_right") as §>#8§;
               _loc26_ = §8#Y§.getItemByName("SaleTag_left") as §>#8§;
               _loc27_ = §8#Y§.getItemByName("SaleTag_right") as §>#8§;
               _loc22_.setVisibility(true);
               _loc23_.setVisibility(true);
               _loc28_ = false;
               _loc29_ = false;
               _loc30_ = false;
               _loc31_ = false;
               _loc32_ = 0;
               while(_loc32_ < _loc9_.§,#i§.length)
               {
                  if(this.§2#v§(_loc9_.§,#i§[_loc32_].name))
                  {
                     if(_loc32_ < _loc9_.§#"0§ * _loc9_.§5`§)
                     {
                        _loc28_ = true;
                     }
                     else if(_loc32_ > _loc9_.§#"0§ * _loc9_.§5`§ + _loc9_.§5`§ - 1)
                     {
                        _loc29_ = true;
                     }
                  }
                  if(this.§7"#§(_loc9_.§,#i§[_loc32_].name))
                  {
                     if(_loc32_ < _loc9_.§#"0§ * _loc9_.§5`§)
                     {
                        _loc30_ = true;
                     }
                     else if(_loc32_ > _loc9_.§#"0§ * _loc9_.§5`§ + _loc9_.§5`§ - 1)
                     {
                        _loc31_ = true;
                     }
                  }
                  _loc32_++;
               }
               _loc24_.visible = _loc28_;
               _loc25_.visible = _loc29_;
               _loc26_.visible = _loc30_;
               _loc27_.visible = _loc31_;
            }
            _loc17_ = new Array();
            _loc18_ = §@"%§(AngryBirdsBase.singleton.dataModel).§"<§;
            var _loc35_:int = 0;
            var _loc36_:* = _loc9_.§,#i§;
            while(§§hasnext(_loc36_,_loc35_))
            {
               if((_loc33_ = §§nextvalue(_loc35_,_loc36_) as §8#,§).visible)
               {
                  for each(_loc34_ in §@&§)
                  {
                     if(_loc34_.isNew && _loc34_.itemId == _loc33_.name)
                     {
                        _loc34_.isNew = false;
                        if(_loc18_.§,"!§(_loc34_.itemId))
                        {
                           _loc17_.push(_loc34_.itemId);
                        }
                     }
                  }
               }
            }
            _loc18_.§6#b§(§&"Y§.§&#G§,_loc17_);
            _loc20_ = false;
            for each(_loc21_ in §@&§)
            {
               if(_loc21_.isNew == true && !_loc21_.available)
               {
                  _loc20_ = true;
                  break;
               }
            }
            §@"%§(AngryBirdsBase.singleton.dataModel).§<!w§ = _loc20_;
         }
      }
      
      private function §2#v§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?#Q§.length)
         {
            if(this.§?#Q§[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      private function §7"#§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-I§.length)
         {
            if(this.§-I§[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §<"r§() : String
      {
         return §5"w§.§3#R§;
      }
      
      public function §5!R§() : String
      {
         return §5"w§.§0q§;
      }
      
      public function §+"n§() : String
      {
         return this.§<"r§() + "-" + this.§5!R§();
      }
      
      private function §8"e§(param1:Boolean) : void
      {
         if(§8#Y§)
         {
            §8#Y§.getItemByName("WaitingForReply").setVisibility(param1);
         }
         if(this.§?3§)
         {
            this.§?3§.§8#h§(!param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§'"V§ = false;
         super.dispose();
      }
   }
}
