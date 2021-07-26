package §?Q§
{
   import § "L§.§!U§;
   import § "L§.§"!A§;
   import § "L§.§+!u§;
   import § "L§.§1"r§;
   import § "L§.§[" §;
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §!!L§.StateTournamentResults;
   import §!L§.§`#u§;
   import §#"4§.§2"M§;
   import §#"4§.§<"G§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §,#,§.§=#o§;
   import §-!W§.§?$$§;
   import §2!Y§.§"$=§;
   import §2!Y§.§5S§;
   import §2G§.§&"P§;
   import §2G§.§?!s§;
   import §2G§.§?$3§;
   import §3"V§.§ b§;
   import §4",§.§&#O§;
   import §4",§.§9#H§;
   import §4",§.Avatar;
   import §4§.§7j§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §6"p§.§1$"§;
   import §6"p§.§^"t§;
   import §7"&§.§1k§;
   import §;#>§.§7!^§;
   import §>#l§.§=#j§;
   import §>#q§.§8#Z§;
   import §>#q§.§^!"§;
   import §@`§.§7a§;
   import §@`§.Item;
   import §[#V§.§1!>§;
   import §[c§.§ #a§;
   import §]"U§.CoinShopPopup;
   import §^"3§.§ #&§;
   import §^"3§.§^"C§;
   import §^"3§.§`$4§;
   import §`D§.§'"j§;
   import §`D§.§2_§;
   import com.rovio.assets.§[a§;
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
   
   public class AvatarCreatorPopup extends AbstractPopup implements §+#?§, §2"M§, §1k§
   {
      
      public static const ID:String = "AvatarCreatorPopup";
      
      private static const §&v§:String = "In-app Shop Avatars";
      
      private static var §?"`§:Class = §`"x§;
      
      public static var §`"6§:String;
      
      public static const STATE_NAME:String = "CreatorState";
      
      private static var §!"Q§:String;
      
      public static var §>!D§:Array;
      
      private static var §#!o§:§9#H§;
      
      private static var §="N§:Boolean = true;
       
      
      private var §?#g§:Item = null;
      
      private var §""u§:Boolean = false;
      
      private var §4$=§:String;
      
      private var § 7§:Array;
      
      private var §;"1§:Array;
      
      private var §3!`§:Boolean = false;
      
      private var §3"s§:§&"P§;
      
      private var §>$9§:String;
      
      private var §["+§:String;
      
      private var §"#W§:Wallet;
      
      private var §'"2§:Boolean;
      
      private var §3#d§:String;
      
      private var §9$5§:Boolean;
      
      private var §@#4§:Array;
      
      private var §>"R§:Array;
      
      private var §,!N§:Boolean = true;
      
      private var §3#P§:Array;
      
      private var §70§:Boolean = false;
      
      public function AvatarCreatorPopup(param1:int, param2:int, param3:String = null)
      {
         this.§ 7§ = [];
         this.§;"1§ = [];
         this.§3#P§ = ["Cool Avatar!","Sweet Avatar!","Nice Avatar!","Awesome Avatar!"];
         super(param1,param2,§1$"§.§%Z§(§?"`§),ID);
         this.§3#d§ = param3;
      }
      
      public static function §[#Y§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §>!D§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §^$§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §>!D§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §>!1§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §>!D§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §##K§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §>!D§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §3!b§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §>!D§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §0!`§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §>!D§)
         {
            if(_loc2_.itemId == param1 && _loc2_.isNew == true && !_loc2_.available)
            {
               return true;
            }
         }
         return false;
      }
      
      protected static function get userProgress() : §`#u§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §`#u§;
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      override protected function init() : void
      {
         super.init();
         if(this.§3#d§)
         {
            this.§>$9§ = this.§3#d§;
         }
         if(userProgress.§`p§("1000-2"))
         {
            §;#'§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            §;#'§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §`"6§ = AngryBirdsBase.SERVER_ROOT;
         if(§#!o§ == null)
         {
            §#!o§ = new §9#H§();
         }
         if(§=#o§(AngryBirdsBase.singleton.dataModel).§+!<§.§9$$§)
         {
            this.§6">§(true);
            §=#o§(AngryBirdsBase.singleton.dataModel).§+!<§.addEventListener(Event.COMPLETE,this.§%!n§);
         }
         this.§""u§ = false;
      }
      
      protected function §'"1§(param1:Event) : void
      {
         AngryBirdsBase.singleton.popupManager.§0"O§(id);
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function §7=§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return §;#'§.mClip.AvatarCreatorContainer.walletContainerClip;
      }
      
      public function get §[!a§() : Wallet
      {
         return this.§"#W§;
      }
      
      private function §`!4§() : void
      {
         this.§6">§(true);
         §=#o§(AngryBirdsBase.singleton.dataModel).§+!<§.loadItems();
         §=#o§(AngryBirdsBase.singleton.dataModel).§+!<§.addEventListener(Event.COMPLETE,this.§%!n§);
      }
      
      private function §%!n§(param1:Event) : void
      {
         §=#o§(AngryBirdsBase.singleton.dataModel).§+!<§.removeEventListener(Event.COMPLETE,this.§%!n§);
         this.§,!N§ = false;
         this.§+!P§();
      }
      
      private function §"!G§() : void
      {
         var _loc6_:§+!u§ = null;
         var _loc7_:int = 0;
         var _loc8_:§^"C§ = null;
         var _loc9_:Array = null;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc15_:String = null;
         var _loc1_:§!U§ = §;#'§.getItemByName("Repeater_Items") as §!U§;
         var _loc2_:§!U§ = §;#'§.getItemByName("Repeater_Tabs") as §!U§;
         var _loc3_:Class = §[a§.§8#k§("Tag_New");
         var _loc4_:Class = §[a§.§8#k§("Tag_Sale");
         this.§@#4§ = new Array();
         this.§>"R§ = new Array();
         if(§7j§.§+!,§.items.§]"<§.length > 0)
         {
            _loc2_.§&"C§("Repeater_Tabs_Tab_0").§-"c§(§7j§.§+!,§.items.§]"<§[0].name as String);
            for each(_loc6_ in _loc2_.§2p§)
            {
               _loc7_ = 0;
               for each(_loc8_ in _loc6_.§2p§)
               {
                  if(§7j§.§+!,§.items.§]"<§[_loc7_].name == _loc8_.name)
                  {
                     _loc9_ = §7j§.§+!,§.items.§'$C§(§7j§.§+!,§.items.§]"<§[_loc7_].name);
                     _loc10_ = false;
                     _loc11_ = false;
                     _loc12_ = 0;
                     while(_loc12_ < _loc9_.length)
                     {
                        if(AvatarCreatorPopup.§0!`§(_loc9_[_loc12_].mId))
                        {
                           this.§@#4§.push(_loc9_[_loc12_].mId);
                           if(!_loc10_)
                           {
                              _loc13_ = new _loc3_();
                              _loc13_.x += 7;
                              _loc13_.y += 10;
                              _loc8_.mClip.addChild(_loc13_);
                              _loc10_ = true;
                           }
                        }
                        if(AvatarCreatorPopup.§>!1§(_loc9_[_loc12_].mId))
                        {
                           this.§>"R§.push(_loc9_[_loc12_].mId);
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
         while(_loc5_ < §7j§.§+!,§.items.§]"<§.length)
         {
            _loc15_ = §7j§.§+!,§.items.§]"<§[_loc5_].name;
            _loc1_.§&"C§("Repeater_Items_Tab_" + _loc5_).§-"c§(_loc15_);
            _loc5_++;
         }
         _loc1_.§=!-§("Repeater_Items_Tab_0");
         _loc2_.§=!-§("Repeater_Tabs_Tab_0");
      }
      
      private function §4!Y§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§#!o§)
         {
            if(§#!o§.parent)
            {
               if(§#!o§.parent.contains(§#!o§))
               {
                  §#!o§.parent.removeChild(§#!o§);
               }
            }
         }
         param1.addChild(§#!o§);
         §#!o§.scaleX = §#!o§.scaleY = param2;
         §#!o§.x = param3;
         §#!o§.y = param4;
      }
      
      private function §+!P§() : void
      {
         var _loc6_:§"!A§ = null;
         var _loc7_:Array = null;
         var _loc8_:Avatar = null;
         var _loc9_:§"!A§ = null;
         this.§""u§ = true;
         var _loc1_:§!U§ = §;#'§.getItemByName("Repeater_Items") as §!U§;
         _loc1_.§ #`§(§?$$§.§-!j§(),§&#O§);
         var _loc2_:§!U§ = §;#'§.getItemByName("Repeater_Tabs") as §!U§;
         _loc2_.§ #`§(§?$$§.§1"$§(),§&#O§);
         this.§6">§(false);
         if(§>!D§ == null)
         {
            return;
         }
         var _loc3_:String = userProgress.userID;
         var _loc4_:String;
         if((_loc4_ = userProgress.avatarString) == null || _loc4_ == "")
         {
            this.§3!`§ = true;
         }
         var _loc5_:§?!s§;
         (_loc5_ = new §?!s§(_loc3_,false,§?!s§.§'!n§)).x = 13;
         _loc5_.y = 9;
         §;#'§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc5_);
         if(§="N§)
         {
            _loc6_ = §;#'§.getItemByName("AvatarHolderClip") as §"!A§;
            this.§4!Y§(_loc6_.mClip);
            if(_loc4_ != "" && _loc4_ != null)
            {
               _loc7_ = §=#j§.§+!T§(_loc4_);
               _loc8_ = §#!o§.§^!m§(_loc7_);
               §7j§.§+!,§.§?"9§ = _loc8_;
            }
            else
            {
               this.§6!t§(§7j§.§>#0§);
               §#!o§.§##T§("backgrounds1");
            }
            this.§"!G§();
            §="N§ = false;
         }
         else
         {
            _loc9_ = §;#'§.getItemByName("AvatarHolderClip") as §"!A§;
            this.§4!Y§(_loc9_.mClip);
            §#!o§.§;"b§();
            §#!o§.§>#K§.§;+§();
            this.§"!G§();
         }
         this.§%"^§(_loc2_);
         this.§6!1§();
      }
      
      private function §%"^§(param1:§!U§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(this.§>$9§)
         {
            _loc2_ = §?$$§.§]!3§(this.§>$9§);
            if(_loc2_ != -1)
            {
               _loc3_ = this.§>$9§.substr("CATEGORY".length);
               §;#'§.setText(_loc3_,"Textfield_CategoryTitle");
               param1.§=!-§("Repeater_Items_Tab_" + _loc2_);
               if(§7j§.§+!,§.items.§]"<§.length > 0)
               {
                  param1.§&"C§("Repeater_Tabs_Tab_0").§-"c§(§7j§.§+!,§.items.§]"<§[_loc2_].name as String);
               }
            }
            this.§>$9§ = null;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var _loc4_:§^"C§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§!U§ = null;
         var _loc8_:§[" § = null;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§&#O§ = null;
         var _loc14_:String = null;
         var _loc15_:int = 0;
         var _loc16_:§&#O§ = null;
         var _loc17_:String = null;
         var _loc18_:int = 0;
         var _loc19_:Array = null;
         var _loc20_:§2_§ = null;
         var _loc21_:§8#Z§ = null;
         var _loc22_:String = null;
         var _loc23_:Item = null;
         var _loc24_:CoinShopPopup = null;
         var _loc25_:String = null;
         var _loc26_:String = null;
         if(param3 is §^"C§)
         {
            _loc4_ = param3 as §^"C§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §+!u§)
               {
                  if(((_loc4_.mParentContainer as §+!u§).mParentContainer as §!U§).upperCaseName == "REPEATER_TABS")
                  {
                     if((_loc5_ = §?$$§.§]!3§(param2)) != -1)
                     {
                        § b§.playSound("Shop_Selection",§ b§.§;$5§,0,0.7);
                        _loc6_ = param2.substr("CATEGORY".length);
                        (_loc7_ = §;#'§.getItemByName("Repeater_Items") as §!U§).§=!-§("Repeater_Items_Tab_" + _loc5_);
                        for each(_loc8_ in (_loc4_.mParentContainer as §+!u§).§2p§)
                        {
                           (_loc8_ as §&#O§).§"#L§();
                        }
                        (param3 as §&#O§).§2"c§();
                        this.§33§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §+!u§).mParentContainer as §!U§).upperCaseName == "REPEATER_ITEMS")
                  {
                     § b§.playSound("Menu_Select",§ b§.§;$5§);
                     if((_loc9_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§6!t§(param2);
                     }
                     else if(_loc9_ == 0)
                     {
                        this.§`"u§(param2.substring("REMOVE_".length));
                     }
                     this.§6!1§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc10_ = param2.toUpperCase().substr(4);
            _loc11_ = §?$$§.§]!3§(_loc10_);
            _loc12_ = 0;
            for each(_loc13_ in ((param3 as §^"C§).mParentContainer as §+!u§).§2p§)
            {
               if(_loc12_ != _loc11_)
               {
                  (_loc13_ as §&#O§).§"#L§();
               }
               else
               {
                  (_loc13_ as §&#O§).§2"c§();
               }
               _loc12_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc14_ = param2.toUpperCase().substr(3);
            _loc15_ = §?$$§.§]!3§(_loc14_);
            _loc12_ = 0;
            for each(_loc16_ in ((param3 as §^"C§).mParentContainer as §+!u§).§2p§)
            {
               if(_loc12_ == _loc15_)
               {
                  (_loc16_ as §&#O§).§"#L§();
               }
               _loc12_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               § b§.playSound("Shop_Selection",§ b§.§;$5§,0,0.7);
               §7j§.§+!,§.§?"9§.§-R§();
               this.§6!1§();
               this.§33§();
               break;
            case "RANDOMIZE_AVATAR":
               § b§.playSound("Shop_Selection",§ b§.§;$5§,0,0.7);
               §7j§.§+!,§.§?"9§.§%!r§();
               this.§6!1§();
               break;
            case "BUY_THESE":
               § b§.playSound("Shop_Buy",§ b§.§;$5§);
               _loc17_ = §=#j§.§0$-§(this.§ 7§);
               _loc18_ = 0;
               for each(_loc23_ in this.§ 7§)
               {
                  _loc18_ += §^$§(_loc23_.mId);
               }
               if(_loc18_ > dataModel.§1q§.§#"+§)
               {
                  this.§""u§ = false;
                  (_loc24_ = new CoinShopPopup(§@#D§.NORMAL,§5R§.TOP,CoinShopPopup.§<!7§)).addEventListener(§7!^§.CLOSE,this.§!"v§);
                  AngryBirdsBase.singleton.popupManager.openPopup(_loc24_);
                  return;
               }
               this.§6">§(true);
               this.§;"1§ = [];
               _loc19_ = _loc17_.split("-");
               for each(_loc25_ in _loc19_)
               {
                  _loc26_ = this.§+#h§(_loc25_);
                  §<"G§.§%#H§(_loc26_);
                  this.§;"1§.push(_loc25_);
               }
               _loc20_ = new §2_§(_loc17_,[]);
               (_loc21_ = new §8#Z§(_loc20_,new §'"j§(1,0,_loc18_),ID)).addEventListener(§1!>§.§^#b§,this.§3!G§);
               break;
            case "SET_AVATAR":
               § b§.playSound("Shop_Selection",§ b§.§;$5§,0,0.7);
               this.§3!`§ = false;
               this.§6">§(true);
               _loc22_ = §7j§.§+!,§.§?"9§.§-C§();
               this.§-"@§(_loc22_);
               this.§33§();
               break;
            case "SET_PROFILE":
               § b§.playSound("Shop_Selection",§ b§.§;$5§,0,0.7);
               this.§3!`§ = true;
               this.§6">§(true);
               this.§-"@§("");
               this.§33§();
               break;
            case "CLOSE_AVATAR":
               close();
               break;
            case "BRANDED_SHOP":
               this.hide();
               break;
            case "EASTER_EGG_2":
               §;#'§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               userProgress.§0a§("1000-2");
               break;
            case "SCROLL_RIGHT":
               § b§.playSound("Shop_Selection",§ b§.§;$5§,0,0.7);
               this.§33§();
               break;
            case "SCROLL_LEFT":
               § b§.playSound("Shop_Selection",§ b§.§;$5§,0,0.7);
               this.§33§();
         }
      }
      
      protected function §!"v§(param1:Event) : void
      {
      }
      
      private function §+#h§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §7j§.§+!,§.§?"9§.§7x§())
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
         this.§7=§(this.§"#W§);
         super.hide(param1,param2);
      }
      
      private function §6q§(param1:*) : void
      {
         this.§6">§(false);
      }
      
      private function §[!H§() : void
      {
         this.§6">§(false);
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         §<"G§.§1!!§();
         §<"G§.trackPageView(this);
         var _loc2_:§"!A§ = §;#'§.getItemByName("AvatarSavedAnimation") as §"!A§;
         _loc2_.setVisibility(false);
         this.§6"h§(new Wallet(this,true,true,true));
         this.§"#W§.§`#8§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§"$9§);
         §7j§.§+!,§.§>!E§();
         if(§#!o§.§>#K§ == null)
         {
            §#!o§.§4!r§(§7j§.§+!,§.§5#s§());
         }
         if(!this.§""u§)
         {
            this.§+!P§();
         }
      }
      
      private function §"$9§(param1:MouseEvent) : void
      {
         this.§""u§ = false;
      }
      
      private function §["m§(param1:Boolean) : void
      {
         var _loc2_:§7a§ = null;
         var _loc3_:§&#O§ = null;
         for each(_loc2_ in §7j§.§+!,§.items.§]"<§)
         {
            if(_loc2_.name.toUpperCase() != "CATEGORYBIRDS" && _loc2_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc3_ = §;#'§.getItemByName(_loc2_.name.toUpperCase()) as §&#O§;
               _loc3_.setVisibility(param1);
            }
         }
      }
      
      private function §?_§(param1:Boolean) : void
      {
         §;#'§.getItemByName("Button_Unequip").setVisibility(param1);
         §;#'§.getItemByName("Button_Random").setVisibility(param1);
      }
      
      public function §6!1§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§!U§ = §;#'§.getItemByName("Repeater_Items") as §!U§;
         var _loc2_:Number = 0;
         while(_loc2_ < §7j§.§+!,§.items.§]"<§.length)
         {
            _loc3_ = §7j§.§+!,§.items.§]"<§[_loc2_].name;
            if((_loc4_ = §7j§.§+!,§.§?"9§.§^"B§(_loc3_)) == null)
            {
               _loc1_.§&"C§("Repeater_Items_Tab_" + _loc2_).§-"c§(_loc3_);
            }
            else
            {
               _loc1_.§&"C§("Repeater_Items_Tab_" + _loc2_).§-"c§(_loc4_.mId);
               if(_loc3_.toUpperCase() == "CATEGORYBIRDS")
               {
                  if(_loc4_.mId.indexOf("GreenDay") > -1)
                  {
                     this.§["m§(false);
                     this.§?_§(false);
                  }
                  else
                  {
                     this.§["m§(true);
                     this.§?_§(true);
                  }
               }
            }
            _loc2_++;
         }
         this.§33§();
      }
      
      public function §3!G§(param1:Event = null) : void
      {
         var _loc2_:§8#Z§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         this.§6">§(false);
         if(param1 && param1.currentTarget is §8#Z§)
         {
            _loc2_ = param1.currentTarget as §8#Z§;
         }
         §<"G§.trackPageView(this,§<"G§.§4"<§);
         var _loc3_:Array = new Array();
         for each(_loc4_ in this.§;"1§)
         {
            _loc5_ = this.§+#h§(_loc4_);
            §<"G§.§6!k§(_loc5_);
            (_loc6_ = new Object()).sku = _loc4_;
            _loc6_.name = _loc5_;
            _loc6_.price = 0;
            _loc6_.quantity = 1;
            _loc3_.push(_loc6_);
         }
         §<"G§.trackTransactionItems(_loc2_.orderId,§&v§,"1 x ",_loc3_);
         this.§;"1§ = [];
         if(param1 && param1.currentTarget is §8#Z§)
         {
            (param1.currentTarget as §8#Z§).removeEventListener(Event.COMPLETE,this.§3!G§);
         }
         this.§`!4§();
      }
      
      private function §-"@§(param1:String) : void
      {
         this.§["+§ = this.§4$=§;
         this.§4$=§ = param1;
         var _loc2_:URLRequest = §?#l§.§2#=§(§`"6§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new §-$C§();
         _loc3_.addEventListener(Event.COMPLETE,this.§#[§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§`#1§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-$,§);
         _loc3_.load(_loc2_);
      }
      
      protected function §-$,§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:§,#@§ = new WarningPopup(§@#D§.§,"4§,§5R§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §#[§(param1:Event) : void
      {
         var _loc2_:§ #a§ = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:§"!A§ = null;
         if(this.§4$=§ != null)
         {
            userProgress.avatarString = this.§4$=§;
            §"$=§.§1" §(new §5S§(this.§4$=§,userProgress.userID),true,true);
            §?$3§.§2!M§(this.§4$=§);
            _loc2_ = AngryBirdsBase.singleton.§9"n§();
            if(_loc2_ is StateTournamentResults)
            {
               (_loc2_ as StateTournamentResults).§&!b§();
            }
            _loc3_ = this.§4$=§.split("-");
            for each(_loc4_ in _loc3_)
            {
               if(this.§["+§)
               {
                  if(this.§["+§.indexOf(_loc4_) == -1)
                  {
                     §<"G§.§"";§(_loc4_);
                  }
               }
               else
               {
                  §<"G§.§"";§(_loc4_);
               }
            }
         }
         if(this.§""u§)
         {
            this.§6">§(false);
            (_loc5_ = §;#'§.getItemByName("AvatarSavedAnimation") as §"!A§).setVisibility(true);
            _loc5_.mClip.gotoAndPlay(1);
            this.§33§();
         }
      }
      
      private function §`#1§(param1:IOErrorEvent) : void
      {
         var _loc2_:§"!A§ = null;
         if(this.§""u§)
         {
            this.§6">§(false);
            _loc2_ = §;#'§.getItemByName("AvatarSavedAnimation") as §"!A§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §`"u§(param1:String) : void
      {
         §7j§.§+!,§.§?"9§.§`"u§(param1);
         this.§33§();
      }
      
      public function §6!t§(param1:String) : void
      {
         var _loc4_:Avatar = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §7j§.§+!,§.items.getItem(param1);
         var _loc3_:Avatar = §7j§.§+!,§.§?"9§;
         if(_loc2_)
         {
            if(_loc2_.§'!P§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§@"$§().mId != _loc2_.mId)
            {
               _loc4_ = §7j§.§+!,§.§>q§(_loc2_.mId);
               §#!o§.§4!r§(_loc4_,110,174);
               _loc4_.§-R§();
               _loc4_.§9t§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§;"E§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §#!o§.§##T§(_loc6_.mId);
                        }
                        _loc4_.§9t§(_loc6_);
                     }
                  }
               }
               if((_loc5_ = _loc4_.§^"B§("CATEGORYBACKGROUNDS")) == null)
               {
                  _loc4_.§9t§(§7j§.§+!,§.items.getItem("Backgrounds1"));
               }
            }
            else if(_loc2_.§'!P§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §#!o§.§##T§(_loc2_.mId);
               §7j§.§+!,§.§?"9§.§9t§(_loc2_);
            }
            else
            {
               §7j§.§+!,§.§?"9§.§9t§(_loc2_);
            }
         }
         else
         {
            §^"t§.log("[Warning!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§33§();
      }
      
      private function §33§() : void
      {
         var _loc3_:§7a§ = null;
         var _loc4_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc14_:§&#O§ = null;
         var _loc15_:§&#O§ = null;
         var _loc16_:int = 0;
         var _loc17_:Array = null;
         var _loc18_:§^!"§ = null;
         var _loc19_:§&#O§ = null;
         var _loc20_:Boolean = false;
         var _loc21_:Object = null;
         var _loc22_:§1"r§ = null;
         var _loc23_:§1"r§ = null;
         var _loc24_:§"!A§ = null;
         var _loc25_:§"!A§ = null;
         var _loc26_:§"!A§ = null;
         var _loc27_:§"!A§ = null;
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = false;
         var _loc30_:Boolean = false;
         var _loc31_:Boolean = false;
         var _loc32_:int = 0;
         var _loc33_:§&#O§ = null;
         var _loc34_:Object = null;
         var _loc1_:int = 0;
         this.§70§ = false;
         var _loc2_:String = userProgress.avatarString;
         if(_loc2_ != null && _loc2_ != "")
         {
            _loc10_ = _loc2_.split("-");
            _loc12_ = (_loc11_ = §7j§.§+!,§.§?"9§.§-C§()).split("-");
            if(_loc10_.length != _loc12_.length)
            {
               this.§70§ = true;
            }
            for each(_loc13_ in _loc12_)
            {
               if(_loc2_.indexOf(_loc13_) == -1)
               {
                  this.§70§ = true;
               }
            }
         }
         for each(_loc3_ in §7j§.§+!,§.items.§]"<§)
         {
            (_loc14_ = §;#'§.getItemByName(_loc3_.name.toUpperCase()) as §&#O§).§9#w§();
         }
         this.§ 7§ = [];
         for each(_loc4_ in §7j§.§+!,§.§?"9§.§;"E§)
         {
            _loc15_ = §;#'§.getItemByName(_loc4_.category.toUpperCase()) as §&#O§;
            _loc16_ = §^$§(_loc4_.mId);
            _loc15_.§4O§(_loc4_.mId,_loc16_);
            if(_loc16_ > 0)
            {
               this.§ 7§.push(_loc4_);
            }
            _loc1_ += _loc16_;
         }
         if(_loc1_ > 0)
         {
            §;#'§.getItemByName("BuyTheseButton").setVisibility(true);
            §;#'§.getItemByName("Textfield_Price").setVisibility(true);
            §;#'§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            §;#'§.getItemByName("BuyTheseButton").setVisibility(false);
            §;#'§.getItemByName("Textfield_Price").setVisibility(false);
            §;#'§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§3!`§)
         {
            (§;#'§.getItemByName("SetAvatarProfileButton") as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (§;#'§.getItemByName("SetFacebookProfileButton") as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
         }
         else if(_loc1_ > 0)
         {
            (§;#'§.getItemByName("SetAvatarProfileButton") as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (§;#'§.getItemByName("SetFacebookProfileButton") as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (§;#'§.getItemByName("SetFacebookProfileButton") as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(this.§70§)
            {
               (§;#'§.getItemByName("SetAvatarProfileButton") as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (§;#'§.getItemByName("SetAvatarProfileButton") as §1"r§).setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
            }
         }
         §;#'§.setText(_loc1_ + "","Textfield_Price");
         if(this.§3"s§ == null)
         {
            this.§3"s§ = new §&"P§();
            this.§3"s§.§;!O§();
         }
         var _loc5_:§1"r§ = §;#'§.getItemByName("SetAvatarProfileButton") as §1"r§;
         while(_loc5_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc5_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc6_:String = §7j§.§+!,§.§?"9§.§-C§();
         var _loc7_:Bitmap;
         (_loc7_ = new Bitmap(this.§3"s§.render(_loc6_,null))).x = -8;
         _loc7_.y = -12;
         _loc5_.mClip.SetAvatarHolder.addChild(_loc7_);
         var _loc8_:§!U§ = §;#'§.getItemByName("Repeater_Items") as §!U§;
         var _loc9_:§+!u§;
         if(_loc9_ = §;#'§.getItemByName(_loc8_.§@$@§) as §+!u§)
         {
            §;#'§.setText("Page " + (_loc9_.§1#!§ + 1).toString() + "/" + _loc9_.§0#W§,"Textfield_PageNumber");
            if(_loc9_.§0#W§ == 1)
            {
               §;#'§.getItemByName("Textfield_PageNumber").setVisibility(false);
               §;#'§.getItemByName("Button_Scroll1").setVisibility(false);
               §;#'§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               §;#'§.getItemByName("Textfield_PageNumber").setVisibility(true);
               _loc22_ = §;#'§.getItemByName("Button_Scroll1") as §1"r§;
               _loc23_ = §;#'§.getItemByName("Button_Scroll2") as §1"r§;
               _loc24_ = §;#'§.getItemByName("NewTag_left") as §"!A§;
               _loc25_ = §;#'§.getItemByName("NewTag_right") as §"!A§;
               _loc26_ = §;#'§.getItemByName("SaleTag_left") as §"!A§;
               _loc27_ = §;#'§.getItemByName("SaleTag_right") as §"!A§;
               _loc22_.setVisibility(true);
               _loc23_.setVisibility(true);
               _loc28_ = false;
               _loc29_ = false;
               _loc30_ = false;
               _loc31_ = false;
               _loc32_ = 0;
               while(_loc32_ < _loc9_.§2p§.length)
               {
                  if(this.§;!y§(_loc9_.§2p§[_loc32_].name))
                  {
                     if(_loc32_ < _loc9_.§1#!§ * _loc9_.§@x§)
                     {
                        _loc28_ = true;
                     }
                     else if(_loc32_ > _loc9_.§1#!§ * _loc9_.§@x§ + _loc9_.§@x§ - 1)
                     {
                        _loc29_ = true;
                     }
                  }
                  if(this.§<!y§(_loc9_.§2p§[_loc32_].name))
                  {
                     if(_loc32_ < _loc9_.§1#!§ * _loc9_.§@x§)
                     {
                        _loc30_ = true;
                     }
                     else if(_loc32_ > _loc9_.§1#!§ * _loc9_.§@x§ + _loc9_.§@x§ - 1)
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
            _loc18_ = §=#o§(AngryBirdsBase.singleton.dataModel).§8$+§;
            for each(_loc19_ in _loc9_.§2p§)
            {
               if((_loc33_ = _loc19_ as §&#O§).visible)
               {
                  for each(_loc34_ in §>!D§)
                  {
                     if(_loc34_.isNew && _loc34_.itemId == _loc33_.name)
                     {
                        _loc34_.isNew = false;
                        if(_loc18_.§["v§(_loc34_.itemId))
                        {
                           _loc17_.push(_loc34_.itemId);
                        }
                     }
                  }
               }
            }
            _loc18_.§-#7§(§^!"§.§0#+§,_loc17_);
            _loc20_ = false;
            for each(_loc21_ in §>!D§)
            {
               if(_loc21_.isNew == true && !_loc21_.available)
               {
                  _loc20_ = true;
                  break;
               }
            }
            §=#o§(AngryBirdsBase.singleton.dataModel).§64§ = _loc20_;
         }
      }
      
      private function §;!y§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@#4§.length)
         {
            if(this.§@#4§[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      private function §<!y§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§>"R§.length)
         {
            if(this.§>"R§[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §0!q§() : String
      {
         return §<"G§.§7"'§;
      }
      
      public function §4!G§() : String
      {
         return §<"G§.§0u§;
      }
      
      public function §6#n§() : String
      {
         return this.§0!q§() + "-" + this.§4!G§();
      }
      
      private function §6">§(param1:Boolean) : void
      {
         if(§;#'§)
         {
            §;#'§.getItemByName("WaitingForReply").setVisibility(param1);
         }
         if(this.§"#W§)
         {
            this.§"#W§.§!u§(!param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§""u§ = false;
         super.dispose();
      }
   }
}
