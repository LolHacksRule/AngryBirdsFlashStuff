package §`D§
{
   import § "L§.§1"r§;
   import § "L§.§23§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §"N§.§^!r§;
   import §#"4§.§2"M§;
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §#$?§.§7!b§;
   import §#g§.§<!N§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §+!Y§.§3!B§;
   import §+!Y§.§[@§;
   import §,#,§.§=#o§;
   import §,#,§.§]§;
   import §3"V§.§ b§;
   import §7"&§.§1k§;
   import §9T§.§ "T§;
   import §9T§.§!#;§;
   import §>#q§.§&!t§;
   import §>#q§.§+R§;
   import §>#q§.§8#Z§;
   import §>#q§.§<M§;
   import §>#q§.§throw§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.WarningPopup;
   import §?Q§.§`#_§;
   import §[#V§.§1!>§;
   import §[#V§.§<"f§;
   import §[#V§.§>#!§;
   import §]"U§.CoinShopPopup;
   import §^"3§.§`$4§;
   import §`"t§.§7"U§;
   import §`,§.§7!$§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class TabbedShopPopup extends AbstractPopup implements §2"M§, §+#?§, §1k§
   {
      
      public static const ID:String = "TabbedShopPopup";
      
      private static const §%!C§:int = -35;
      
      private static const §,#U§:int = -15;
      
      private static const §&v§:String = "In-app Shop";
      
      public static const §7!Y§:String = "uiSoundsChannel";
      
      private static const §"#"§:int = 8;
      
      public static const §!!6§:String = "SLINGSHOT";
      
      public static const §"#$§:String = "GENERAL";
      
      public static const §]!j§:String = "SPECIAL";
      
      private static var §9$5§:Boolean;
      
      public static const §3d§:String = "SlingshotFirstTab";
       
      
      public var §"#W§:Wallet;
      
      private var §5"<§:§7#+§;
      
      private var §2#,§:§7#+§;
      
      private var §,"3§:§7#+§;
      
      private var §"n§:§7#+§;
      
      private var §"g§:§7#+§;
      
      private var §-y§:§7#+§;
      
      private var WINGMAN:§7#+§;
      
      private var MIGHTY_EAGLE:§7#+§;
      
      private var §;$8§:Array;
      
      private var §"!1§:§7#+§;
      
      private var §+#m§:String = "";
      
      private var §>$9§:String;
      
      private var §##4§:Point;
      
      private var §7!,§:§23§;
      
      private var §1"I§:§23§;
      
      private var §]"T§:§23§;
      
      private var §[#o§:§23§;
      
      private var §>"p§:§23§;
      
      private var §3#O§:MovieClip;
      
      private var §;'§:MovieClip;
      
      private var §6$C§:String;
      
      private var §!!P§:§&!t§;
      
      private var §0!9§:Timer;
      
      private var §<#S§:§`#_§;
      
      private var §9h§:Boolean = true;
      
      private var §6"s§:String = "ShopTabsInitialzed";
      
      private var §1![§:§+R§;
      
      private var §[!w§:Dictionary;
      
      private var §-#j§:Timer;
      
      private var §&"D§:Boolean;
      
      private var §`#0§:§^!r§;
      
      private var §8"H§:int;
      
      public function TabbedShopPopup(param1:int, param2:int, param3:String = "", param4:String = "GENERAL", param5:Boolean = false)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupView_TabbedShop[0],ID);
         this.§6$C§ = param4;
         this.§>$9§ = param3;
         this.§&"D§ = param5;
         addEventListener(this.§6"s§,this.§0$;§);
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      override protected function init() : void
      {
         var _loc2_:MovieClip = null;
         super.init();
         this.§2"=§(true);
         this.§7!,§ = §;#'§.getItemByName("Container_Shop_Branded") as §23§;
         this.§1"I§ = §;#'§.getItemByName("Container_Shop_Slingshots") as §23§;
         this.§]"T§ = §;#'§.getItemByName("Container_TabbedShopPopup") as §23§;
         this.§[#o§ = §;#'§.getItemByName("Container_Shop_Selection_Buttons") as §23§;
         this.§>"p§ = §;#'§.getItemByName("Container_Shop_Selection_Extras") as §23§;
         §;#'§.mClip.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§,!<§);
         §7!b§.addCallback("handleUserCancelledOrder",this.§^"_§);
         §7!b§.addCallback("purchaseFailed",this.§4##§);
         if(!§9$5§)
         {
            §9$5§ = true;
         }
         §]#0§.§+!,§.addEventListener(Event.CHANGE,this.§-$B§);
         var _loc1_:int = 0;
         while(_loc1_ < §"#"§)
         {
            _loc2_ = §;#'§.mClip.Container_TabbedShopPopup["powerupTab" + _loc1_];
            if(_loc2_)
            {
               _loc2_.gotoAndStop("Normal");
            }
            _loc1_++;
         }
         this.§08§();
         this.§1![§ = new §throw§();
         (this.§1![§ as §throw§).addEventListener(§>#!§.§@K§,this.§,!,§);
         (this.§1![§ as §throw§).addEventListener(§>#!§.§<w§,this.§@"j§);
         (this.§1![§ as §throw§).addEventListener(§>#!§.§0#J§,this.§7F§);
         if(this.§>$9§ == "")
         {
            §3";§.§#"'§().§0#P§("SHOP_MAIN",this.§&"D§);
         }
         this.§`#0§ = §^!r§.§+!,§;
         this.§`#0§.addEventListener(§^!r§.§0!A§,this.§3!=§);
      }
      
      private function §3!=§(param1:Event) : void
      {
         var _loc2_:§7#+§ = null;
         this.§2"=§(true);
         for each(_loc2_ in this.§;$8§)
         {
            _loc2_.dispose();
         }
         this.§08§();
      }
      
      protected function §7F§(param1:§>#!§) : void
      {
      }
      
      protected function §@"j§(param1:§>#!§) : void
      {
      }
      
      protected function §,!,§(param1:§>#!§) : void
      {
         §<"G§.§2d§("FacebookGiftCard",param1.quantity);
      }
      
      private function §4##§() : void
      {
      }
      
      private function §^"_§() : void
      {
      }
      
      private function §08§() : void
      {
         if(!dataModel.§[h§.§"!S§)
         {
            §]#0§.§+!,§.§@!z§();
            dataModel.§[h§.addEventListener(Event.COMPLETE,this.§@$1§);
         }
         else
         {
            this.§@$1§(null,dataModel.§[h§.§"!S§);
         }
      }
      
      protected function §"$9§(param1:Event) : void
      {
      }
      
      protected function §?! §(param1:Event) : void
      {
         var _loc3_:§<"f§ = null;
         var _loc2_:§2_§ = this.§!#v§("BrandedShopBundle",dataModel.§[h§.§<#o§);
         if(_loc2_)
         {
            _loc3_ = new §<"f§(§<"f§.§5"n§,TabbedShopPopup.§]!j§,false,false,_loc2_,_loc2_.getPricePoint(0));
            this.§'!9§(_loc3_);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var _loc4_:CoinShopPopup = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHOP_BRANDED":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§ !r§(true);
               §3";§.§#"'§().§0#P§("SHOP_BRANDED");
               break;
            case "SHOP_SLINGSHOTS":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§<$6§(true);
               §3";§.§#"'§().§0#P§("SHOP_SLINGSHOTS");
               break;
            case "SHOP_POWERUPS":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§6#o§(true);
               §3";§.§#"'§().§0#P§("SHOP_POWERUPS");
               break;
            case "SHOP_VC":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               _loc4_ = new CoinShopPopup(§@#D§.NORMAL,§5R§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
               break;
            case "BACK":
               § b§.playSound("Menu_Back",§ b§.§;$5§);
               this.§["H§(true);
               break;
            case "INFO":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§?$1§();
               break;
            case "REDEEM":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§]v§();
               break;
            case "EARNCOINS":
               § b§.playSound("Menu_Confirm");
               AngryBirdsBase.singleton.exitFullScreen();
               §7!b§.§7@§("earnCredits");
         }
      }
      
      private function §?$1§() : void
      {
         var _loc1_:§!#;§ = § "T§.§7#?§(this.§>$9§);
         var _loc2_:String = "";
         var _loc3_:String = "";
         if(_loc1_)
         {
            _loc2_ = _loc1_.§"l§;
            _loc3_ = _loc1_.description;
         }
         if(!_loc1_)
         {
            if(this.§>$9§ == § "T§.§%!W§.§8t§)
            {
               _loc2_ = § "T§.§%!W§.§"l§;
               _loc3_ = § "T§.§%!W§.description;
            }
            switch(this.§6$C§)
            {
               case §!!6§:
                  _loc2_ = "Slingshots";
                  _loc3_ = "Slingshots are permanent items that can be used in any level and changed between shots. Buy once, keep forever!";
                  break;
               case §]!j§:
                  _loc2_ = "Specials";
                  _loc3_ = "These items are only available for a limited time!";
            }
         }
         this.§<#S§ = new §`#_§(§;#'§.mClip,_loc2_,_loc3_,§@#D§.§,"4§,§5R§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§<#S§);
      }
      
      private function §["H§(param1:Boolean) : void
      {
         this.§>$9§ = "";
         this.§[#o§.setVisibility(param1);
         this.§>"p§.setVisibility(this.§[#o§.visible);
         this.§7!,§.setVisibility(!param1);
         this.§1"I§.setVisibility(!param1);
         this.§]"T§.setVisibility(!param1);
         if(param1)
         {
            this.§["d§();
         }
      }
      
      private function § !r§(param1:Boolean, param2:String = "") : void
      {
         if(param2 == "")
         {
            this.§>$9§ = this.§4!&§(0);
         }
         this.§6$C§ = §]!j§;
         this.§9#K§(this.§>$9§,§]!j§);
         this.§[#o§.setVisibility(!param1);
         this.§>"p§.setVisibility(this.§[#o§.visible);
         this.§7!,§.setVisibility(param1);
         this.§1"I§.setVisibility(!param1);
         this.§]"T§.setVisibility(!param1);
      }
      
      private function §4!&§(param1:int) : String
      {
         var _loc4_:§7#+§ = null;
         var _loc2_:Array = [];
         var _loc3_:String = "";
         for each(_loc4_ in this.§;$8§)
         {
            if(_loc4_ is §`""§)
            {
               _loc2_.push(_loc4_);
            }
         }
         if(_loc2_.length > param1 && _loc2_[param1])
         {
            _loc3_ = §`""§(_loc2_[param1]).§@" §.id;
         }
         return _loc3_;
      }
      
      private function §<$6§(param1:Boolean, param2:String = "") : void
      {
         if(param2 == "")
         {
            param2 = "GoldenSling";
         }
         else if(param2 == §3d§)
         {
            if(this.§&# §().length > 0)
            {
               param2 = (this.§&# §()[0] as §<-§).§@" §.id;
            }
         }
         this.§>$9§ = param2;
         this.§6$C§ = §!!6§;
         this.§9#K§(this.§>$9§,§!!6§);
         this.§[#o§.setVisibility(!param1);
         this.§>"p§.setVisibility(this.§[#o§.visible);
         this.§7!,§.setVisibility(!param1);
         this.§1"I§.setVisibility(param1);
         this.§]"T§.setVisibility(!param1);
      }
      
      private function §6#o§(param1:Boolean, param2:String = "ExtraBird") : void
      {
         this.§>$9§ = param2;
         this.§6$C§ = §"#$§;
         this.§9#K§(this.§>$9§);
         this.§[#o§.setVisibility(!param1);
         this.§>"p§.setVisibility(this.§[#o§.visible);
         this.§7!,§.setVisibility(!param1);
         this.§1"I§.setVisibility(!param1);
         this.§]"T§.setVisibility(param1);
         this.§]"T§.getItemByName("Button_Back").setVisibility(this.§9h§);
      }
      
      private function §@$1§(param1:Event = null, param2:Vector.<§2_§> = null) : void
      {
         var _loc9_:Object = null;
         var _loc10_:§1"r§ = null;
         this.§2"=§(false);
         if(param1)
         {
            param2 = dataModel.§[h§.§"!S§;
         }
         this.§]w§(param2);
         var _loc3_:Boolean = true;
         if(dataModel.§[h§.§<#o§ && dataModel.§[h§.§<#o§.length > 0)
         {
            this.§6!,§(dataModel.§[h§.§<#o§);
            _loc3_ = false;
         }
         if(dataModel.§[h§.slingshots && dataModel.§[h§.slingshots.length > 0)
         {
            this.§3!%§(dataModel.§[h§.slingshots);
            _loc3_ = false;
         }
         dispatchEvent(new Event(this.§6"s§));
         var _loc4_:§1"r§ = this.§[#o§.getItemByName("Button_Shop_Selection_" + §<M§.§7"y§) as §1"r§;
         var _loc5_:§1"r§ = this.§[#o§.getItemByName("Button_Shop_Selection_" + §<M§.§1$-§) as §1"r§;
         var _loc6_:§1"r§ = this.§[#o§.getItemByName("Button_Shop_Selection_" + §<M§.§7H§) as §1"r§;
         var _loc7_:§1"r§ = this.§[#o§.getItemByName("Button_Shop_Selection_" + §<M§.§1$0§) as §1"r§;
         if(_loc4_ && dataModel.§[h§.§<#o§.length == 0)
         {
            this.§[#o§.§?,§(_loc4_);
         }
         if(_loc5_ && dataModel.§[h§.slingshots.length == 0)
         {
            this.§[#o§.§?,§(_loc5_);
         }
         if(_loc6_ && dataModel.§[h§.§"!S§.length == 0)
         {
            this.§[#o§.§?,§(_loc6_);
         }
         if(_loc7_ && dataModel.§[h§.§`!6§.length == 0)
         {
            this.§[#o§.§?,§(_loc7_);
         }
         if(_loc3_)
         {
            this.§9h§ = false;
            if(this.§>$9§ == "")
            {
               this.§>$9§ = "ExtraBird";
            }
            this.§6#o§(true,this.§>$9§);
            return;
         }
         var _loc8_:int = 0;
         for each(_loc9_ in dataModel.§[h§.shops)
         {
            if(_loc10_ = this.§[#o§.getItemByName("Button_Shop_Selection_" + _loc9_.id) as §1"r§)
            {
               _loc10_.x = _loc8_ * (_loc10_.width + 15);
               _loc8_++;
            }
         }
         this.§["d§();
         this.§[#o§.x = AngryBirdsBase.screenWidth / 2 - this.§[#o§.width / 2;
         dataModel.§[h§.removeEventListener(Event.COMPLETE,this.§@$1§);
      }
      
      private function §["d§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§1"r§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Object = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc1_:int = 0;
         if(!this.§[!w§)
         {
            this.§[!w§ = new Dictionary();
         }
         §=#o§(AngryBirdsBase.singleton.dataModel).§`![§ = false;
         §=#o§(AngryBirdsBase.singleton.dataModel).§[!§ = false;
         §=#o§(AngryBirdsBase.singleton.dataModel).§^^§ = false;
         for each(_loc2_ in dataModel.§[h§.shops)
         {
            _loc3_ = this.§[#o§.getItemByName("Button_Shop_Selection_" + _loc2_.id) as §1"r§;
            if(_loc3_)
            {
               _loc4_ = false;
               _loc5_ = false;
               switch(_loc2_.id)
               {
                  case §<M§.§7"y§:
                     _loc3_.setVisibility(dataModel.§[h§.§<#o§.length > 0);
                     if(_loc4_ = this.§=#§(dataModel.§[h§.§<#o§,false))
                     {
                        §=#o§(AngryBirdsBase.singleton.dataModel).§[!§ = true;
                     }
                     _loc5_ = this.§^#§(dataModel.§[h§.§<#o§);
                     break;
                  case §<M§.§1$-§:
                     _loc3_.setVisibility(dataModel.§[h§.slingshots.length > 0);
                     if(_loc4_ = this.§=#§(dataModel.§[h§.slingshots,true))
                     {
                        §=#o§(AngryBirdsBase.singleton.dataModel).§`![§ = true;
                     }
                     _loc5_ = this.§^#§(dataModel.§[h§.slingshots);
                     break;
                  case §<M§.§7H§:
                     _loc3_.setVisibility(dataModel.§[h§.§"!S§.length > 0);
                     if(_loc4_ = this.§=#§(dataModel.§[h§.§"!S§,false))
                     {
                        §=#o§(AngryBirdsBase.singleton.dataModel).§[!§ = true;
                     }
                     _loc5_ = this.§^#§(dataModel.§[h§.§"!S§);
                     break;
                  case §<M§.§1$0§:
                     _loc3_.setVisibility(dataModel.§[h§.§`!6§.length > 0);
                     if(_loc4_ = this.§=#§(dataModel.§[h§.§`!6§,false))
                     {
                        §=#o§(AngryBirdsBase.singleton.dataModel).§^^§ = true;
                     }
                     _loc5_ = this.§^#§(dataModel.§[h§.§`!6§);
               }
               _loc3_.mClip.title.text = _loc2_.name;
               if(_loc5_)
               {
                  if(!this.§[!w§[_loc2_.id] || !this.§[!w§[_loc2_.id].newIconAdded)
                  {
                     (_loc8_ = new (_loc7_ = §[a§.§8#k§("Tag_New_Big"))()).name = "Tag_New_Big";
                     _loc3_.mClip.addChild(_loc8_);
                     (_loc6_ = !!this.§[!w§[_loc2_.id] ? this.§[!w§[_loc2_.id] : new Object()).newIconAdded = true;
                     this.§[!w§[_loc2_.id] = _loc6_;
                  }
               }
               else
               {
                  if(_loc9_ = _loc3_.mClip.getChildByName("Tag_New_Big") as MovieClip)
                  {
                     _loc3_.mClip.removeChild(_loc9_);
                  }
                  if(this.§[!w§[_loc2_.id] && this.§[!w§[_loc2_.id].newIconAdded)
                  {
                     this.§[!w§[_loc2_.id].newIconAdded = false;
                  }
               }
               if(_loc4_)
               {
                  if(!this.§[!w§[_loc2_.id] || !this.§[!w§[_loc2_.id].saleIconAdded)
                  {
                     if(_loc5_)
                     {
                        (_loc8_ = new (_loc7_ = §[a§.§8#k§("Tag_Sale_Big_right_side"))()).x = (_loc3_.width >> 1) + 5;
                     }
                     else
                     {
                        _loc8_ = new (_loc7_ = §[a§.§8#k§("Tag_Sale_Big"))();
                     }
                     _loc8_.name = "Tag_Sale_Big";
                     _loc3_.mClip.addChild(_loc8_);
                     (_loc6_ = !!this.§[!w§[_loc2_.id] ? this.§[!w§[_loc2_.id] : new Object()).saleIconAdded = true;
                     this.§[!w§[_loc2_.id] = _loc6_;
                  }
               }
               else
               {
                  if(_loc9_ = _loc3_.mClip.getChildByName("Tag_Sale_Big") as MovieClip)
                  {
                     _loc3_.mClip.removeChild(_loc9_);
                  }
                  if(this.§[!w§[_loc2_.id] && this.§[!w§[_loc2_.id].saleIconAdded)
                  {
                     this.§[!w§[_loc2_.id].saleIconAdded = false;
                  }
               }
            }
            _loc1_++;
         }
         (§]$?§.§;u§ as §@z§).§!"B§();
      }
      
      private function §^#§(param1:Vector.<§2_§>) : Boolean
      {
         var _loc2_:§2_§ = null;
         for each(_loc2_ in param1)
         {
            if(this.§;#r§(_loc2_.id))
            {
               return true;
            }
         }
         return false;
      }
      
      private function §;#r§(param1:String) : Boolean
      {
         var _loc2_:int = §=#o§(AngryBirdsBase.singleton.dataModel).§%#x§.indexOf(param1);
         var _loc3_:* = §=#o§(AngryBirdsBase.singleton.dataModel).§%#x§.indexOf(param1) > -1;
         if(!_loc3_)
         {
            _loc3_ = §=#o§(AngryBirdsBase.singleton.dataModel).§45§.indexOf(param1) > -1;
         }
         return _loc3_;
      }
      
      private function §=#§(param1:Vector.<§2_§>, param2:Boolean) : Boolean
      {
         var _loc3_:§2_§ = null;
         for each(_loc3_ in param1)
         {
            if(!(param2 && §]#0§.§+!,§.§,#k§(_loc3_.id) > 0 && !§<!N§.§]# §))
            {
               if(_loc3_.isOnSale)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function §=$A§(param1:Vector.<§2_§>) : Boolean
      {
         var _loc2_:§2_§ = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§2"f§)
            {
               return true;
            }
         }
         return false;
      }
      
      private function §3!%§(param1:Vector.<§2_§>) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         _loc2_ = param1.length;
         _loc3_ = this.§1"I§.mClip.getChildByName("TabsHolder") as MovieClip;
         var _loc4_:Class;
         _loc6_ = (_loc5_ = new (_loc4_ = §[a§.§8#k§("slingshotTab"))()).width >> 1;
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
         this.§6$&§(param1);
      }
      
      private function §6$&§(param1:Vector.<§2_§>) : int
      {
         var _loc3_:§2_§ = null;
         var _loc4_:§3!B§ = null;
         var _loc5_:§7#+§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            if(_loc4_ = §[@§.§[#P§(_loc3_.id))
            {
               _loc5_ = this.§,#Y§(this.§!#v§(_loc3_.id,param1),"Icon_Slingshot_" + _loc3_.id,"SlingshopContent" + _loc3_.id,_loc4_.description,_loc4_.§"l§,_loc2_);
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      private function §6!,§(param1:Vector.<§2_§>) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Class = null;
         var _loc9_:MovieClip = null;
         var _loc2_:Number = this.§7!,§.mClip.width;
         var _loc3_:int = param1.length;
         var _loc4_:MovieClip = this.§7!,§.mClip.getChildByName("TabsHolder") as MovieClip;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = _loc2_ * (_loc6_ / _loc3_) + _loc2_ / _loc3_ * 0.5;
            _loc8_ = §[a§.§8#k§("powerupTab");
            this.§;'§ = new _loc8_();
            this.§;'§.x = _loc6_ * 118;
            this.§;'§.y = 12;
            this.§;'§.name = "TabBranded_" + _loc6_;
            this.§;'§.visible = false;
            _loc4_.addChild(this.§;'§);
            _loc4_.x = 40;
            if(!this.§7!,§.mClip.contains(_loc4_))
            {
               this.§7!,§.mClip.addChild(_loc4_);
            }
            (_loc9_ = new MovieClip()).graphics.beginFill(16777215,0);
            _loc9_.graphics.drawRect(0,0,this.§7!,§.mClip.width,this.§7!,§.mClip.height);
            _loc9_.graphics.endFill();
            _loc9_.visible = false;
            _loc9_.name = "BrandedTabContainer_" + _loc6_;
            _loc9_.width = _loc2_;
            _loc9_.y = this.§;'§.y + this.§;'§.height;
            this.§7!,§.mClip.addChildAt(_loc9_,1);
            _loc6_++;
         }
         this.§+!X§(param1);
      }
      
      private function §+!X§(param1:Vector.<§2_§>) : void
      {
         var s:§2_§ = null;
         var powerupDef:§!#;§ = null;
         var isSpecialPowerup:Boolean = false;
         var owned:Boolean = false;
         var validUntil:Date = null;
         var title:String = null;
         var brandedTab:§7#+§ = null;
         var shopItems:Vector.<§2_§> = param1;
         var i:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = shopItems;
         for(; §§hasnext(_loc4_,_loc3_); i++)
         {
            s = §§nextvalue(_loc3_,_loc4_);
            powerupDef = § "T§.§ #m§(s.id);
            isSpecialPowerup = false;
            if(!powerupDef)
            {
               powerupDef = § "T§.§]#%§(s.id);
               if(powerupDef)
               {
                  isSpecialPowerup = true;
               }
            }
            owned = powerupDef && §]#0§.§+!,§.§9n§(powerupDef.§8t§) > 0;
            try
            {
               validUntil = new Date();
               validUntil.time = s.getPricePoint(0).§^!^§;
               title = powerupDef.§"l§;
               if(!isSpecialPowerup)
               {
                  title = "Infinite " + powerupDef.§"l§;
               }
               brandedTab = this.§%"&§(this.§!#v§(s.id,shopItems),s.id + "_Icon","Button_Shop_Branded_" + s.id,powerupDef.§7!6§,title,i,owned,validUntil);
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      private function §%"&§(param1:§2_§, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Date = null) : §7#+§
      {
         var _loc10_:MovieClip;
         var _loc9_:MovieClip;
         (_loc10_ = (_loc9_ = this.§7!,§.mClip.getChildByName("TabsHolder") as MovieClip).getChildByName("TabBranded_" + param6) as MovieClip).visible = true;
         if(param1 == null)
         {
            _loc10_.visible = false;
            return null;
         }
         var _loc11_:§`""§;
         (_loc11_ = new §`""§(param1,param2,param3,_loc10_,param4,param5,1,param7,param8)).addEventListener(§<"f§.§;"n§,this.§3R§);
         _loc11_.addEventListener(§<"f§.§5"n§,this.§'!9§);
         this.§;$8§.push(_loc11_);
         return _loc11_;
      }
      
      private function §,#Y§(param1:§2_§, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false) : §7#+§
      {
         var _loc11_:Class = null;
         var _loc12_:MovieClip = null;
         var _loc13_:Class = null;
         var _loc14_:MovieClip = null;
         var _loc9_:MovieClip;
         var _loc8_:MovieClip;
         (_loc9_ = (_loc8_ = this.§1"I§.mClip.getChildByName("TabsHolder") as MovieClip).getChildByName("TabSlingshot_" + param6) as MovieClip).visible = true;
         if(param1 == null)
         {
            _loc9_.visible = false;
            return null;
         }
         var _loc10_:§<-§;
         (_loc10_ = new §<-§(param1,param2,param3,_loc9_,param4,param5,1,param7)).addEventListener(§<"f§.§;"n§,this.§>"c§);
         _loc10_.addEventListener(§<"f§.§5"n§,this.§'!9§);
         this.§;$8§.push(_loc10_);
         if(this.§;#r§(param1.id))
         {
            (_loc12_ = new (_loc11_ = §[a§.§8#k§("MovieClip_NewTag_TopBar"))()).name = "MovieClip_NewTag_TopBar";
            _loc12_.y = §,#U§;
            _loc9_.addChild(_loc12_);
         }
         else if((_loc12_ = _loc9_.getChildByName("MovieClip_NewTag_TopBar") as MovieClip) && _loc12_.parent)
         {
            _loc12_.parent.removeChild(_loc12_);
         }
         if(param1.isOnSale && (!_loc10_.§#;§() || §<!N§.§]# §))
         {
            (_loc14_ = new (_loc13_ = §[a§.§8#k§("MovieClip_SaleTag_TopBar"))()).name = "Sale";
            _loc14_.y = §,#U§;
            _loc9_.addChild(_loc14_);
         }
         else if((_loc14_ = _loc9_.getChildByName("Sale") as MovieClip) && _loc14_.parent)
         {
            _loc14_.parent.removeChild(_loc14_);
         }
         return _loc10_;
      }
      
      protected function §>"c§(param1:§<"f§) : void
      {
         var _loc2_:§7#+§ = param1.currentTarget as §7#+§;
         if(_loc2_)
         {
            this.§>$9§ = _loc2_.§@" §.id;
            this.§6$C§ = §!!6§;
            this.§8V§(_loc2_,§!!6§);
            § b§.playSound("Shop_Selection",§ b§.§;$5§,0,0.7);
         }
      }
      
      protected function §3R§(param1:§<"f§) : void
      {
         var _loc2_:§7#+§ = param1.currentTarget as §7#+§;
         if(_loc2_)
         {
            this.§>$9§ = _loc2_.§@" §.id;
            this.§6$C§ = §]!j§;
            this.§8V§(_loc2_,§]!j§);
            § b§.playSound("Shop_Selection",§ b§.§;$5§,0,0.7);
         }
      }
      
      private function §]w§(param1:Vector.<§2_§>) : void
      {
         this.§8!N§(param1);
         this.§9#K§(this.§>$9§);
      }
      
      private function §8!N§(param1:Vector.<§2_§>) : void
      {
         this.§;$8§ = [];
         this.§8"H§ = 0;
         this.§5"<§ = this.§=#1§(this.§!#v§(§ "T§.§]",§,param1),"PowerupBundleIcon","ShopContentPowerupBundle","Each pack contains one Super Seed, Sling Scope, King Sling and Birdquake making it the perfect solution to all your piggy problems.");
         this.§2#,§ = this.§=#1§(this.§!#v§(§ "T§.§&!C§.§8t§,param1),"SuperSeedsIcon","ShopContentSuperSeeds","Supersize your bird! Super Seeds turn any bird into a pig-popping giant.");
         this.§"n§ = this.§=#1§(this.§!#v§(§ "T§.§=#x§.§8t§,param1),"KingSlingIcon","ShopContentKingSling","Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!");
         this.§,"3§ = this.§=#1§(this.§!#v§(§ "T§.§4@§.§8t§,param1),"SlingScopeIcon","ShopContentSlingScope","Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!");
         this.§"g§ = this.§=#1§(this.§!#v§(§ "T§.§8"8§.§8t§,param1),"BirdQuakeIcon","ShopContentBirdQuake","Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!");
         this.§-y§ = this.§=#1§(this.§!#v§(§ "T§.§#"9§.§8t§,param1),"BoomboxIcon","ShopContentBoombox","Sling TNT");
         this.WINGMAN = this.§=#1§(this.§!#v§(§ "T§.§7z§.§8t§,param1),"ExtraBirdIcon","ShopContentExtraBird","Call the Wingman to demolish your enemies and impress your friends. Only useable in Tournaments.");
         if(§ "T§.§="E§.§]!^§)
         {
            this.MIGHTY_EAGLE = this.§=#1§(this.§!#v§(§ "T§.§="E§.§8t§,param1),"MightyEagleIcon","ShopContentMightyEagle","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.");
         }
         else
         {
            this.MIGHTY_EAGLE = this.§=#1§(null,"","","");
         }
      }
      
      private function §!#v§(param1:String, param2:Vector.<§2_§>) : §2_§
      {
         var _loc3_:§2_§ = null;
         for each(_loc3_ in param2)
         {
            if(_loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function §=#1§(param1:§2_§, param2:String, param3:String, param4:String) : §7#+§
      {
         var _loc8_:Class = null;
         var _loc9_:MovieClip = null;
         var _loc10_:Class = null;
         var _loc11_:MovieClip = null;
         var _loc5_:MovieClip = §;#'§.mClip.Container_TabbedShopPopup["powerupTab" + this.§8"H§];
         ++this.§8"H§;
         if(param1 == null)
         {
            _loc5_.visible = false;
            return null;
         }
         var _loc6_:String = param2 + "_" + §7!$§.§+!,§.brandedTournamentAssetId;
         if(§[a§.§]$'§(_loc6_))
         {
            param2 = _loc6_;
         }
         var _loc7_:§7#+§ = new §7#+§(param1,param2,param3,_loc5_,param4,4);
         if(this.§;#r§(param1.id))
         {
            (_loc9_ = new (_loc8_ = §[a§.§8#k§("MovieClip_NewTag_TopBar"))()).name = "MovieClip_NewTag_TopBar";
            _loc9_.x = §%!C§;
            _loc9_.y = §,#U§;
            _loc5_.addChild(_loc9_);
         }
         else if((_loc9_ = _loc5_.getChildByName("MovieClip_NewTag_TopBar") as MovieClip) && _loc9_.parent)
         {
            _loc9_.parent.removeChild(_loc9_);
         }
         if(param1.isOnSale)
         {
            (_loc11_ = new (_loc10_ = §[a§.§8#k§("MovieClip_SaleTag_TopBar"))()).name = "MovieClip_SaleTag_TopBar";
            _loc11_.x = §%!C§;
            _loc11_.y = §,#U§;
            _loc5_.addChild(_loc11_);
         }
         else if((_loc11_ = _loc5_.getChildByName("MovieClip_SaleTag_TopBar") as MovieClip) && _loc11_.parent)
         {
            _loc11_.parent.removeChild(_loc11_);
         }
         _loc7_.addEventListener(§<"f§.§;"n§,this.§ !&§);
         _loc7_.addEventListener(§<"f§.§5"n§,this.§'!9§);
         this.§;$8§.push(_loc7_);
         return _loc7_;
      }
      
      private function § !&§(param1:§<"f§) : void
      {
         var _loc2_:§7#+§ = param1.currentTarget as §7#+§;
         if(_loc2_)
         {
            this.§>$9§ = _loc2_.§@" §.id;
            this.§6$C§ = §"#$§;
            this.§8V§(_loc2_,§"#$§);
            § b§.playSound("Shop_Selection",§ b§.§;$5§,0,0.7);
         }
      }
      
      private function §'!9§(param1:§<"f§) : void
      {
         var _loc3_:CoinShopPopup = null;
         var _loc4_:§8#Z§ = null;
         var _loc2_:* = param1.§@" §.currencyID == "IVC";
         if(param1.point)
         {
            this.§##4§ = new Point(param1.point.x,param1.point.y);
         }
         this.§+#m§ = this.§"!1§.§@" §.id;
         if(_loc2_ && (dataModel.§1q§.§#"+§ < param1.pricePoint.price && (isNaN(param1.pricePoint.campaignPrice) || Number(param1.pricePoint.campaignPrice) <= 0) || dataModel.§1q§.§#"+§ < Number(param1.pricePoint.campaignPrice)))
         {
            _loc3_ = new CoinShopPopup(§@#D§.NORMAL,§5R§.TOP,CoinShopPopup.§<!7§);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            return;
         }
         § b§.playSound("Shop_Buy",§ b§.§;$5§);
         this.§-"b§();
         if(_loc2_)
         {
            (_loc4_ = new §8#Z§(param1.§@" §,param1.pricePoint,ID)).addEventListener(§1!>§.§^#b§,this.§>!j§);
            _loc4_.addEventListener(§1!>§.§6#!§,this.§!#h§);
         }
         else
         {
            if(this.§!!P§)
            {
               this.§!!P§.removeEventListeners();
               this.§!!P§ = null;
            }
            this.§!!P§ = new §&!t§(param1.§@" §,param1.pricePoint,§&!t§.§&+§,ID);
            this.§!!P§.addEventListener(§1!>§.§#-§,this.§#"k§);
            this.§!!P§.addEventListener(§1!>§.§6#!§,this.§>!y§);
         }
      }
      
      protected function §>!y§(param1:§1!>§) : void
      {
         this.§1!+§();
         this.§4!0§(param1.errorMessage,param1.§^$6§,param1.errorCode.toString());
         if(this.§!!P§)
         {
            this.§!!P§.removeEventListeners();
            this.§!!P§ = null;
         }
      }
      
      protected function §!#h§(param1:§1!>§) : void
      {
         §]#0§.§+!,§.§@!z§();
         this.§1!+§();
      }
      
      protected function §4!0§(param1:String = null, param2:String = null, param3:String = null) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§@#D§.§,"4§,§5R§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      protected function §#"k§(param1:§1!>§) : void
      {
         var _loc3_:§^!-§ = null;
         §]#0§.§+!,§.addEventListener(§]#0§.§2#Z§,this.§""<§);
         this.§1!+§();
         if(this.§&0§())
         {
            _loc3_ = new §^!-§();
            if(§;#'§)
            {
               switch(this.§6$C§)
               {
                  case §"#$§:
                     §;#'§.mClip.Container_TabbedShopPopup.contentArea.addChild(_loc3_);
                     break;
                  case §]!j§:
                     this.§7!,§.mClip.contentArea.addChild(_loc3_);
                     break;
                  case §!!6§:
                     this.§1"I§.mClip.contentArea.addChild(_loc3_);
               }
               _loc3_.x = this.§##4§.x - 40;
               _loc3_.y = this.§##4§.y + 40;
               this.§##4§ = null;
            }
         }
         var _loc2_:§&!t§ = param1.currentTarget as §&!t§;
         _loc2_.removeEventListener(§1!>§.§#-§,this.§#"k§);
         _loc2_.removeEventListener(§1!>§.§6#!§,this.§>!y§);
         §<"G§.trackPageView(this,§<"G§.§4"<§);
         §<"G§.trackTransaction(_loc2_.orderId,§&v§,_loc2_.§@" §.id,_loc2_.§@" §.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         §<"G§.§+#L§(_loc2_.§@" §.id,this.§!!P§.pricePoint.totalQuantity);
         §<"G§.trackPageView(this,§<"G§.§4"<§);
         if(_loc2_.pricePoint)
         {
            §<"G§.trackTransaction(_loc2_.orderId,§&v§,_loc2_.§@" §.id,_loc2_.§@" §.id,_loc2_.pricePoint.price + " x",_loc2_.pricePoint.price,1,0);
         }
         if(this.§!!P§)
         {
            this.§!!P§.removeEventListeners();
            this.§!!P§ = null;
         }
         _loc2_.removeEventListeners();
      }
      
      private function §&0§() : Boolean
      {
         return this.§##4§ && this.§+#m§ == this.§"!1§.§@" §.id;
      }
      
      private function §""<§(param1:Event) : void
      {
         var _loc2_:§7#+§ = null;
         §]#0§.§+!,§.removeEventListener(§]#0§.§2#Z§,this.§""<§);
         for each(_loc2_ in this.§;$8§)
         {
            _loc2_.refreshItemCount();
         }
         this.§1!+§();
         this.§["d§();
      }
      
      private function §-"b§() : void
      {
         §;#'§.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = false;
         §;#'§.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = false;
         §;#'§.mClip.Container_TabbedShopPopup.contentArea.alpha = 0.5;
         this.§7!,§.mClip.contentArea.mouseEnabled = false;
         this.§7!,§.mClip.contentArea.mouseChildren = false;
         this.§7!,§.mClip.contentArea.alpha = 0.5;
         this.§1"I§.mClip.contentArea.mouseEnabled = false;
         this.§1"I§.mClip.contentArea.mouseChildren = false;
         this.§1"I§.mClip.contentArea.alpha = 0.5;
         this.§-#j§ = new Timer(2000,1);
         this.§-#j§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§]"w§,false,0,true);
         this.§-#j§.start();
      }
      
      private function §1!+§() : void
      {
         if(§;#'§ && §;#'§.mClip && §;#'§.mClip.Container_TabbedShopPopup && §;#'§.mClip.Container_TabbedShopPopup.contentArea)
         {
            §;#'§.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = true;
            §;#'§.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = true;
            §;#'§.mClip.Container_TabbedShopPopup.contentArea.alpha = 1;
         }
         if(this.§7!,§ && this.§7!,§.mClip && this.§7!,§.mClip.contentArea)
         {
            this.§7!,§.mClip.contentArea.mouseEnabled = true;
            this.§7!,§.mClip.contentArea.mouseChildren = true;
            this.§7!,§.mClip.contentArea.alpha = 1;
         }
         if(this.§1"I§ && this.§1"I§.mClip && this.§1"I§.mClip.contentArea)
         {
            this.§1"I§.mClip.contentArea.mouseEnabled = true;
            this.§1"I§.mClip.contentArea.mouseChildren = true;
            this.§1"I§.mClip.contentArea.alpha = 1;
         }
      }
      
      private function §>!j§(param1:§1!>§) : void
      {
         var _loc3_:§^!-§ = null;
         var _loc4_:§7#+§ = null;
         if(this.§&0§())
         {
            _loc3_ = new §^!-§();
            if(§;#'§)
            {
               switch(this.§6$C§)
               {
                  case §"#$§:
                     §;#'§.mClip.Container_TabbedShopPopup.contentArea.addChild(_loc3_);
                     break;
                  case §!!6§:
                     this.§1"I§.mClip.contentArea.addChild(_loc3_);
                     break;
                  case §]!j§:
                     this.§7!,§.mClip.contentArea.addChild(_loc3_);
               }
               _loc3_.x = this.§##4§.x - 40;
               _loc3_.y = this.§##4§.y + 40;
               this.§##4§ = null;
            }
         }
         var _loc2_:§8#Z§ = param1.currentTarget as §8#Z§;
         _loc2_.removeEventListener(§1!>§.§^#b§,this.§>!j§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
            for each(_loc4_ in this.§;$8§)
            {
               _loc4_.refreshItemCount();
            }
         }
         if(§;#'§)
         {
            this.§1!+§();
         }
         this.§["d§();
         §<"G§.trackPageView(this,§<"G§.§4"<§);
         §<"G§.trackTransaction(_loc2_.orderId,§&v§,_loc2_.§@" §.id,_loc2_.§@" §.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
      }
      
      private function §9#K§(param1:String, param2:String = "GENERAL") : void
      {
         var _loc3_:§7#+§ = this.§,#z§(param1);
         if(!_loc3_)
         {
            _loc3_ = this.§,#z§("GoldenSling");
         }
         if(_loc3_)
         {
            this.§8V§(_loc3_,param2);
         }
      }
      
      private function §,#z§(param1:String) : §7#+§
      {
         var _loc2_:§7#+§ = null;
         for each(_loc2_ in this.§;$8§)
         {
            if(_loc2_.§@" §.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §8V§(param1:§7#+§, param2:String = "GENERAL") : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:§7#+§ = null;
         if(param2 == §"#$§)
         {
            _loc3_ = §;#'§.mClip.Container_TabbedShopPopup.contentArea;
         }
         else if(param2 == §]!j§)
         {
            _loc3_ = this.§7!,§.mClip.contentArea;
         }
         else if(param2 == §!!6§)
         {
            _loc3_ = this.§1"I§.mClip.contentArea;
         }
         this.§[!;§();
         if(this.§"!1§)
         {
            if(_loc3_.contains(this.§"!1§.§>$§))
            {
               _loc3_.removeChild(this.§"!1§.§>$§);
            }
         }
         for each(_loc4_ in this.§;$8§)
         {
            _loc4_.§]6§();
         }
         param1.select();
         this.§"!1§ = param1;
         _loc3_.addChild(param1.§>$§);
         §<"G§.trackPageView(this,param1.§@" §.id);
         §7"U§.§5e§(param1.§@" §);
      }
      
      private function §[!;§() : void
      {
         this.§7!,§.mClip.contentArea.removeChildren();
         §;#'§.mClip.Container_TabbedShopPopup.contentArea.removeChildren();
         this.§1"I§.mClip.contentArea.removeChildren();
      }
      
      public function get walletContainer() : Sprite
      {
         return §;#'§.mClip.Container_Shop_Background;
      }
      
      public function §7=§(param1:Wallet) : void
      {
         param1.removeEventListener(Wallet.§7#P§,this.§"$9§);
         param1.dispose();
         param1 = null;
      }
      
      public function get §[!a§() : Wallet
      {
         return this.§"#W§;
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function §0!q§() : String
      {
         return §<"G§.§7"'§;
      }
      
      public function §4!G§() : String
      {
         return §<"G§.§5[§;
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(!this.§;$8§ || this.§;$8§.length == 0)
         {
            this.§08§();
         }
         else
         {
            this.§0$;§();
         }
         §<"G§.trackPageView(this);
         §<"G§.§ "0§();
         var _loc2_:Wallet = new Wallet(this);
         this.§6"h§(_loc2_);
         _loc2_.addEventListener(Wallet.§7#P§,this.§"$9§);
      }
      
      private function §0$;§(param1:Event = null) : void
      {
         if(this.§>$9§ && this.§6$C§)
         {
            switch(this.§6$C§)
            {
               case §"#$§:
                  this.§6#o§(true,this.§>$9§);
                  break;
               case §!!6§:
                  this.§<$6§(true,this.§>$9§);
                  break;
               case §]!j§:
                  this.§ !r§(true,this.§>$9§);
            }
         }
      }
      
      private function §,!<§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§7#+§ = null;
         if(this.§"#W§)
         {
            this.§7=§(this.§"#W§);
         }
         if(this.§1![§)
         {
            (this.§1![§ as §throw§).removeEventListener(§>#!§.§@K§,this.§,!,§);
            (this.§1![§ as §throw§).removeEventListener(§>#!§.§<w§,this.§@"j§);
            (this.§1![§ as §throw§).removeEventListener(§>#!§.§0#J§,this.§7F§);
            this.§1![§ = null;
         }
         dataModel.§[h§.removeEventListener(Event.COMPLETE,this.§@$1§);
         §]#0§.§+!,§.removeEventListener(Event.CHANGE,this.§-$B§);
         §7!b§.§&#&§("handleUserCancelledOrder",this.§^"_§);
         §7!b§.§&#&§("purchaseFailed",this.§4##§);
         if(this.§!!P§ && this.§!!P§.§ !Y§)
         {
            this.§!!P§.§ !Y§ = false;
            §]#0§.§+!,§.§@!z§();
         }
         if(this.§!!P§)
         {
            this.§!!P§.removeEventListeners();
         }
         if(this.§;$8§)
         {
            for each(_loc3_ in this.§;$8§)
            {
               _loc3_.dispose();
            }
         }
         this.§[!w§ = null;
         this.§`#0§.removeEventListener(§^!r§.§0!A§,this.§3!=§);
         this.§`#0§ = null;
         super.hide(param1,param2);
      }
      
      public function §6#n§() : String
      {
         return this.§0!q§() + "-" + this.§4!G§();
      }
      
      protected function §-$B§(param1:Event) : void
      {
         var _loc2_:§7#+§ = null;
         for each(_loc2_ in this.§;$8§)
         {
            _loc2_.refreshItemCount();
         }
      }
      
      private function §2"=§(param1:Boolean) : void
      {
         if(!§;#'§)
         {
            return;
         }
         §;#'§.mClip.AngryBirdLoader.visible = param1;
      }
      
      public function §&# §() : Array
      {
         var _loc2_:§7#+§ = null;
         var _loc1_:Array = new Array();
         for each(_loc2_ in this.§;$8§)
         {
            if(_loc2_ is §<-§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      private function §]v§() : void
      {
         this.§1![§.initialize();
         this.§1![§.redeem();
      }
      
      private function §]"w§(param1:TimerEvent) : void
      {
         if(this.§-#j§)
         {
            this.§-#j§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§]"w§);
            this.§-#j§ = null;
            this.§1!+§();
         }
      }
   }
}
