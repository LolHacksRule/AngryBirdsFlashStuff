package §?P§
{
   import §!$;§.§8#F§;
   import §"!!§.§'§;
   import §"!!§.§1§;
   import §%!x§.§^!K§;
   import §&"`§.§"#x§;
   import §&"`§.§##P§;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §+$?§.§4!+§;
   import §+$?§.§4$6§;
   import §+$?§.§=#>§;
   import §-!S§.§##>§;
   import §-!T§.Item;
   import §-!T§.§[#D§;
   import §-"3§.§[">§;
   import §-"V§.§^#y§;
   import §0#m§.§8#§;
   import §1!=§.§%#;§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §1"N§.§""X§;
   import §1"N§.§4#G§;
   import §2"5§.§1"?§;
   import §2G§.§#"8§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §3#T§.§@"!§;
   import §4#V§.CoinShopPopup;
   import §6#z§.§`!+§;
   import §7"§.§`#@§;
   import §9#B§.StateTournamentResults;
   import §<h§.§"!X§;
   import §<h§.§%M§;
   import §<h§.§3!6§;
   import §<h§.§=$4§;
   import §<h§.§>"0§;
   import §<h§.§@N§;
   import §=A§.§[`§;
   import §@!M§.§!"p§;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import §]!6§.§6Y§;
   import §]!6§.§="p§;
   import §]!6§.§^##§;
   import §`!N§.§,"o§;
   import §`!N§.Avatar;
   import §`!N§.§]#e§;
   import §`7§.§7E§;
   import §`7§.§`"x§;
   import com.rovio.assets.§!"f§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Matrix;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   
   public class AvatarCreatorPopup extends AbstractPopup implements §9#a§, §7E§, §8#§
   {
      
      public static const ID:String = "AvatarCreatorPopup";
      
      private static const §>E§:String = "In-app Shop Avatars";
      
      private static const §`!U§:int = 75;
      
      private static var §5H§:Class = §9!W§;
      
      public static var §@#H§:String;
      
      public static const STATE_NAME:String = "CreatorState";
      
      private static var §!!d§:String;
      
      public static var §!B§:Array;
      
      private static var §1z§:§]#e§;
      
      private static var §6#_§:Boolean = true;
      
      private static const §0#E§:String = "What\'s on your mind?";
       
      
      private var §""q§:Item = null;
      
      private var §'1§:Boolean = false;
      
      private var §^u§:String;
      
      private var §3$B§:Array;
      
      private var §5S§:Array;
      
      private var §#0§:Boolean = false;
      
      private var §6U§:§4$6§;
      
      private var §5!`§:String;
      
      private var §&#m§:String;
      
      private var §&"K§:Wallet;
      
      private var §return§:Boolean;
      
      private var §'!c§:String;
      
      private var §;#A§:Boolean;
      
      private var §!"m§:Array;
      
      private var §<m§:Array;
      
      private var §;"W§:Boolean = true;
      
      private var §?!M§:Array;
      
      private var §+#$§:Boolean = false;
      
      private var § #W§:TextField;
      
      public function AvatarCreatorPopup(param1:int, param2:int, param3:String = null)
      {
         this.§3$B§ = [];
         this.§5S§ = [];
         this.§?!M§ = ["Cool Avatar!","Sweet Avatar!","Nice Avatar!","Awesome Avatar!"];
         super(param1,param2,§="p§.§+@§(§5H§),ID);
         this.§'!c§ = param3;
      }
      
      public static function §2#l§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §!B§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §6!i§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §!B§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §@!"§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §!B§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §>!%§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §!B§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §9#i§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §!B§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §`"d§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §!B§)
         {
            if(_loc2_.itemId == param1 && _loc2_.isNew == true && !_loc2_.available)
            {
               return true;
            }
         }
         return false;
      }
      
      protected static function get userProgress() : §##>§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §##>§;
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      override protected function init() : void
      {
         super.init();
         if(this.§'!c§)
         {
            this.§5!`§ = this.§'!c§;
         }
         if(userProgress.§44§("1000-2"))
         {
            §,#2§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            §,#2§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §@#H§ = AngryBirdsBase.SERVER_ROOT;
         if(§1z§ == null)
         {
            §1z§ = new §]#e§();
         }
         if(§#"8§(AngryBirdsBase.singleton.dataModel).§3"R§.§8R§)
         {
            this.§?!U§(true);
            §#"8§(AngryBirdsBase.singleton.dataModel).§3"R§.addEventListener(Event.COMPLETE,this.§@!Z§);
         }
         this.§'1§ = false;
      }
      
      protected function §^"d§(param1:Event) : void
      {
         AngryBirdsBase.singleton.popupManager.§""^§(id);
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function §8!3§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return §,#2§.mClip.AvatarCreatorContainer.walletContainerClip;
      }
      
      public function get §8"K§() : Wallet
      {
         return this.§&"K§;
      }
      
      private function §[!z§() : void
      {
         this.§?!U§(true);
         §#"8§(AngryBirdsBase.singleton.dataModel).§3"R§.loadItems();
         §#"8§(AngryBirdsBase.singleton.dataModel).§3"R§.addEventListener(Event.COMPLETE,this.§@!Z§);
      }
      
      private function §@!Z§(param1:Event) : void
      {
         §#"8§(AngryBirdsBase.singleton.dataModel).§3"R§.removeEventListener(Event.COMPLETE,this.§@!Z§);
         this.§;"W§ = false;
         this.§9&§();
      }
      
      private function §#K§() : void
      {
         var _loc6_:§3!6§ = null;
         var _loc7_:int = 0;
         var _loc8_:§@"!§ = null;
         var _loc9_:Array = null;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc15_:String = null;
         var _loc1_:§=$4§ = §,#2§.getItemByName("Repeater_Items") as §=$4§;
         var _loc2_:§=$4§ = §,#2§.getItemByName("Repeater_Tabs") as §=$4§;
         var _loc3_:Class = §!"f§.§##?§("Tag_New");
         var _loc4_:Class = §!"f§.§##?§("Tag_Sale");
         this.§!"m§ = new Array();
         this.§<m§ = new Array();
         if(§^#y§.§6!§.items.§[!m§.length > 0)
         {
            _loc2_.§1!4§("Repeater_Tabs_Tab_0").§^$"§(§^#y§.§6!§.items.§[!m§[0].name as String);
            for each(_loc6_ in _loc2_.§6$!§)
            {
               _loc7_ = 0;
               for each(_loc8_ in _loc6_.§6$!§)
               {
                  if(§^#y§.§6!§.items.§[!m§[_loc7_].name == _loc8_.name)
                  {
                     _loc9_ = §^#y§.§6!§.items.§1#2§(§^#y§.§6!§.items.§[!m§[_loc7_].name);
                     _loc10_ = false;
                     _loc11_ = false;
                     _loc12_ = 0;
                     while(_loc12_ < _loc9_.length)
                     {
                        if(AvatarCreatorPopup.§`"d§(_loc9_[_loc12_].mId))
                        {
                           this.§!"m§.push(_loc9_[_loc12_].mId);
                           if(!_loc10_)
                           {
                              _loc13_ = new _loc3_();
                              _loc13_.x += 7;
                              _loc13_.y += 10;
                              _loc8_.mClip.addChild(_loc13_);
                              _loc10_ = true;
                           }
                        }
                        if(AvatarCreatorPopup.§@!"§(_loc9_[_loc12_].mId))
                        {
                           this.§<m§.push(_loc9_[_loc12_].mId);
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
         while(_loc5_ < §^#y§.§6!§.items.§[!m§.length)
         {
            _loc15_ = §^#y§.§6!§.items.§[!m§[_loc5_].name;
            _loc1_.§1!4§("Repeater_Items_Tab_" + _loc5_).§^$"§(_loc15_);
            _loc5_++;
         }
         _loc1_.§;"v§("Repeater_Items_Tab_0");
         _loc2_.§;"v§("Repeater_Tabs_Tab_0");
      }
      
      private function §!"1§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§1z§)
         {
            if(§1z§.parent)
            {
               if(§1z§.parent.contains(§1z§))
               {
                  §1z§.parent.removeChild(§1z§);
               }
            }
         }
         param1.addChild(§1z§);
         §1z§.scaleX = §1z§.scaleY = param2;
         §1z§.x = param3;
         §1z§.y = param4;
      }
      
      private function §9&§() : void
      {
         var _loc6_:§@N§ = null;
         var _loc7_:Array = null;
         var _loc8_:Avatar = null;
         var _loc9_:§@N§ = null;
         this.§'1§ = true;
         var _loc1_:§=$4§ = §,#2§.getItemByName("Repeater_Items") as §=$4§;
         _loc1_.§19§(§`!+§.§<j§(),§,"o§);
         var _loc2_:§=$4§ = §,#2§.getItemByName("Repeater_Tabs") as §=$4§;
         _loc2_.§19§(§`!+§.§8"?§(),§,"o§);
         this.§?!U§(false);
         if(§!B§ == null)
         {
            return;
         }
         var _loc3_:String = userProgress.userID;
         var _loc4_:String;
         if((_loc4_ = userProgress.avatarString) == null || _loc4_ == "")
         {
            this.§#0§ = true;
         }
         var _loc5_:§4!+§;
         (_loc5_ = new §4!+§(_loc3_,false,§4!+§.§+"N§)).x = 13;
         _loc5_.y = 9;
         §,#2§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc5_);
         if(§6#_§)
         {
            _loc6_ = §,#2§.getItemByName("AvatarHolderClip") as §@N§;
            this.§!"1§(_loc6_.mClip);
            if(_loc4_ != "" && _loc4_ != null)
            {
               _loc7_ = §[`§.§for §(_loc4_);
               _loc8_ = §1z§.§+!_§(_loc7_);
               §^#y§.§6!§.§]"C§ = _loc8_;
            }
            else
            {
               this.§[$=§(§^#y§.§]!c§);
               §1z§.§0S§("backgrounds1");
            }
            this.§#K§();
            §6#_§ = false;
         }
         else
         {
            _loc9_ = §,#2§.getItemByName("AvatarHolderClip") as §@N§;
            this.§!"1§(_loc9_.mClip);
            §1z§.§;!5§();
            §1z§.§<y§.§ u§();
            this.§#K§();
         }
         this.§>!_§(_loc2_);
         this.§;!§();
      }
      
      private function §>!_§(param1:§=$4§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(this.§5!`§)
         {
            _loc2_ = §`!+§.§3@§(this.§5!`§);
            if(_loc2_ != -1)
            {
               _loc3_ = this.§5!`§.substr("CATEGORY".length);
               §,#2§.setText(_loc3_,"Textfield_CategoryTitle");
               param1.§;"v§("Repeater_Items_Tab_" + _loc2_);
               if(§^#y§.§6!§.items.§[!m§.length > 0)
               {
                  param1.§1!4§("Repeater_Tabs_Tab_0").§^$"§(§^#y§.§6!§.items.§[!m§[_loc2_].name as String);
               }
            }
            this.§5!`§ = null;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§3#T§.§'#0§) : void
      {
         var _loc4_:§@"!§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§=$4§ = null;
         var _loc8_:§"!X§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§,"o§ = null;
         var _loc14_:String = null;
         var _loc15_:int = 0;
         var _loc16_:§,"o§ = null;
         var _loc17_:String = null;
         var _loc18_:int = 0;
         var _loc19_:Array = null;
         var _loc20_:§"#x§ = null;
         var _loc21_:§""X§ = null;
         var _loc22_:String = null;
         var _loc23_:Item = null;
         var _loc24_:CoinShopPopup = null;
         var _loc25_:String = null;
         var _loc26_:String = null;
         if(param3 is §@"!§)
         {
            _loc4_ = param3 as §@"!§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §3!6§)
               {
                  if(((_loc4_.mParentContainer as §3!6§).mParentContainer as §=$4§).upperCaseName == "REPEATER_TABS")
                  {
                     if((_loc5_ = §`!+§.§3@§(param2)) != -1)
                     {
                        §!"p§.playSound("Shop_Selection",§!"p§.§+!;§,0,0.7);
                        _loc6_ = param2.substr("CATEGORY".length);
                        (_loc7_ = §,#2§.getItemByName("Repeater_Items") as §=$4§).§;"v§("Repeater_Items_Tab_" + _loc5_);
                        for each(_loc8_ in (_loc4_.mParentContainer as §3!6§).§6$!§)
                        {
                           (_loc8_ as §,"o§).§-"_§();
                        }
                        (param3 as §,"o§).§%!9§();
                        this.§5I§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §3!6§).mParentContainer as §=$4§).upperCaseName == "REPEATER_ITEMS")
                  {
                     §!"p§.playSound("Menu_Select",§!"p§.§+!;§);
                     if((_loc9_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.§[$=§(param2);
                     }
                     else if(_loc9_ == 0)
                     {
                        this.§"#Z§(param2.substring("REMOVE_".length));
                     }
                     this.§;!§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc10_ = param2.toUpperCase().substr(4);
            _loc11_ = §`!+§.§3@§(_loc10_);
            _loc12_ = 0;
            for each(_loc13_ in ((param3 as §@"!§).mParentContainer as §3!6§).§6$!§)
            {
               if(_loc12_ != _loc11_)
               {
                  (_loc13_ as §,"o§).§-"_§();
               }
               else
               {
                  (_loc13_ as §,"o§).§%!9§();
               }
               _loc12_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc14_ = param2.toUpperCase().substr(3);
            _loc15_ = §`!+§.§3@§(_loc14_);
            _loc12_ = 0;
            for each(_loc16_ in ((param3 as §@"!§).mParentContainer as §3!6§).§6$!§)
            {
               if(_loc12_ == _loc15_)
               {
                  (_loc16_ as §,"o§).§-"_§();
               }
               _loc12_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §!"p§.playSound("Shop_Selection",§!"p§.§+!;§,0,0.7);
               §^#y§.§6!§.§]"C§.§9"8§();
               this.§;!§();
               this.§5I§();
               break;
            case "RANDOMIZE_AVATAR":
               §!"p§.playSound("Shop_Selection",§!"p§.§+!;§,0,0.7);
               §^#y§.§6!§.§]"C§.§#!q§();
               this.§;!§();
               break;
            case "SHARE_WALL_AVATAR":
               this.§;"j§();
               break;
            case "CANCEL_SHARE":
               §,#2§.getItemByName("AvatarSharing").setVisibility(false);
               break;
            case "SHARE_AVATAR":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§?!U§(true);
               this.§+#1§();
               break;
            case "BUY_THESE":
               §!"p§.playSound("Shop_Buy",§!"p§.§+!;§);
               _loc17_ = §[`§.§,!L§(this.§3$B§);
               _loc18_ = 0;
               for each(_loc23_ in this.§3$B§)
               {
                  _loc18_ += §6!i§(_loc23_.mId);
               }
               if(_loc18_ > dataModel.§""[§.§##!§)
               {
                  this.§'1§ = false;
                  (_loc24_ = new CoinShopPopup(§]"$§.NORMAL,§^"U§.TOP,CoinShopPopup.§'$7§)).addEventListener(§8#F§.CLOSE,this.§3"D§);
                  AngryBirdsBase.singleton.popupManager.openPopup(_loc24_);
                  return;
               }
               this.§?!U§(true);
               this.§5S§ = [];
               _loc19_ = _loc17_.split("-");
               for each(_loc25_ in _loc19_)
               {
                  _loc26_ = this.§%#A§(_loc25_);
                  §`"x§.§2!k§(_loc26_);
                  this.§5S§.push(_loc25_);
               }
               _loc20_ = new §"#x§(_loc17_,[]);
               (_loc21_ = new §""X§(_loc20_,new §##P§(1,0,_loc18_),ID)).addEventListener(§1"?§.§=#j§,this.§9!A§);
               break;
            case "SET_AVATAR":
               §!"p§.playSound("Shop_Selection",§!"p§.§+!;§,0,0.7);
               this.§#0§ = false;
               this.§?!U§(true);
               _loc22_ = §^#y§.§6!§.§]"C§.§0";§();
               this.§+Y§(_loc22_);
               this.§5I§();
               this.§?!U§(true);
               this.§+#1§();
               break;
            case "SET_PROFILE":
               §!"p§.playSound("Shop_Selection",§!"p§.§+!;§,0,0.7);
               this.§#0§ = true;
               this.§?!U§(true);
               this.§+Y§("");
               this.§5I§();
               break;
            case "CLOSE_AVATAR":
               close();
               break;
            case "BRANDED_SHOP":
               this.hide();
               break;
            case "EASTER_EGG_2":
               §,#2§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               userProgress.§8$,§("1000-2");
               break;
            case "SCROLL_RIGHT":
               §!"p§.playSound("Shop_Selection",§!"p§.§+!;§,0,0.7);
               this.§5I§();
               break;
            case "SCROLL_LEFT":
               §!"p§.playSound("Shop_Selection",§!"p§.§+!;§,0,0.7);
               this.§5I§();
         }
      }
      
      protected function §3"D§(param1:Event) : void
      {
      }
      
      private function §%#A§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §^#y§.§6!§.§]"C§.§^!+§())
         {
            if(_loc2_.categorySID + _loc2_.sId == param1)
            {
               return _loc2_.name as String;
            }
         }
         return "";
      }
      
      private function §+#1§() : void
      {
         §`"x§.§%!K§();
         AngryBirdsBase.singleton.exitFullScreen();
         §^!K§.addCallback("permissionRequestComplete",this.permissionRequestComplete);
         §^!K§.§+"D§("askForPublishStreamPermission");
      }
      
      private function permissionRequestComplete(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§4$6§ = null;
         var _loc4_:int = 0;
         var _loc5_:BitmapData = null;
         var _loc6_:Matrix = null;
         var _loc7_:Number = NaN;
         var _loc8_:§@"!§ = null;
         var _loc9_:int = 0;
         var _loc10_:Bitmap = null;
         var _loc11_:DisplayObject = null;
         §`"x§.§;!_§();
         §^!K§.§,"i§("permissionRequestComplete",this.permissionRequestComplete);
         this.§?!U§(false);
         if(param1 == "true")
         {
            §,#2§.getItemByName("AvatarSharing").setVisibility(true);
            §,#2§.getItemByName("ShareAvatarWindow").setVisibility(true);
            this.§ #W§ = TextField(§,#2§.getItemByName("ShareAvatarWindow").mClip.getChildByName("captionTextField"));
            this.§ #W§.maxChars = §`!U§;
            this.§ #W§.text = §0#E§;
            this.§ #W§.textColor = 6710886;
            if(!this.§ #W§.hasEventListener(MouseEvent.CLICK))
            {
               this.§ #W§.addEventListener(MouseEvent.CLICK,this.§^!u§);
            }
            _loc2_ = Math.random() * this.§?!M§.length;
            (§,#2§.getItemByName("ShareAvatarWindow_Title") as §%M§).setText(this.§?!M§[_loc2_]);
            _loc3_ = new §4$6§();
            _loc3_.§2"0§();
            _loc4_ = 173;
            _loc5_ = _loc3_.render(§^#y§.§6!§.§]"C§.§0";§(),null,_loc4_);
            _loc6_ = new Matrix();
            _loc7_ = _loc4_ / 100 / 2;
            _loc6_.scale(_loc7_,_loc7_);
            _loc9_ = (_loc8_ = §,#2§.getItemByName("ShareAvatarWindow")).mClip.numChildren - 1;
            while(_loc9_ > 0)
            {
               if((_loc11_ = _loc8_.mClip.getChildAt(_loc9_)) is Bitmap)
               {
                  _loc11_.parent.removeChild(_loc11_);
               }
               _loc9_--;
            }
            (_loc10_ = new Bitmap(_loc5_,"auto",true)).x = -5;
            _loc10_.y = 52;
            _loc8_.mClip.addChildAt(_loc10_,1);
         }
      }
      
      private function §^!u§(param1:MouseEvent) : void
      {
         if(this.§ #W§.text == §0#E§)
         {
            this.§ #W§.text = "";
            this.§ #W§.textColor = 16777215;
         }
      }
      
      private function §;"j§() : void
      {
         §,#2§.getItemByName("AvatarSharing").setVisibility(false);
         §,#2§.getItemByName("ShareAvatarWindow").setVisibility(false);
         this.§?!U§(true);
         var _loc1_:§4$6§ = new §4$6§();
         _loc1_.§2"0§();
         var _loc3_:BitmapData = _loc1_.render(§^#y§.§6!§.§]"C§.§0";§(),null,750,false,null,null,0,false,0.1);
         var _loc4_:Class;
         var _loc5_:MovieClip = new (_loc4_ = §!"f§.§##?§("WatermarkPlayOnFacebook"))();
         var _loc6_:Matrix = new Matrix();
         var _loc7_:Number = 750 / 100 / 2;
         _loc6_.scale(_loc7_,_loc7_);
         var _loc8_:* = _loc3_.width - 750 >> 1;
         var _loc9_:* = _loc3_.height - 750 >> 1;
         _loc6_.translate(_loc8_,_loc3_.height - _loc9_);
         _loc3_.draw(_loc5_,_loc6_,null,null,null,true);
         var _loc10_:String = userProgress.userID;
         var _loc11_:Object;
         (_loc11_ = new Object()).name = this.§ #W§.text != §0#E§ ? this.§ #W§.text : "";
         §^##§.§6![§(_loc3_,§[">§.§`f§,_loc10_,this.§@#i§,this.§!#M§,_loc11_);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         this.§8!3§(this.§&"K§);
         §,#2§.getItemByName("ShareAvatarWindow").mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§="!§);
         super.hide(param1,param2);
      }
      
      private function §@#i§(param1:*) : void
      {
         this.§?!U§(false);
      }
      
      private function §!#M§() : void
      {
         this.§?!U§(false);
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         §`"x§.§&!+§();
         §`"x§.trackPageView(this);
         var _loc2_:§@N§ = §,#2§.getItemByName("AvatarSavedAnimation") as §@N§;
         _loc2_.setVisibility(false);
         this.§[?§(new Wallet(this,true,true,true));
         this.§&"K§.§=#-§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§[8§);
         §,#2§.getItemByName("ShareAvatarWindow").mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="!§);
         §^#y§.§6!§.§7#q§();
         if(§1z§.§<y§ == null)
         {
            §1z§.§6"w§(§^#y§.§6!§.§#"0§());
         }
         if(!this.§'1§)
         {
            this.§9&§();
         }
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         §,#2§.getItemByName("AvatarSharing").setVisibility(false);
      }
      
      private function §[8§(param1:MouseEvent) : void
      {
         this.§'1§ = false;
      }
      
      private function §"!t§(param1:Boolean) : void
      {
         var _loc2_:§[#D§ = null;
         var _loc3_:§,"o§ = null;
         for each(_loc2_ in §^#y§.§6!§.items.§[!m§)
         {
            if(_loc2_.name.toUpperCase() != "CATEGORYBIRDS" && _loc2_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc3_ = §,#2§.getItemByName(_loc2_.name.toUpperCase()) as §,"o§;
               _loc3_.setVisibility(param1);
            }
         }
      }
      
      private function §;b§(param1:Boolean) : void
      {
         §,#2§.getItemByName("Button_Unequip").setVisibility(param1);
         §,#2§.getItemByName("Button_Random").setVisibility(param1);
      }
      
      public function §;!§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§=$4§ = §,#2§.getItemByName("Repeater_Items") as §=$4§;
         var _loc2_:Number = 0;
         while(_loc2_ < §^#y§.§6!§.items.§[!m§.length)
         {
            _loc3_ = §^#y§.§6!§.items.§[!m§[_loc2_].name;
            if((_loc4_ = §^#y§.§6!§.§]"C§.§'M§(_loc3_)) == null)
            {
               _loc1_.§1!4§("Repeater_Items_Tab_" + _loc2_).§^$"§(_loc3_);
            }
            else
            {
               _loc1_.§1!4§("Repeater_Items_Tab_" + _loc2_).§^$"§(_loc4_.mId);
               if(_loc3_.toUpperCase() == "CATEGORYBIRDS")
               {
                  if(_loc4_.mId.indexOf("GreenDay") > -1)
                  {
                     this.§"!t§(false);
                     this.§;b§(false);
                  }
                  else
                  {
                     this.§"!t§(true);
                     this.§;b§(true);
                  }
               }
            }
            _loc2_++;
         }
         this.§5I§();
      }
      
      public function §9!A§(param1:Event = null) : void
      {
         var _loc2_:§""X§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         this.§?!U§(false);
         if(param1 && param1.currentTarget is §""X§)
         {
            _loc2_ = param1.currentTarget as §""X§;
         }
         §`"x§.trackPageView(this,§`"x§.§1!B§);
         var _loc3_:Array = new Array();
         for each(_loc4_ in this.§5S§)
         {
            _loc5_ = this.§%#A§(_loc4_);
            §`"x§.§!#@§(_loc5_);
            (_loc6_ = new Object()).sku = _loc4_;
            _loc6_.name = _loc5_;
            _loc6_.price = 0;
            _loc6_.quantity = 1;
            _loc3_.push(_loc6_);
         }
         §`"x§.trackTransactionItems(_loc2_.orderId,§>E§,"1 x ",_loc3_);
         this.§5S§ = [];
         if(param1 && param1.currentTarget is §""X§)
         {
            (param1.currentTarget as §""X§).removeEventListener(Event.COMPLETE,this.§9!A§);
         }
         this.§[!z§();
      }
      
      private function §+Y§(param1:String) : void
      {
         this.§&#m§ = this.§^u§;
         this.§^u§ = param1;
         var _loc2_:URLRequest = §["0§.§ G§(§@#H§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new §1"V§();
         _loc3_.addEventListener(Event.COMPLETE,this.§%!g§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§0#D§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"q§);
         _loc3_.load(_loc2_);
      }
      
      protected function §4"q§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:§%#;§ = new WarningPopup(§]"$§.§[#=§,§^"U§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §%!g§(param1:Event) : void
      {
         var _loc2_:§`#@§ = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:§@N§ = null;
         if(this.§^u§ != null)
         {
            userProgress.avatarString = this.§^u§;
            §1#0§.§ #i§(new §"!!§.§'#4§(this.§^u§,userProgress.userID),true,true);
            §=#>§.§@"2§(this.§^u§);
            _loc2_ = AngryBirdsBase.singleton.§=!&§();
            if(_loc2_ is StateTournamentResults)
            {
               (_loc2_ as StateTournamentResults).§""1§();
            }
            _loc3_ = this.§^u§.split("-");
            for each(_loc4_ in _loc3_)
            {
               if(this.§&#m§)
               {
                  if(this.§&#m§.indexOf(_loc4_) == -1)
                  {
                     §`"x§.§;i§(_loc4_);
                  }
               }
               else
               {
                  §`"x§.§;i§(_loc4_);
               }
            }
         }
         if(this.§'1§)
         {
            this.§?!U§(false);
            (_loc5_ = §,#2§.getItemByName("AvatarSavedAnimation") as §@N§).setVisibility(true);
            _loc5_.mClip.gotoAndPlay(1);
            this.§5I§();
         }
      }
      
      private function §0#D§(param1:IOErrorEvent) : void
      {
         var _loc2_:§@N§ = null;
         if(this.§'1§)
         {
            this.§?!U§(false);
            _loc2_ = §,#2§.getItemByName("AvatarSavedAnimation") as §@N§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §"#Z§(param1:String) : void
      {
         §^#y§.§6!§.§]"C§.§"#Z§(param1);
         this.§5I§();
      }
      
      public function §[$=§(param1:String) : void
      {
         var _loc4_:Avatar = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §^#y§.§6!§.items.getItem(param1);
         var _loc3_:Avatar = §^#y§.§6!§.§]"C§;
         if(_loc2_)
         {
            if(_loc2_.§=#s§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§%Z§().mId != _loc2_.mId)
            {
               _loc4_ = §^#y§.§6!§.§ i§(_loc2_.mId);
               §1z§.§6"w§(_loc4_,110,174);
               _loc4_.§9"8§();
               _loc4_.§-!M§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§"!,§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §1z§.§0S§(_loc6_.mId);
                        }
                        _loc4_.§-!M§(_loc6_);
                     }
                  }
               }
               if((_loc5_ = _loc4_.§'M§("CATEGORYBACKGROUNDS")) == null)
               {
                  _loc4_.§-!M§(§^#y§.§6!§.items.getItem("Backgrounds1"));
               }
            }
            else if(_loc2_.§=#s§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §1z§.§0S§(_loc2_.mId);
               §^#y§.§6!§.§]"C§.§-!M§(_loc2_);
            }
            else
            {
               §^#y§.§6!§.§]"C§.§-!M§(_loc2_);
            }
         }
         else
         {
            §6Y§.log("[Warning!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§5I§();
      }
      
      private function §5I§() : void
      {
         var _loc3_:§[#D§ = null;
         var _loc4_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc14_:§,"o§ = null;
         var _loc15_:§,"o§ = null;
         var _loc16_:int = 0;
         var _loc17_:Array = null;
         var _loc18_:§4#G§ = null;
         var _loc19_:§,"o§ = null;
         var _loc20_:Boolean = false;
         var _loc21_:Object = null;
         var _loc22_:§>"0§ = null;
         var _loc23_:§>"0§ = null;
         var _loc24_:§@N§ = null;
         var _loc25_:§@N§ = null;
         var _loc26_:§@N§ = null;
         var _loc27_:§@N§ = null;
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = false;
         var _loc30_:Boolean = false;
         var _loc31_:Boolean = false;
         var _loc32_:int = 0;
         var _loc33_:§,"o§ = null;
         var _loc34_:Object = null;
         var _loc1_:int = 0;
         this.§+#$§ = false;
         var _loc2_:String = userProgress.avatarString;
         if(_loc2_ != null && _loc2_ != "")
         {
            _loc10_ = _loc2_.split("-");
            _loc12_ = (_loc11_ = §^#y§.§6!§.§]"C§.§0";§()).split("-");
            if(_loc10_.length != _loc12_.length)
            {
               this.§+#$§ = true;
            }
            for each(_loc13_ in _loc12_)
            {
               if(_loc2_.indexOf(_loc13_) == -1)
               {
                  this.§+#$§ = true;
               }
            }
         }
         for each(_loc3_ in §^#y§.§6!§.items.§[!m§)
         {
            (_loc14_ = §,#2§.getItemByName(_loc3_.name.toUpperCase()) as §,"o§).§5!R§();
         }
         this.§3$B§ = [];
         for each(_loc4_ in §^#y§.§6!§.§]"C§.§"!,§)
         {
            _loc15_ = §,#2§.getItemByName(_loc4_.category.toUpperCase()) as §,"o§;
            _loc16_ = §6!i§(_loc4_.mId);
            _loc15_.§?r§(_loc4_.mId,_loc16_);
            if(_loc16_ > 0)
            {
               this.§3$B§.push(_loc4_);
            }
            _loc1_ += _loc16_;
         }
         §,#2§.getItemByName("Button_Share").setVisibility(false);
         if(_loc1_ > 0)
         {
            §,#2§.getItemByName("BuyTheseButton").setVisibility(true);
            §,#2§.getItemByName("Textfield_Price").setVisibility(true);
            §,#2§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            §,#2§.getItemByName("BuyTheseButton").setVisibility(false);
            §,#2§.getItemByName("Textfield_Price").setVisibility(false);
            §,#2§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§#0§)
         {
            (§,#2§.getItemByName("SetAvatarProfileButton") as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (§,#2§.getItemByName("SetFacebookProfileButton") as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
         }
         else if(_loc1_ > 0)
         {
            (§,#2§.getItemByName("SetAvatarProfileButton") as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (§,#2§.getItemByName("SetFacebookProfileButton") as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (§,#2§.getItemByName("SetFacebookProfileButton") as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(this.§+#$§)
            {
               (§,#2§.getItemByName("SetAvatarProfileButton") as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (§,#2§.getItemByName("SetAvatarProfileButton") as §>"0§).setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
               §,#2§.getItemByName("Button_Share").setVisibility(true);
            }
         }
         §,#2§.setText(_loc1_ + "","Textfield_Price");
         if(this.§6U§ == null)
         {
            this.§6U§ = new §4$6§();
            this.§6U§.§2"0§();
         }
         var _loc5_:§>"0§ = §,#2§.getItemByName("SetAvatarProfileButton") as §>"0§;
         while(_loc5_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc5_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc6_:String = §^#y§.§6!§.§]"C§.§0";§();
         var _loc7_:Bitmap;
         (_loc7_ = new Bitmap(this.§6U§.render(_loc6_,null))).x = -8;
         _loc7_.y = -12;
         _loc5_.mClip.SetAvatarHolder.addChild(_loc7_);
         var _loc8_:§=$4§ = §,#2§.getItemByName("Repeater_Items") as §=$4§;
         var _loc9_:§3!6§;
         if(_loc9_ = §,#2§.getItemByName(_loc8_.§<`§) as §3!6§)
         {
            §,#2§.setText("Page " + (_loc9_.§"#+§ + 1).toString() + "/" + _loc9_.§'"8§,"Textfield_PageNumber");
            if(_loc9_.§'"8§ == 1)
            {
               §,#2§.getItemByName("Textfield_PageNumber").setVisibility(false);
               §,#2§.getItemByName("Button_Scroll1").setVisibility(false);
               §,#2§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               §,#2§.getItemByName("Textfield_PageNumber").setVisibility(true);
               _loc22_ = §,#2§.getItemByName("Button_Scroll1") as §>"0§;
               _loc23_ = §,#2§.getItemByName("Button_Scroll2") as §>"0§;
               _loc24_ = §,#2§.getItemByName("NewTag_left") as §@N§;
               _loc25_ = §,#2§.getItemByName("NewTag_right") as §@N§;
               _loc26_ = §,#2§.getItemByName("SaleTag_left") as §@N§;
               _loc27_ = §,#2§.getItemByName("SaleTag_right") as §@N§;
               _loc22_.setVisibility(true);
               _loc23_.setVisibility(true);
               _loc28_ = false;
               _loc29_ = false;
               _loc30_ = false;
               _loc31_ = false;
               _loc32_ = 0;
               while(_loc32_ < _loc9_.§6$!§.length)
               {
                  if(this.§8K§(_loc9_.§6$!§[_loc32_].name))
                  {
                     if(_loc32_ < _loc9_.§"#+§ * _loc9_.§4$>§)
                     {
                        _loc28_ = true;
                     }
                     else if(_loc32_ > _loc9_.§"#+§ * _loc9_.§4$>§ + _loc9_.§4$>§ - 1)
                     {
                        _loc29_ = true;
                     }
                  }
                  if(this.§?!u§(_loc9_.§6$!§[_loc32_].name))
                  {
                     if(_loc32_ < _loc9_.§"#+§ * _loc9_.§4$>§)
                     {
                        _loc30_ = true;
                     }
                     else if(_loc32_ > _loc9_.§"#+§ * _loc9_.§4$>§ + _loc9_.§4$>§ - 1)
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
            _loc18_ = §#"8§(AngryBirdsBase.singleton.dataModel).§3S§;
            for each(_loc19_ in _loc9_.§6$!§)
            {
               if((_loc33_ = _loc19_ as §,"o§).visible)
               {
                  for each(_loc34_ in §!B§)
                  {
                     if(_loc34_.isNew && _loc34_.itemId == _loc33_.name)
                     {
                        _loc34_.isNew = false;
                        if(_loc18_.§<#x§(_loc34_.itemId))
                        {
                           _loc17_.push(_loc34_.itemId);
                        }
                     }
                  }
               }
            }
            _loc18_.§&"E§(§4#G§.§<"9§,_loc17_);
            _loc20_ = false;
            for each(_loc21_ in §!B§)
            {
               if(_loc21_.isNew == true && !_loc21_.available)
               {
                  _loc20_ = true;
                  break;
               }
            }
            §#"8§(AngryBirdsBase.singleton.dataModel).§#"%§ = _loc20_;
         }
      }
      
      private function §8K§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!"m§.length)
         {
            if(this.§!"m§[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      private function §?!u§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§<m§.length)
         {
            if(this.§<m§[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §!3§() : String
      {
         return §`"x§.§[$6§;
      }
      
      public function §0'§() : String
      {
         return §`"x§.§3">§;
      }
      
      public function §+#k§() : String
      {
         return this.§!3§() + "-" + this.§0'§();
      }
      
      private function §?!U§(param1:Boolean) : void
      {
         if(§,#2§)
         {
            §,#2§.getItemByName("WaitingForReply").setVisibility(param1);
         }
         if(this.§&"K§)
         {
            this.§&"K§.§`$3§(!param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§'1§ = false;
         if(this.§ #W§)
         {
            this.§ #W§.removeEventListener(MouseEvent.CLICK,this.§^!u§);
         }
         super.dispose();
      }
   }
}
