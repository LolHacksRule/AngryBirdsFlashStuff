package §>z§
{
   import § §.§2"O§;
   import § §.§[$3§;
   import §!#C§.§4!Q§;
   import §"c§.CoinShopPopup;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §#,§.§ !>§;
   import §#,§.§&e§;
   import §#,§.§'!`§;
   import §#,§.§;§;
   import §#,§.§=!7§;
   import §%y§.§+!l§;
   import §%y§.Item;
   import §&!_§.§,!n§;
   import §&!_§.§0I§;
   import §&0§.§`!d§;
   import §'M§.§"Z§;
   import §'Z§.§<&§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §,!Q§.§8#=§;
   import §0!s§.§5!-§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §0"B§.§ #W§;
   import §0"B§.§try§;
   import §1#v§.§6"a§;
   import §1#v§.§;!Y§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §3+§.StateTournamentResults;
   import §4q§.§#@§;
   import §4q§.§?$#§;
   import §4q§.Avatar;
   import §5" §.§5u§;
   import §5" §.§=n§;
   import §6"p§.§7§;
   import §6t§.§4?§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §>"W§.§7Y§;
   import §?!a§.§,"#§;
   import §?!a§.§-=§;
   import §?!a§.§6#b§;
   import §^&§.§%!#§;
   import com.rovio.assets.§6$A§;
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
   
   public class AvatarCreatorPopup extends AbstractPopup implements §&>§, §,!n§, §%!#§
   {
      
      public static const ID:String = "AvatarCreatorPopup";
      
      private static const §5$,§:String = "In-app Shop Avatars";
      
      private static var §@$§:Class = §7"3§;
      
      public static var §?!?§:String;
      
      public static const STATE_NAME:String = "CreatorState";
      
      private static var §>#y§:String;
      
      public static var §<8§:Array;
      
      private static var §9"k§:§#@§;
      
      private static var §!$-§:Boolean = true;
       
      
      private var §9^§:Item = null;
      
      private var §,!_§:Boolean = false;
      
      private var §,"P§:String;
      
      private var §4$+§:Array;
      
      private var §8#k§:Array;
      
      private var §<#9§:Boolean = false;
      
      private var §9z§:§,"#§;
      
      private var §>$B§:String;
      
      private var §0$#§:String;
      
      private var §1!B§:Wallet;
      
      private var §;^§:Boolean;
      
      private var §`#"§:String;
      
      private var §"#c§:Boolean;
      
      private var §#g§:Array;
      
      private var §@$0§:Array;
      
      private var §7#'§:Boolean = true;
      
      private var §>4§:Array;
      
      private var §[!4§:Boolean = false;
      
      public function AvatarCreatorPopup(param1:int, param2:int, param3:String = null)
      {
         this.§4$+§ = [];
         this.§8#k§ = [];
         this.§>4§ = ["Cool Avatar!","Sweet Avatar!","Nice Avatar!","Awesome Avatar!"];
         super(param1,param2,§6"a§.§&!d§(§@$§),ID);
         this.§`#"§ = param3;
      }
      
      public static function §[#q§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<8§)
         {
            if(_loc2_.itemId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §^"q§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<8§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.price;
            }
         }
         return 0;
      }
      
      public static function §@0§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<8§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.sale;
            }
         }
         return false;
      }
      
      public static function §<-§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<8§)
         {
            if(_loc2_.itemId == param1 && !_loc2_.available)
            {
               return _loc2_.limited;
            }
         }
         return false;
      }
      
      public static function §8^§(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<8§)
         {
            if(_loc2_.itemId == param1)
            {
               return _loc2_.starPrice;
            }
         }
         return 0;
      }
      
      public static function §6#9§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §<8§)
         {
            if(_loc2_.itemId == param1 && _loc2_.isNew == true && !_loc2_.available)
            {
               return true;
            }
         }
         return false;
      }
      
      protected static function get userProgress() : § #`§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as § #`§;
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      override protected function init() : void
      {
         super.init();
         if(this.§`#"§)
         {
            this.§>$B§ = this.§`#"§;
         }
         if(userProgress.§^!^§("1000-2"))
         {
            §&!M§.getItemByName("ButtonEasterEgg2").setVisibility(false);
         }
         else
         {
            §&!M§.getItemByName("ButtonEasterEgg2").setVisibility(true);
         }
         §?!?§ = AngryBirdsBase.SERVER_ROOT;
         if(§9"k§ == null)
         {
            §9"k§ = new §#@§();
         }
         if(§4!Q§(AngryBirdsBase.singleton.dataModel).§3#L§.§6#J§)
         {
            this.§5G§(true);
            §4!Q§(AngryBirdsBase.singleton.dataModel).§3#L§.addEventListener(Event.COMPLETE,this.§0"N§);
         }
         this.§,!_§ = false;
      }
      
      protected function §3§(param1:Event) : void
      {
         AngryBirdsBase.singleton.popupManager.§7$9§(id);
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function §&!U§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get walletContainer() : Sprite
      {
         return §&!M§.mClip.AvatarCreatorContainer.walletContainerClip;
      }
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
      
      private function §5$6§() : void
      {
         this.§5G§(true);
         §4!Q§(AngryBirdsBase.singleton.dataModel).§3#L§.loadItems();
         §4!Q§(AngryBirdsBase.singleton.dataModel).§3#L§.addEventListener(Event.COMPLETE,this.§0"N§);
      }
      
      private function §0"N§(param1:Event) : void
      {
         §4!Q§(AngryBirdsBase.singleton.dataModel).§3#L§.removeEventListener(Event.COMPLETE,this.§0"N§);
         this.§7#'§ = false;
         this.§[G§();
      }
      
      private function § I§() : void
      {
         var _loc6_:§;#8§ = null;
         var _loc7_:int = 0;
         var _loc8_:§8#=§ = null;
         var _loc9_:Array = null;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc15_:String = null;
         var _loc1_:§&e§ = §&!M§.getItemByName("Repeater_Items") as §&e§;
         var _loc2_:§&e§ = §&!M§.getItemByName("Repeater_Tabs") as §&e§;
         var _loc3_:Class = §6$A§.§1!m§("Tag_New");
         var _loc4_:Class = §6$A§.§1!m§("Tag_Sale");
         this.§#g§ = new Array();
         this.§@$0§ = new Array();
         if(§7#8§.§`"H§.items.§?p§.length > 0)
         {
            _loc2_.§6!U§("Repeater_Tabs_Tab_0").§5d§(§7#8§.§`"H§.items.§?p§[0].name as String);
            for each(_loc6_ in _loc2_.§!$"§)
            {
               _loc7_ = 0;
               for each(_loc8_ in _loc6_.§!$"§)
               {
                  if(§7#8§.§`"H§.items.§?p§[_loc7_].name == _loc8_.name)
                  {
                     _loc9_ = §7#8§.§`"H§.items.§,!U§(§7#8§.§`"H§.items.§?p§[_loc7_].name);
                     _loc10_ = false;
                     _loc11_ = false;
                     _loc12_ = 0;
                     while(_loc12_ < _loc9_.length)
                     {
                        if(AvatarCreatorPopup.§6#9§(_loc9_[_loc12_].mId))
                        {
                           this.§#g§.push(_loc9_[_loc12_].mId);
                           if(!_loc10_)
                           {
                              _loc13_ = new _loc3_();
                              _loc13_.x += 7;
                              _loc13_.y += 10;
                              _loc8_.mClip.addChild(_loc13_);
                              _loc10_ = true;
                           }
                        }
                        if(AvatarCreatorPopup.§@0§(_loc9_[_loc12_].mId))
                        {
                           this.§@$0§.push(_loc9_[_loc12_].mId);
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
         while(_loc5_ < §7#8§.§`"H§.items.§?p§.length)
         {
            _loc15_ = §7#8§.§`"H§.items.§?p§[_loc5_].name;
            _loc1_.§6!U§("Repeater_Items_Tab_" + _loc5_).§5d§(_loc15_);
            _loc5_++;
         }
         _loc1_.§[!'§("Repeater_Items_Tab_0");
         _loc2_.§[!'§("Repeater_Tabs_Tab_0");
      }
      
      private function §[#c§(param1:DisplayObjectContainer, param2:Number = 1, param3:int = 0, param4:int = 0) : void
      {
         if(§9"k§)
         {
            if(§9"k§.parent)
            {
               if(§9"k§.parent.contains(§9"k§))
               {
                  §9"k§.parent.removeChild(§9"k§);
               }
            }
         }
         param1.addChild(§9"k§);
         §9"k§.scaleX = §9"k§.scaleY = param2;
         §9"k§.x = param3;
         §9"k§.y = param4;
      }
      
      private function §[G§() : void
      {
         var _loc6_:§'!`§ = null;
         var _loc7_:Array = null;
         var _loc8_:Avatar = null;
         var _loc9_:§'!`§ = null;
         this.§,!_§ = true;
         var _loc1_:§&e§ = §&!M§.getItemByName("Repeater_Items") as §&e§;
         _loc1_.§<$5§(§`!d§.§=$#§(),§?$#§);
         var _loc2_:§&e§ = §&!M§.getItemByName("Repeater_Tabs") as §&e§;
         _loc2_.§<$5§(§`!d§.§>!'§(),§?$#§);
         this.§5G§(false);
         if(§<8§ == null)
         {
            return;
         }
         var _loc3_:String = userProgress.userID;
         var _loc4_:String;
         if((_loc4_ = userProgress.avatarString) == null || _loc4_ == "")
         {
            this.§<#9§ = true;
         }
         var _loc5_:§6#b§;
         (_loc5_ = new §6#b§(_loc3_,false,§6#b§.§?^§)).x = 13;
         _loc5_.y = 9;
         §&!M§.getItemByName("SetFacebookProfileButton").mClip.addChild(_loc5_);
         if(§!$-§)
         {
            _loc6_ = §&!M§.getItemByName("AvatarHolderClip") as §'!`§;
            this.§[#c§(_loc6_.mClip);
            if(_loc4_ != "" && _loc4_ != null)
            {
               _loc7_ = §<&§.§;i§(_loc4_);
               _loc8_ = §9"k§.§@#E§(_loc7_);
               §7#8§.§`"H§.§5$D§ = _loc8_;
            }
            else
            {
               this.static(§7#8§.§;!_§);
               §9"k§.§'!;§("backgrounds1");
            }
            this.§ I§();
            §!$-§ = false;
         }
         else
         {
            _loc9_ = §&!M§.getItemByName("AvatarHolderClip") as §'!`§;
            this.§[#c§(_loc9_.mClip);
            §9"k§.§4"I§();
            §9"k§.§=!l§.§5"9§();
            this.§ I§();
         }
         this.§'"i§(_loc2_);
         this.§#$,§();
      }
      
      private function §'"i§(param1:§&e§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(this.§>$B§)
         {
            _loc2_ = §`!d§.§^G§(this.§>$B§);
            if(_loc2_ != -1)
            {
               _loc3_ = this.§>$B§.substr("CATEGORY".length);
               §&!M§.setText(_loc3_,"Textfield_CategoryTitle");
               param1.§[!'§("Repeater_Items_Tab_" + _loc2_);
               if(§7#8§.§`"H§.items.§?p§.length > 0)
               {
                  param1.§6!U§("Repeater_Tabs_Tab_0").§5d§(§7#8§.§`"H§.items.§?p§[_loc2_].name as String);
               }
            }
            this.§>$B§ = null;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var _loc4_:§8#=§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:§&e§ = null;
         var _loc8_:§=!7§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§?$#§ = null;
         var _loc14_:String = null;
         var _loc15_:int = 0;
         var _loc16_:§?$#§ = null;
         var _loc17_:String = null;
         var _loc18_:int = 0;
         var _loc19_:Array = null;
         var _loc20_:§=n§ = null;
         var _loc21_:§2"O§ = null;
         var _loc22_:String = null;
         var _loc23_:Item = null;
         var _loc24_:CoinShopPopup = null;
         var _loc25_:String = null;
         var _loc26_:String = null;
         if(param3 is §8#=§)
         {
            _loc4_ = param3 as §8#=§;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is §;#8§)
               {
                  if(((_loc4_.mParentContainer as §;#8§).mParentContainer as §&e§).upperCaseName == "REPEATER_TABS")
                  {
                     if((_loc5_ = §`!d§.§^G§(param2)) != -1)
                     {
                        §3Z§.playSound("Shop_Selection",§3Z§.§[!F§,0,0.7);
                        _loc6_ = param2.substr("CATEGORY".length);
                        (_loc7_ = §&!M§.getItemByName("Repeater_Items") as §&e§).§[!'§("Repeater_Items_Tab_" + _loc5_);
                        for each(_loc8_ in (_loc4_.mParentContainer as §;#8§).§!$"§)
                        {
                           (_loc8_ as §?$#§).§@!U§();
                        }
                        (param3 as §?$#§).§^!g§();
                        this.§@"0§();
                     }
                  }
                  else if(((_loc4_.mParentContainer as §;#8§).mParentContainer as §&e§).upperCaseName == "REPEATER_ITEMS")
                  {
                     §3Z§.playSound("Menu_Select",§3Z§.§[!F§);
                     if((_loc9_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        this.static(param2);
                     }
                     else if(_loc9_ == 0)
                     {
                        this.§^"C§(param2.substring("REMOVE_".length));
                     }
                     this.§#$,§();
                  }
               }
            }
         }
         if(param2.toUpperCase().indexOf("OVER") > -1)
         {
            _loc10_ = param2.toUpperCase().substr(4);
            _loc11_ = §`!d§.§^G§(_loc10_);
            _loc12_ = 0;
            for each(_loc13_ in ((param3 as §8#=§).mParentContainer as §;#8§).§!$"§)
            {
               if(_loc12_ != _loc11_)
               {
                  (_loc13_ as §?$#§).§@!U§();
               }
               else
               {
                  (_loc13_ as §?$#§).§^!g§();
               }
               _loc12_++;
            }
         }
         if(param2.toUpperCase().indexOf("OUT") > -1)
         {
            _loc14_ = param2.toUpperCase().substr(3);
            _loc15_ = §`!d§.§^G§(_loc14_);
            _loc12_ = 0;
            for each(_loc16_ in ((param3 as §8#=§).mParentContainer as §;#8§).§!$"§)
            {
               if(_loc12_ == _loc15_)
               {
                  (_loc16_ as §?$#§).§@!U§();
               }
               _loc12_++;
            }
         }
         switch(param2)
         {
            case "UNEQUIP_ALL":
               §3Z§.playSound("Shop_Selection",§3Z§.§[!F§,0,0.7);
               §7#8§.§`"H§.§5$D§.§,$=§();
               this.§#$,§();
               this.§@"0§();
               break;
            case "RANDOMIZE_AVATAR":
               §3Z§.playSound("Shop_Selection",§3Z§.§[!F§,0,0.7);
               §7#8§.§`"H§.§5$D§.§["@§();
               this.§#$,§();
               break;
            case "BUY_THESE":
               §3Z§.playSound("Shop_Buy",§3Z§.§[!F§);
               _loc17_ = §<&§.§[>§(this.§4$+§);
               _loc18_ = 0;
               for each(_loc23_ in this.§4$+§)
               {
                  _loc18_ += §^"q§(_loc23_.mId);
               }
               if(_loc18_ > dataModel.§1W§.§<B§)
               {
                  this.§,!_§ = false;
                  (_loc24_ = new CoinShopPopup(§#"l§.NORMAL,§]"Y§.TOP,CoinShopPopup.§["3§)).addEventListener(§"Z§.CLOSE,this.§@"%§);
                  AngryBirdsBase.singleton.popupManager.openPopup(_loc24_);
                  return;
               }
               this.§5G§(true);
               this.§8#k§ = [];
               _loc19_ = _loc17_.split("-");
               for each(_loc25_ in _loc19_)
               {
                  _loc26_ = this.§=`§(_loc25_);
                  §0I§.§>f§(_loc26_);
                  this.§8#k§.push(_loc25_);
               }
               _loc20_ = new §=n§(_loc17_,[]);
               (_loc21_ = new §2"O§(_loc20_,new §5u§(1,0,_loc18_),ID)).addEventListener(§4?§.§?w§,this.§3n§);
               break;
            case "SET_AVATAR":
               §3Z§.playSound("Shop_Selection",§3Z§.§[!F§,0,0.7);
               this.§<#9§ = false;
               this.§5G§(true);
               _loc22_ = §7#8§.§`"H§.§5$D§.§2$A§();
               this.§=!T§(_loc22_);
               this.§@"0§();
               break;
            case "SET_PROFILE":
               §3Z§.playSound("Shop_Selection",§3Z§.§[!F§,0,0.7);
               this.§<#9§ = true;
               this.§5G§(true);
               this.§=!T§("");
               this.§@"0§();
               break;
            case "CLOSE_AVATAR":
               close();
               break;
            case "BRANDED_SHOP":
               this.hide();
               break;
            case "EASTER_EGG_2":
               §&!M§.getItemByName("ButtonEasterEgg2").setVisibility(false);
               userProgress.§#y§("1000-2");
               break;
            case "SCROLL_RIGHT":
               §3Z§.playSound("Shop_Selection",§3Z§.§[!F§,0,0.7);
               this.§@"0§();
               break;
            case "SCROLL_LEFT":
               §3Z§.playSound("Shop_Selection",§3Z§.§[!F§,0,0.7);
               this.§@"0§();
         }
      }
      
      protected function §@"%§(param1:Event) : void
      {
      }
      
      private function §=`§(param1:String) : String
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §7#8§.§`"H§.§5$D§.§<"Q§())
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
         this.§&!U§(this.§1!B§);
         super.hide(param1,param2);
      }
      
      private function §[]§(param1:*) : void
      {
         this.§5G§(false);
      }
      
      private function §^#<§() : void
      {
         this.§5G§(false);
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         §0I§.§5#s§();
         §0I§.trackPageView(this);
         var _loc2_:§'!`§ = §&!M§.getItemByName("AvatarSavedAnimation") as §'!`§;
         _loc2_.setVisibility(false);
         this.§0!A§(new Wallet(this,true,true,true));
         this.§1!B§.§+F§.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§;#@§);
         §7#8§.§`"H§.§"!e§();
         if(§9"k§.§=!l§ == null)
         {
            §9"k§.§>#w§(§7#8§.§`"H§.§ #C§());
         }
         if(!this.§,!_§)
         {
            this.§[G§();
         }
      }
      
      private function §;#@§(param1:MouseEvent) : void
      {
         this.§,!_§ = false;
      }
      
      private function §1$E§(param1:Boolean) : void
      {
         var _loc2_:§+!l§ = null;
         var _loc3_:§?$#§ = null;
         for each(_loc2_ in §7#8§.§`"H§.items.§?p§)
         {
            if(_loc2_.name.toUpperCase() != "CATEGORYBIRDS" && _loc2_.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               _loc3_ = §&!M§.getItemByName(_loc2_.name.toUpperCase()) as §?$#§;
               _loc3_.setVisibility(param1);
            }
         }
      }
      
      private function §!$4§(param1:Boolean) : void
      {
         §&!M§.getItemByName("Button_Unequip").setVisibility(param1);
         §&!M§.getItemByName("Button_Random").setVisibility(param1);
      }
      
      public function §#$,§() : void
      {
         var _loc3_:String = null;
         var _loc4_:Item = null;
         var _loc1_:§&e§ = §&!M§.getItemByName("Repeater_Items") as §&e§;
         var _loc2_:Number = 0;
         while(_loc2_ < §7#8§.§`"H§.items.§?p§.length)
         {
            _loc3_ = §7#8§.§`"H§.items.§?p§[_loc2_].name;
            if((_loc4_ = §7#8§.§`"H§.§5$D§.§+_§(_loc3_)) == null)
            {
               _loc1_.§6!U§("Repeater_Items_Tab_" + _loc2_).§5d§(_loc3_);
            }
            else
            {
               _loc1_.§6!U§("Repeater_Items_Tab_" + _loc2_).§5d§(_loc4_.mId);
               if(_loc3_.toUpperCase() == "CATEGORYBIRDS")
               {
                  if(_loc4_.mId.indexOf("GreenDay") > -1)
                  {
                     this.§1$E§(false);
                     this.§!$4§(false);
                  }
                  else
                  {
                     this.§1$E§(true);
                     this.§!$4§(true);
                  }
               }
            }
            _loc2_++;
         }
         this.§@"0§();
      }
      
      public function §3n§(param1:Event = null) : void
      {
         var _loc2_:§2"O§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         this.§5G§(false);
         if(param1 && param1.currentTarget is §2"O§)
         {
            _loc2_ = param1.currentTarget as §2"O§;
         }
         §0I§.trackPageView(this,§0I§.§'#u§);
         var _loc3_:Array = new Array();
         for each(_loc4_ in this.§8#k§)
         {
            _loc5_ = this.§=`§(_loc4_);
            §0I§.§1q§(_loc5_);
            (_loc6_ = new Object()).sku = _loc4_;
            _loc6_.name = _loc5_;
            _loc6_.price = 0;
            _loc6_.quantity = 1;
            _loc3_.push(_loc6_);
         }
         §0I§.trackTransactionItems(_loc2_.orderId,§5$,§,"1 x ",_loc3_);
         this.§8#k§ = [];
         if(param1 && param1.currentTarget is §2"O§)
         {
            (param1.currentTarget as §2"O§).removeEventListener(Event.COMPLETE,this.§3n§);
         }
         this.§5$6§();
      }
      
      private function §=!T§(param1:String) : void
      {
         this.§0$#§ = this.§,"P§;
         this.§,"P§ = param1;
         var _loc2_:URLRequest = §;#&§.§ #G§(§?!?§ + "/saveavatar/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLLoader = new §!!o§();
         _loc3_.addEventListener(Event.COMPLETE,this.§1#W§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§>#8§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7"d§);
         _loc3_.load(_loc2_);
      }
      
      protected function §7"d§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:§5!-§ = new WarningPopup(§#"l§.§?!b§,§]"Y§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §1#W§(param1:Event) : void
      {
         var _loc2_:§7Y§ = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:§'!`§ = null;
         if(this.§,"P§ != null)
         {
            userProgress.avatarString = this.§,"P§;
            § #W§.§]8§(new §try§(this.§,"P§,userProgress.userID),true,true);
            §-=§.§9!u§(this.§,"P§);
            _loc2_ = AngryBirdsBase.singleton.§-j§();
            if(_loc2_ is StateTournamentResults)
            {
               (_loc2_ as StateTournamentResults).§#8§();
            }
            _loc3_ = this.§,"P§.split("-");
            for each(_loc4_ in _loc3_)
            {
               if(this.§0$#§)
               {
                  if(this.§0$#§.indexOf(_loc4_) == -1)
                  {
                     §0I§.§""k§(_loc4_);
                  }
               }
               else
               {
                  §0I§.§""k§(_loc4_);
               }
            }
         }
         if(this.§,!_§)
         {
            this.§5G§(false);
            (_loc5_ = §&!M§.getItemByName("AvatarSavedAnimation") as §'!`§).setVisibility(true);
            _loc5_.mClip.gotoAndPlay(1);
            this.§@"0§();
         }
      }
      
      private function §>#8§(param1:IOErrorEvent) : void
      {
         var _loc2_:§'!`§ = null;
         if(this.§,!_§)
         {
            this.§5G§(false);
            _loc2_ = §&!M§.getItemByName("AvatarSavedAnimation") as §'!`§;
            _loc2_.setVisibility(true);
            _loc2_.mClip.gotoAndPlay(1);
         }
      }
      
      public function §^"C§(param1:String) : void
      {
         §7#8§.§`"H§.§5$D§.§^"C§(param1);
         this.§@"0§();
      }
      
      public function static(param1:String) : void
      {
         var _loc4_:Avatar = null;
         var _loc5_:Object = null;
         var _loc6_:Item = null;
         var _loc2_:Item = §7#8§.§`"H§.items.getItem(param1);
         var _loc3_:Avatar = §7#8§.§`"H§.§5$D§;
         if(_loc2_)
         {
            if(_loc2_.§>"r§.toUpperCase() == "CATEGORYBIRDS" && _loc3_.§+"M§().mId != _loc2_.mId)
            {
               _loc4_ = §7#8§.§`"H§.§1#;§(_loc2_.mId);
               §9"k§.§>#w§(_loc4_,110,174);
               _loc4_.§,$=§();
               _loc4_.§^"L§(_loc2_);
               if(_loc3_)
               {
                  for each(_loc6_ in _loc3_.§?$?§)
                  {
                     if(_loc6_.category.toUpperCase() != "CATEGORYBIRDS")
                     {
                        if(_loc6_.category.toUpperCase() == "CATEGORYBACKGROUNDS")
                        {
                           §9"k§.§'!;§(_loc6_.mId);
                        }
                        _loc4_.§^"L§(_loc6_);
                     }
                  }
               }
               if((_loc5_ = _loc4_.§+_§("CATEGORYBACKGROUNDS")) == null)
               {
                  _loc4_.§^"L§(§7#8§.§`"H§.items.getItem("Backgrounds1"));
               }
            }
            else if(_loc2_.§>"r§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               §9"k§.§'!;§(_loc2_.mId);
               §7#8§.§`"H§.§5$D§.§^"L§(_loc2_);
            }
            else
            {
               §7#8§.§`"H§.§5$D§.§^"L§(_loc2_);
            }
         }
         else
         {
            §;!Y§.log("[Warning!] Trying to select item that dosen\'t exit. Item id:" + param1);
         }
         this.§@"0§();
      }
      
      private function §@"0§() : void
      {
         var _loc3_:§+!l§ = null;
         var _loc4_:Item = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:String = null;
         var _loc14_:§?$#§ = null;
         var _loc15_:§?$#§ = null;
         var _loc16_:int = 0;
         var _loc17_:Array = null;
         var _loc18_:§[$3§ = null;
         var _loc19_:§?$#§ = null;
         var _loc20_:Boolean = false;
         var _loc21_:Object = null;
         var _loc22_:§ !>§ = null;
         var _loc23_:§ !>§ = null;
         var _loc24_:§'!`§ = null;
         var _loc25_:§'!`§ = null;
         var _loc26_:§'!`§ = null;
         var _loc27_:§'!`§ = null;
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = false;
         var _loc30_:Boolean = false;
         var _loc31_:Boolean = false;
         var _loc32_:int = 0;
         var _loc33_:§?$#§ = null;
         var _loc34_:Object = null;
         var _loc1_:int = 0;
         this.§[!4§ = false;
         var _loc2_:String = userProgress.avatarString;
         if(_loc2_ != null && _loc2_ != "")
         {
            _loc10_ = _loc2_.split("-");
            _loc12_ = (_loc11_ = §7#8§.§`"H§.§5$D§.§2$A§()).split("-");
            if(_loc10_.length != _loc12_.length)
            {
               this.§[!4§ = true;
            }
            for each(_loc13_ in _loc12_)
            {
               if(_loc2_.indexOf(_loc13_) == -1)
               {
                  this.§[!4§ = true;
               }
            }
         }
         for each(_loc3_ in §7#8§.§`"H§.items.§?p§)
         {
            (_loc14_ = §&!M§.getItemByName(_loc3_.name.toUpperCase()) as §?$#§).§1!P§();
         }
         this.§4$+§ = [];
         for each(_loc4_ in §7#8§.§`"H§.§5$D§.§?$?§)
         {
            _loc15_ = §&!M§.getItemByName(_loc4_.category.toUpperCase()) as §?$#§;
            _loc16_ = §^"q§(_loc4_.mId);
            _loc15_.§]#,§(_loc4_.mId,_loc16_);
            if(_loc16_ > 0)
            {
               this.§4$+§.push(_loc4_);
            }
            _loc1_ += _loc16_;
         }
         if(_loc1_ > 0)
         {
            §&!M§.getItemByName("BuyTheseButton").setVisibility(true);
            §&!M§.getItemByName("Textfield_Price").setVisibility(true);
            §&!M§.getItemByName("SetAvatarProfileButton").setVisibility(false);
         }
         else
         {
            §&!M§.getItemByName("BuyTheseButton").setVisibility(false);
            §&!M§.getItemByName("Textfield_Price").setVisibility(false);
            §&!M§.getItemByName("SetAvatarProfileButton").setVisibility(true);
         }
         if(this.§<#9§)
         {
            (§&!M§.getItemByName("SetAvatarProfileButton") as § !>§).setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (§&!M§.getItemByName("SetFacebookProfileButton") as § !>§).setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
         }
         else if(_loc1_ > 0)
         {
            (§&!M§.getItemByName("SetAvatarProfileButton") as § !>§).setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
            (§&!M§.getItemByName("SetFacebookProfileButton") as § !>§).setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            (§&!M§.getItemByName("SetFacebookProfileButton") as § !>§).setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(this.§[!4§)
            {
               (§&!M§.getItemByName("SetAvatarProfileButton") as § !>§).setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (§&!M§.getItemByName("SetAvatarProfileButton") as § !>§).setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
            }
         }
         §&!M§.setText(_loc1_ + "","Textfield_Price");
         if(this.§9z§ == null)
         {
            this.§9z§ = new §,"#§();
            this.§9z§.§8"G§();
         }
         var _loc5_:§ !>§ = §&!M§.getItemByName("SetAvatarProfileButton") as § !>§;
         while(_loc5_.mClip.SetAvatarHolder.numChildren > 0)
         {
            _loc5_.mClip.SetAvatarHolder.removeChildAt(0);
         }
         var _loc6_:String = §7#8§.§`"H§.§5$D§.§2$A§();
         var _loc7_:Bitmap;
         (_loc7_ = new Bitmap(this.§9z§.render(_loc6_,null))).x = -8;
         _loc7_.y = -12;
         _loc5_.mClip.SetAvatarHolder.addChild(_loc7_);
         var _loc8_:§&e§ = §&!M§.getItemByName("Repeater_Items") as §&e§;
         var _loc9_:§;#8§;
         if(_loc9_ = §&!M§.getItemByName(_loc8_.§+l§) as §;#8§)
         {
            §&!M§.setText("Page " + (_loc9_.§9N§ + 1).toString() + "/" + _loc9_.§1$9§,"Textfield_PageNumber");
            if(_loc9_.§1$9§ == 1)
            {
               §&!M§.getItemByName("Textfield_PageNumber").setVisibility(false);
               §&!M§.getItemByName("Button_Scroll1").setVisibility(false);
               §&!M§.getItemByName("Button_Scroll2").setVisibility(false);
            }
            else
            {
               §&!M§.getItemByName("Textfield_PageNumber").setVisibility(true);
               _loc22_ = §&!M§.getItemByName("Button_Scroll1") as § !>§;
               _loc23_ = §&!M§.getItemByName("Button_Scroll2") as § !>§;
               _loc24_ = §&!M§.getItemByName("NewTag_left") as §'!`§;
               _loc25_ = §&!M§.getItemByName("NewTag_right") as §'!`§;
               _loc26_ = §&!M§.getItemByName("SaleTag_left") as §'!`§;
               _loc27_ = §&!M§.getItemByName("SaleTag_right") as §'!`§;
               _loc22_.setVisibility(true);
               _loc23_.setVisibility(true);
               _loc28_ = false;
               _loc29_ = false;
               _loc30_ = false;
               _loc31_ = false;
               _loc32_ = 0;
               while(_loc32_ < _loc9_.§!$"§.length)
               {
                  if(this.§%!l§(_loc9_.§!$"§[_loc32_].name))
                  {
                     if(_loc32_ < _loc9_.§9N§ * _loc9_.§[!2§)
                     {
                        _loc28_ = true;
                     }
                     else if(_loc32_ > _loc9_.§9N§ * _loc9_.§[!2§ + _loc9_.§[!2§ - 1)
                     {
                        _loc29_ = true;
                     }
                  }
                  if(this.§?" §(_loc9_.§!$"§[_loc32_].name))
                  {
                     if(_loc32_ < _loc9_.§9N§ * _loc9_.§[!2§)
                     {
                        _loc30_ = true;
                     }
                     else if(_loc32_ > _loc9_.§9N§ * _loc9_.§[!2§ + _loc9_.§[!2§ - 1)
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
            _loc18_ = §4!Q§(AngryBirdsBase.singleton.dataModel).§92§;
            for each(_loc19_ in _loc9_.§!$"§)
            {
               if((_loc33_ = _loc19_ as §?$#§).visible)
               {
                  for each(_loc34_ in §<8§)
                  {
                     if(_loc34_.isNew && _loc34_.itemId == _loc33_.name)
                     {
                        _loc34_.isNew = false;
                        if(_loc18_.§3$;§(_loc34_.itemId))
                        {
                           _loc17_.push(_loc34_.itemId);
                        }
                     }
                  }
               }
            }
            _loc18_.§4"h§(§[$3§.§'"N§,_loc17_);
            _loc20_ = false;
            for each(_loc21_ in §<8§)
            {
               if(_loc21_.isNew == true && !_loc21_.available)
               {
                  _loc20_ = true;
                  break;
               }
            }
            §4!Q§(AngryBirdsBase.singleton.dataModel).§5!2§ = _loc20_;
         }
      }
      
      private function §%!l§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§#g§.length)
         {
            if(this.§#g§[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      private function §?" §(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@$0§.length)
         {
            if(this.§@$0§[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §;!=§() : String
      {
         return §0I§.§!#O§;
      }
      
      public function §#"!§() : String
      {
         return §0I§.§-9§;
      }
      
      public function §+"-§() : String
      {
         return this.§;!=§() + "-" + this.§#"!§();
      }
      
      private function §5G§(param1:Boolean) : void
      {
         if(§&!M§)
         {
            §&!M§.getItemByName("WaitingForReply").setVisibility(param1);
         }
         if(this.§1!B§)
         {
            this.§1!B§.§@#e§(!param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§,!_§ = false;
         super.dispose();
      }
   }
}
