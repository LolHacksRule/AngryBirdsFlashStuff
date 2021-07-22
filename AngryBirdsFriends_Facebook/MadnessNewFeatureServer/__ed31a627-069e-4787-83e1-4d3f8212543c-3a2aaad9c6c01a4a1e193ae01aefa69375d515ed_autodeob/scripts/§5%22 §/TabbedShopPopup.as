package §5" §
{
   import § §.§!";§;
   import § §.§%e§;
   import § §.§2"O§;
   import § §.§<!1§;
   import § §.§=J§;
   import §!#C§.§ $?§;
   import §!#C§.§4!Q§;
   import §"!n§.§;"x§;
   import §"c§.CoinShopPopup;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §#,§.§ !>§;
   import §#,§.§]$+§;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §&!_§.§,!n§;
   import §&!_§.§0I§;
   import §,!Q§.§6"n§;
   import §-$!§.§ $<§;
   import §-$!§.§0$@§;
   import §-;§.§+"d§;
   import §-;§.§<K§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §6#f§.§<!M§;
   import §6t§.§+=§;
   import §6t§.§,5§;
   import §6t§.§4?§;
   import §8#K§.§3Z§;
   import §<!r§.§'##§;
   import §>2§.§?##§;
   import §>z§.§#"l§;
   import §>z§.§-"h§;
   import §>z§.WarningPopup;
   import §]C§.§ !+§;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class TabbedShopPopup extends AbstractPopup implements §,!n§, §&>§, §%!#§
   {
      
      public static const ID:String = "TabbedShopPopup";
      
      private static const §9!y§:int = -35;
      
      private static const §7"7§:int = -15;
      
      private static const §5$,§:String = "In-app Shop";
      
      public static const §;;§:String = "uiSoundsChannel";
      
      private static const §^<§:int = 8;
      
      public static const §+!A§:String = "SLINGSHOT";
      
      public static const §[#^§:String = "GENERAL";
      
      public static const §"!g§:String = "SPECIAL";
      
      private static var §"#c§:Boolean;
      
      public static const §&W§:String = "SlingshotFirstTab";
       
      
      public var §1!B§:Wallet;
      
      private var §&"P§:§2$0§;
      
      private var §5#z§:§2$0§;
      
      private var §"w§:§2$0§;
      
      private var §2#N§:§2$0§;
      
      private var §&!E§:§2$0§;
      
      private var §+!7§:§2$0§;
      
      private var WINGMAN:§2$0§;
      
      private var MIGHTY_EAGLE:§2$0§;
      
      private var §=!-§:Array;
      
      private var §0!Y§:§2$0§;
      
      private var §^!C§:String = "";
      
      private var §>$B§:String;
      
      private var §]$,§:Point;
      
      private var §["2§:§]$+§;
      
      private var §?!j§:§]$+§;
      
      private var §-e§:§]$+§;
      
      private var §^!8§:§]$+§;
      
      private var §;$1§:§]$+§;
      
      private var §;+§:MovieClip;
      
      private var §>$3§:MovieClip;
      
      private var §@+§:String;
      
      private var §""2§:§%e§;
      
      private var §#O§:Timer;
      
      private var §'"§:§-"h§;
      
      private var §&"J§:Boolean = true;
      
      private var §3!8§:String = "ShopTabsInitialzed";
      
      private var §!!?§:§<!1§;
      
      private var §>#c§:Dictionary;
      
      private var §>i§:Timer;
      
      private var §=#Q§:Boolean;
      
      private var §->§:§<!M§;
      
      private var §[#K§:int;
      
      public function TabbedShopPopup(param1:int, param2:int, param3:String = "", param4:String = "GENERAL", param5:Boolean = false)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupView_TabbedShop[0],ID);
         this.§@+§ = param4;
         this.§>$B§ = param3;
         this.§=#Q§ = param5;
         addEventListener(this.§3!8§,this.§7!M§);
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      override protected function init() : void
      {
         var _loc2_:MovieClip = null;
         super.init();
         this.§""L§(true);
         this.§["2§ = §&!M§.getItemByName("Container_Shop_Branded") as §]$+§;
         this.§?!j§ = §&!M§.getItemByName("Container_Shop_Slingshots") as §]$+§;
         this.§-e§ = §&!M§.getItemByName("Container_TabbedShopPopup") as §]$+§;
         this.§^!8§ = §&!M§.getItemByName("Container_Shop_Selection_Buttons") as §]$+§;
         this.§;$1§ = §&!M§.getItemByName("Container_Shop_Selection_Extras") as §]$+§;
         §&!M§.mClip.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§@!2§);
         § !+§.addCallback("handleUserCancelledOrder",this.§;P§);
         § !+§.addCallback("purchaseFailed",this.§4"E§);
         if(!§"#c§)
         {
            §"#c§ = true;
         }
         § $?§.§`"H§.addEventListener(Event.CHANGE,this.§!$ §);
         var _loc1_:int = 0;
         while(_loc1_ < §^<§)
         {
            _loc2_ = §&!M§.mClip.Container_TabbedShopPopup["powerupTab" + _loc1_];
            if(_loc2_)
            {
               _loc2_.gotoAndStop("Normal");
            }
            _loc1_++;
         }
         this.§ $%§();
         this.§!!?§ = new §!";§();
         (this.§!!?§ as §!";§).addEventListener(§,5§.§?C§,this.§`#`§);
         (this.§!!?§ as §!";§).addEventListener(§,5§.§]#=§,this.§1$+§);
         (this.§!!?§ as §!";§).addEventListener(§,5§.§8"L§,this.§+s§);
         if(this.§>$B§ == "")
         {
            §!!K§.§%#S§().§""o§("SHOP_MAIN",this.§=#Q§);
         }
         this.§->§ = §<!M§.§`"H§;
         this.§->§.addEventListener(§<!M§.§"! §,this.§>#§);
      }
      
      private function §>#§(param1:Event) : void
      {
         var _loc2_:§2$0§ = null;
         this.§""L§(true);
         for each(_loc2_ in this.§=!-§)
         {
            _loc2_.dispose();
         }
         this.§ $%§();
      }
      
      protected function §+s§(param1:§,5§) : void
      {
      }
      
      protected function §1$+§(param1:§,5§) : void
      {
      }
      
      protected function §`#`§(param1:§,5§) : void
      {
         §0I§.§!"j§("FacebookGiftCard",param1.quantity);
      }
      
      private function §4"E§() : void
      {
      }
      
      private function §;P§() : void
      {
      }
      
      private function § $%§() : void
      {
         if(!dataModel.§="N§.§,!d§)
         {
            § $?§.§`"H§.§-!P§();
            dataModel.§="N§.addEventListener(Event.COMPLETE,this.§-A§);
         }
         else
         {
            this.§-A§(null,dataModel.§="N§.§,!d§);
         }
      }
      
      protected function §;#@§(param1:Event) : void
      {
      }
      
      protected function §&#X§(param1:Event) : void
      {
         var _loc3_:§+=§ = null;
         var _loc2_:§=n§ = this.§]#x§("BrandedShopBundle",dataModel.§="N§.§"M§);
         if(_loc2_)
         {
            _loc3_ = new §+=§(§+=§.§-#D§,TabbedShopPopup.§"!g§,false,false,_loc2_,_loc2_.getPricePoint(0));
            this.§"!9§(_loc3_);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var _loc4_:CoinShopPopup = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHOP_BRANDED":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§!i§(true);
               §!!K§.§%#S§().§""o§("SHOP_BRANDED");
               break;
            case "SHOP_SLINGSHOTS":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§?"7§(true);
               §!!K§.§%#S§().§""o§("SHOP_SLINGSHOTS");
               break;
            case "SHOP_POWERUPS":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§<$@§(true);
               §!!K§.§%#S§().§""o§("SHOP_POWERUPS");
               break;
            case "SHOP_VC":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               _loc4_ = new CoinShopPopup(§#"l§.NORMAL,§]"Y§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
               break;
            case "BACK":
               §3Z§.playSound("Menu_Back",§3Z§.§[!F§);
               this.§6"R§(true);
               break;
            case "INFO":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§5"?§();
               break;
            case "REDEEM":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§;"u§();
               break;
            case "EARNCOINS":
               §3Z§.playSound("Menu_Confirm");
               AngryBirdsBase.singleton.exitFullScreen();
               § !+§.§>$%§("earnCredits");
         }
      }
      
      private function §5"?§() : void
      {
         var _loc1_:§<K§ = §+"d§.§,!c§(this.§>$B§);
         var _loc2_:String = "";
         var _loc3_:String = "";
         if(_loc1_)
         {
            _loc2_ = _loc1_.§ #=§;
            _loc3_ = _loc1_.description;
         }
         if(!_loc1_)
         {
            if(this.§>$B§ == §+"d§.§;#N§.§1#7§)
            {
               _loc2_ = §+"d§.§;#N§.§ #=§;
               _loc3_ = §+"d§.§;#N§.description;
            }
            switch(this.§@+§)
            {
               case §+!A§:
                  _loc2_ = "Slingshots";
                  _loc3_ = "Slingshots are permanent items that can be used in any level and changed between shots. Buy once, keep forever!";
                  break;
               case §"!g§:
                  _loc2_ = "Specials";
                  _loc3_ = "These items are only available for a limited time!";
            }
         }
         this.§'"§ = new §-"h§(§&!M§.mClip,_loc2_,_loc3_,§#"l§.§?!b§,§]"Y§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§'"§);
      }
      
      private function §6"R§(param1:Boolean) : void
      {
         this.§>$B§ = "";
         this.§^!8§.setVisibility(param1);
         this.§;$1§.setVisibility(this.§^!8§.visible);
         this.§["2§.setVisibility(!param1);
         this.§?!j§.setVisibility(!param1);
         this.§-e§.setVisibility(!param1);
         if(param1)
         {
            this.§2!M§();
         }
      }
      
      private function §!i§(param1:Boolean, param2:String = "") : void
      {
         if(param2 == "")
         {
            this.§>$B§ = this.§<;§(0);
         }
         this.§@+§ = §"!g§;
         this.§!!6§(this.§>$B§,§"!g§);
         this.§^!8§.setVisibility(!param1);
         this.§;$1§.setVisibility(this.§^!8§.visible);
         this.§["2§.setVisibility(param1);
         this.§?!j§.setVisibility(!param1);
         this.§-e§.setVisibility(!param1);
      }
      
      private function §<;§(param1:int) : String
      {
         var _loc4_:§2$0§ = null;
         var _loc2_:Array = [];
         var _loc3_:String = "";
         for each(_loc4_ in this.§=!-§)
         {
            if(_loc4_ is §7!'§)
            {
               _loc2_.push(_loc4_);
            }
         }
         if(_loc2_.length > param1 && _loc2_[param1])
         {
            _loc3_ = §7!'§(_loc2_[param1]).§6!-§.id;
         }
         return _loc3_;
      }
      
      private function §?"7§(param1:Boolean, param2:String = "") : void
      {
         if(param2 == "")
         {
            param2 = "GoldenSling";
         }
         else if(param2 == §&W§)
         {
            if(this.§[l§().length > 0)
            {
               param2 = (this.§[l§()[0] as §'R§).§6!-§.id;
            }
         }
         this.§>$B§ = param2;
         this.§@+§ = §+!A§;
         this.§!!6§(this.§>$B§,§+!A§);
         this.§^!8§.setVisibility(!param1);
         this.§;$1§.setVisibility(this.§^!8§.visible);
         this.§["2§.setVisibility(!param1);
         this.§?!j§.setVisibility(param1);
         this.§-e§.setVisibility(!param1);
      }
      
      private function §<$@§(param1:Boolean, param2:String = "ExtraBird") : void
      {
         this.§>$B§ = param2;
         this.§@+§ = §[#^§;
         this.§!!6§(this.§>$B§);
         this.§^!8§.setVisibility(!param1);
         this.§;$1§.setVisibility(this.§^!8§.visible);
         this.§["2§.setVisibility(!param1);
         this.§?!j§.setVisibility(!param1);
         this.§-e§.setVisibility(param1);
         this.§-e§.getItemByName("Button_Back").setVisibility(this.§&"J§);
      }
      
      private function §-A§(param1:Event = null, param2:Vector.<§=n§> = null) : void
      {
         var _loc9_:Object = null;
         var _loc10_:§ !>§ = null;
         this.§""L§(false);
         if(param1)
         {
            param2 = dataModel.§="N§.§,!d§;
         }
         this.§<#h§(param2);
         var _loc3_:Boolean = true;
         if(dataModel.§="N§.§"M§ && dataModel.§="N§.§"M§.length > 0)
         {
            this.§,!=§(dataModel.§="N§.§"M§);
            _loc3_ = false;
         }
         if(dataModel.§="N§.slingshots && dataModel.§="N§.slingshots.length > 0)
         {
            this.§@-§(dataModel.§="N§.slingshots);
            _loc3_ = false;
         }
         dispatchEvent(new Event(this.§3!8§));
         var _loc4_:§ !>§ = this.§^!8§.getItemByName("Button_Shop_Selection_" + §=J§.§%"Z§) as § !>§;
         var _loc5_:§ !>§ = this.§^!8§.getItemByName("Button_Shop_Selection_" + §=J§.§'#]§) as § !>§;
         var _loc6_:§ !>§ = this.§^!8§.getItemByName("Button_Shop_Selection_" + §=J§.§7"I§) as § !>§;
         var _loc7_:§ !>§ = this.§^!8§.getItemByName("Button_Shop_Selection_" + §=J§.§?"f§) as § !>§;
         if(_loc4_ && dataModel.§="N§.§"M§.length == 0)
         {
            this.§^!8§.§7"r§(_loc4_);
         }
         if(_loc5_ && dataModel.§="N§.slingshots.length == 0)
         {
            this.§^!8§.§7"r§(_loc5_);
         }
         if(_loc6_ && dataModel.§="N§.§,!d§.length == 0)
         {
            this.§^!8§.§7"r§(_loc6_);
         }
         if(_loc7_ && dataModel.§="N§.§8!5§.length == 0)
         {
            this.§^!8§.§7"r§(_loc7_);
         }
         if(_loc3_)
         {
            this.§&"J§ = false;
            if(this.§>$B§ == "")
            {
               this.§>$B§ = "ExtraBird";
            }
            this.§<$@§(true,this.§>$B§);
            return;
         }
         var _loc8_:int = 0;
         for each(_loc9_ in dataModel.§="N§.shops)
         {
            if(_loc10_ = this.§^!8§.getItemByName("Button_Shop_Selection_" + _loc9_.id) as § !>§)
            {
               _loc10_.x = _loc8_ * (_loc10_.width + 15);
               _loc8_++;
            }
         }
         this.§2!M§();
         this.§^!8§.x = AngryBirdsBase.screenWidth / 2 - this.§^!8§.width / 2;
         dataModel.§="N§.removeEventListener(Event.COMPLETE,this.§-A§);
      }
      
      private function §2!M§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§ !>§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Object = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc1_:int = 0;
         if(!this.§>#c§)
         {
            this.§>#c§ = new Dictionary();
         }
         §4!Q§(AngryBirdsBase.singleton.dataModel).§%#o§ = false;
         §4!Q§(AngryBirdsBase.singleton.dataModel).§;!u§ = false;
         §4!Q§(AngryBirdsBase.singleton.dataModel).§7#_§ = false;
         for each(_loc2_ in dataModel.§="N§.shops)
         {
            _loc3_ = this.§^!8§.getItemByName("Button_Shop_Selection_" + _loc2_.id) as § !>§;
            if(_loc3_)
            {
               _loc4_ = false;
               _loc5_ = false;
               switch(_loc2_.id)
               {
                  case §=J§.§%"Z§:
                     _loc3_.setVisibility(dataModel.§="N§.§"M§.length > 0);
                     if(_loc4_ = this.§>b§(dataModel.§="N§.§"M§,false))
                     {
                        §4!Q§(AngryBirdsBase.singleton.dataModel).§;!u§ = true;
                     }
                     _loc5_ = this.§2!Q§(dataModel.§="N§.§"M§);
                     break;
                  case §=J§.§'#]§:
                     _loc3_.setVisibility(dataModel.§="N§.slingshots.length > 0);
                     if(_loc4_ = this.§>b§(dataModel.§="N§.slingshots,true))
                     {
                        §4!Q§(AngryBirdsBase.singleton.dataModel).§%#o§ = true;
                     }
                     _loc5_ = this.§2!Q§(dataModel.§="N§.slingshots);
                     break;
                  case §=J§.§7"I§:
                     _loc3_.setVisibility(dataModel.§="N§.§,!d§.length > 0);
                     if(_loc4_ = this.§>b§(dataModel.§="N§.§,!d§,false))
                     {
                        §4!Q§(AngryBirdsBase.singleton.dataModel).§;!u§ = true;
                     }
                     _loc5_ = this.§2!Q§(dataModel.§="N§.§,!d§);
                     break;
                  case §=J§.§?"f§:
                     _loc3_.setVisibility(dataModel.§="N§.§8!5§.length > 0);
                     if(_loc4_ = this.§>b§(dataModel.§="N§.§8!5§,false))
                     {
                        §4!Q§(AngryBirdsBase.singleton.dataModel).§7#_§ = true;
                     }
                     _loc5_ = this.§2!Q§(dataModel.§="N§.§8!5§);
               }
               _loc3_.mClip.title.text = _loc2_.name;
               if(_loc5_)
               {
                  if(!this.§>#c§[_loc2_.id] || !this.§>#c§[_loc2_.id].newIconAdded)
                  {
                     (_loc8_ = new (_loc7_ = §6$A§.§1!m§("Tag_New_Big"))()).name = "Tag_New_Big";
                     _loc3_.mClip.addChild(_loc8_);
                     (_loc6_ = !!this.§>#c§[_loc2_.id] ? this.§>#c§[_loc2_.id] : new Object()).newIconAdded = true;
                     this.§>#c§[_loc2_.id] = _loc6_;
                  }
               }
               else
               {
                  if(_loc9_ = _loc3_.mClip.getChildByName("Tag_New_Big") as MovieClip)
                  {
                     _loc3_.mClip.removeChild(_loc9_);
                  }
                  if(this.§>#c§[_loc2_.id] && this.§>#c§[_loc2_.id].newIconAdded)
                  {
                     this.§>#c§[_loc2_.id].newIconAdded = false;
                  }
               }
               if(_loc4_)
               {
                  if(!this.§>#c§[_loc2_.id] || !this.§>#c§[_loc2_.id].saleIconAdded)
                  {
                     if(_loc5_)
                     {
                        (_loc8_ = new (_loc7_ = §6$A§.§1!m§("Tag_Sale_Big_right_side"))()).x = (_loc3_.width >> 1) + 5;
                     }
                     else
                     {
                        _loc8_ = new (_loc7_ = §6$A§.§1!m§("Tag_Sale_Big"))();
                     }
                     _loc8_.name = "Tag_Sale_Big";
                     _loc3_.mClip.addChild(_loc8_);
                     (_loc6_ = !!this.§>#c§[_loc2_.id] ? this.§>#c§[_loc2_.id] : new Object()).saleIconAdded = true;
                     this.§>#c§[_loc2_.id] = _loc6_;
                  }
               }
               else
               {
                  if(_loc9_ = _loc3_.mClip.getChildByName("Tag_Sale_Big") as MovieClip)
                  {
                     _loc3_.mClip.removeChild(_loc9_);
                  }
                  if(this.§>#c§[_loc2_.id] && this.§>#c§[_loc2_.id].saleIconAdded)
                  {
                     this.§>#c§[_loc2_.id].saleIconAdded = false;
                  }
               }
            }
            _loc1_++;
         }
         (§7n§.§-$<§ as § #v§).§!#-§();
      }
      
      private function §2!Q§(param1:Vector.<§=n§>) : Boolean
      {
         var _loc2_:§=n§ = null;
         for each(_loc2_ in param1)
         {
            if(this.§'"!§(_loc2_.id))
            {
               return true;
            }
         }
         return false;
      }
      
      private function §'"!§(param1:String) : Boolean
      {
         var _loc2_:int = §4!Q§(AngryBirdsBase.singleton.dataModel).§?!0§.indexOf(param1);
         var _loc3_:* = §4!Q§(AngryBirdsBase.singleton.dataModel).§?!0§.indexOf(param1) > -1;
         if(!_loc3_)
         {
            _loc3_ = §4!Q§(AngryBirdsBase.singleton.dataModel).§8!'§.indexOf(param1) > -1;
         }
         return _loc3_;
      }
      
      private function §>b§(param1:Vector.<§=n§>, param2:Boolean) : Boolean
      {
         var _loc3_:§=n§ = null;
         for each(_loc3_ in param1)
         {
            if(!(param2 && § $?§.§`"H§.§0#s§(_loc3_.id) > 0 && !§?##§.§6!2§))
            {
               if(_loc3_.isOnSale)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function §6R§(param1:Vector.<§=n§>) : Boolean
      {
         var _loc2_:§=n§ = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§]#l§)
            {
               return true;
            }
         }
         return false;
      }
      
      private function §@-§(param1:Vector.<§=n§>) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         _loc2_ = param1.length;
         _loc3_ = this.§?!j§.mClip.getChildByName("TabsHolder") as MovieClip;
         var _loc4_:Class;
         _loc6_ = (_loc5_ = new (_loc4_ = §6$A§.§1!m§("slingshotTab"))()).width >> 1;
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
         this.§ "G§(param1);
      }
      
      private function § "G§(param1:Vector.<§=n§>) : int
      {
         var _loc3_:§=n§ = null;
         var _loc4_:§ $<§ = null;
         var _loc5_:§2$0§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            if(_loc4_ = §0$@§.§"P§(_loc3_.id))
            {
               _loc5_ = this.§#!3§(this.§]#x§(_loc3_.id,param1),"Icon_Slingshot_" + _loc3_.id,"SlingshopContent" + _loc3_.id,_loc4_.description,_loc4_.§ #=§,_loc2_);
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      private function §,!=§(param1:Vector.<§=n§>) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Class = null;
         var _loc9_:MovieClip = null;
         var _loc2_:Number = this.§["2§.mClip.width;
         var _loc3_:int = param1.length;
         var _loc4_:MovieClip = this.§["2§.mClip.getChildByName("TabsHolder") as MovieClip;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = _loc2_ * (_loc6_ / _loc3_) + _loc2_ / _loc3_ * 0.5;
            _loc8_ = §6$A§.§1!m§("powerupTab");
            this.§>$3§ = new _loc8_();
            this.§>$3§.x = _loc6_ * 118;
            this.§>$3§.y = 12;
            this.§>$3§.name = "TabBranded_" + _loc6_;
            this.§>$3§.visible = false;
            _loc4_.addChild(this.§>$3§);
            _loc4_.x = 40;
            if(!this.§["2§.mClip.contains(_loc4_))
            {
               this.§["2§.mClip.addChild(_loc4_);
            }
            (_loc9_ = new MovieClip()).graphics.beginFill(16777215,0);
            _loc9_.graphics.drawRect(0,0,this.§["2§.mClip.width,this.§["2§.mClip.height);
            _loc9_.graphics.endFill();
            _loc9_.visible = false;
            _loc9_.name = "BrandedTabContainer_" + _loc6_;
            _loc9_.width = _loc2_;
            _loc9_.y = this.§>$3§.y + this.§>$3§.height;
            this.§["2§.mClip.addChildAt(_loc9_,1);
            _loc6_++;
         }
         this.§0!P§(param1);
      }
      
      private function §0!P§(param1:Vector.<§=n§>) : void
      {
         var s:§=n§ = null;
         var powerupDef:§<K§ = null;
         var isSpecialPowerup:Boolean = false;
         var owned:Boolean = false;
         var validUntil:Date = null;
         var title:String = null;
         var brandedTab:§2$0§ = null;
         var shopItems:Vector.<§=n§> = param1;
         var i:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = shopItems;
         for(; §§hasnext(_loc4_,_loc3_); i++)
         {
            s = §§nextvalue(_loc3_,_loc4_);
            powerupDef = §+"d§.§ !^§(s.id);
            isSpecialPowerup = false;
            if(!powerupDef)
            {
               powerupDef = §+"d§.§&#;§(s.id);
               if(powerupDef)
               {
                  isSpecialPowerup = true;
               }
            }
            owned = powerupDef && § $?§.§`"H§.§2"g§(powerupDef.§1#7§) > 0;
            try
            {
               validUntil = new Date();
               validUntil.time = s.getPricePoint(0).§8$8§;
               title = powerupDef.§ #=§;
               if(!isSpecialPowerup)
               {
                  title = "Infinite " + powerupDef.§ #=§;
               }
               brandedTab = this.§[",§(this.§]#x§(s.id,shopItems),s.id + "_Icon","Button_Shop_Branded_" + s.id,powerupDef.§]Y§,title,i,owned,validUntil);
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      private function §[",§(param1:§=n§, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Date = null) : §2$0§
      {
         var _loc10_:MovieClip;
         var _loc9_:MovieClip;
         (_loc10_ = (_loc9_ = this.§["2§.mClip.getChildByName("TabsHolder") as MovieClip).getChildByName("TabBranded_" + param6) as MovieClip).visible = true;
         if(param1 == null)
         {
            _loc10_.visible = false;
            return null;
         }
         var _loc11_:§7!'§;
         (_loc11_ = new §7!'§(param1,param2,param3,_loc10_,param4,param5,1,param7,param8)).addEventListener(§+=§.§+!P§,this.§7#3§);
         _loc11_.addEventListener(§+=§.§-#D§,this.§"!9§);
         this.§=!-§.push(_loc11_);
         return _loc11_;
      }
      
      private function §#!3§(param1:§=n§, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false) : §2$0§
      {
         var _loc11_:Class = null;
         var _loc12_:MovieClip = null;
         var _loc13_:Class = null;
         var _loc14_:MovieClip = null;
         var _loc9_:MovieClip;
         var _loc8_:MovieClip;
         (_loc9_ = (_loc8_ = this.§?!j§.mClip.getChildByName("TabsHolder") as MovieClip).getChildByName("TabSlingshot_" + param6) as MovieClip).visible = true;
         if(param1 == null)
         {
            _loc9_.visible = false;
            return null;
         }
         var _loc10_:§'R§;
         (_loc10_ = new §'R§(param1,param2,param3,_loc9_,param4,param5,1,param7)).addEventListener(§+=§.§+!P§,this.§;"`§);
         _loc10_.addEventListener(§+=§.§-#D§,this.§"!9§);
         this.§=!-§.push(_loc10_);
         if(this.§'"!§(param1.id))
         {
            (_loc12_ = new (_loc11_ = §6$A§.§1!m§("MovieClip_NewTag_TopBar"))()).name = "MovieClip_NewTag_TopBar";
            _loc12_.y = §7"7§;
            _loc9_.addChild(_loc12_);
         }
         else if((_loc12_ = _loc9_.getChildByName("MovieClip_NewTag_TopBar") as MovieClip) && _loc12_.parent)
         {
            _loc12_.parent.removeChild(_loc12_);
         }
         if(param1.isOnSale && (!_loc10_.§#s§() || §?##§.§6!2§))
         {
            (_loc14_ = new (_loc13_ = §6$A§.§1!m§("MovieClip_SaleTag_TopBar"))()).name = "Sale";
            _loc14_.y = §7"7§;
            _loc9_.addChild(_loc14_);
         }
         else if((_loc14_ = _loc9_.getChildByName("Sale") as MovieClip) && _loc14_.parent)
         {
            _loc14_.parent.removeChild(_loc14_);
         }
         return _loc10_;
      }
      
      protected function §;"`§(param1:§+=§) : void
      {
         var _loc2_:§2$0§ = param1.currentTarget as §2$0§;
         if(_loc2_)
         {
            this.§>$B§ = _loc2_.§6!-§.id;
            this.§@+§ = §+!A§;
            this.§4#S§(_loc2_,§+!A§);
            §3Z§.playSound("Shop_Selection",§3Z§.§[!F§,0,0.7);
         }
      }
      
      protected function §7#3§(param1:§+=§) : void
      {
         var _loc2_:§2$0§ = param1.currentTarget as §2$0§;
         if(_loc2_)
         {
            this.§>$B§ = _loc2_.§6!-§.id;
            this.§@+§ = §"!g§;
            this.§4#S§(_loc2_,§"!g§);
            §3Z§.playSound("Shop_Selection",§3Z§.§[!F§,0,0.7);
         }
      }
      
      private function §<#h§(param1:Vector.<§=n§>) : void
      {
         this.§+e§(param1);
         this.§!!6§(this.§>$B§);
      }
      
      private function §+e§(param1:Vector.<§=n§>) : void
      {
         this.§=!-§ = [];
         this.§[#K§ = 0;
         this.§&"P§ = this.§ null§(this.§]#x§(§+"d§.§<!Y§,param1),"PowerupBundleIcon","ShopContentPowerupBundle","Each pack contains one Super Seed, Sling Scope, King Sling and Birdquake making it the perfect solution to all your piggy problems.");
         this.§5#z§ = this.§ null§(this.§]#x§(§+"d§.§1J§.§1#7§,param1),"SuperSeedsIcon","ShopContentSuperSeeds","Supersize your bird! Super Seeds turn any bird into a pig-popping giant.");
         this.§2#N§ = this.§ null§(this.§]#x§(§+"d§.§[p§.§1#7§,param1),"KingSlingIcon","ShopContentKingSling","Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!");
         this.§"w§ = this.§ null§(this.§]#x§(§+"d§.§#T§.§1#7§,param1),"SlingScopeIcon","ShopContentSlingScope","Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!");
         this.§&!E§ = this.§ null§(this.§]#x§(§+"d§.§&!w§.§1#7§,param1),"BirdQuakeIcon","ShopContentBirdQuake","Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!");
         this.§+!7§ = this.§ null§(this.§]#x§(§+"d§.§?"$§.§1#7§,param1),"BoomboxIcon","ShopContentBoombox","Sling TNT");
         this.WINGMAN = this.§ null§(this.§]#x§(§+"d§.§]#_§.§1#7§,param1),"ExtraBirdIcon","ShopContentExtraBird","Call the Wingman to demolish your enemies and impress your friends. Only useable in Tournaments.");
         this.MIGHTY_EAGLE = this.§ null§(this.§]#x§(§+"d§.§ !T§.§1#7§,param1),"MightyEagleIcon","ShopContentMightyEagle","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.");
      }
      
      private function §]#x§(param1:String, param2:Vector.<§=n§>) : §=n§
      {
         var _loc3_:§=n§ = null;
         for each(_loc3_ in param2)
         {
            if(_loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function § null§(param1:§=n§, param2:String, param3:String, param4:String) : §2$0§
      {
         var _loc8_:Class = null;
         var _loc9_:MovieClip = null;
         var _loc10_:Class = null;
         var _loc11_:MovieClip = null;
         var _loc5_:MovieClip = §&!M§.mClip.Container_TabbedShopPopup["powerupTab" + this.§[#K§];
         ++this.§[#K§;
         if(param1 == null)
         {
            _loc5_.visible = false;
            return null;
         }
         var _loc6_:String = param2 + "_" + §'##§.§`"H§.brandedTournamentAssetId;
         if(§6$A§.§9"w§(_loc6_))
         {
            param2 = _loc6_;
         }
         var _loc7_:§2$0§ = new §2$0§(param1,param2,param3,_loc5_,param4,4);
         if(this.§'"!§(param1.id))
         {
            (_loc9_ = new (_loc8_ = §6$A§.§1!m§("MovieClip_NewTag_TopBar"))()).name = "MovieClip_NewTag_TopBar";
            _loc9_.x = §9!y§;
            _loc9_.y = §7"7§;
            _loc5_.addChild(_loc9_);
         }
         else if((_loc9_ = _loc5_.getChildByName("MovieClip_NewTag_TopBar") as MovieClip) && _loc9_.parent)
         {
            _loc9_.parent.removeChild(_loc9_);
         }
         if(param1.isOnSale)
         {
            (_loc11_ = new (_loc10_ = §6$A§.§1!m§("MovieClip_SaleTag_TopBar"))()).name = "MovieClip_SaleTag_TopBar";
            _loc11_.x = §9!y§;
            _loc11_.y = §7"7§;
            _loc5_.addChild(_loc11_);
         }
         else if((_loc11_ = _loc5_.getChildByName("MovieClip_SaleTag_TopBar") as MovieClip) && _loc11_.parent)
         {
            _loc11_.parent.removeChild(_loc11_);
         }
         _loc7_.addEventListener(§+=§.§+!P§,this.§8$@§);
         _loc7_.addEventListener(§+=§.§-#D§,this.§"!9§);
         this.§=!-§.push(_loc7_);
         return _loc7_;
      }
      
      private function §8$@§(param1:§+=§) : void
      {
         var _loc2_:§2$0§ = param1.currentTarget as §2$0§;
         if(_loc2_)
         {
            this.§>$B§ = _loc2_.§6!-§.id;
            this.§@+§ = §[#^§;
            this.§4#S§(_loc2_,§[#^§);
            §3Z§.playSound("Shop_Selection",§3Z§.§[!F§,0,0.7);
         }
      }
      
      private function §"!9§(param1:§+=§) : void
      {
         var _loc3_:CoinShopPopup = null;
         var _loc4_:§2"O§ = null;
         var _loc2_:* = param1.§6!-§.currencyID == "IVC";
         if(param1.point)
         {
            this.§]$,§ = new Point(param1.point.x,param1.point.y);
         }
         this.§^!C§ = this.§0!Y§.§6!-§.id;
         if(_loc2_ && (dataModel.§1W§.§<B§ < param1.pricePoint.price && (isNaN(param1.pricePoint.campaignPrice) || Number(param1.pricePoint.campaignPrice) <= 0) || dataModel.§1W§.§<B§ < Number(param1.pricePoint.campaignPrice)))
         {
            _loc3_ = new CoinShopPopup(§#"l§.NORMAL,§]"Y§.TOP,CoinShopPopup.§["3§);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            return;
         }
         §3Z§.playSound("Shop_Buy",§3Z§.§[!F§);
         this.§7#9§();
         if(_loc2_)
         {
            (_loc4_ = new §2"O§(param1.§6!-§,param1.pricePoint,ID)).addEventListener(§4?§.§?w§,this.§%$#§);
            _loc4_.addEventListener(§4?§.§3$2§,this.§2#J§);
         }
         else
         {
            if(this.§""2§)
            {
               this.§""2§.removeEventListeners();
               this.§""2§ = null;
            }
            this.§""2§ = new §%e§(param1.§6!-§,param1.pricePoint,§%e§.§1#S§,ID);
            this.§""2§.addEventListener(§4?§.§3!b§,this.§7-§);
            this.§""2§.addEventListener(§4?§.§3$2§,this.§@$C§);
         }
      }
      
      protected function §@$C§(param1:§4?§) : void
      {
         this.§+$;§();
         this.§;%§(param1.errorMessage,param1.§5I§,param1.errorCode.toString());
         if(this.§""2§)
         {
            this.§""2§.removeEventListeners();
            this.§""2§ = null;
         }
      }
      
      protected function §2#J§(param1:§4?§) : void
      {
         § $?§.§`"H§.§-!P§();
         this.§+$;§();
      }
      
      protected function §;%§(param1:String = null, param2:String = null, param3:String = null) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      protected function §7-§(param1:§4?§) : void
      {
         var _loc3_:§,!7§ = null;
         § $?§.§`"H§.addEventListener(§ $?§.§&L§,this.§#K§);
         this.§+$;§();
         if(this.§'?§())
         {
            _loc3_ = new §,!7§();
            if(§&!M§)
            {
               switch(this.§@+§)
               {
                  case §[#^§:
                     §&!M§.mClip.Container_TabbedShopPopup.contentArea.addChild(_loc3_);
                     break;
                  case §"!g§:
                     this.§["2§.mClip.contentArea.addChild(_loc3_);
                     break;
                  case §+!A§:
                     this.§?!j§.mClip.contentArea.addChild(_loc3_);
               }
               _loc3_.x = this.§]$,§.x - 40;
               _loc3_.y = this.§]$,§.y + 40;
               this.§]$,§ = null;
            }
         }
         var _loc2_:§%e§ = param1.currentTarget as §%e§;
         _loc2_.removeEventListener(§4?§.§3!b§,this.§7-§);
         _loc2_.removeEventListener(§4?§.§3$2§,this.§@$C§);
         §0I§.trackPageView(this,§0I§.§'#u§);
         §0I§.trackTransaction(_loc2_.orderId,§5$,§,_loc2_.§6!-§.id,_loc2_.§6!-§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         §0I§.§6#?§(_loc2_.§6!-§.id,this.§""2§.pricePoint.totalQuantity);
         §0I§.trackPageView(this,§0I§.§'#u§);
         if(_loc2_.pricePoint)
         {
            §0I§.trackTransaction(_loc2_.orderId,§5$,§,_loc2_.§6!-§.id,_loc2_.§6!-§.id,_loc2_.pricePoint.price + " x",_loc2_.pricePoint.price,1,0);
         }
         if(this.§""2§)
         {
            this.§""2§.removeEventListeners();
            this.§""2§ = null;
         }
         _loc2_.removeEventListeners();
      }
      
      private function §'?§() : Boolean
      {
         return this.§]$,§ && this.§^!C§ == this.§0!Y§.§6!-§.id;
      }
      
      private function §#K§(param1:Event) : void
      {
         var _loc2_:§2$0§ = null;
         § $?§.§`"H§.removeEventListener(§ $?§.§&L§,this.§#K§);
         for each(_loc2_ in this.§=!-§)
         {
            _loc2_.refreshItemCount();
         }
         this.§+$;§();
         this.§2!M§();
      }
      
      private function §7#9§() : void
      {
         §&!M§.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = false;
         §&!M§.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = false;
         §&!M§.mClip.Container_TabbedShopPopup.contentArea.alpha = 0.5;
         this.§["2§.mClip.contentArea.mouseEnabled = false;
         this.§["2§.mClip.contentArea.mouseChildren = false;
         this.§["2§.mClip.contentArea.alpha = 0.5;
         this.§?!j§.mClip.contentArea.mouseEnabled = false;
         this.§?!j§.mClip.contentArea.mouseChildren = false;
         this.§?!j§.mClip.contentArea.alpha = 0.5;
         this.§>i§ = new Timer(2000,1);
         this.§>i§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§2!o§,false,0,true);
         this.§>i§.start();
      }
      
      private function §+$;§() : void
      {
         if(§&!M§ && §&!M§.mClip && §&!M§.mClip.Container_TabbedShopPopup && §&!M§.mClip.Container_TabbedShopPopup.contentArea)
         {
            §&!M§.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = true;
            §&!M§.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = true;
            §&!M§.mClip.Container_TabbedShopPopup.contentArea.alpha = 1;
         }
         if(this.§["2§ && this.§["2§.mClip && this.§["2§.mClip.contentArea)
         {
            this.§["2§.mClip.contentArea.mouseEnabled = true;
            this.§["2§.mClip.contentArea.mouseChildren = true;
            this.§["2§.mClip.contentArea.alpha = 1;
         }
         if(this.§?!j§ && this.§?!j§.mClip && this.§?!j§.mClip.contentArea)
         {
            this.§?!j§.mClip.contentArea.mouseEnabled = true;
            this.§?!j§.mClip.contentArea.mouseChildren = true;
            this.§?!j§.mClip.contentArea.alpha = 1;
         }
      }
      
      private function §%$#§(param1:§4?§) : void
      {
         var _loc3_:§,!7§ = null;
         var _loc4_:§2$0§ = null;
         if(this.§'?§())
         {
            _loc3_ = new §,!7§();
            if(§&!M§)
            {
               switch(this.§@+§)
               {
                  case §[#^§:
                     §&!M§.mClip.Container_TabbedShopPopup.contentArea.addChild(_loc3_);
                     break;
                  case §+!A§:
                     this.§?!j§.mClip.contentArea.addChild(_loc3_);
                     break;
                  case §"!g§:
                     this.§["2§.mClip.contentArea.addChild(_loc3_);
               }
               _loc3_.x = this.§]$,§.x - 40;
               _loc3_.y = this.§]$,§.y + 40;
               this.§]$,§ = null;
            }
         }
         var _loc2_:§2"O§ = param1.currentTarget as §2"O§;
         _loc2_.removeEventListener(§4?§.§?w§,this.§%$#§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
            for each(_loc4_ in this.§=!-§)
            {
               _loc4_.refreshItemCount();
            }
         }
         if(§&!M§)
         {
            this.§+$;§();
         }
         this.§2!M§();
         §0I§.trackPageView(this,§0I§.§'#u§);
         §0I§.trackTransaction(_loc2_.orderId,§5$,§,_loc2_.§6!-§.id,_loc2_.§6!-§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
      }
      
      private function §!!6§(param1:String, param2:String = "GENERAL") : void
      {
         var _loc3_:§2$0§ = this.§-&§(param1);
         if(!_loc3_)
         {
            _loc3_ = this.§-&§("GoldenSling");
         }
         if(_loc3_)
         {
            this.§4#S§(_loc3_,param2);
         }
      }
      
      private function §-&§(param1:String) : §2$0§
      {
         var _loc2_:§2$0§ = null;
         for each(_loc2_ in this.§=!-§)
         {
            if(_loc2_.§6!-§.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §4#S§(param1:§2$0§, param2:String = "GENERAL") : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:§2$0§ = null;
         if(param2 == §[#^§)
         {
            _loc3_ = §&!M§.mClip.Container_TabbedShopPopup.contentArea;
         }
         else if(param2 == §"!g§)
         {
            _loc3_ = this.§["2§.mClip.contentArea;
         }
         else if(param2 == §+!A§)
         {
            _loc3_ = this.§?!j§.mClip.contentArea;
         }
         this.§"#m§();
         if(this.§0!Y§)
         {
            if(_loc3_.contains(this.§0!Y§.§'"+§))
            {
               _loc3_.removeChild(this.§0!Y§.§'"+§);
            }
         }
         for each(_loc4_ in this.§=!-§)
         {
            _loc4_.§throw§();
         }
         param1.select();
         this.§0!Y§ = param1;
         _loc3_.addChild(param1.§'"+§);
         §0I§.trackPageView(this,param1.§6!-§.id);
         §;"x§.§,!]§(param1.§6!-§);
      }
      
      private function §"#m§() : void
      {
         this.§["2§.mClip.contentArea.removeChildren();
         §&!M§.mClip.Container_TabbedShopPopup.contentArea.removeChildren();
         this.§?!j§.mClip.contentArea.removeChildren();
      }
      
      public function get walletContainer() : Sprite
      {
         return §&!M§.mClip.Container_Shop_Background;
      }
      
      public function §&!U§(param1:Wallet) : void
      {
         param1.removeEventListener(Wallet.§2]§,this.§;#@§);
         param1.dispose();
         param1 = null;
      }
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function §;!=§() : String
      {
         return §0I§.§!#O§;
      }
      
      public function §#"!§() : String
      {
         return §0I§.§5"S§;
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(!this.§=!-§ || this.§=!-§.length == 0)
         {
            this.§ $%§();
         }
         else
         {
            this.§7!M§();
         }
         §0I§.trackPageView(this);
         §0I§.§0o§();
         var _loc2_:Wallet = new Wallet(this);
         this.§0!A§(_loc2_);
         _loc2_.addEventListener(Wallet.§2]§,this.§;#@§);
      }
      
      private function §7!M§(param1:Event = null) : void
      {
         if(this.§>$B§ && this.§@+§)
         {
            switch(this.§@+§)
            {
               case §[#^§:
                  this.§<$@§(true,this.§>$B§);
                  break;
               case §+!A§:
                  this.§?"7§(true,this.§>$B§);
                  break;
               case §"!g§:
                  this.§!i§(true,this.§>$B§);
            }
         }
      }
      
      private function §@!2§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§2$0§ = null;
         if(this.§1!B§)
         {
            this.§&!U§(this.§1!B§);
         }
         if(this.§!!?§)
         {
            (this.§!!?§ as §!";§).removeEventListener(§,5§.§?C§,this.§`#`§);
            (this.§!!?§ as §!";§).removeEventListener(§,5§.§]#=§,this.§1$+§);
            (this.§!!?§ as §!";§).removeEventListener(§,5§.§8"L§,this.§+s§);
            this.§!!?§ = null;
         }
         dataModel.§="N§.removeEventListener(Event.COMPLETE,this.§-A§);
         § $?§.§`"H§.removeEventListener(Event.CHANGE,this.§!$ §);
         § !+§.§?!§("handleUserCancelledOrder",this.§;P§);
         § !+§.§?!§("purchaseFailed",this.§4"E§);
         if(this.§""2§ && this.§""2§.§9"F§)
         {
            this.§""2§.§9"F§ = false;
            § $?§.§`"H§.§-!P§();
         }
         if(this.§""2§)
         {
            this.§""2§.removeEventListeners();
         }
         if(this.§=!-§)
         {
            for each(_loc3_ in this.§=!-§)
            {
               _loc3_.dispose();
            }
         }
         this.§>#c§ = null;
         this.§->§.removeEventListener(§<!M§.§"! §,this.§>#§);
         this.§->§ = null;
         super.hide(param1,param2);
      }
      
      public function §+"-§() : String
      {
         return this.§;!=§() + "-" + this.§#"!§();
      }
      
      protected function §!$ §(param1:Event) : void
      {
         var _loc2_:§2$0§ = null;
         for each(_loc2_ in this.§=!-§)
         {
            _loc2_.refreshItemCount();
         }
      }
      
      private function §""L§(param1:Boolean) : void
      {
         if(!§&!M§)
         {
            return;
         }
         §&!M§.mClip.AngryBirdLoader.visible = param1;
      }
      
      public function §[l§() : Array
      {
         var _loc2_:§2$0§ = null;
         var _loc1_:Array = new Array();
         for each(_loc2_ in this.§=!-§)
         {
            if(_loc2_ is §'R§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      private function §;"u§() : void
      {
         this.§!!?§.initialize();
         this.§!!?§.redeem();
      }
      
      private function §2!o§(param1:TimerEvent) : void
      {
         if(this.§>i§)
         {
            this.§>i§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§2!o§);
            this.§>i§ = null;
            this.§+$;§();
         }
      }
   }
}
