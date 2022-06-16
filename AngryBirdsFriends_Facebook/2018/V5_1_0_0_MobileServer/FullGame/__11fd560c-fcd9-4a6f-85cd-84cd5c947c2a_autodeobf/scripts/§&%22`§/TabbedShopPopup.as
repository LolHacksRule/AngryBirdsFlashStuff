package §&"`§
{
   import § %§.§1Q§;
   import §%!x§.§^!K§;
   import §&$!§.§##a§;
   import §&$!§.§%#k§;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §0#m§.§8#§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §1"N§.§""X§;
   import §1"N§.§+"O§;
   import §1"N§.§+#`§;
   import §1"N§.§4k§;
   import §1"N§.§>#`§;
   import §2"5§.§1"?§;
   import §2"5§.§[#G§;
   import §2"5§.include;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §3#T§.§'§;
   import §4"R§.§'#v§;
   import §4"R§.§4"c§;
   import §4#V§.CoinShopPopup;
   import §;#D§.§3#U§;
   import §<h§.§>"0§;
   import §<h§.§[#K§;
   import §=!,§.§1!l§;
   import §?P§.§3M§;
   import §?P§.WarningPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@0§.§<!v§;
   import §[#[§.§=#Q§;
   import §`7§.§ try§;
   import §`7§.§7E§;
   import §`7§.§`"x§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class TabbedShopPopup extends AbstractPopup implements §7E§, §9#a§, §8#§
   {
      
      public static const ID:String = "TabbedShopPopup";
      
      private static const §[$"§:int = -35;
      
      private static const §?"P§:int = -15;
      
      private static const §>E§:String = "In-app Shop";
      
      public static const § #H§:String = "uiSoundsChannel";
      
      private static const §9"5§:int = 8;
      
      public static const §?#-§:String = "SLINGSHOT";
      
      public static const §!"e§:String = "GENERAL";
      
      public static const §!#O§:String = "SPECIAL";
      
      private static var §;#A§:Boolean;
      
      public static const §!$B§:String = "SlingshotFirstTab";
       
      
      public var §&"K§:Wallet;
      
      private var §="_§:§<7§;
      
      private var §8!9§:§<7§;
      
      private var § "_§:§<7§;
      
      private var §&,§:§<7§;
      
      private var §2!"§:§<7§;
      
      private var §'!l§:§<7§;
      
      private var WINGMAN:§<7§;
      
      private var MIGHTY_EAGLE:§<7§;
      
      private var §20§:Array;
      
      private var § s§:§<7§;
      
      private var §?$7§:String = "";
      
      private var §5!`§:String;
      
      private var §5r§:Point;
      
      private var §["V§:§[#K§;
      
      private var §[$8§:§[#K§;
      
      private var §]#O§:§[#K§;
      
      private var §9$§:§[#K§;
      
      private var §@#y§:§[#K§;
      
      private var §'#V§:MovieClip;
      
      private var §0#Y§:MovieClip;
      
      private var §]!l§:String;
      
      private var §+#v§:§4k§;
      
      private var §#c§:Timer;
      
      private var §?!r§:§3M§;
      
      private var §%"g§:Boolean = true;
      
      private var §]b§:String = "ShopTabsInitialzed";
      
      private var §0"i§:§+"O§;
      
      private var §7!j§:Dictionary;
      
      private var §3!P§:Timer;
      
      private var §=#d§:Boolean;
      
      private var §@!e§:§1!l§;
      
      private var §-#f§:int;
      
      public function TabbedShopPopup(param1:int, param2:int, param3:String = "", param4:String = "GENERAL", param5:Boolean = false)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupView_TabbedShop[0],ID);
         this.§]!l§ = param4;
         this.§5!`§ = param3;
         this.§=#d§ = param5;
         addEventListener(this.§]b§,this.§,!6§);
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      override protected function init() : void
      {
         var _loc2_:MovieClip = null;
         super.init();
         this.§"!M§(true);
         this.§["V§ = §,#2§.getItemByName("Container_Shop_Branded") as §[#K§;
         this.§[$8§ = §,#2§.getItemByName("Container_Shop_Slingshots") as §[#K§;
         this.§]#O§ = §,#2§.getItemByName("Container_TabbedShopPopup") as §[#K§;
         this.§9$§ = §,#2§.getItemByName("Container_Shop_Selection_Buttons") as §[#K§;
         this.§@#y§ = §,#2§.getItemByName("Container_Shop_Selection_Extras") as §[#K§;
         §,#2§.mClip.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§="!§);
         §^!K§.addCallback("handleUserCancelledOrder",this.§7"b§);
         §^!K§.addCallback("purchaseFailed",this.§[1§);
         if(!§;#A§)
         {
            §;#A§ = true;
         }
         §-#+§.§6!§.addEventListener(Event.CHANGE,this.§##$§);
         var _loc1_:int = 0;
         while(_loc1_ < §9"5§)
         {
            _loc2_ = §,#2§.mClip.Container_TabbedShopPopup["powerupTab" + _loc1_];
            if(_loc2_)
            {
               _loc2_.gotoAndStop("Normal");
            }
            _loc1_++;
         }
         this.§9E§();
         this.§0"i§ = new §>#`§();
         (this.§0"i§ as §>#`§).addEventListener(§[#G§.§@!B§,this.§+!v§);
         (this.§0"i§ as §>#`§).addEventListener(§[#G§.§!"§,this.§="5§);
         (this.§0"i§ as §>#`§).addEventListener(§[#G§.§7!#§,this.§4n§);
         if(this.§5!`§ == "")
         {
            § try§.§!!t§().§%"?§("SHOP_MAIN",this.§=#d§);
         }
         this.§@!e§ = §1!l§.§6!§;
         this.§@!e§.addEventListener(§1!l§.§>#,§,this.§'"r§);
      }
      
      private function §'"r§(param1:Event) : void
      {
         var _loc2_:§<7§ = null;
         this.§"!M§(true);
         for each(_loc2_ in this.§20§)
         {
            _loc2_.dispose();
         }
         this.§9E§();
      }
      
      protected function §4n§(param1:§[#G§) : void
      {
      }
      
      protected function §="5§(param1:§[#G§) : void
      {
      }
      
      protected function §+!v§(param1:§[#G§) : void
      {
         §`"x§.§["E§("FacebookGiftCard",param1.quantity);
      }
      
      private function §[1§() : void
      {
      }
      
      private function §7"b§() : void
      {
      }
      
      private function §9E§() : void
      {
         if(!dataModel.§-!h§.§#!a§)
         {
            §-#+§.§6!§.§<"k§();
            dataModel.§-!h§.addEventListener(Event.COMPLETE,this.§52§);
         }
         else
         {
            this.§52§(null,dataModel.§-!h§.§#!a§);
         }
      }
      
      protected function §[8§(param1:Event) : void
      {
      }
      
      protected function §;#0§(param1:Event) : void
      {
         var _loc3_:include = null;
         var _loc2_:§"#x§ = this.§ #%§("BrandedShopBundle",dataModel.§-!h§.§]!g§);
         if(_loc2_)
         {
            _loc3_ = new include(include.§@"s§,TabbedShopPopup.§!#O§,false,false,_loc2_,_loc2_.getPricePoint(0));
            this.§6!9§(_loc3_);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         var _loc4_:CoinShopPopup = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHOP_BRANDED":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§][§(true);
               § try§.§!!t§().§%"?§("SHOP_BRANDED");
               break;
            case "SHOP_SLINGSHOTS":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§8"'§(true);
               § try§.§!!t§().§%"?§("SHOP_SLINGSHOTS");
               break;
            case "SHOP_POWERUPS":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§`x§(true);
               § try§.§!!t§().§%"?§("SHOP_POWERUPS");
               break;
            case "SHOP_VC":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               _loc4_ = new CoinShopPopup(§]"$§.NORMAL,§^"U§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
               break;
            case "BACK":
               §!"p§.playSound("Menu_Back",§!"p§.§+!;§);
               this.§^L§(true);
               break;
            case "INFO":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§8!G§();
               break;
            case "REDEEM":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§6"R§();
               break;
            case "EARNCOINS":
               §!"p§.playSound("Menu_Confirm");
               AngryBirdsBase.singleton.exitFullScreen();
               §^!K§.§+"D§("earnCredits");
         }
      }
      
      private function §8!G§() : void
      {
         var _loc1_:§##a§ = §%#k§.§62§(this.§5!`§);
         var _loc2_:String = "";
         var _loc3_:String = "";
         if(_loc1_)
         {
            _loc2_ = _loc1_.§9§;
            _loc3_ = _loc1_.description;
         }
         if(!_loc1_)
         {
            if(this.§5!`§ == §%#k§.§[=§.§5"g§)
            {
               _loc2_ = §%#k§.§[=§.§9§;
               _loc3_ = §%#k§.§[=§.description;
            }
            switch(this.§]!l§)
            {
               case §?#-§:
                  _loc2_ = "Slingshots";
                  _loc3_ = "Slingshots are permanent items that can be used in any level and changed between shots. Buy once, keep forever!";
                  break;
               case §!#O§:
                  _loc2_ = "Specials";
                  _loc3_ = "These items are only available for a limited time!";
            }
         }
         this.§?!r§ = new §3M§(§,#2§.mClip,_loc2_,_loc3_,§]"$§.§[#=§,§^"U§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§?!r§);
      }
      
      private function §^L§(param1:Boolean) : void
      {
         this.§5!`§ = "";
         this.§9$§.setVisibility(param1);
         this.§@#y§.setVisibility(this.§9$§.visible);
         this.§["V§.setVisibility(!param1);
         this.§[$8§.setVisibility(!param1);
         this.§]#O§.setVisibility(!param1);
         if(param1)
         {
            this.§+!f§();
         }
      }
      
      private function §][§(param1:Boolean, param2:String = "") : void
      {
         if(param2 == "")
         {
            this.§5!`§ = this.§>#c§(0);
         }
         this.§]!l§ = §!#O§;
         this.§!"M§(this.§5!`§,§!#O§);
         this.§9$§.setVisibility(!param1);
         this.§@#y§.setVisibility(this.§9$§.visible);
         this.§["V§.setVisibility(param1);
         this.§[$8§.setVisibility(!param1);
         this.§]#O§.setVisibility(!param1);
      }
      
      private function §>#c§(param1:int) : String
      {
         var _loc4_:§<7§ = null;
         var _loc2_:Array = [];
         var _loc3_:String = "";
         for each(_loc4_ in this.§20§)
         {
            if(_loc4_ is §'%§)
            {
               _loc2_.push(_loc4_);
            }
         }
         if(_loc2_.length > param1 && _loc2_[param1])
         {
            _loc3_ = §'%§(_loc2_[param1]).§2"X§.id;
         }
         return _loc3_;
      }
      
      private function §8"'§(param1:Boolean, param2:String = "") : void
      {
         if(param2 == "")
         {
            param2 = "GoldenSling";
         }
         else if(param2 == §!$B§)
         {
            if(this.§5#0§().length > 0)
            {
               param2 = (this.§5#0§()[0] as §&!Y§).§2"X§.id;
            }
         }
         this.§5!`§ = param2;
         this.§]!l§ = §?#-§;
         this.§!"M§(this.§5!`§,§?#-§);
         this.§9$§.setVisibility(!param1);
         this.§@#y§.setVisibility(this.§9$§.visible);
         this.§["V§.setVisibility(!param1);
         this.§[$8§.setVisibility(param1);
         this.§]#O§.setVisibility(!param1);
      }
      
      private function §`x§(param1:Boolean, param2:String = "ExtraBird") : void
      {
         this.§5!`§ = param2;
         this.§]!l§ = §!"e§;
         this.§!"M§(this.§5!`§);
         this.§9$§.setVisibility(!param1);
         this.§@#y§.setVisibility(this.§9$§.visible);
         this.§["V§.setVisibility(!param1);
         this.§[$8§.setVisibility(!param1);
         this.§]#O§.setVisibility(param1);
         this.§]#O§.getItemByName("Button_Back").setVisibility(this.§%"g§);
      }
      
      private function §52§(param1:Event = null, param2:Vector.<§"#x§> = null) : void
      {
         var _loc9_:Object = null;
         var _loc10_:§>"0§ = null;
         this.§"!M§(false);
         if(param1)
         {
            param2 = dataModel.§-!h§.§#!a§;
         }
         this.§!"r§(param2);
         var _loc3_:Boolean = true;
         if(dataModel.§-!h§.§]!g§ && dataModel.§-!h§.§]!g§.length > 0)
         {
            this.§!!c§(dataModel.§-!h§.§]!g§);
            _loc3_ = false;
         }
         if(dataModel.§-!h§.slingshots && dataModel.§-!h§.slingshots.length > 0)
         {
            this.§,$;§(dataModel.§-!h§.slingshots);
            _loc3_ = false;
         }
         dispatchEvent(new Event(this.§]b§));
         var _loc4_:§>"0§ = this.§9$§.getItemByName("Button_Shop_Selection_" + §+#`§.§3"j§) as §>"0§;
         var _loc5_:§>"0§ = this.§9$§.getItemByName("Button_Shop_Selection_" + §+#`§.§%"G§) as §>"0§;
         var _loc6_:§>"0§ = this.§9$§.getItemByName("Button_Shop_Selection_" + §+#`§.§<$5§) as §>"0§;
         var _loc7_:§>"0§ = this.§9$§.getItemByName("Button_Shop_Selection_" + §+#`§.§,R§) as §>"0§;
         if(_loc4_ && dataModel.§-!h§.§]!g§.length == 0)
         {
            this.§9$§.§&#5§(_loc4_);
         }
         if(_loc5_ && dataModel.§-!h§.slingshots.length == 0)
         {
            this.§9$§.§&#5§(_loc5_);
         }
         if(_loc6_ && dataModel.§-!h§.§#!a§.length == 0)
         {
            this.§9$§.§&#5§(_loc6_);
         }
         if(_loc7_ && dataModel.§-!h§.§]'§.length == 0)
         {
            this.§9$§.§&#5§(_loc7_);
         }
         if(_loc3_)
         {
            this.§%"g§ = false;
            if(this.§5!`§ == "")
            {
               this.§5!`§ = "ExtraBird";
            }
            this.§`x§(true,this.§5!`§);
            return;
         }
         var _loc8_:int = 0;
         for each(_loc9_ in dataModel.§-!h§.shops)
         {
            if(_loc10_ = this.§9$§.getItemByName("Button_Shop_Selection_" + _loc9_.id) as §>"0§)
            {
               _loc10_.x = _loc8_ * (_loc10_.width + 20);
               _loc8_++;
            }
         }
         this.§+!f§();
         this.§9$§.x = AngryBirdsBase.screenWidth / 2 - this.§9$§.width / 2;
         dataModel.§-!h§.removeEventListener(Event.COMPLETE,this.§52§);
      }
      
      private function §+!f§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§>"0§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Object = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc1_:int = 0;
         if(!this.§7!j§)
         {
            this.§7!j§ = new Dictionary();
         }
         §#"8§(AngryBirdsBase.singleton.dataModel).§ P§ = false;
         §#"8§(AngryBirdsBase.singleton.dataModel).§'"k§ = false;
         §#"8§(AngryBirdsBase.singleton.dataModel).§]2§ = false;
         for each(_loc2_ in dataModel.§-!h§.shops)
         {
            _loc3_ = this.§9$§.getItemByName("Button_Shop_Selection_" + _loc2_.id) as §>"0§;
            if(_loc3_)
            {
               _loc4_ = false;
               _loc5_ = false;
               switch(_loc2_.id)
               {
                  case §+#`§.§3"j§:
                     _loc3_.setVisibility(dataModel.§-!h§.§]!g§.length > 0);
                     if(_loc4_ = this.§#"D§(dataModel.§-!h§.§]!g§,false))
                     {
                        §#"8§(AngryBirdsBase.singleton.dataModel).§'"k§ = true;
                     }
                     _loc5_ = this.§6##§(dataModel.§-!h§.§]!g§);
                     break;
                  case §+#`§.§%"G§:
                     _loc3_.setVisibility(dataModel.§-!h§.slingshots.length > 0);
                     if(_loc4_ = this.§#"D§(dataModel.§-!h§.slingshots,true))
                     {
                        §#"8§(AngryBirdsBase.singleton.dataModel).§ P§ = true;
                     }
                     _loc5_ = this.§6##§(dataModel.§-!h§.slingshots);
                     break;
                  case §+#`§.§<$5§:
                     _loc3_.setVisibility(dataModel.§-!h§.§#!a§.length > 0);
                     if(_loc4_ = this.§#"D§(dataModel.§-!h§.§#!a§,false))
                     {
                        §#"8§(AngryBirdsBase.singleton.dataModel).§'"k§ = true;
                     }
                     _loc5_ = this.§6##§(dataModel.§-!h§.§#!a§);
                     break;
                  case §+#`§.§,R§:
                     _loc3_.setVisibility(dataModel.§-!h§.§]'§.length > 0);
                     if(_loc4_ = this.§#"D§(dataModel.§-!h§.§]'§,false))
                     {
                        §#"8§(AngryBirdsBase.singleton.dataModel).§]2§ = true;
                     }
                     _loc5_ = this.§6##§(dataModel.§-!h§.§]'§);
               }
               _loc3_.mClip.title.text = _loc2_.name;
               if(_loc5_)
               {
                  if(!this.§7!j§[_loc2_.id] || !this.§7!j§[_loc2_.id].newIconAdded)
                  {
                     (_loc8_ = new (_loc7_ = §!"f§.§##?§("Tag_New_Big"))()).name = "Tag_New_Big";
                     _loc3_.mClip.addChild(_loc8_);
                     (_loc6_ = !!this.§7!j§[_loc2_.id] ? this.§7!j§[_loc2_.id] : new Object()).newIconAdded = true;
                     this.§7!j§[_loc2_.id] = _loc6_;
                  }
               }
               else
               {
                  if(_loc9_ = _loc3_.mClip.getChildByName("Tag_New_Big") as MovieClip)
                  {
                     _loc3_.mClip.removeChild(_loc9_);
                  }
                  if(this.§7!j§[_loc2_.id] && this.§7!j§[_loc2_.id].newIconAdded)
                  {
                     this.§7!j§[_loc2_.id].newIconAdded = false;
                  }
               }
               if(_loc4_)
               {
                  if(!this.§7!j§[_loc2_.id] || !this.§7!j§[_loc2_.id].saleIconAdded)
                  {
                     if(_loc5_)
                     {
                        (_loc8_ = new (_loc7_ = §!"f§.§##?§("Tag_Sale_Big_right_side"))()).x = (_loc3_.width >> 1) + 5;
                     }
                     else
                     {
                        _loc8_ = new (_loc7_ = §!"f§.§##?§("Tag_Sale_Big"))();
                     }
                     _loc8_.name = "Tag_Sale_Big";
                     _loc3_.mClip.addChild(_loc8_);
                     (_loc6_ = !!this.§7!j§[_loc2_.id] ? this.§7!j§[_loc2_.id] : new Object()).saleIconAdded = true;
                     this.§7!j§[_loc2_.id] = _loc6_;
                  }
               }
               else
               {
                  if(_loc9_ = _loc3_.mClip.getChildByName("Tag_Sale_Big") as MovieClip)
                  {
                     _loc3_.mClip.removeChild(_loc9_);
                  }
                  if(this.§7!j§[_loc2_.id] && this.§7!j§[_loc2_.id].saleIconAdded)
                  {
                     this.§7!j§[_loc2_.id].saleIconAdded = false;
                  }
               }
            }
            _loc1_++;
         }
         (§3#U§.§9#^§ as §,A§).§"#v§();
      }
      
      private function §6##§(param1:Vector.<§"#x§>) : Boolean
      {
         var _loc2_:§"#x§ = null;
         for each(_loc2_ in param1)
         {
            if(this.§&!n§(_loc2_.id))
            {
               return true;
            }
         }
         return false;
      }
      
      private function §&!n§(param1:String) : Boolean
      {
         var _loc2_:int = §#"8§(AngryBirdsBase.singleton.dataModel).§9!H§.indexOf(param1);
         var _loc3_:* = §#"8§(AngryBirdsBase.singleton.dataModel).§9!H§.indexOf(param1) > -1;
         if(!_loc3_)
         {
            _loc3_ = §#"8§(AngryBirdsBase.singleton.dataModel).§ $>§.indexOf(param1) > -1;
         }
         return _loc3_;
      }
      
      private function §#"D§(param1:Vector.<§"#x§>, param2:Boolean) : Boolean
      {
         var _loc3_:§"#x§ = null;
         for each(_loc3_ in param1)
         {
            if(!(param2 && §-#+§.§6!§.§=b§(_loc3_.id) > 0 && !§<!v§.§+#o§))
            {
               if(_loc3_.isOnSale)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function §&$-§(param1:Vector.<§"#x§>) : Boolean
      {
         var _loc2_:§"#x§ = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§^!v§)
            {
               return true;
            }
         }
         return false;
      }
      
      private function §,$;§(param1:Vector.<§"#x§>) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         _loc2_ = param1.length;
         _loc3_ = this.§[$8§.mClip.getChildByName("TabsHolder") as MovieClip;
         var _loc4_:Class;
         _loc6_ = (_loc5_ = new (_loc4_ = §!"f§.§##?§("slingshotTab"))()).width >> 1;
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
         this.§`#t§(param1);
      }
      
      private function §`#t§(param1:Vector.<§"#x§>) : int
      {
         var _loc3_:§"#x§ = null;
         var _loc4_:§'#v§ = null;
         var _loc5_:§<7§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            if(_loc4_ = §4"c§.§2;§(_loc3_.id))
            {
               _loc5_ = this.§;#u§(this.§ #%§(_loc3_.id,param1),"Icon_Slingshot_" + _loc3_.id,"SlingshopContent" + _loc3_.id,_loc4_.description,_loc4_.§9§,_loc2_);
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      private function §!!c§(param1:Vector.<§"#x§>) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Class = null;
         var _loc9_:MovieClip = null;
         var _loc2_:Number = this.§["V§.mClip.width;
         var _loc3_:int = param1.length;
         var _loc4_:MovieClip = this.§["V§.mClip.getChildByName("TabsHolder") as MovieClip;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = _loc2_ * (_loc6_ / _loc3_) + _loc2_ / _loc3_ * 0.5;
            _loc8_ = §!"f§.§##?§("powerupTab");
            this.§0#Y§ = new _loc8_();
            this.§0#Y§.x = _loc6_ * 118;
            this.§0#Y§.y = 12;
            this.§0#Y§.name = "TabBranded_" + _loc6_;
            this.§0#Y§.visible = false;
            _loc4_.addChild(this.§0#Y§);
            _loc4_.x = 40;
            if(!this.§["V§.mClip.contains(_loc4_))
            {
               this.§["V§.mClip.addChild(_loc4_);
            }
            (_loc9_ = new MovieClip()).graphics.beginFill(16777215,0);
            _loc9_.graphics.drawRect(0,0,this.§["V§.mClip.width,this.§["V§.mClip.height);
            _loc9_.graphics.endFill();
            _loc9_.visible = false;
            _loc9_.name = "BrandedTabContainer_" + _loc6_;
            _loc9_.width = _loc2_;
            _loc9_.y = this.§0#Y§.y + this.§0#Y§.height;
            this.§["V§.mClip.addChildAt(_loc9_,1);
            _loc6_++;
         }
         this.§5#]§(param1);
      }
      
      private function §5#]§(param1:Vector.<§"#x§>) : void
      {
         var s:§"#x§ = null;
         var powerupDef:§##a§ = null;
         var isSpecialPowerup:Boolean = false;
         var owned:Boolean = false;
         var validUntil:Date = null;
         var title:String = null;
         var brandedTab:§<7§ = null;
         var shopItems:Vector.<§"#x§> = param1;
         var i:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = shopItems;
         for(; §§hasnext(_loc4_,_loc3_); i++)
         {
            s = §§nextvalue(_loc3_,_loc4_);
            powerupDef = §%#k§.§3U§(s.id);
            isSpecialPowerup = false;
            if(!powerupDef)
            {
               powerupDef = §%#k§.§?#!§(s.id);
               if(powerupDef)
               {
                  isSpecialPowerup = true;
               }
            }
            owned = powerupDef && §-#+§.§6!§.§+o§(powerupDef.§5"g§) > 0;
            try
            {
               validUntil = new Date();
               validUntil.time = s.getPricePoint(0).§!$<§;
               title = powerupDef.§9§;
               if(!isSpecialPowerup)
               {
                  title = "Infinite " + powerupDef.§9§;
               }
               brandedTab = this.§&#p§(this.§ #%§(s.id,shopItems),s.id + "_Icon","Button_Shop_Branded_" + s.id,powerupDef.§5#z§,title,i,owned,validUntil);
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      private function §&#p§(param1:§"#x§, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Date = null) : §<7§
      {
         var _loc10_:MovieClip;
         var _loc9_:MovieClip;
         (_loc10_ = (_loc9_ = this.§["V§.mClip.getChildByName("TabsHolder") as MovieClip).getChildByName("TabBranded_" + param6) as MovieClip).visible = true;
         if(param1 == null)
         {
            _loc10_.visible = false;
            return null;
         }
         var _loc11_:§'%§;
         (_loc11_ = new §'%§(param1,param2,param3,_loc10_,param4,param5,1,param7,param8)).addEventListener(include.§#]§,this.§%4§);
         _loc11_.addEventListener(include.§@"s§,this.§6!9§);
         this.§20§.push(_loc11_);
         return _loc11_;
      }
      
      private function §;#u§(param1:§"#x§, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false) : §<7§
      {
         var _loc11_:Class = null;
         var _loc12_:MovieClip = null;
         var _loc13_:Class = null;
         var _loc14_:MovieClip = null;
         var _loc9_:MovieClip;
         var _loc8_:MovieClip;
         (_loc9_ = (_loc8_ = this.§[$8§.mClip.getChildByName("TabsHolder") as MovieClip).getChildByName("TabSlingshot_" + param6) as MovieClip).visible = true;
         if(param1 == null)
         {
            _loc9_.visible = false;
            return null;
         }
         var _loc10_:§&!Y§;
         (_loc10_ = new §&!Y§(param1,param2,param3,_loc9_,param4,param5,1,param7)).addEventListener(include.§#]§,this.§<!P§);
         _loc10_.addEventListener(include.§@"s§,this.§6!9§);
         this.§20§.push(_loc10_);
         if(this.§&!n§(param1.id))
         {
            (_loc12_ = new (_loc11_ = §!"f§.§##?§("MovieClip_NewTag_TopBar"))()).name = "MovieClip_NewTag_TopBar";
            _loc12_.y = §?"P§;
            _loc9_.addChild(_loc12_);
         }
         else if((_loc12_ = _loc9_.getChildByName("MovieClip_NewTag_TopBar") as MovieClip) && _loc12_.parent)
         {
            _loc12_.parent.removeChild(_loc12_);
         }
         if(param1.isOnSale && (!_loc10_.§;S§() || §<!v§.§+#o§))
         {
            (_loc14_ = new (_loc13_ = §!"f§.§##?§("MovieClip_SaleTag_TopBar"))()).name = "Sale";
            _loc14_.y = §?"P§;
            _loc9_.addChild(_loc14_);
         }
         else if((_loc14_ = _loc9_.getChildByName("Sale") as MovieClip) && _loc14_.parent)
         {
            _loc14_.parent.removeChild(_loc14_);
         }
         return _loc10_;
      }
      
      protected function §<!P§(param1:include) : void
      {
         var _loc2_:§<7§ = param1.currentTarget as §<7§;
         if(_loc2_)
         {
            this.§5!`§ = _loc2_.§2"X§.id;
            this.§]!l§ = §?#-§;
            this.§8i§(_loc2_,§?#-§);
            §!"p§.playSound("Shop_Selection",§!"p§.§+!;§,0,0.7);
         }
      }
      
      protected function §%4§(param1:include) : void
      {
         var _loc2_:§<7§ = param1.currentTarget as §<7§;
         if(_loc2_)
         {
            this.§5!`§ = _loc2_.§2"X§.id;
            this.§]!l§ = §!#O§;
            this.§8i§(_loc2_,§!#O§);
            §!"p§.playSound("Shop_Selection",§!"p§.§+!;§,0,0.7);
         }
      }
      
      private function §!"r§(param1:Vector.<§"#x§>) : void
      {
         this.§1`§(param1);
         this.§!"M§(this.§5!`§);
      }
      
      private function §1`§(param1:Vector.<§"#x§>) : void
      {
         this.§20§ = [];
         this.§-#f§ = 0;
         this.§="_§ = this.§^#u§(this.§ #%§(§%#k§.§6#%§,param1),"PowerupBundleIcon","ShopContentPowerupBundle","Each pack contains one Super Seed, Sling Scope, King Sling and Birdquake making it the perfect solution to all your piggy problems.");
         this.§8!9§ = this.§^#u§(this.§ #%§(§%#k§.§""z§.§5"g§,param1),"SuperSeedsIcon","ShopContentSuperSeeds","Supersize your bird! Super Seeds turn any bird into a pig-popping giant.");
         this.§&,§ = this.§^#u§(this.§ #%§(§%#k§.§'"!§.§5"g§,param1),"KingSlingIcon","ShopContentKingSling","Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!");
         this.§ "_§ = this.§^#u§(this.§ #%§(§%#k§.§0"W§.§5"g§,param1),"SlingScopeIcon","ShopContentSlingScope","Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!");
         this.§2!"§ = this.§^#u§(this.§ #%§(§%#k§.§6`§.§5"g§,param1),"BirdQuakeIcon","ShopContentBirdQuake","Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!");
         this.§'!l§ = this.§^#u§(this.§ #%§(§%#k§.§'!N§.§5"g§,param1),"BoomboxIcon","ShopContentBoombox","Sling TNT");
         this.WINGMAN = this.§^#u§(this.§ #%§(§%#k§.§6"t§.§5"g§,param1),"ExtraBirdIcon","ShopContentExtraBird","Call the Wingman to demolish your enemies and impress your friends. Only useable in Tournaments.");
         this.MIGHTY_EAGLE = this.§^#u§(this.§ #%§(§%#k§.§]k§.§5"g§,param1),"MightyEagleIcon","ShopContentMightyEagle","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.");
      }
      
      private function § #%§(param1:String, param2:Vector.<§"#x§>) : §"#x§
      {
         var _loc3_:§"#x§ = null;
         for each(_loc3_ in param2)
         {
            if(_loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function §^#u§(param1:§"#x§, param2:String, param3:String, param4:String) : §<7§
      {
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:Class = null;
         var _loc10_:MovieClip = null;
         var _loc5_:MovieClip = §,#2§.mClip.Container_TabbedShopPopup["powerupTab" + this.§-#f§];
         ++this.§-#f§;
         if(param1 == null)
         {
            _loc5_.visible = false;
            return null;
         }
         var _loc6_:§<7§ = new §<7§(param1,param2,param3,_loc5_,param4,4);
         if(this.§&!n§(param1.id))
         {
            (_loc8_ = new (_loc7_ = §!"f§.§##?§("MovieClip_NewTag_TopBar"))()).name = "MovieClip_NewTag_TopBar";
            _loc8_.x = §[$"§;
            _loc8_.y = §?"P§;
            _loc5_.addChild(_loc8_);
         }
         else if((_loc8_ = _loc5_.getChildByName("MovieClip_NewTag_TopBar") as MovieClip) && _loc8_.parent)
         {
            _loc8_.parent.removeChild(_loc8_);
         }
         if(param1.isOnSale)
         {
            (_loc10_ = new (_loc9_ = §!"f§.§##?§("MovieClip_SaleTag_TopBar"))()).name = "MovieClip_SaleTag_TopBar";
            _loc10_.x = §[$"§;
            _loc10_.y = §?"P§;
            _loc5_.addChild(_loc10_);
         }
         else if((_loc10_ = _loc5_.getChildByName("MovieClip_SaleTag_TopBar") as MovieClip) && _loc10_.parent)
         {
            _loc10_.parent.removeChild(_loc10_);
         }
         _loc6_.addEventListener(include.§#]§,this.§+I§);
         _loc6_.addEventListener(include.§@"s§,this.§6!9§);
         this.§20§.push(_loc6_);
         return _loc6_;
      }
      
      private function §+I§(param1:include) : void
      {
         var _loc2_:§<7§ = param1.currentTarget as §<7§;
         if(_loc2_)
         {
            this.§5!`§ = _loc2_.§2"X§.id;
            this.§]!l§ = §!"e§;
            this.§8i§(_loc2_,§!"e§);
            §!"p§.playSound("Shop_Selection",§!"p§.§+!;§,0,0.7);
         }
      }
      
      private function §6!9§(param1:include) : void
      {
         var _loc3_:CoinShopPopup = null;
         var _loc4_:§""X§ = null;
         var _loc2_:* = param1.§2"X§.currencyID == "IVC";
         if(param1.point)
         {
            this.§5r§ = new Point(param1.point.x,param1.point.y);
         }
         this.§?$7§ = this.§ s§.§2"X§.id;
         if(_loc2_ && (dataModel.§""[§.§##!§ < param1.pricePoint.price && (isNaN(param1.pricePoint.campaignPrice) || Number(param1.pricePoint.campaignPrice) <= 0) || dataModel.§""[§.§##!§ < Number(param1.pricePoint.campaignPrice)))
         {
            _loc3_ = new CoinShopPopup(§]"$§.NORMAL,§^"U§.TOP,CoinShopPopup.§'$7§);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            return;
         }
         §!"p§.playSound("Shop_Buy",§!"p§.§+!;§);
         this.§>#q§();
         if(_loc2_)
         {
            (_loc4_ = new §""X§(param1.§2"X§,param1.pricePoint,ID)).addEventListener(§1"?§.§=#j§,this.§@!J§);
            _loc4_.addEventListener(§1"?§.§^#M§,this.§+$8§);
         }
         else
         {
            if(this.§+#v§)
            {
               this.§+#v§.removeEventListeners();
               this.§+#v§ = null;
            }
            this.§+#v§ = new §4k§(param1.§2"X§,param1.pricePoint,§4k§.§4!c§,ID);
            this.§+#v§.addEventListener(§1"?§.§7"^§,this.§3![§);
            this.§+#v§.addEventListener(§1"?§.§^#M§,this.§=##§);
         }
      }
      
      protected function §=##§(param1:§1"?§) : void
      {
         this.§0Q§();
         this.§<#Y§(param1.errorMessage,param1.§%C§,param1.errorCode.toString());
         if(this.§+#v§)
         {
            this.§+#v§.removeEventListeners();
            this.§+#v§ = null;
         }
      }
      
      protected function §+$8§(param1:§1"?§) : void
      {
         §-#+§.§6!§.§<"k§();
         this.§0Q§();
      }
      
      protected function §<#Y§(param1:String = null, param2:String = null, param3:String = null) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      protected function §3![§(param1:§1"?§) : void
      {
         var _loc3_:§@",§ = null;
         §-#+§.§6!§.addEventListener(§-#+§.§;"[§,this.§#!i§);
         this.§0Q§();
         if(this.§""j§())
         {
            _loc3_ = new §@",§();
            if(§,#2§)
            {
               switch(this.§]!l§)
               {
                  case §!"e§:
                     §,#2§.mClip.Container_TabbedShopPopup.contentArea.addChild(_loc3_);
                     break;
                  case §!#O§:
                     this.§["V§.mClip.contentArea.addChild(_loc3_);
                     break;
                  case §?#-§:
                     this.§[$8§.mClip.contentArea.addChild(_loc3_);
               }
               _loc3_.x = this.§5r§.x - 40;
               _loc3_.y = this.§5r§.y + 40;
               this.§5r§ = null;
            }
         }
         var _loc2_:§4k§ = param1.currentTarget as §4k§;
         _loc2_.removeEventListener(§1"?§.§7"^§,this.§3![§);
         _loc2_.removeEventListener(§1"?§.§^#M§,this.§=##§);
         §`"x§.trackPageView(this,§`"x§.§1!B§);
         §`"x§.trackTransaction(_loc2_.orderId,§>E§,_loc2_.§2"X§.id,_loc2_.§2"X§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         §`"x§.§!!4§(_loc2_.§2"X§.id,this.§+#v§.pricePoint.totalQuantity);
         §`"x§.trackPageView(this,§`"x§.§1!B§);
         if(_loc2_.pricePoint)
         {
            §`"x§.trackTransaction(_loc2_.orderId,§>E§,_loc2_.§2"X§.id,_loc2_.§2"X§.id,_loc2_.pricePoint.price + " x",_loc2_.pricePoint.price,1,0);
         }
         if(this.§+#v§)
         {
            this.§+#v§.removeEventListeners();
            this.§+#v§ = null;
         }
         _loc2_.removeEventListeners();
      }
      
      private function §""j§() : Boolean
      {
         return this.§5r§ && this.§?$7§ == this.§ s§.§2"X§.id;
      }
      
      private function §#!i§(param1:Event) : void
      {
         var _loc2_:§<7§ = null;
         §-#+§.§6!§.removeEventListener(§-#+§.§;"[§,this.§#!i§);
         for each(_loc2_ in this.§20§)
         {
            _loc2_.refreshItemCount();
         }
         this.§0Q§();
         this.§+!f§();
      }
      
      private function §>#q§() : void
      {
         §,#2§.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = false;
         §,#2§.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = false;
         §,#2§.mClip.Container_TabbedShopPopup.contentArea.alpha = 0.5;
         this.§["V§.mClip.contentArea.mouseEnabled = false;
         this.§["V§.mClip.contentArea.mouseChildren = false;
         this.§["V§.mClip.contentArea.alpha = 0.5;
         this.§[$8§.mClip.contentArea.mouseEnabled = false;
         this.§[$8§.mClip.contentArea.mouseChildren = false;
         this.§[$8§.mClip.contentArea.alpha = 0.5;
         this.§3!P§ = new Timer(2000,1);
         this.§3!P§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§9!T§,false,0,true);
         this.§3!P§.start();
      }
      
      private function §0Q§() : void
      {
         if(§,#2§ && §,#2§.mClip && §,#2§.mClip.Container_TabbedShopPopup && §,#2§.mClip.Container_TabbedShopPopup.contentArea)
         {
            §,#2§.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = true;
            §,#2§.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = true;
            §,#2§.mClip.Container_TabbedShopPopup.contentArea.alpha = 1;
         }
         if(this.§["V§ && this.§["V§.mClip && this.§["V§.mClip.contentArea)
         {
            this.§["V§.mClip.contentArea.mouseEnabled = true;
            this.§["V§.mClip.contentArea.mouseChildren = true;
            this.§["V§.mClip.contentArea.alpha = 1;
         }
         if(this.§[$8§ && this.§[$8§.mClip && this.§[$8§.mClip.contentArea)
         {
            this.§[$8§.mClip.contentArea.mouseEnabled = true;
            this.§[$8§.mClip.contentArea.mouseChildren = true;
            this.§[$8§.mClip.contentArea.alpha = 1;
         }
      }
      
      private function §@!J§(param1:§1"?§) : void
      {
         var _loc3_:§@",§ = null;
         var _loc4_:§<7§ = null;
         if(this.§""j§())
         {
            _loc3_ = new §@",§();
            if(§,#2§)
            {
               switch(this.§]!l§)
               {
                  case §!"e§:
                     §,#2§.mClip.Container_TabbedShopPopup.contentArea.addChild(_loc3_);
                     break;
                  case §?#-§:
                     this.§[$8§.mClip.contentArea.addChild(_loc3_);
                     break;
                  case §!#O§:
                     this.§["V§.mClip.contentArea.addChild(_loc3_);
               }
               _loc3_.x = this.§5r§.x - 40;
               _loc3_.y = this.§5r§.y + 40;
               this.§5r§ = null;
            }
         }
         var _loc2_:§""X§ = param1.currentTarget as §""X§;
         _loc2_.removeEventListener(§1"?§.§=#j§,this.§@!J§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
            for each(_loc4_ in this.§20§)
            {
               _loc4_.refreshItemCount();
            }
         }
         if(§,#2§)
         {
            this.§0Q§();
         }
         this.§+!f§();
         §`"x§.trackPageView(this,§`"x§.§1!B§);
         §`"x§.trackTransaction(_loc2_.orderId,§>E§,_loc2_.§2"X§.id,_loc2_.§2"X§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
      }
      
      private function §!"M§(param1:String, param2:String = "GENERAL") : void
      {
         var _loc3_:§<7§ = this.§>#a§(param1);
         if(!_loc3_)
         {
            _loc3_ = this.§>#a§("GoldenSling");
         }
         if(_loc3_)
         {
            this.§8i§(_loc3_,param2);
         }
      }
      
      private function §>#a§(param1:String) : §<7§
      {
         var _loc2_:§<7§ = null;
         for each(_loc2_ in this.§20§)
         {
            if(_loc2_.§2"X§.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §8i§(param1:§<7§, param2:String = "GENERAL") : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:§<7§ = null;
         if(param2 == §!"e§)
         {
            _loc3_ = §,#2§.mClip.Container_TabbedShopPopup.contentArea;
         }
         else if(param2 == §!#O§)
         {
            _loc3_ = this.§["V§.mClip.contentArea;
         }
         else if(param2 == §?#-§)
         {
            _loc3_ = this.§[$8§.mClip.contentArea;
         }
         this.§1#r§();
         if(this.§ s§)
         {
            if(_loc3_.contains(this.§ s§.§4#@§))
            {
               _loc3_.removeChild(this.§ s§.§4#@§);
            }
         }
         for each(_loc4_ in this.§20§)
         {
            _loc4_.§!#z§();
         }
         param1.select();
         this.§ s§ = param1;
         _loc3_.addChild(param1.§4#@§);
         §`"x§.trackPageView(this,param1.§2"X§.id);
         §=#Q§.§"!8§(param1.§2"X§);
      }
      
      private function §1#r§() : void
      {
         this.§["V§.mClip.contentArea.removeChildren();
         §,#2§.mClip.Container_TabbedShopPopup.contentArea.removeChildren();
         this.§[$8§.mClip.contentArea.removeChildren();
      }
      
      public function get walletContainer() : Sprite
      {
         return §,#2§.mClip.Container_Shop_Background;
      }
      
      public function §8!3§(param1:Wallet) : void
      {
         param1.removeEventListener(Wallet.§?"w§,this.§[8§);
         param1.dispose();
         param1 = null;
      }
      
      public function get §8"K§() : Wallet
      {
         return this.§&"K§;
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function §!3§() : String
      {
         return §`"x§.§[$6§;
      }
      
      public function §0'§() : String
      {
         return §`"x§.§&%§;
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(!this.§20§ || this.§20§.length == 0)
         {
            this.§9E§();
         }
         else
         {
            this.§,!6§();
         }
         §`"x§.trackPageView(this);
         §`"x§.§;$8§();
         var _loc2_:Wallet = new Wallet(this);
         this.§[?§(_loc2_);
         _loc2_.addEventListener(Wallet.§?"w§,this.§[8§);
      }
      
      private function §,!6§(param1:Event = null) : void
      {
         if(this.§5!`§ && this.§]!l§)
         {
            switch(this.§]!l§)
            {
               case §!"e§:
                  this.§`x§(true,this.§5!`§);
                  break;
               case §?#-§:
                  this.§8"'§(true,this.§5!`§);
                  break;
               case §!#O§:
                  this.§][§(true,this.§5!`§);
            }
         }
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§<7§ = null;
         if(this.§&"K§)
         {
            this.§8!3§(this.§&"K§);
         }
         if(this.§0"i§)
         {
            (this.§0"i§ as §>#`§).removeEventListener(§[#G§.§@!B§,this.§+!v§);
            (this.§0"i§ as §>#`§).removeEventListener(§[#G§.§!"§,this.§="5§);
            (this.§0"i§ as §>#`§).removeEventListener(§[#G§.§7!#§,this.§4n§);
            this.§0"i§ = null;
         }
         dataModel.§-!h§.removeEventListener(Event.COMPLETE,this.§52§);
         §-#+§.§6!§.removeEventListener(Event.CHANGE,this.§##$§);
         §^!K§.§,"i§("handleUserCancelledOrder",this.§7"b§);
         §^!K§.§,"i§("purchaseFailed",this.§[1§);
         if(this.§+#v§ && this.§+#v§.§7!I§)
         {
            this.§+#v§.§7!I§ = false;
            §-#+§.§6!§.§<"k§();
         }
         if(this.§+#v§)
         {
            this.§+#v§.removeEventListeners();
         }
         if(this.§20§)
         {
            for each(_loc3_ in this.§20§)
            {
               _loc3_.dispose();
            }
         }
         this.§7!j§ = null;
         this.§@!e§.removeEventListener(§1!l§.§>#,§,this.§'"r§);
         this.§@!e§ = null;
         super.hide(param1,param2);
      }
      
      public function §+#k§() : String
      {
         return this.§!3§() + "-" + this.§0'§();
      }
      
      protected function §##$§(param1:Event) : void
      {
         var _loc2_:§<7§ = null;
         for each(_loc2_ in this.§20§)
         {
            _loc2_.refreshItemCount();
         }
      }
      
      private function §"!M§(param1:Boolean) : void
      {
         if(!§,#2§)
         {
            return;
         }
         §,#2§.mClip.AngryBirdLoader.visible = param1;
      }
      
      public function §5#0§() : Array
      {
         var _loc2_:§<7§ = null;
         var _loc1_:Array = new Array();
         for each(_loc2_ in this.§20§)
         {
            if(_loc2_ is §&!Y§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      private function §6"R§() : void
      {
         this.§0"i§.initialize();
         this.§0"i§.redeem();
      }
      
      private function §9!T§(param1:TimerEvent) : void
      {
         if(this.§3!P§)
         {
            this.§3!P§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§9!T§);
            this.§3!P§ = null;
            this.§0Q§();
         }
      }
   }
}
