package §"!U§
{
   import §#!s§.§@J§;
   import §#!s§.Wallet;
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §'!U§.§0!?§;
   import §'"-§.§'§;
   import §'"-§.§`j§;
   import §+!d§.§&b§;
   import §+!d§.§3§;
   import §+"%§.§6X§;
   import §1!@§.§&#a§;
   import §4#%§.§@#@§;
   import §5"$§.§]!m§;
   import §6"r§.§0"<§;
   import §6"r§.§=O§;
   import §8§.§#$+§;
   import §;!H§.§!!8§;
   import §;!H§.§%"K§;
   import §;!H§.§8#_§;
   import §;!H§.§9R§;
   import §;!H§.§=!o§;
   import §<!O§.§@#`§;
   import §>!#§.§ 1§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §>q§.CoinShopPopup;
   import §?"R§.§3T§;
   import §?"R§.RedeemCodePopup;
   import §?"R§.WarningPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import §^$4§.§&6§;
   import §^$4§.§4I§;
   import §^$4§.§>"T§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class TabbedShopPopup extends AbstractPopup implements § 1§, §@J§, §@#@§
   {
      
      public static const ID:String = "TabbedShopPopup";
      
      private static const §5#%§:int = -35;
      
      private static const §=[§:int = -15;
      
      private static const §!"_§:String = "In-app Shop";
      
      public static const §;"o§:String = "uiSoundsChannel";
      
      private static const §!U§:int = 8;
      
      public static const §5U§:String = "SLINGSHOT";
      
      public static const §%C§:String = "GENERAL";
      
      public static const § !§:String = "SPECIAL";
      
      private static var §switch§:Boolean;
      
      public static const §^!J§:String = "SlingshotFirstTab";
       
      
      public var §^m§:Wallet;
      
      private var §2!3§:§ !3§;
      
      private var §0l§:§ !3§;
      
      private var §]#F§:§ !3§;
      
      private var §`"u§:§ !3§;
      
      private var §8!,§:§ !3§;
      
      private var MIGHTY_EAGLE:§ !3§;
      
      private var WINGMAN:§ !3§;
      
      private var §!"%§:§ !3§;
      
      private var §3!r§:§ !3§;
      
      private var §'!E§:Array;
      
      private var §-#M§:§ !3§;
      
      private var §="h§:String = "";
      
      private var §!#P§:String;
      
      private var § !n§:Point;
      
      private var §]! §:§0"<§;
      
      private var §?t§:§0"<§;
      
      private var §1"B§:§0"<§;
      
      private var § z§:§0"<§;
      
      private var §"!X§:§0"<§;
      
      private var §?!=§:MovieClip;
      
      private var § !T§:MovieClip;
      
      private var §^"Q§:String;
      
      private var §6!&§:§9R§;
      
      private var §?P§:Timer;
      
      private var §&a§:§3T§;
      
      private var §7!G§:Boolean = true;
      
      private var §9H§:String = "ShopTabsInitialzed";
      
      private var §-#-§:§!!8§;
      
      private var §?!j§:Dictionary;
      
      private var §5"E§:Timer;
      
      public function TabbedShopPopup(param1:int, param2:int, param3:String = "", param4:String = "GENERAL")
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_TabbedShop[0],ID);
         this.§^"Q§ = param4;
         this.§!#P§ = param3;
         addEventListener(this.§9H§,this.§8!j§);
      }
      
      protected static function get dataModel() : §+3§
      {
         return AngryBirdsBase.singleton.dataModel as §+3§;
      }
      
      override protected function init() : void
      {
         var _loc3_:MovieClip = null;
         super.init();
         this.§&!R§(true);
         this.§]! § = §7!j§.getItemByName("Container_Shop_Branded") as §0"<§;
         this.§?t§ = §7!j§.getItemByName("Container_Shop_Slingshots") as §0"<§;
         this.§1"B§ = §7!j§.getItemByName("Container_TabbedShopPopup") as §0"<§;
         this.§ z§ = §7!j§.getItemByName("Container_Shop_Selection_Buttons") as §0"<§;
         this.§"!X§ = §7!j§.getItemByName("Container_Shop_Selection_Extras") as §0"<§;
         §7!j§.mClip.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
         §6X§.addCallback("handleUserCancelledOrder",this.§ #m§);
         §6X§.addCallback("purchaseFailed",this.§@g§);
         if(!§switch§)
         {
            §switch§ = true;
         }
         §%h§.§3!]§.addEventListener(Event.CHANGE,this.§"#f§);
         var _loc1_:int = 0;
         while(_loc1_ < §!U§)
         {
            _loc3_ = §7!j§.mClip.Container_TabbedShopPopup["powerupTab" + _loc1_];
            if(_loc3_)
            {
               _loc3_.gotoAndStop("Normal");
            }
            _loc1_++;
         }
         this.§8#d§();
         this.§-#-§ = new §=!o§();
         (this.§-#-§ as §=!o§).addEventListener(§4I§.§`!M§,this.§!$9§);
         (this.§-#-§ as §=!o§).addEventListener(§4I§.§ !,§,this.§1q§);
         (this.§-#-§ as §=!o§).addEventListener(§4I§.§do§,this.§>"U§);
         var _loc2_:§=O§ = this.§"!X§.getItemByName("Button_EarnBirdCoins") as §=O§;
         if(_loc2_)
         {
            _loc2_.visible = dataModel.§9"k§;
         }
      }
      
      protected function §>"U§(param1:§4I§) : void
      {
      }
      
      protected function §1q§(param1:§4I§) : void
      {
      }
      
      protected function §!$9§(param1:§4I§) : void
      {
         §,"W§.§0#l§("FacebookGiftCard",param1.quantity);
      }
      
      private function §@g§() : void
      {
      }
      
      private function § #m§() : void
      {
      }
      
      private function §8#d§() : void
      {
         if(!dataModel.§ ,§.§!!,§)
         {
            §%h§.§3!]§.§=L§();
            dataModel.§ ,§.addEventListener(Event.COMPLETE,this.§`i§);
         }
         else
         {
            this.§`i§(null,dataModel.§ ,§.§!!,§);
         }
      }
      
      protected function §#[§(param1:Event) : void
      {
      }
      
      protected function §,#d§(param1:Event) : void
      {
         var _loc3_:§&6§ = null;
         var _loc2_:§=#V§ = this.§;#V§("BrandedShopBundle",dataModel.§ ,§.§!L§);
         if(_loc2_)
         {
            _loc3_ = new §&6§(§&6§.§'#S§,TabbedShopPopup.§ !§,false,false,_loc2_,_loc2_.getPricePoint(0));
            this.§>"a§(_loc3_);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         var _loc4_:CoinShopPopup = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHOP_BRANDED":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§,"F§(true);
               §-#A§.§6$2§().§ "V§("SHOP_BRANDED");
               break;
            case "SHOP_SLINGSHOTS":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§7#g§(true);
               §-#A§.§6$2§().§ "V§("SHOP_SLINGSHOTS");
               break;
            case "SHOP_POWERUPS":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§^"g§(true);
               §-#A§.§6$2§().§ "V§("SHOP_POWERUPS");
               break;
            case "SHOP_VC":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               _loc4_ = new CoinShopPopup(§[W§.NORMAL,§<d§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
               §-#A§.§6$2§().§ "V§("SHOP_VC");
               break;
            case "BACK":
               §#$+§.playSound("Menu_Back",§#$+§.§'!o§);
               this.§]#P§(true);
               break;
            case "INFO":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§>#8§();
               break;
            case "REDEEM":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§<!s§();
               break;
            case "EARNCOINS":
               §#$+§.playSound("Menu_Confirm");
               AngryBirdsBase.singleton.exitFullScreen();
               §6X§.§3U§("earnCredits");
               break;
            case "REDEEM_CODE":
               §#$+§.playSound("Menu_Confirm");
               this.§5!R§();
         }
      }
      
      private function §5!R§() : void
      {
         var _loc1_:RedeemCodePopup = new RedeemCodePopup(§[W§.§5Z§,§<d§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      private function §>#8§() : void
      {
         var _loc1_:§'#3§ = §`j§.§6p§(this.§!#P§);
         var _loc2_:String = "";
         var _loc3_:String = "";
         if(_loc1_)
         {
            _loc2_ = _loc1_.§["u§;
            _loc3_ = _loc1_.description;
         }
         if(!_loc1_)
         {
            if(this.§!#P§ == §`j§.§+#4§.§"!E§)
            {
               _loc2_ = §`j§.§+#4§.§["u§;
               _loc3_ = §`j§.§+#4§.description;
            }
            switch(this.§^"Q§)
            {
               case §5U§:
                  _loc2_ = "Slingshots";
                  _loc3_ = "Slingshots are permanent items that can be used in any level and changed between shots. Buy once, keep forever!";
                  break;
               case § !§:
                  _loc2_ = "Specials";
                  _loc3_ = "These items are only available for a limited time!";
            }
         }
         this.§&a§ = new §3T§(§7!j§.mClip,_loc2_,_loc3_,§[W§.§5Z§,§<d§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§&a§);
      }
      
      private function §]#P§(param1:Boolean) : void
      {
         this.§!#P§ = "";
         this.§ z§.setVisibility(param1);
         this.§"!X§.setVisibility(this.§ z§.visible);
         this.§]! §.setVisibility(!param1);
         this.§?t§.setVisibility(!param1);
         this.§1"B§.setVisibility(!param1);
         if(param1)
         {
            this.§7!r§();
         }
      }
      
      private function §,"F§(param1:Boolean, param2:String = "") : void
      {
         if(param2 == "")
         {
            this.§!#P§ = this.§-D§(0);
         }
         this.§^"Q§ = § !§;
         this.§>!I§(this.§!#P§,§ !§);
         this.§ z§.setVisibility(!param1);
         this.§"!X§.setVisibility(this.§ z§.visible);
         this.§]! §.setVisibility(param1);
         this.§?t§.setVisibility(!param1);
         this.§1"B§.setVisibility(!param1);
      }
      
      private function §-D§(param1:int) : String
      {
         var _loc4_:§ !3§ = null;
         var _loc2_:Array = [];
         var _loc3_:String = "";
         for each(_loc4_ in this.§'!E§)
         {
            if(_loc4_ is §"J§)
            {
               _loc2_.push(_loc4_);
            }
         }
         if(_loc2_.length > param1 && _loc2_[param1])
         {
            _loc3_ = §"J§(_loc2_[param1]).§^$2§.id;
         }
         return _loc3_;
      }
      
      private function §7#g§(param1:Boolean, param2:String = "") : void
      {
         if(§]!m§.§3!]§.§?q§.indexOf("HALLOWEEN") != -1 && param2 == "")
         {
            param2 = "Wishbone";
         }
         if((§]!m§.§3!]§.§?q§.indexOf("XMAS_2014_W1") != -1 || §]!m§.§3!]§.§?q§.indexOf("XMAS_2014_W2") != -1 || §]!m§.§3!]§.§?q§.indexOf("XMAS_2014_W3") != -1) && param2 == "")
         {
            param2 = "XmasTree";
         }
         else if(param2 == "")
         {
            param2 = "GoldenSling";
         }
         else if(param2 == §^!J§)
         {
            if(this.§1"v§().length > 0)
            {
               param2 = (this.§1"v§()[0] as §4#b§).§^$2§.id;
            }
         }
         this.§!#P§ = param2;
         this.§^"Q§ = §5U§;
         this.§>!I§(this.§!#P§,§5U§);
         this.§ z§.setVisibility(!param1);
         this.§"!X§.setVisibility(this.§ z§.visible);
         this.§]! §.setVisibility(!param1);
         this.§?t§.setVisibility(param1);
         this.§1"B§.setVisibility(!param1);
      }
      
      private function §^"g§(param1:Boolean, param2:String = "ExtraBird") : void
      {
         this.§!#P§ = param2;
         this.§^"Q§ = §%C§;
         this.§>!I§(this.§!#P§);
         this.§ z§.setVisibility(!param1);
         this.§"!X§.setVisibility(this.§ z§.visible);
         this.§]! §.setVisibility(!param1);
         this.§?t§.setVisibility(!param1);
         this.§1"B§.setVisibility(param1);
         this.§1"B§.getItemByName("Button_Back").setVisibility(this.§7!G§);
      }
      
      private function §`i§(param1:Event = null, param2:Vector.<§=#V§> = null) : void
      {
         var _loc9_:Object = null;
         var _loc10_:§=O§ = null;
         this.§&!R§(false);
         if(param1)
         {
            param2 = dataModel.§ ,§.§!!,§;
         }
         this.§>!]§(param2);
         var _loc3_:Boolean = true;
         if(dataModel.§ ,§.§!L§ && dataModel.§ ,§.§!L§.length > 0)
         {
            this.§<""§(dataModel.§ ,§.§!L§);
            _loc3_ = false;
         }
         if(dataModel.§ ,§.slingshots && dataModel.§ ,§.slingshots.length > 0)
         {
            this.§<!;§(dataModel.§ ,§.slingshots);
            _loc3_ = false;
         }
         dispatchEvent(new Event(this.§9H§));
         var _loc4_:§=O§ = this.§ z§.getItemByName("Button_Shop_Selection_" + §8#_§.§#l§) as §=O§;
         var _loc5_:§=O§ = this.§ z§.getItemByName("Button_Shop_Selection_" + §8#_§.§-#T§) as §=O§;
         var _loc6_:§=O§ = this.§ z§.getItemByName("Button_Shop_Selection_" + §8#_§.§5#5§) as §=O§;
         var _loc7_:§=O§ = this.§ z§.getItemByName("Button_Shop_Selection_" + §8#_§.§`#"§) as §=O§;
         if(_loc4_ && dataModel.§ ,§.§!L§.length == 0)
         {
            this.§ z§.§`s§(_loc4_);
         }
         if(_loc5_ && dataModel.§ ,§.slingshots.length == 0)
         {
            this.§ z§.§`s§(_loc5_);
         }
         if(_loc6_ && dataModel.§ ,§.§!!,§.length == 0)
         {
            this.§ z§.§`s§(_loc6_);
         }
         if(_loc7_ && dataModel.§ ,§.§>m§.length == 0)
         {
            this.§ z§.§`s§(_loc7_);
         }
         if(_loc3_)
         {
            this.§7!G§ = false;
            if(this.§!#P§ == "")
            {
               this.§!#P§ = "ExtraBird";
            }
            this.§^"g§(true,this.§!#P§);
            return;
         }
         var _loc8_:int = 0;
         for each(_loc9_ in dataModel.§ ,§.shops)
         {
            if(_loc10_ = this.§ z§.getItemByName("Button_Shop_Selection_" + _loc9_.id) as §=O§)
            {
               _loc10_.x = _loc8_ * (_loc10_.width + 20);
               _loc8_++;
            }
         }
         this.§7!r§();
         this.§ z§.x = AngryBirdsBase.screenWidth / 2 - this.§ z§.width / 2;
         dataModel.§ ,§.removeEventListener(Event.COMPLETE,this.§`i§);
      }
      
      private function §7!r§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:§=O§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:Object = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         if(!this.§?!j§)
         {
            this.§?!j§ = new Dictionary();
         }
         var _loc2_:Boolean = false;
         for each(_loc3_ in dataModel.§ ,§.shops)
         {
            if(_loc4_ = this.§ z§.getItemByName("Button_Shop_Selection_" + _loc3_.id) as §=O§)
            {
               _loc5_ = false;
               _loc6_ = false;
               switch(_loc3_.id)
               {
                  case §8#_§.§#l§:
                     _loc4_.setVisibility(dataModel.§ ,§.§!L§.length > 0);
                     _loc5_ = this.§+"z§(dataModel.§ ,§.§!L§,false);
                     _loc6_ = this.§!"d§(dataModel.§ ,§.§!L§);
                     break;
                  case §8#_§.§-#T§:
                     _loc4_.setVisibility(dataModel.§ ,§.slingshots.length > 0);
                     _loc5_ = this.§+"z§(dataModel.§ ,§.slingshots,true);
                     _loc6_ = this.§!"d§(dataModel.§ ,§.slingshots);
                     break;
                  case §8#_§.§5#5§:
                     _loc4_.setVisibility(dataModel.§ ,§.§!!,§.length > 0);
                     _loc5_ = this.§+"z§(dataModel.§ ,§.§!!,§,false);
                     _loc6_ = this.§!"d§(dataModel.§ ,§.§!!,§);
                     break;
                  case §8#_§.§`#"§:
                     _loc4_.setVisibility(dataModel.§ ,§.§>m§.length > 0);
                     _loc5_ = this.§+"z§(dataModel.§ ,§.§>m§,false);
                     _loc6_ = this.§!"d§(dataModel.§ ,§.§>m§);
               }
               _loc4_.mClip.title.text = _loc3_.name;
               if(_loc6_)
               {
                  if(!this.§?!j§[_loc3_.id] || !this.§?!j§[_loc3_.id].newIconAdded)
                  {
                     (_loc9_ = new §@`§.§4!i§("Tag_New_Big")()).name = "Tag_New_Big";
                     _loc4_.mClip.addChild(_loc9_);
                     (_loc7_ = !!this.§?!j§[_loc3_.id] ? this.§?!j§[_loc3_.id] : new Object()).newIconAdded = true;
                     this.§?!j§[_loc3_.id] = _loc7_;
                  }
               }
               else
               {
                  if(_loc10_ = _loc4_.mClip.getChildByName("Tag_New_Big") as MovieClip)
                  {
                     _loc4_.mClip.removeChild(_loc10_);
                  }
                  if(this.§?!j§[_loc3_.id] && this.§?!j§[_loc3_.id].newIconAdded)
                  {
                     this.§?!j§[_loc3_.id].newIconAdded = false;
                  }
               }
               if(_loc5_)
               {
                  _loc2_ = true;
                  if(!this.§?!j§[_loc3_.id] || !this.§?!j§[_loc3_.id].saleIconAdded)
                  {
                     if(_loc6_)
                     {
                        (_loc9_ = new §@`§.§4!i§("Tag_Sale_Big_right_side")()).x = (_loc4_.width >> 1) + 5;
                     }
                     else
                     {
                        _loc9_ = new §@`§.§4!i§("Tag_Sale_Big")();
                     }
                     _loc9_.name = "Tag_Sale_Big";
                     _loc4_.mClip.addChild(_loc9_);
                     (_loc7_ = !!this.§?!j§[_loc3_.id] ? this.§?!j§[_loc3_.id] : new Object()).saleIconAdded = true;
                     this.§?!j§[_loc3_.id] = _loc7_;
                  }
               }
               else
               {
                  if(_loc10_ = _loc4_.mClip.getChildByName("Tag_Sale_Big") as MovieClip)
                  {
                     _loc4_.mClip.removeChild(_loc10_);
                  }
                  if(this.§?!j§[_loc3_.id] && this.§?!j§[_loc3_.id].saleIconAdded)
                  {
                     this.§?!j§[_loc3_.id].saleIconAdded = false;
                  }
               }
            }
         }
         §+3§(AngryBirdsBase.singleton.dataModel).§2"t§ = _loc2_;
         (§>"$§.§<_§ as §8G§).§^$9§();
      }
      
      private function §!"d§(param1:Vector.<§=#V§>) : Boolean
      {
         var _loc2_:§=#V§ = null;
         for each(_loc2_ in param1)
         {
            if(this.§^"V§(_loc2_.id))
            {
               return true;
            }
         }
         return false;
      }
      
      private function §^"V§(param1:String) : Boolean
      {
         int(§+3§(AngryBirdsBase.singleton.dataModel).§!!Z§.indexOf(param1));
         var _loc3_:* = §+3§(AngryBirdsBase.singleton.dataModel).§!!Z§.indexOf(param1) > -1;
         if(!_loc3_)
         {
            _loc3_ = §+3§(AngryBirdsBase.singleton.dataModel).§5`§.indexOf(param1) > -1;
         }
         return _loc3_;
      }
      
      private function §+"z§(param1:Vector.<§=#V§>, param2:Boolean) : Boolean
      {
         var _loc3_:§=#V§ = null;
         for each(_loc3_ in param1)
         {
            if(!(param2 && §%h§.§3!]§.§7#S§(_loc3_.id) > 0))
            {
               if(_loc3_.isOnSale)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function §for §(param1:Vector.<§=#V§>) : Boolean
      {
         var _loc2_:§=#V§ = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§+!q§)
            {
               return true;
            }
         }
         return false;
      }
      
      private function §<!;§(param1:Vector.<§=#V§>) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         _loc2_ = param1.length;
         _loc3_ = this.§?t§.mClip.getChildByName("TabsHolder") as MovieClip;
         var _loc4_:Class;
         _loc6_ = (_loc5_ = new (_loc4_ = §@`§.§4!i§("slingshotTab"))()).width >> 1;
         _loc7_ = _loc2_ * _loc6_;
         var _loc8_:Number = _loc3_.width > _loc7_ ? Number(_loc3_.width - _loc7_ >> 1) : Number(0);
         var _loc9_:int = 0;
         while(_loc9_ < _loc2_)
         {
            _loc5_.y = 0;
            _loc5_.x = _loc8_ + _loc9_ * _loc6_;
            _loc5_.name = "TabSlingshot_" + _loc9_;
            _loc5_.visible = false;
            _loc3_.addChild(_loc5_);
            _loc5_ = new _loc4_();
            _loc9_++;
         }
         this.§1!r§(param1);
      }
      
      private function §1!r§(param1:Vector.<§=#V§>) : int
      {
         var _loc3_:§=#V§ = null;
         var _loc4_:§&b§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            if(_loc4_ = §3#8§.§6#o§(_loc3_.id))
            {
               this.§]#M§(this.§;#V§(_loc3_.id,param1),"Icon_Slingshot_" + _loc3_.id,"SlingshopContent" + _loc3_.id,_loc4_.description,_loc4_.§["u§,_loc2_);
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      private function §<""§(param1:Vector.<§=#V§>) : void
      {
         var _loc8_:Class = null;
         var _loc9_:MovieClip = null;
         var _loc2_:Number = this.§]! §.mClip.width;
         var _loc3_:int = param1.length;
         var _loc4_:MovieClip = this.§]! §.mClip.getChildByName("TabsHolder") as MovieClip;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            Number(_loc2_ * (_loc6_ / _loc3_) + _loc2_ / _loc3_ * 0.5);
            _loc8_ = §@`§.§4!i§("powerupTab");
            this.§ !T§ = new _loc8_();
            this.§ !T§.x = _loc6_ * 118;
            this.§ !T§.y = 12;
            this.§ !T§.name = "TabBranded_" + _loc6_;
            this.§ !T§.visible = false;
            _loc4_.addChild(this.§ !T§);
            _loc4_.x = 40;
            if(!this.§]! §.mClip.contains(_loc4_))
            {
               this.§]! §.mClip.addChild(_loc4_);
            }
            (_loc9_ = new MovieClip()).graphics.beginFill(16777215,0);
            _loc9_.graphics.drawRect(0,0,this.§]! §.mClip.width,this.§]! §.mClip.height);
            _loc9_.graphics.endFill();
            _loc9_.visible = false;
            _loc9_.name = "BrandedTabContainer_" + _loc6_;
            _loc9_.width = _loc2_;
            _loc9_.y = this.§ !T§.y + this.§ !T§.height;
            this.§]! §.mClip.addChildAt(_loc9_,1);
            _loc6_++;
         }
         this.§;!?§(param1);
      }
      
      private function §;!?§(param1:Vector.<§=#V§>) : void
      {
         var s:§=#V§ = null;
         var powerupDef:§'#3§ = null;
         var isSpecialPowerup:Boolean = false;
         var owned:Boolean = false;
         var validUntil:Date = null;
         var title:String = null;
         var brandedTab:§ !3§ = null;
         var shopItems:Vector.<§=#V§> = param1;
         var i:int = 0;
         for each(s in shopItems)
         {
            powerupDef = §`j§.§8"&§(s.id);
            isSpecialPowerup = false;
            if(!powerupDef)
            {
               powerupDef = §`j§.§8"F§(s.id);
               if(powerupDef)
               {
                  isSpecialPowerup = true;
               }
            }
            owned = powerupDef && §%h§.§3!]§.§"#k§(powerupDef.§"!E§) > 0;
            try
            {
               validUntil = new Date();
               validUntil.time = s.getPricePoint(0).§5!K§;
               title = powerupDef.§["u§;
               if(!isSpecialPowerup)
               {
                  title = "Infinite " + powerupDef.§["u§;
               }
               brandedTab = this.§>w§(this.§;#V§(s.id,shopItems),s.id + "_Icon","Button_Shop_Branded_" + s.id,powerupDef.§^!y§,title,i,owned,validUntil);
            }
            catch(e:Error)
            {
            }
            i++;
         }
      }
      
      private function §>w§(param1:§=#V§, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Date = null) : § !3§
      {
         var _loc10_:MovieClip;
         (_loc10_ = (this.§]! §.mClip.getChildByName("TabsHolder") as MovieClip).getChildByName("TabBranded_" + param6) as MovieClip).visible = true;
         if(param1 == null)
         {
            _loc10_.visible = false;
            return null;
         }
         var _loc11_:§"J§;
         (_loc11_ = new §"J§(param1,param2,param3,_loc10_,param4,param5,1,param7,param8)).addEventListener(§&6§.§>#O§,this.§6!q§);
         _loc11_.addEventListener(§&6§.§'#S§,this.§>"a§);
         this.§'!E§.push(_loc11_);
         return _loc11_;
      }
      
      private function §]#M§(param1:§=#V§, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false) : § !3§
      {
         var _loc12_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc9_:MovieClip;
         (_loc9_ = (this.§?t§.mClip.getChildByName("TabsHolder") as MovieClip).getChildByName("TabSlingshot_" + param6) as MovieClip).visible = true;
         if(param1 == null)
         {
            _loc9_.visible = false;
            return null;
         }
         var _loc10_:§4#b§;
         (_loc10_ = new §4#b§(param1,param2,param3,_loc9_,param4,param5,1,param7)).addEventListener(§&6§.§>#O§,this.§3#R§);
         _loc10_.addEventListener(§&6§.§'#S§,this.§>"a§);
         this.§'!E§.push(_loc10_);
         if(this.§^"V§(param1.id))
         {
            (_loc12_ = new §@`§.§4!i§("MovieClip_NewTag_TopBar")()).y = §=[§;
            _loc9_.addChild(_loc12_);
         }
         if(param1.isOnSale && !_loc10_.§"D§())
         {
            (_loc14_ = new §@`§.§4!i§("MovieClip_SaleTag_TopBar")()).name = "Sale";
            _loc14_.y = §=[§;
            _loc9_.addChild(_loc14_);
         }
         return _loc10_;
      }
      
      protected function §3#R§(param1:§&6§) : void
      {
         var _loc2_:§ !3§ = param1.currentTarget as § !3§;
         if(_loc2_)
         {
            this.§!#P§ = _loc2_.§^$2§.id;
            this.§^"Q§ = §5U§;
            this.§9"U§(_loc2_,§5U§);
            §#$+§.playSound("Shop_Selection",§#$+§.§'!o§,0,0.7);
         }
      }
      
      protected function §6!q§(param1:§&6§) : void
      {
         var _loc2_:§ !3§ = param1.currentTarget as § !3§;
         if(_loc2_)
         {
            this.§!#P§ = _loc2_.§^$2§.id;
            this.§^"Q§ = § !§;
            this.§9"U§(_loc2_,§ !§);
            §#$+§.playSound("Shop_Selection",§#$+§.§'!o§,0,0.7);
         }
      }
      
      private function §>!]§(param1:Vector.<§=#V§>) : void
      {
         this.§1"p§(param1);
         this.§>!I§(this.§!#P§);
      }
      
      private function §1"p§(param1:Vector.<§=#V§>) : void
      {
         this.§'!E§ = [];
         this.§2!3§ = this.§1!J§(this.§;#V§(§`j§.§8!3§,param1),"PowerupPackIcon","ShopContentPowerupBundle","Each pack contains one Super Seed, Sling Scope, King Sling and Birdquake making it the perfect solution to all your piggy problems.");
         this.§0l§ = this.§1!J§(this.§;#V§(§`j§.§6#z§.§"!E§,param1),"SuperSeedsIcon","ShopContentSuperSeeds","Supersize your bird! Super Seeds turn any bird into a pig-popping giant.");
         this.§`"u§ = this.§1!J§(this.§;#V§(§`j§.§-"f§.§"!E§,param1),"KingSlingIcon","ShopContentKingSling","Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!");
         this.§]#F§ = this.§1!J§(this.§;#V§(§`j§.§-"5§.§"!E§,param1),"SlingScopeIcon","ShopContentSlingScope","Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!");
         this.§8!,§ = this.§1!J§(this.§;#V§(§`j§.§5"j§.§"!E§,param1),"BirdQuakeIcon","ShopContentBirdQuake","Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!");
         this.WINGMAN = this.§1!J§(this.§;#V§(§`j§.§="-§.§"!E§,param1),"ExtraBirdIcon","ShopContentExtraBird","Call the Wingman to demolish your enemies and impress your friends. Only useable in Tournaments.");
         this.MIGHTY_EAGLE = this.§1!J§(this.§;#V§(§`j§.§@!V§.§"!E§,param1),"MightyEagleIcon","ShopContentMightyEagle","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.");
         this.§3!r§ = this.§1!J§(this.§;#V§(§`j§.§+"4§.§"!E§,param1),"MushroomIcon","ShopContentMushroom","Create a mighty bloom of mushrooms beneath the pigs and topple their towers! Only useable in the Pig Tales levels.");
      }
      
      private function §;#V§(param1:String, param2:Vector.<§=#V§>) : §=#V§
      {
         var _loc3_:§=#V§ = null;
         for each(_loc3_ in param2)
         {
            if(_loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function §1!J§(param1:§=#V§, param2:String, param3:String, param4:String) : § !3§
      {
         var _loc8_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc5_:MovieClip = §7!j§.mClip.Container_TabbedShopPopup["powerupTab" + this.§'!E§.length];
         if(param1 == null)
         {
            _loc5_.visible = false;
            return null;
         }
         var _loc6_:§ !3§ = new § !3§(param1,param2,param3,_loc5_,param4,4);
         if(this.§^"V§(param1.id))
         {
            (_loc8_ = new §@`§.§4!i§("MovieClip_NewTag_TopBar")()).x = §5#%§;
            _loc8_.y = §=[§;
            _loc5_.addChild(_loc8_);
         }
         if(param1.isOnSale)
         {
            (_loc10_ = new §@`§.§4!i§("MovieClip_SaleTag_TopBar")()).x = §5#%§;
            _loc10_.y = §=[§;
            _loc5_.addChild(_loc10_);
         }
         _loc6_.addEventListener(§&6§.§>#O§,this.§="'§);
         _loc6_.addEventListener(§&6§.§'#S§,this.§>"a§);
         this.§'!E§.push(_loc6_);
         return _loc6_;
      }
      
      private function §="'§(param1:§&6§) : void
      {
         var _loc2_:§ !3§ = param1.currentTarget as § !3§;
         if(_loc2_)
         {
            this.§!#P§ = _loc2_.§^$2§.id;
            this.§^"Q§ = §%C§;
            this.§9"U§(_loc2_,§%C§);
            §#$+§.playSound("Shop_Selection",§#$+§.§'!o§,0,0.7);
         }
      }
      
      private function §>"a§(param1:§&6§) : void
      {
         var _loc3_:CoinShopPopup = null;
         var _loc4_:§%"K§ = null;
         var _loc2_:* = param1.§^$2§.currencyID == "IVC";
         if(param1.point)
         {
            this.§ !n§ = new Point(param1.point.x,param1.point.y);
         }
         this.§="h§ = this.§-#M§.§^$2§.id;
         if(_loc2_ && (dataModel.§<$&§.§[#u§ < param1.pricePoint.price && (isNaN(param1.pricePoint.campaignPrice) || Number(param1.pricePoint.campaignPrice) <= 0) || dataModel.§<$&§.§[#u§ < Number(param1.pricePoint.campaignPrice)))
         {
            _loc3_ = new CoinShopPopup(§[W§.NORMAL,§<d§.TOP,CoinShopPopup.§#!Y§);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            return;
         }
         §#$+§.playSound("Shop_Buy",§#$+§.§'!o§);
         this.§9$$§();
         if(_loc2_)
         {
            (_loc4_ = new §%"K§(param1.§^$2§,param1.pricePoint,ID)).addEventListener(§>"T§.§>"d§,this.§[![§);
            _loc4_.addEventListener(§>"T§.§-b§,this.§9"L§);
         }
         else
         {
            if(this.§6!&§)
            {
               this.§6!&§.removeEventListeners();
               this.§6!&§ = null;
            }
            this.§6!&§ = new §9R§(param1.§^$2§,param1.pricePoint,§9R§.§0",§,ID);
            this.§6!&§.addEventListener(§>"T§.§3#-§,this.§!"<§);
            this.§6!&§.addEventListener(§>"T§.§-b§,this.§2!_§);
         }
      }
      
      protected function §2!_§(param1:§>"T§) : void
      {
         this.§]j§();
         this.§=#r§(param1.errorMessage,param1.§9!]§,param1.errorCode.toString());
         if(this.§6!&§)
         {
            this.§6!&§.removeEventListeners();
            this.§6!&§ = null;
         }
      }
      
      protected function §9"L§(param1:§>"T§) : void
      {
         §%h§.§3!]§.§=L§();
         this.§]j§();
         this.§=#r§();
      }
      
      protected function §=#r§(param1:String = null, param2:String = null, param3:String = null) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§[W§.§5Z§,§<d§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      protected function §!"<§(param1:§>"T§) : void
      {
         var _loc3_:§%$0§ = null;
         §%h§.§3!]§.addEventListener(§%h§.§!#"§,this.§="j§);
         this.§]j§();
         if(this.§>"e§())
         {
            _loc3_ = new §%$0§();
            if(§7!j§)
            {
               switch(this.§^"Q§)
               {
                  case §%C§:
                     §7!j§.mClip.Container_TabbedShopPopup.contentArea.addChild(_loc3_);
                     break;
                  case § !§:
                     this.§]! §.mClip.contentArea.addChild(_loc3_);
                     break;
                  case §5U§:
                     this.§?t§.mClip.contentArea.addChild(_loc3_);
               }
               _loc3_.x = this.§ !n§.x - 40;
               _loc3_.y = this.§ !n§.y + 40;
               this.§ !n§ = null;
            }
         }
         var _loc2_:§9R§ = param1.currentTarget as §9R§;
         _loc2_.removeEventListener(§>"T§.§3#-§,this.§!"<§);
         _loc2_.removeEventListener(§>"T§.§-b§,this.§2!_§);
         §,"W§.trackPageView(this,§,"W§.§=!b§);
         §,"W§.trackTransaction(_loc2_.orderId,§!"_§,_loc2_.§^$2§.id,_loc2_.§^$2§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         §,"W§.§9!C§(_loc2_.§^$2§.id,this.§6!&§.pricePoint.totalQuantity);
         §,"W§.trackPageView(this,§,"W§.§=!b§);
         if(_loc2_.pricePoint)
         {
            §,"W§.trackTransaction(_loc2_.orderId,§!"_§,_loc2_.§^$2§.id,_loc2_.§^$2§.id,_loc2_.pricePoint.price + " x",_loc2_.pricePoint.price,1,0);
         }
         if(this.§6!&§)
         {
            this.§6!&§.removeEventListeners();
            this.§6!&§ = null;
         }
         _loc2_.removeEventListeners();
      }
      
      private function §>"e§() : Boolean
      {
         return this.§ !n§ && this.§="h§ == this.§-#M§.§^$2§.id;
      }
      
      private function §="j§(param1:Event) : void
      {
         var _loc2_:§ !3§ = null;
         §%h§.§3!]§.removeEventListener(§%h§.§!#"§,this.§="j§);
         for each(_loc2_ in this.§'!E§)
         {
            _loc2_.refreshItemCount();
         }
         this.§]j§();
         this.§7!r§();
      }
      
      private function §9$$§() : void
      {
         §7!j§.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = false;
         §7!j§.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = false;
         §7!j§.mClip.Container_TabbedShopPopup.contentArea.alpha = 0.5;
         this.§]! §.mClip.contentArea.mouseEnabled = false;
         this.§]! §.mClip.contentArea.mouseChildren = false;
         this.§]! §.mClip.contentArea.alpha = 0.5;
         this.§?t§.mClip.contentArea.mouseEnabled = false;
         this.§?t§.mClip.contentArea.mouseChildren = false;
         this.§?t§.mClip.contentArea.alpha = 0.5;
         this.§5"E§ = new Timer(2000,1);
         this.§5"E§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§&1§,false,0,true);
         this.§5"E§.start();
      }
      
      private function §]j§() : void
      {
         if(§7!j§ && §7!j§.mClip && §7!j§.mClip.Container_TabbedShopPopup && §7!j§.mClip.Container_TabbedShopPopup.contentArea)
         {
            §7!j§.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = true;
            §7!j§.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = true;
            §7!j§.mClip.Container_TabbedShopPopup.contentArea.alpha = 1;
         }
         if(this.§]! § && this.§]! §.mClip && this.§]! §.mClip.contentArea)
         {
            this.§]! §.mClip.contentArea.mouseEnabled = true;
            this.§]! §.mClip.contentArea.mouseChildren = true;
            this.§]! §.mClip.contentArea.alpha = 1;
         }
         if(this.§?t§ && this.§?t§.mClip && this.§?t§.mClip.contentArea)
         {
            this.§?t§.mClip.contentArea.mouseEnabled = true;
            this.§?t§.mClip.contentArea.mouseChildren = true;
            this.§?t§.mClip.contentArea.alpha = 1;
         }
      }
      
      private function §[![§(param1:§>"T§) : void
      {
         var _loc3_:§%$0§ = null;
         if(this.§>"e§())
         {
            _loc3_ = new §%$0§();
            if(§7!j§)
            {
               switch(this.§^"Q§)
               {
                  case §%C§:
                     §7!j§.mClip.Container_TabbedShopPopup.contentArea.addChild(_loc3_);
                     break;
                  case §5U§:
                     this.§?t§.mClip.contentArea.addChild(_loc3_);
                     break;
                  case § !§:
                     this.§]! §.mClip.contentArea.addChild(_loc3_);
               }
               _loc3_.x = this.§ !n§.x - 40;
               _loc3_.y = this.§ !n§.y + 40;
               this.§ !n§ = null;
            }
         }
         var _loc2_:§%"K§ = param1.currentTarget as §%"K§;
         _loc2_.removeEventListener(§>"T§.§>"d§,this.§[![§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
            var _loc5_:int = 0;
            var _loc6_:* = this.§'!E§;
            while(§§hasnext(_loc6_,_loc5_))
            {
               (§§nextvalue(_loc5_,_loc6_)).refreshItemCount();
            }
         }
         if(§7!j§)
         {
            this.§]j§();
         }
         this.§7!r§();
         §,"W§.trackPageView(this,§,"W§.§=!b§);
         §,"W§.trackTransaction(_loc2_.orderId,§!"_§,_loc2_.§^$2§.id,_loc2_.§^$2§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
      }
      
      private function §>!I§(param1:String, param2:String = "GENERAL") : void
      {
         var _loc3_:§ !3§ = this.§9"W§(param1);
         if(!_loc3_)
         {
            _loc3_ = this.§9"W§("GoldenSling");
         }
         if(_loc3_)
         {
            this.§9"U§(_loc3_,param2);
         }
      }
      
      private function §9"W§(param1:String) : § !3§
      {
         var _loc2_:§ !3§ = null;
         for each(_loc2_ in this.§'!E§)
         {
            if(_loc2_.§^$2§.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §9"U§(param1:§ !3§, param2:String = "GENERAL") : void
      {
         var _loc3_:MovieClip = null;
         if(param2 == §%C§)
         {
            _loc3_ = §7!j§.mClip.Container_TabbedShopPopup.contentArea;
         }
         else if(param2 == § !§)
         {
            _loc3_ = this.§]! §.mClip.contentArea;
         }
         else if(param2 == §5U§)
         {
            _loc3_ = this.§?t§.mClip.contentArea;
         }
         this.§5"Q§();
         if(this.§-#M§)
         {
            if(_loc3_.contains(this.§-#M§.§9",§))
            {
               _loc3_.removeChild(this.§-#M§.§9",§);
            }
         }
         var _loc5_:int = 0;
         var _loc6_:* = this.§'!E§;
         while(§§hasnext(_loc6_,_loc5_))
         {
            (§§nextvalue(_loc5_,_loc6_)).§!!?§();
         }
         param1.select();
         this.§-#M§ = param1;
         _loc3_.addChild(param1.§9",§);
         §,"W§.trackPageView(this,param1.§^$2§.id);
         §&#a§.§[!;§(param1.§^$2§);
      }
      
      private function §5"Q§() : void
      {
         this.§]! §.mClip.contentArea.removeChildren();
         §7!j§.mClip.Container_TabbedShopPopup.contentArea.removeChildren();
         this.§?t§.mClip.contentArea.removeChildren();
      }
      
      public function get walletContainer() : Sprite
      {
         return §7!j§.mClip.Container_Shop_Background;
      }
      
      public function §]"]§(param1:Wallet) : void
      {
         param1.removeEventListener(Wallet.§?u§,this.§#[§);
         param1.dispose();
         param1 = null;
      }
      
      public function get §`#$§() : Wallet
      {
         return this.§^m§;
      }
      
      public function §%#,§(param1:Wallet) : void
      {
         this.§^m§ = param1;
      }
      
      public function §9"v§() : String
      {
         return §,"W§.§8z§;
      }
      
      public function §7">§() : String
      {
         return §,"W§.§"#!§;
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(!this.§'!E§ || this.§'!E§.length == 0)
         {
            this.§8#d§();
         }
         else
         {
            this.§8!j§();
         }
         §,"W§.trackPageView(this);
         §,"W§.§+#U§();
         var _loc2_:Wallet = new Wallet(this);
         this.§%#,§(_loc2_);
         _loc2_.addEventListener(Wallet.§?u§,this.§#[§);
      }
      
      private function §8!j§(param1:Event = null) : void
      {
         if(this.§!#P§ && this.§^"Q§)
         {
            switch(this.§^"Q§)
            {
               case §%C§:
                  this.§^"g§(true,this.§!#P§);
                  break;
               case §5U§:
                  this.§7#g§(true,this.§!#P§);
                  break;
               case § !§:
                  this.§,"F§(true,this.§!#P§);
            }
         }
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§ !3§ = null;
         if(this.§^m§)
         {
            this.§]"]§(this.§^m§);
         }
         if(this.§-#-§)
         {
            (this.§-#-§ as §=!o§).removeEventListener(§4I§.§`!M§,this.§!$9§);
            (this.§-#-§ as §=!o§).removeEventListener(§4I§.§ !,§,this.§1q§);
            (this.§-#-§ as §=!o§).removeEventListener(§4I§.§do§,this.§>"U§);
            this.§-#-§ = null;
         }
         dataModel.§ ,§.removeEventListener(Event.COMPLETE,this.§`i§);
         §%h§.§3!]§.removeEventListener(Event.CHANGE,this.§"#f§);
         §6X§.§5!3§("handleUserCancelledOrder",this.§ #m§);
         §6X§.§5!3§("purchaseFailed",this.§@g§);
         if(this.§6!&§ && this.§6!&§.§@"o§)
         {
            this.§6!&§.§@"o§ = false;
            §%h§.§3!]§.§=L§();
         }
         if(this.§6!&§)
         {
            this.§6!&§.removeEventListeners();
         }
         if(this.§'!E§)
         {
            for each(_loc3_ in this.§'!E§)
            {
               _loc3_.dispose();
            }
         }
         this.§?!j§ = null;
         super.hide(param1,param2);
      }
      
      public function §<$#§() : String
      {
         return this.§9"v§() + "-" + this.§7">§();
      }
      
      protected function §"#f§(param1:Event) : void
      {
         var _loc2_:§ !3§ = null;
         for each(_loc2_ in this.§'!E§)
         {
            _loc2_.refreshItemCount();
         }
      }
      
      private function §&!R§(param1:Boolean) : void
      {
         if(!§7!j§)
         {
            return;
         }
         §7!j§.mClip.AngryBirdLoader.visible = param1;
      }
      
      public function §1"v§() : Array
      {
         var _loc2_:§ !3§ = null;
         var _loc1_:Array = new Array();
         for each(_loc2_ in this.§'!E§)
         {
            if(_loc2_ is §4#b§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      private function §<!s§() : void
      {
         this.§-#-§.initialize();
         this.§-#-§.redeem();
      }
      
      private function §&1§(param1:TimerEvent) : void
      {
         if(this.§5"E§)
         {
            this.§5"E§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§&1§);
            this.§5"E§ = null;
            this.§]j§();
         }
      }
   }
}
