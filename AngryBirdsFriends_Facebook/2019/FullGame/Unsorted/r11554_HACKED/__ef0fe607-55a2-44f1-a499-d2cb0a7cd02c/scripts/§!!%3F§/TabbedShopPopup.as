package §!!?§
{
   import § !D§.§3§;
   import § O§.§6f§;
   import § O§.§7!S§;
   import §!§.§="D§;
   import §%#v§.§0"j§;
   import §%4§.CoinShopPopup;
   import §'#g§.§&^§;
   import §'#g§.§-$§;
   import §'#g§.§1"i§;
   import §'#g§.§2"W§;
   import §'#g§.§2#d§;
   import §+"u§.§^"C§;
   import §+#B§.§+$A§;
   import §+#B§.§0"+§;
   import §+#B§.§5"w§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §-#R§.§0!w§;
   import §-#R§.§4"p§;
   import §4!n§.§'!,§;
   import §5!$§.§"S§;
   import §5!$§.§<c§;
   import §5"c§.§!!o§;
   import §5"c§.§&#R§;
   import §5"c§.§8K§;
   import §7#j§.§@"F§;
   import §8"b§.§&!b§;
   import §;$5§.§9§;
   import §;$5§.AbstractPopup;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §?!N§.§&#^§;
   import §?!N§.WarningPopup;
   import §?§.§<$?§;
   import §]"'§.§#$D§;
   import §]"'§.§@"%§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class TabbedShopPopup extends AbstractPopup implements §0"+§, §["b§, §="D§
   {
      
      public static const ID:String = "TabbedShopPopup";
      
      private static const §2!'§:int = -35;
      
      private static const §>W§:int = -15;
      
      private static const §[!_§:String = "In-app Shop";
      
      public static const §3"1§:String = "uiSoundsChannel";
      
      private static const §[#S§:int = 8;
      
      public static const §@$<§:String = "SLINGSHOT";
      
      public static const §`!Q§:String = "GENERAL";
      
      public static const §4Y§:String = "SPECIAL";
      
      private static var §&#S§:Boolean;
      
      public static const §2!m§:String = "SlingshotFirstTab";
       
      
      public var §?3§:Wallet;
      
      private var §`$4§:§&#+§;
      
      private var §5# §:§&#+§;
      
      private var §#"Z§:§&#+§;
      
      private var §;%§:§&#+§;
      
      private var § !^§:§&#+§;
      
      private var §#i§:§&#+§;
      
      private var WINGMAN:§&#+§;
      
      private var MIGHTY_EAGLE:§&#+§;
      
      private var §>#S§:Array;
      
      private var §'!W§:§&#+§;
      
      private var §[#s§:String = "";
      
      private var §8#k§:String;
      
      private var §8#x§:Point;
      
      private var §;#F§:§<c§;
      
      private var §-R§:§<c§;
      
      private var §6"V§:§<c§;
      
      private var §^$6§:§<c§;
      
      private var §"#F§:§<c§;
      
      private var §6!2§:MovieClip;
      
      private var § do§:MovieClip;
      
      private var §5C§:String;
      
      private var §>$&§:§&^§;
      
      private var §`#h§:Timer;
      
      private var §@# §:§&#^§;
      
      private var §&3§:Boolean = true;
      
      private var §&"§:String = "ShopTabsInitialzed";
      
      private var §3#e§:§-$§;
      
      private var §5!i§:Dictionary;
      
      private var §!$,§:Timer;
      
      private var §#3§:Boolean;
      
      private var §<#E§:§<$?§;
      
      private var §8!u§:int;
      
      public function TabbedShopPopup(param1:int, param2:int, param3:String = "", param4:String = "GENERAL", param5:Boolean = false)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupView_TabbedShop[0],ID);
         this.§5C§ = param4;
         this.§8#k§ = param3;
         this.§#3§ = param5;
         addEventListener(this.§&"§,this.§5"]§);
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      override protected function init() : void
      {
         var _loc2_:MovieClip = null;
         super.init();
         this.§2#p§(true);
         this.§;#F§ = §8#Y§.getItemByName("Container_Shop_Branded") as §<c§;
         this.§-R§ = §8#Y§.getItemByName("Container_Shop_Slingshots") as §<c§;
         this.§6"V§ = §8#Y§.getItemByName("Container_TabbedShopPopup") as §<c§;
         this.§^$6§ = §8#Y§.getItemByName("Container_Shop_Selection_Buttons") as §<c§;
         this.§"#F§ = §8#Y§.getItemByName("Container_Shop_Selection_Extras") as §<c§;
         §8#Y§.mClip.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§'#+§);
         §@"F§.addCallback("handleUserCancelledOrder",this.§@T§);
         §@"F§.addCallback("purchaseFailed",this.§>'§);
         if(!§&#S§)
         {
            §&#S§ = true;
         }
         §#$D§.§?q§.addEventListener(Event.CHANGE,this.§8!g§);
         var _loc1_:int = 0;
         while(_loc1_ < §[#S§)
         {
            _loc2_ = §8#Y§.mClip.Container_TabbedShopPopup["powerupTab" + _loc1_];
            if(_loc2_)
            {
               _loc2_.gotoAndStop("Normal");
            }
            _loc1_++;
         }
         this.§!$C§();
         this.§3#e§ = new §2#d§();
         (this.§3#e§ as §2#d§).addEventListener(§!!o§.§?O§,this.§^[§);
         (this.§3#e§ as §2#d§).addEventListener(§!!o§.§[!]§,this.§7!>§);
         (this.§3#e§ as §2#d§).addEventListener(§!!o§.§"#X§,this.§'!s§);
         if(this.§8#k§ == "")
         {
            §+$A§.§@"i§().§2K§("SHOP_MAIN",this.§#3§);
         }
         this.§<#E§ = §<$?§.§?q§;
         this.§<#E§.addEventListener(§<$?§.§ !O§,this.§;8§);
      }
      
      private function §;8§(param1:Event) : void
      {
         var _loc2_:§&#+§ = null;
         this.§2#p§(true);
         for each(_loc2_ in this.§>#S§)
         {
            _loc2_.dispose();
         }
         this.§!$C§();
      }
      
      protected function §'!s§(param1:§!!o§) : void
      {
      }
      
      protected function §7!>§(param1:§!!o§) : void
      {
      }
      
      protected function §^[§(param1:§!!o§) : void
      {
         §5"w§.§ #G§("FacebookGiftCard",param1.quantity);
      }
      
      private function §>'§() : void
      {
      }
      
      private function §@T§() : void
      {
      }
      
      private function §!$C§() : void
      {
         if(!dataModel.§,H§.§3$+§)
         {
            §#$D§.§?q§.§>!'§();
            dataModel.§,H§.addEventListener(Event.COMPLETE,this.§9"-§);
         }
         else
         {
            this.§9"-§(null,dataModel.§,H§.§3$+§);
         }
      }
      
      protected function §!!g§(param1:Event) : void
      {
      }
      
      protected function §89§(param1:Event) : void
      {
         var _loc3_:§&#R§ = null;
         var _loc2_:§,!K§ = this.§1#O§("BrandedShopBundle",dataModel.§,H§.§,#!§);
         if(_loc2_)
         {
            _loc3_ = new §&#R§(§&#R§.§+!a§,TabbedShopPopup.§4Y§,false,false,_loc2_,_loc2_.getPricePoint(0));
            this.§ "Y§(_loc3_);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var _loc4_:CoinShopPopup = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHOP_BRANDED":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§@!&§(true);
               §+$A§.§@"i§().§2K§("SHOP_BRANDED");
               break;
            case "SHOP_SLINGSHOTS":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§9"B§(true);
               §+$A§.§@"i§().§2K§("SHOP_SLINGSHOTS");
               break;
            case "SHOP_POWERUPS":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§=#>§(true);
               §+$A§.§@"i§().§2K§("SHOP_POWERUPS");
               break;
            case "SHOP_VC":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               _loc4_ = new CoinShopPopup(§%#§.NORMAL,§9#5§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
               break;
            case "BACK":
               §[#%§.playSound("Menu_Back",§[#%§.§-"I§);
               this.§;!x§(true);
               break;
            case "INFO":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§&!1§();
               break;
            case "REDEEM":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§8N§();
               break;
            case "EARNCOINS":
               §[#%§.playSound("Menu_Confirm");
               AngryBirdsBase.singleton.exitFullScreen();
               §@"F§.§^$#§("earnCredits");
         }
      }
      
      private function §&!1§() : void
      {
         var _loc1_:§4"p§ = §0!w§.§7$§(this.§8#k§);
         var _loc2_:String = "";
         var _loc3_:String = "";
         if(_loc1_)
         {
            _loc2_ = _loc1_.§[L§;
            _loc3_ = _loc1_.description;
         }
         if(!_loc1_)
         {
            if(this.§8#k§ == §0!w§.§1J§.§]'§)
            {
               _loc2_ = §0!w§.§1J§.§[L§;
               _loc3_ = §0!w§.§1J§.description;
            }
            switch(this.§5C§)
            {
               case §@$<§:
                  _loc2_ = "Slingshots";
                  _loc3_ = "Slingshots are permanent items that can be used in any level and changed between shots. Buy once, keep forever!";
                  break;
               case §4Y§:
                  _loc2_ = "Specials";
                  _loc3_ = "These items are only available for a limited time!";
            }
         }
         this.§@# § = new §&#^§(§8#Y§.mClip,_loc2_,_loc3_,§%#§.§3t§,§9#5§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§@# §);
      }
      
      private function §;!x§(param1:Boolean) : void
      {
         this.§8#k§ = "";
         this.§^$6§.setVisibility(param1);
         this.§"#F§.setVisibility(this.§^$6§.visible);
         this.§;#F§.setVisibility(!param1);
         this.§-R§.setVisibility(!param1);
         this.§6"V§.setVisibility(!param1);
         if(param1)
         {
            this.§!#5§();
         }
      }
      
      private function §@!&§(param1:Boolean, param2:String = "") : void
      {
         if(param2 == "")
         {
            this.§8#k§ = this.§&#C§(0);
         }
         this.§5C§ = §4Y§;
         this.§^#M§(this.§8#k§,§4Y§);
         this.§^$6§.setVisibility(!param1);
         this.§"#F§.setVisibility(this.§^$6§.visible);
         this.§;#F§.setVisibility(param1);
         this.§-R§.setVisibility(!param1);
         this.§6"V§.setVisibility(!param1);
      }
      
      private function §&#C§(param1:int) : String
      {
         var _loc4_:§&#+§ = null;
         var _loc2_:Array = [];
         var _loc3_:String = "";
         for each(_loc4_ in this.§>#S§)
         {
            if(_loc4_ is §'M§)
            {
               _loc2_.push(_loc4_);
            }
         }
         if(_loc2_.length > param1 && _loc2_[param1])
         {
            _loc3_ = §'M§(_loc2_[param1]).§4">§.id;
         }
         return _loc3_;
      }
      
      private function §9"B§(param1:Boolean, param2:String = "") : void
      {
         if(param2 == "")
         {
            param2 = "GoldenSling";
         }
         else if(param2 == §2!m§)
         {
            if(this.§@!s§().length > 0)
            {
               param2 = (this.§@!s§()[0] as §3g§).§4">§.id;
            }
         }
         this.§8#k§ = param2;
         this.§5C§ = §@$<§;
         this.§^#M§(this.§8#k§,§@$<§);
         this.§^$6§.setVisibility(!param1);
         this.§"#F§.setVisibility(this.§^$6§.visible);
         this.§;#F§.setVisibility(!param1);
         this.§-R§.setVisibility(param1);
         this.§6"V§.setVisibility(!param1);
      }
      
      private function §=#>§(param1:Boolean, param2:String = "ExtraBird") : void
      {
         this.§8#k§ = param2;
         this.§5C§ = §`!Q§;
         this.§^#M§(this.§8#k§);
         this.§^$6§.setVisibility(!param1);
         this.§"#F§.setVisibility(this.§^$6§.visible);
         this.§;#F§.setVisibility(!param1);
         this.§-R§.setVisibility(!param1);
         this.§6"V§.setVisibility(param1);
         this.§6"V§.getItemByName("Button_Back").setVisibility(this.§&3§);
      }
      
      private function §9"-§(param1:Event = null, param2:Vector.<§,!K§> = null) : void
      {
         var _loc9_:Object = null;
         var _loc10_:§"S§ = null;
         this.§2#p§(false);
         if(param1)
         {
            param2 = dataModel.§,H§.§3$+§;
         }
         this.§,#K§(param2);
         var _loc3_:Boolean = true;
         if(dataModel.§,H§.§,#!§ && dataModel.§,H§.§,#!§.length > 0)
         {
            this.§2#0§(dataModel.§,H§.§,#!§);
            _loc3_ = false;
         }
         if(dataModel.§,H§.slingshots && dataModel.§,H§.slingshots.length > 0)
         {
            this.§&_§(dataModel.§,H§.slingshots);
            _loc3_ = false;
         }
         dispatchEvent(new Event(this.§&"§));
         var _loc4_:§"S§ = this.§^$6§.getItemByName("Button_Shop_Selection_" + §2"W§.§!$9§) as §"S§;
         var _loc5_:§"S§ = this.§^$6§.getItemByName("Button_Shop_Selection_" + §2"W§.§?$;§) as §"S§;
         var _loc6_:§"S§ = this.§^$6§.getItemByName("Button_Shop_Selection_" + §2"W§.§!!x§) as §"S§;
         var _loc7_:§"S§ = this.§^$6§.getItemByName("Button_Shop_Selection_" + §2"W§.§8!^§) as §"S§;
         if(_loc4_ && dataModel.§,H§.§,#!§.length == 0)
         {
            this.§^$6§.§`!j§(_loc4_);
         }
         if(_loc5_ && dataModel.§,H§.slingshots.length == 0)
         {
            this.§^$6§.§`!j§(_loc5_);
         }
         if(_loc6_ && dataModel.§,H§.§3$+§.length == 0)
         {
            this.§^$6§.§`!j§(_loc6_);
         }
         if(_loc7_ && dataModel.§,H§.§4"c§.length == 0)
         {
            this.§^$6§.§`!j§(_loc7_);
         }
         if(_loc3_)
         {
            this.§&3§ = false;
            if(this.§8#k§ == "")
            {
               this.§8#k§ = "ExtraBird";
            }
            this.§=#>§(true,this.§8#k§);
            return;
         }
         var _loc8_:int = 0;
         for each(_loc9_ in dataModel.§,H§.shops)
         {
            if(_loc10_ = this.§^$6§.getItemByName("Button_Shop_Selection_" + _loc9_.id) as §"S§)
            {
               _loc10_.x = _loc8_ * (_loc10_.width + 15);
               _loc8_++;
            }
         }
         this.§!#5§();
         this.§^$6§.x = AngryBirdsBase.screenWidth / 2 - this.§^$6§.width / 2;
         dataModel.§,H§.removeEventListener(Event.COMPLETE,this.§9"-§);
      }
      
      private function §!#5§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§"S§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Object = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         if(!this.§5!i§)
         {
            this.§5!i§ = new Dictionary();
         }
         §@"%§(AngryBirdsBase.singleton.dataModel).§=q§ = false;
         §@"%§(AngryBirdsBase.singleton.dataModel).§&e§ = false;
         §@"%§(AngryBirdsBase.singleton.dataModel).§1#j§ = false;
         for each(_loc2_ in dataModel.§,H§.shops)
         {
            _loc3_ = this.§^$6§.getItemByName("Button_Shop_Selection_" + _loc2_.id) as §"S§;
            if(_loc3_)
            {
               _loc4_ = false;
               _loc5_ = false;
               switch(_loc2_.id)
               {
                  case §2"W§.§!$9§:
                     _loc3_.setVisibility(dataModel.§,H§.§,#!§.length > 0);
                     if(_loc4_ = this.§0!X§(dataModel.§,H§.§,#!§,false))
                     {
                        §@"%§(AngryBirdsBase.singleton.dataModel).§&e§ = true;
                     }
                     _loc5_ = this.§?"D§(dataModel.§,H§.§,#!§);
                     break;
                  case §2"W§.§?$;§:
                     _loc3_.setVisibility(dataModel.§,H§.slingshots.length > 0);
                     if(_loc4_ = this.§0!X§(dataModel.§,H§.slingshots,true))
                     {
                        §@"%§(AngryBirdsBase.singleton.dataModel).§=q§ = true;
                     }
                     _loc5_ = this.§?"D§(dataModel.§,H§.slingshots);
                     break;
                  case §2"W§.§!!x§:
                     _loc3_.setVisibility(dataModel.§,H§.§3$+§.length > 0);
                     if(_loc4_ = this.§0!X§(dataModel.§,H§.§3$+§,false))
                     {
                        §@"%§(AngryBirdsBase.singleton.dataModel).§&e§ = true;
                     }
                     _loc5_ = this.§?"D§(dataModel.§,H§.§3$+§);
                     break;
                  case §2"W§.§8!^§:
                     _loc3_.setVisibility(dataModel.§,H§.§4"c§.length > 0);
                     if(_loc4_ = this.§0!X§(dataModel.§,H§.§4"c§,false))
                     {
                        §@"%§(AngryBirdsBase.singleton.dataModel).§1#j§ = true;
                     }
                     _loc5_ = this.§?"D§(dataModel.§,H§.§4"c§);
               }
               _loc3_.mClip.title.text = _loc2_.name;
               if(_loc5_)
               {
                  if(!this.§5!i§[_loc2_.id] || !this.§5!i§[_loc2_.id].newIconAdded)
                  {
                     (_loc8_ = new §2"O§.§`>§("Tag_New_Big")()).name = "Tag_New_Big";
                     _loc3_.mClip.addChild(_loc8_);
                     (_loc6_ = !!this.§5!i§[_loc2_.id] ? this.§5!i§[_loc2_.id] : new Object()).newIconAdded = true;
                     this.§5!i§[_loc2_.id] = _loc6_;
                  }
               }
               else
               {
                  if(_loc9_ = _loc3_.mClip.getChildByName("Tag_New_Big") as MovieClip)
                  {
                     _loc3_.mClip.removeChild(_loc9_);
                  }
                  if(this.§5!i§[_loc2_.id] && this.§5!i§[_loc2_.id].newIconAdded)
                  {
                     this.§5!i§[_loc2_.id].newIconAdded = false;
                  }
               }
               if(_loc4_)
               {
                  if(!this.§5!i§[_loc2_.id] || !this.§5!i§[_loc2_.id].saleIconAdded)
                  {
                     if(_loc5_)
                     {
                        (_loc8_ = new §2"O§.§`>§("Tag_Sale_Big_right_side")()).x = (_loc3_.width >> 1) + 5;
                     }
                     else
                     {
                        _loc8_ = new §2"O§.§`>§("Tag_Sale_Big")();
                     }
                     _loc8_.name = "Tag_Sale_Big";
                     _loc3_.mClip.addChild(_loc8_);
                     (_loc6_ = !!this.§5!i§[_loc2_.id] ? this.§5!i§[_loc2_.id] : new Object()).saleIconAdded = true;
                     this.§5!i§[_loc2_.id] = _loc6_;
                  }
               }
               else
               {
                  if(_loc9_ = _loc3_.mClip.getChildByName("Tag_Sale_Big") as MovieClip)
                  {
                     _loc3_.mClip.removeChild(_loc9_);
                  }
                  if(this.§5!i§[_loc2_.id] && this.§5!i§[_loc2_.id].saleIconAdded)
                  {
                     this.§5!i§[_loc2_.id].saleIconAdded = false;
                  }
               }
            }
         }
         (§%"T§.§>$<§ as §'"a§).§3#H§();
      }
      
      private function §?"D§(param1:Vector.<§,!K§>) : Boolean
      {
         var _loc2_:§,!K§ = null;
         for each(_loc2_ in param1)
         {
            if(this.§@f§(_loc2_.id))
            {
               return true;
            }
         }
         return false;
      }
      
      private function §@f§(param1:String) : Boolean
      {
         int(§@"%§(AngryBirdsBase.singleton.dataModel).§8!#§.indexOf(param1));
         var _loc3_:* = §@"%§(AngryBirdsBase.singleton.dataModel).§8!#§.indexOf(param1) > -1;
         if(!_loc3_)
         {
            _loc3_ = §@"%§(AngryBirdsBase.singleton.dataModel).§+d§.indexOf(param1) > -1;
         }
         return _loc3_;
      }
      
      private function §0!X§(param1:Vector.<§,!K§>, param2:Boolean) : Boolean
      {
         var _loc3_:§,!K§ = null;
         for each(_loc3_ in param1)
         {
            if(!(param2 && §#$D§.§?q§.§<"M§(_loc3_.id) > 0 && !§3#1§.§9"h§))
            {
               if(_loc3_.isOnSale)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function §;a§(param1:Vector.<§,!K§>) : Boolean
      {
         var _loc2_:§,!K§ = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§%!k§)
            {
               return true;
            }
         }
         return false;
      }
      
      private function §&_§(param1:Vector.<§,!K§>) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         _loc2_ = param1.length;
         _loc3_ = this.§-R§.mClip.getChildByName("TabsHolder") as MovieClip;
         var _loc4_:Class;
         _loc6_ = (_loc5_ = new (_loc4_ = §2"O§.§`>§("slingshotTab"))()).width >> 1;
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
         this.§9!b§(param1);
      }
      
      private function §9!b§(param1:Vector.<§,!K§>) : int
      {
         var _loc3_:§,!K§ = null;
         var _loc4_:§6f§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            if(_loc4_ = §7!S§.§%$<§(_loc3_.id))
            {
               this.§]0§(this.§1#O§(_loc3_.id,param1),"Icon_Slingshot_" + _loc3_.id,"SlingshopContent" + _loc3_.id,_loc4_.description,_loc4_.§[L§,_loc2_);
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      private function §2#0§(param1:Vector.<§,!K§>) : void
      {
         var _loc8_:Class = null;
         var _loc9_:MovieClip = null;
         var _loc2_:Number = this.§;#F§.mClip.width;
         var _loc3_:int = param1.length;
         var _loc4_:MovieClip = this.§;#F§.mClip.getChildByName("TabsHolder") as MovieClip;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            Number(_loc2_ * (_loc6_ / _loc3_) + _loc2_ / _loc3_ * 0.5);
            _loc8_ = §2"O§.§`>§("powerupTab");
            this.§ do§ = new _loc8_();
            this.§ do§.x = _loc6_ * 118;
            this.§ do§.y = 12;
            this.§ do§.name = "TabBranded_" + _loc6_;
            this.§ do§.visible = false;
            _loc4_.addChild(this.§ do§);
            _loc4_.x = 40;
            if(!this.§;#F§.mClip.contains(_loc4_))
            {
               this.§;#F§.mClip.addChild(_loc4_);
            }
            (_loc9_ = new MovieClip()).graphics.beginFill(16777215,0);
            _loc9_.graphics.drawRect(0,0,this.§;#F§.mClip.width,this.§;#F§.mClip.height);
            _loc9_.graphics.endFill();
            _loc9_.visible = false;
            _loc9_.name = "BrandedTabContainer_" + _loc6_;
            _loc9_.width = _loc2_;
            _loc9_.y = this.§ do§.y + this.§ do§.height;
            this.§;#F§.mClip.addChildAt(_loc9_,1);
            _loc6_++;
         }
         this.§@"2§(param1);
      }
      
      private function §@"2§(param1:Vector.<§,!K§>) : void
      {
         var s:§,!K§ = null;
         var powerupDef:§4"p§ = null;
         var isSpecialPowerup:Boolean = false;
         var owned:Boolean = false;
         var validUntil:Date = null;
         var title:String = null;
         var brandedTab:§&#+§ = null;
         var shopItems:Vector.<§,!K§> = param1;
         var i:int = 0;
         for each(s in shopItems)
         {
            powerupDef = §0!w§.§ _§(s.id);
            isSpecialPowerup = false;
            if(!powerupDef)
            {
               powerupDef = §0!w§.§5#U§(s.id);
               if(powerupDef)
               {
                  isSpecialPowerup = true;
               }
            }
            owned = powerupDef && §#$D§.§?q§.§if§(powerupDef.§]'§) > 0;
            try
            {
               validUntil = new Date();
               validUntil.time = s.getPricePoint(0).§@!4§;
               title = powerupDef.§[L§;
               if(!isSpecialPowerup)
               {
                  title = "Infinite " + powerupDef.§[L§;
               }
               brandedTab = this.§+a§(this.§1#O§(s.id,shopItems),s.id + "_Icon","Button_Shop_Branded_" + s.id,powerupDef.§7!;§,title,i,owned,validUntil);
            }
            catch(e:Error)
            {
            }
            i++;
         }
      }
      
      private function §+a§(param1:§,!K§, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Date = null) : §&#+§
      {
         var _loc10_:MovieClip;
         (_loc10_ = (this.§;#F§.mClip.getChildByName("TabsHolder") as MovieClip).getChildByName("TabBranded_" + param6) as MovieClip).visible = true;
         if(param1 == null)
         {
            _loc10_.visible = false;
            return null;
         }
         var _loc11_:§'M§;
         (_loc11_ = new §'M§(param1,param2,param3,_loc10_,param4,param5,1,param7,param8)).addEventListener(§&#R§.§4"V§,this.§&"v§);
         _loc11_.addEventListener(§&#R§.§+!a§,this.§ "Y§);
         this.§>#S§.push(_loc11_);
         return _loc11_;
      }
      
      private function §]0§(param1:§,!K§, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false) : §&#+§
      {
         var _loc12_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc9_:MovieClip;
         (_loc9_ = (this.§-R§.mClip.getChildByName("TabsHolder") as MovieClip).getChildByName("TabSlingshot_" + param6) as MovieClip).visible = true;
         if(param1 == null)
         {
            _loc9_.visible = false;
            return null;
         }
         var _loc10_:§3g§;
         (_loc10_ = new §3g§(param1,param2,param3,_loc9_,param4,param5,1,param7)).addEventListener(§&#R§.§4"V§,this.§,!7§);
         _loc10_.addEventListener(§&#R§.§+!a§,this.§ "Y§);
         this.§>#S§.push(_loc10_);
         if(this.§@f§(param1.id))
         {
            (_loc12_ = new §2"O§.§`>§("MovieClip_NewTag_TopBar")()).name = "MovieClip_NewTag_TopBar";
            _loc12_.y = §>W§;
            _loc9_.addChild(_loc12_);
         }
         else if((_loc12_ = _loc9_.getChildByName("MovieClip_NewTag_TopBar") as MovieClip) && _loc12_.parent)
         {
            _loc12_.parent.removeChild(_loc12_);
         }
         if(param1.isOnSale && (!_loc10_.§#! §() || §3#1§.§9"h§))
         {
            (_loc14_ = new §2"O§.§`>§("MovieClip_SaleTag_TopBar")()).name = "Sale";
            _loc14_.y = §>W§;
            _loc9_.addChild(_loc14_);
         }
         else if((_loc14_ = _loc9_.getChildByName("Sale") as MovieClip) && _loc14_.parent)
         {
            _loc14_.parent.removeChild(_loc14_);
         }
         return _loc10_;
      }
      
      protected function §,!7§(param1:§&#R§) : void
      {
         var _loc2_:§&#+§ = param1.currentTarget as §&#+§;
         if(_loc2_)
         {
            this.§8#k§ = _loc2_.§4">§.id;
            this.§5C§ = §@$<§;
            this.§9#B§(_loc2_,§@$<§);
            §[#%§.playSound("Shop_Selection",§[#%§.§-"I§,0,0.7);
         }
      }
      
      protected function §&"v§(param1:§&#R§) : void
      {
         var _loc2_:§&#+§ = param1.currentTarget as §&#+§;
         if(_loc2_)
         {
            this.§8#k§ = _loc2_.§4">§.id;
            this.§5C§ = §4Y§;
            this.§9#B§(_loc2_,§4Y§);
            §[#%§.playSound("Shop_Selection",§[#%§.§-"I§,0,0.7);
         }
      }
      
      private function §,#K§(param1:Vector.<§,!K§>) : void
      {
         this.§9#O§(param1);
         this.§^#M§(this.§8#k§);
      }
      
      private function §9#O§(param1:Vector.<§,!K§>) : void
      {
         this.§>#S§ = [];
         this.§8!u§ = 0;
         this.§`$4§ = this.§[>§(this.§1#O§(§0!w§.§3#0§,param1),"PowerupBundleIcon","ShopContentPowerupBundle","Each pack contains one Super Seed, Sling Scope, King Sling and Birdquake making it the perfect solution to all your piggy problems.");
         this.§5# § = this.§[>§(this.§1#O§(§0!w§.§3#D§.§]'§,param1),"SuperSeedsIcon","ShopContentSuperSeeds","Supersize your bird! Super Seeds turn any bird into a pig-popping giant.");
         this.§;%§ = this.§[>§(this.§1#O§(§0!w§.§ #;§.§]'§,param1),"KingSlingIcon","ShopContentKingSling","Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!");
         this.§#"Z§ = this.§[>§(this.§1#O§(§0!w§.§,"w§.§]'§,param1),"SlingScopeIcon","ShopContentSlingScope","Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!");
         this.§ !^§ = this.§[>§(this.§1#O§(§0!w§.§%#p§.§]'§,param1),"BirdQuakeIcon","ShopContentBirdQuake","Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!");
         this.§#i§ = this.§[>§(this.§1#O§(§0!w§.§<L§.§]'§,param1),"BoomboxIcon","ShopContentBoombox","Sling TNT");
         this.WINGMAN = this.§[>§(this.§1#O§(§0!w§.§2$?§.§]'§,param1),"ExtraBirdIcon","ShopContentExtraBird","Call the Wingman to demolish your enemies and impress your friends. Only useable in Tournaments.");
         this.MIGHTY_EAGLE = this.§[>§(this.§1#O§(§0!w§.§'!z§.§]'§,param1),"MightyEagleIcon","ShopContentMightyEagle","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.");
      }
      
      private function §1#O§(param1:String, param2:Vector.<§,!K§>) : §,!K§
      {
         var _loc3_:§,!K§ = null;
         for each(_loc3_ in param2)
         {
            if(_loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function §[>§(param1:§,!K§, param2:String, param3:String, param4:String) : §&#+§
      {
         var _loc9_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc5_:MovieClip = §8#Y§.mClip.Container_TabbedShopPopup["powerupTab" + this.§8!u§];
         ++this.§8!u§;
         if(param1 == null)
         {
            _loc5_.visible = false;
            return null;
         }
         var _loc6_:String = param2 + "_" + §^"C§.§?q§.brandedTournamentAssetId;
         if(§2"O§.§;#m§(_loc6_))
         {
            param2 = _loc6_;
         }
         var _loc7_:§&#+§ = new §&#+§(param1,param2,param3,_loc5_,param4,4);
         if(this.§@f§(param1.id))
         {
            (_loc9_ = new §2"O§.§`>§("MovieClip_NewTag_TopBar")()).name = "MovieClip_NewTag_TopBar";
            _loc9_.x = §2!'§;
            _loc9_.y = §>W§;
            _loc5_.addChild(_loc9_);
         }
         else if((_loc9_ = _loc5_.getChildByName("MovieClip_NewTag_TopBar") as MovieClip) && _loc9_.parent)
         {
            _loc9_.parent.removeChild(_loc9_);
         }
         if(param1.isOnSale)
         {
            (_loc11_ = new §2"O§.§`>§("MovieClip_SaleTag_TopBar")()).name = "MovieClip_SaleTag_TopBar";
            _loc11_.x = §2!'§;
            _loc11_.y = §>W§;
            _loc5_.addChild(_loc11_);
         }
         else if((_loc11_ = _loc5_.getChildByName("MovieClip_SaleTag_TopBar") as MovieClip) && _loc11_.parent)
         {
            _loc11_.parent.removeChild(_loc11_);
         }
         _loc7_.addEventListener(§&#R§.§4"V§,this.§=+§);
         _loc7_.addEventListener(§&#R§.§+!a§,this.§ "Y§);
         this.§>#S§.push(_loc7_);
         return _loc7_;
      }
      
      private function §=+§(param1:§&#R§) : void
      {
         var _loc2_:§&#+§ = param1.currentTarget as §&#+§;
         if(_loc2_)
         {
            this.§8#k§ = _loc2_.§4">§.id;
            this.§5C§ = §`!Q§;
            this.§9#B§(_loc2_,§`!Q§);
            §[#%§.playSound("Shop_Selection",§[#%§.§-"I§,0,0.7);
         }
      }
      
      private function § "Y§(param1:§&#R§) : void
      {
         var _loc3_:CoinShopPopup = null;
         var _loc4_:§1"i§ = null;
         var _loc2_:* = param1.§4">§.currencyID == "IVC";
         if(param1.point)
         {
            this.§8#x§ = new Point(param1.point.x,param1.point.y);
         }
         this.§[#s§ = this.§'!W§.§4">§.id;
         if(_loc2_ && (dataModel.§8!8§.§"$6§ < param1.pricePoint.price && (isNaN(param1.pricePoint.campaignPrice) || Number(param1.pricePoint.campaignPrice) <= 0) || dataModel.§8!8§.§"$6§ < Number(param1.pricePoint.campaignPrice)))
         {
            _loc3_ = new CoinShopPopup(§%#§.NORMAL,§9#5§.TOP,CoinShopPopup.§-$7§);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            return;
         }
         §[#%§.playSound("Shop_Buy",§[#%§.§-"I§);
         this.§#!Q§();
         if(_loc2_)
         {
            (_loc4_ = new §1"i§(param1.§4">§,param1.pricePoint,ID)).addEventListener(§8K§.§`#y§,this.§&##§);
            _loc4_.addEventListener(§8K§.§<"&§,this.§7#k§);
         }
         else
         {
            if(this.§>$&§)
            {
               this.§>$&§.removeEventListeners();
               this.§>$&§ = null;
            }
            this.§>$&§ = new §&^§(param1.§4">§,param1.pricePoint,§&^§.§?$4§,ID);
            this.§>$&§.addEventListener(§8K§.§ ",§,this.§6$A§);
            this.§>$&§.addEventListener(§8K§.§<"&§,this.§#n§);
         }
      }
      
      protected function §#n§(param1:§8K§) : void
      {
         this.§6#+§();
         this.§^!c§(param1.errorMessage,param1.§ $1§,param1.errorCode.toString());
         if(this.§>$&§)
         {
            this.§>$&§.removeEventListeners();
            this.§>$&§ = null;
         }
      }
      
      protected function §7#k§(param1:§8K§) : void
      {
         §#$D§.§?q§.§>!'§();
         this.§6#+§();
      }
      
      protected function §^!c§(param1:String = null, param2:String = null, param3:String = null) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§%#§.§3t§,§9#5§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      protected function §6$A§(param1:§8K§) : void
      {
         var _loc3_:§4b§ = null;
         §#$D§.§?q§.addEventListener(§#$D§.§-$6§,this.§2#-§);
         this.§6#+§();
         if(this.§;!_§())
         {
            _loc3_ = new §4b§();
            if(§8#Y§)
            {
               switch(this.§5C§)
               {
                  case §`!Q§:
                     §8#Y§.mClip.Container_TabbedShopPopup.contentArea.addChild(_loc3_);
                     break;
                  case §4Y§:
                     this.§;#F§.mClip.contentArea.addChild(_loc3_);
                     break;
                  case §@$<§:
                     this.§-R§.mClip.contentArea.addChild(_loc3_);
               }
               _loc3_.x = this.§8#x§.x - 40;
               _loc3_.y = this.§8#x§.y + 40;
               this.§8#x§ = null;
            }
         }
         var _loc2_:§&^§ = param1.currentTarget as §&^§;
         _loc2_.removeEventListener(§8K§.§ ",§,this.§6$A§);
         _loc2_.removeEventListener(§8K§.§<"&§,this.§#n§);
         §5"w§.trackPageView(this,§5"w§.§9`§);
         §5"w§.trackTransaction(_loc2_.orderId,§[!_§,_loc2_.§4">§.id,_loc2_.§4">§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         §5"w§.§7&§(_loc2_.§4">§.id,this.§>$&§.pricePoint.totalQuantity);
         §5"w§.trackPageView(this,§5"w§.§9`§);
         if(_loc2_.pricePoint)
         {
            §5"w§.trackTransaction(_loc2_.orderId,§[!_§,_loc2_.§4">§.id,_loc2_.§4">§.id,_loc2_.pricePoint.price + " x",_loc2_.pricePoint.price,1,0);
         }
         if(this.§>$&§)
         {
            this.§>$&§.removeEventListeners();
            this.§>$&§ = null;
         }
         _loc2_.removeEventListeners();
      }
      
      private function §;!_§() : Boolean
      {
         return this.§8#x§ && this.§[#s§ == this.§'!W§.§4">§.id;
      }
      
      private function §2#-§(param1:Event) : void
      {
         var _loc2_:§&#+§ = null;
         §#$D§.§?q§.removeEventListener(§#$D§.§-$6§,this.§2#-§);
         for each(_loc2_ in this.§>#S§)
         {
            _loc2_.refreshItemCount();
         }
         this.§6#+§();
         this.§!#5§();
      }
      
      private function §#!Q§() : void
      {
         §8#Y§.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = false;
         §8#Y§.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = false;
         §8#Y§.mClip.Container_TabbedShopPopup.contentArea.alpha = 0.5;
         this.§;#F§.mClip.contentArea.mouseEnabled = false;
         this.§;#F§.mClip.contentArea.mouseChildren = false;
         this.§;#F§.mClip.contentArea.alpha = 0.5;
         this.§-R§.mClip.contentArea.mouseEnabled = false;
         this.§-R§.mClip.contentArea.mouseChildren = false;
         this.§-R§.mClip.contentArea.alpha = 0.5;
         this.§!$,§ = new Timer(2000,1);
         this.§!$,§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^"]§,false,0,true);
         this.§!$,§.start();
      }
      
      private function §6#+§() : void
      {
         if(§8#Y§ && §8#Y§.mClip && §8#Y§.mClip.Container_TabbedShopPopup && §8#Y§.mClip.Container_TabbedShopPopup.contentArea)
         {
            §8#Y§.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = true;
            §8#Y§.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = true;
            §8#Y§.mClip.Container_TabbedShopPopup.contentArea.alpha = 1;
         }
         if(this.§;#F§ && this.§;#F§.mClip && this.§;#F§.mClip.contentArea)
         {
            this.§;#F§.mClip.contentArea.mouseEnabled = true;
            this.§;#F§.mClip.contentArea.mouseChildren = true;
            this.§;#F§.mClip.contentArea.alpha = 1;
         }
         if(this.§-R§ && this.§-R§.mClip && this.§-R§.mClip.contentArea)
         {
            this.§-R§.mClip.contentArea.mouseEnabled = true;
            this.§-R§.mClip.contentArea.mouseChildren = true;
            this.§-R§.mClip.contentArea.alpha = 1;
         }
      }
      
      private function §&##§(param1:§8K§) : void
      {
         var _loc3_:§4b§ = null;
         if(this.§;!_§())
         {
            _loc3_ = new §4b§();
            if(§8#Y§)
            {
               switch(this.§5C§)
               {
                  case §`!Q§:
                     §8#Y§.mClip.Container_TabbedShopPopup.contentArea.addChild(_loc3_);
                     break;
                  case §@$<§:
                     this.§-R§.mClip.contentArea.addChild(_loc3_);
                     break;
                  case §4Y§:
                     this.§;#F§.mClip.contentArea.addChild(_loc3_);
               }
               _loc3_.x = this.§8#x§.x - 40;
               _loc3_.y = this.§8#x§.y + 40;
               this.§8#x§ = null;
            }
         }
         var _loc2_:§1"i§ = param1.currentTarget as §1"i§;
         _loc2_.removeEventListener(§8K§.§`#y§,this.§&##§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
            var _loc5_:int = 0;
            var _loc6_:* = this.§>#S§;
            while(§§hasnext(_loc6_,_loc5_))
            {
               (§§nextvalue(_loc5_,_loc6_)).refreshItemCount();
            }
         }
         if(§8#Y§)
         {
            this.§6#+§();
         }
         this.§!#5§();
         §5"w§.trackPageView(this,§5"w§.§9`§);
         §5"w§.trackTransaction(_loc2_.orderId,§[!_§,_loc2_.§4">§.id,_loc2_.§4">§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
      }
      
      private function §^#M§(param1:String, param2:String = "GENERAL") : void
      {
         var _loc3_:§&#+§ = this.§>K§(param1);
         if(!_loc3_)
         {
            _loc3_ = this.§>K§("GoldenSling");
         }
         if(_loc3_)
         {
            this.§9#B§(_loc3_,param2);
         }
      }
      
      private function §>K§(param1:String) : §&#+§
      {
         var _loc2_:§&#+§ = null;
         for each(_loc2_ in this.§>#S§)
         {
            if(_loc2_.§4">§.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §9#B§(param1:§&#+§, param2:String = "GENERAL") : void
      {
         var _loc3_:MovieClip = null;
         if(param2 == §`!Q§)
         {
            _loc3_ = §8#Y§.mClip.Container_TabbedShopPopup.contentArea;
         }
         else if(param2 == §4Y§)
         {
            _loc3_ = this.§;#F§.mClip.contentArea;
         }
         else if(param2 == §@$<§)
         {
            _loc3_ = this.§-R§.mClip.contentArea;
         }
         this.§&"=§();
         if(this.§'!W§)
         {
            if(_loc3_.contains(this.§'!W§.§^"#§))
            {
               _loc3_.removeChild(this.§'!W§.§^"#§);
            }
         }
         var _loc5_:int = 0;
         var _loc6_:* = this.§>#S§;
         while(§§hasnext(_loc6_,_loc5_))
         {
            (§§nextvalue(_loc5_,_loc6_)).§]#h§();
         }
         param1.select();
         this.§'!W§ = param1;
         _loc3_.addChild(param1.§^"#§);
         §5"w§.trackPageView(this,param1.§4">§.id);
         §&!b§.§%"J§(param1.§4">§);
      }
      
      private function §&"=§() : void
      {
         this.§;#F§.mClip.contentArea.removeChildren();
         §8#Y§.mClip.Container_TabbedShopPopup.contentArea.removeChildren();
         this.§-R§.mClip.contentArea.removeChildren();
      }
      
      public function get walletContainer() : Sprite
      {
         return §8#Y§.mClip.Container_Shop_Background;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         param1.removeEventListener(Wallet.§;#D§,this.§!!g§);
         param1.dispose();
         param1 = null;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function §<"r§() : String
      {
         return §5"w§.§3#R§;
      }
      
      public function §5!R§() : String
      {
         return §5"w§.§=#u§;
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(!this.§>#S§ || this.§>#S§.length == 0)
         {
            this.§!$C§();
         }
         else
         {
            this.§5"]§();
         }
         §5"w§.trackPageView(this);
         §5"w§.§5!!§();
         var _loc2_:Wallet = new Wallet(this);
         this.§[D§(_loc2_);
         _loc2_.addEventListener(Wallet.§;#D§,this.§!!g§);
      }
      
      private function §5"]§(param1:Event = null) : void
      {
         if(this.§8#k§ && this.§5C§)
         {
            switch(this.§5C§)
            {
               case §`!Q§:
                  this.§=#>§(true,this.§8#k§);
                  break;
               case §@$<§:
                  this.§9"B§(true,this.§8#k§);
                  break;
               case §4Y§:
                  this.§@!&§(true,this.§8#k§);
            }
         }
      }
      
      private function §'#+§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§&#+§ = null;
         if(this.§?3§)
         {
            this.§"[§(this.§?3§);
         }
         if(this.§3#e§)
         {
            (this.§3#e§ as §2#d§).removeEventListener(§!!o§.§?O§,this.§^[§);
            (this.§3#e§ as §2#d§).removeEventListener(§!!o§.§[!]§,this.§7!>§);
            (this.§3#e§ as §2#d§).removeEventListener(§!!o§.§"#X§,this.§'!s§);
            this.§3#e§ = null;
         }
         dataModel.§,H§.removeEventListener(Event.COMPLETE,this.§9"-§);
         §#$D§.§?q§.removeEventListener(Event.CHANGE,this.§8!g§);
         §@"F§.§=F§("handleUserCancelledOrder",this.§@T§);
         §@"F§.§=F§("purchaseFailed",this.§>'§);
         if(this.§>$&§ && this.§>$&§.§]X§)
         {
            this.§>$&§.§]X§ = false;
            §#$D§.§?q§.§>!'§();
         }
         if(this.§>$&§)
         {
            this.§>$&§.removeEventListeners();
         }
         if(this.§>#S§)
         {
            for each(_loc3_ in this.§>#S§)
            {
               _loc3_.dispose();
            }
         }
         this.§5!i§ = null;
         this.§<#E§.removeEventListener(§<$?§.§ !O§,this.§;8§);
         this.§<#E§ = null;
         super.hide(param1,param2);
      }
      
      public function §+"n§() : String
      {
         return this.§<"r§() + "-" + this.§5!R§();
      }
      
      protected function §8!g§(param1:Event) : void
      {
         var _loc2_:§&#+§ = null;
         for each(_loc2_ in this.§>#S§)
         {
            _loc2_.refreshItemCount();
         }
      }
      
      private function §2#p§(param1:Boolean) : void
      {
         if(!§8#Y§)
         {
            return;
         }
         §8#Y§.mClip.AngryBirdLoader.visible = param1;
      }
      
      public function §@!s§() : Array
      {
         var _loc2_:§&#+§ = null;
         var _loc1_:Array = new Array();
         for each(_loc2_ in this.§>#S§)
         {
            if(_loc2_ is §3g§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      private function §8N§() : void
      {
         this.§3#e§.initialize();
         this.§3#e§.redeem();
      }
      
      private function §^"]§(param1:TimerEvent) : void
      {
         if(this.§!$,§)
         {
            this.§!$,§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^"]§);
            this.§!$,§ = null;
            this.§6#+§();
         }
      }
   }
}
