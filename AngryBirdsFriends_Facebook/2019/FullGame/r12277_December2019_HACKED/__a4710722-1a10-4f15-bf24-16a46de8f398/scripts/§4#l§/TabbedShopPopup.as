package §4#l§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import § h§.§?§;
   import § h§.WarningPopup;
   import §!!H§.§ $4§;
   import §#Q§.§ l§;
   import §+!n§.§+!p§;
   import §+Z§.§1"@§;
   import §+Z§.§8!`§;
   import §+Z§.§?!T§;
   import §-"e§.§[9§;
   import §-"e§.§^#i§;
   import §2$;§.§!"e§;
   import §2$;§.§;!b§;
   import §2E§.§'@§;
   import §2E§.§'r§;
   import §2E§.§]!P§;
   import §4#$§.§5"L§;
   import §4$A§.§=$5§;
   import §8!G§.CoinShopPopup;
   import §9!6§.§## §;
   import §9!6§.AbstractPopup;
   import §<"I§.§1!^§;
   import §<"I§.§<$B§;
   import §<8§.§8!g§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §>#Y§.§!",§;
   import §>#Y§.§,#b§;
   import §?$#§.§%2§;
   import §@!_§.§="3§;
   import §@!_§.§>%§;
   import §@!_§.§>-§;
   import §@!_§.§]a§;
   import §@!_§.§^"E§;
   import §[#A§.§&n§;
   import §]!4§.§=#c§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class TabbedShopPopup extends AbstractPopup implements §'r§, §;"P§, §=$5§
   {
      
      public static const ID:String = "TabbedShopPopup";
      
      private static const §2!1§:int = -35;
      
      private static const §"!`§:int = -15;
      
      private static const §`-§:String = "In-app Shop";
      
      public static const §<#T§:String = "uiSoundsChannel";
      
      private static const §,P§:int = 8;
      
      public static const §1"d§:String = "SLINGSHOT";
      
      public static const §"5§:String = "GENERAL";
      
      public static const §[!4§:String = "SPECIAL";
      
      private static var §1$'§:Boolean;
      
      public static const §#8§:String = "SlingshotFirstTab";
       
      
      public var §1"w§:Wallet;
      
      private var §2#4§:§='§;
      
      private var §3!§:§='§;
      
      private var §<!E§:§='§;
      
      private var §8F§:§='§;
      
      private var §0!%§:§='§;
      
      private var §6"Y§:§='§;
      
      private var WINGMAN:§='§;
      
      private var MIGHTY_EAGLE:§='§;
      
      private var §7"y§:Array;
      
      private var §9"V§:§='§;
      
      private var §"!<§:String = "";
      
      private var §9"I§:String;
      
      private var § #O§:Point;
      
      private var §6!&§:§!"e§;
      
      private var §]![§:§!"e§;
      
      private var §`#v§:§!"e§;
      
      private var §"[§:§!"e§;
      
      private var §<!N§:§!"e§;
      
      private var §##^§:MovieClip;
      
      private var §'#p§:MovieClip;
      
      private var §>!D§:String;
      
      private var §%"h§:§>-§;
      
      private var §3#D§:Timer;
      
      private var §?#?§:§?#0§;
      
      private var §&!Z§:Boolean = true;
      
      private var §5#l§:String = "ShopTabsInitialzed";
      
      private var §@"'§:§^"E§;
      
      private var §0"n§:Dictionary;
      
      private var §&T§:Timer;
      
      private var §<#]§:Boolean;
      
      private var §^!d§:§ l§;
      
      private var §9$,§:int;
      
      public function TabbedShopPopup(param1:int, param2:int, param3:String = "", param4:String = "GENERAL", param5:Boolean = false)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupView_TabbedShop[0],ID);
         this.§>!D§ = param4;
         this.§9"I§ = param3;
         this.§<#]§ = param5;
         addEventListener(this.§5#l§,this.§6!]§);
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      override protected function init() : void
      {
         var _loc2_:MovieClip = null;
         super.init();
         this.§%#h§(true);
         this.§6!&§ = §'o§.getItemByName("Container_Shop_Branded") as §!"e§;
         this.§]![§ = §'o§.getItemByName("Container_Shop_Slingshots") as §!"e§;
         this.§`#v§ = §'o§.getItemByName("Container_TabbedShopPopup") as §!"e§;
         this.§"[§ = §'o§.getItemByName("Container_Shop_Selection_Buttons") as §!"e§;
         this.§<!N§ = §'o§.getItemByName("Container_Shop_Selection_Extras") as §!"e§;
         §'o§.mClip.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§1",§);
         §=#c§.addCallback("handleUserCancelledOrder",this.§!#3§);
         §=#c§.addCallback("purchaseFailed",this.§0!h§);
         if(!§1$'§)
         {
            §1$'§ = true;
         }
         §!",§.§3"1§.addEventListener(Event.CHANGE,this.§>!S§);
         var _loc1_:int = 0;
         while(_loc1_ < §,P§)
         {
            _loc2_ = §'o§.mClip.Container_TabbedShopPopup["powerupTab" + _loc1_];
            if(_loc2_)
            {
               _loc2_.gotoAndStop("Normal");
            }
            _loc1_++;
         }
         this.§9"G§();
         this.§@"'§ = new §="3§();
         (this.§@"'§ as §="3§).addEventListener(§8!`§.§>#t§,this.§0"d§);
         (this.§@"'§ as §="3§).addEventListener(§8!`§.§33§,this.§^#x§);
         (this.§@"'§ as §="3§).addEventListener(§8!`§.§@,§,this.§<E§);
         if(this.§9"I§ == "")
         {
            §]!P§.§1!7§().§9a§("SHOP_MAIN",this.§<#]§);
         }
         this.§^!d§ = § l§.§3"1§;
         this.§^!d§.addEventListener(§ l§.§-"i§,this.§>#q§);
      }
      
      private function §>#q§(param1:Event) : void
      {
         var _loc2_:§='§ = null;
         this.§%#h§(true);
         for each(_loc2_ in this.§7"y§)
         {
            _loc2_.dispose();
         }
         this.§9"G§();
      }
      
      protected function §<E§(param1:§8!`§) : void
      {
      }
      
      protected function §^#x§(param1:§8!`§) : void
      {
      }
      
      protected function §0"d§(param1:§8!`§) : void
      {
         §'@§.§?!w§("FacebookGiftCard",param1.quantity);
      }
      
      private function §0!h§() : void
      {
      }
      
      private function §!#3§() : void
      {
      }
      
      private function §9"G§() : void
      {
         if(!dataModel.§+!J§.§'"6§)
         {
            §!",§.§3"1§.§,"&§();
            dataModel.§+!J§.addEventListener(Event.COMPLETE,this.§"W§);
         }
         else
         {
            this.§"W§(null,dataModel.§+!J§.§'"6§);
         }
      }
      
      protected function §1!X§(param1:Event) : void
      {
      }
      
      protected function §3"d§(param1:Event) : void
      {
         var _loc3_:§1"@§ = null;
         var _loc2_:§8#E§ = this.§@!j§("BrandedShopBundle",dataModel.§+!J§.§3!R§);
         if(_loc2_)
         {
            _loc3_ = new §1"@§(§1"@§.§1+§,TabbedShopPopup.§[!4§,false,false,_loc2_,_loc2_.getPricePoint(0));
            this.§+#K§(_loc3_);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var _loc4_:CoinShopPopup = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHOP_BRANDED":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§1$=§(true);
               §]!P§.§1!7§().§9a§("SHOP_BRANDED");
               break;
            case "SHOP_SLINGSHOTS":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§",§(true);
               §]!P§.§1!7§().§9a§("SHOP_SLINGSHOTS");
               break;
            case "SHOP_POWERUPS":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§=$-§(true);
               §]!P§.§1!7§().§9a§("SHOP_POWERUPS");
               break;
            case "SHOP_VC":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               _loc4_ = new CoinShopPopup(§-!S§.NORMAL,§## §.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
               break;
            case "BACK":
               §4$4§.playSound("Menu_Back",§4$4§.§1#l§);
               this.§@#A§(true);
               break;
            case "INFO":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§7$8§();
               break;
            case "REDEEM":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§1#a§();
               break;
            case "EARNCOINS":
               §4$4§.playSound("Menu_Confirm");
               AngryBirdsBase.singleton.exitFullScreen();
               §=#c§.§<!t§("earnCredits");
         }
      }
      
      private function §7$8§() : void
      {
         var _loc1_:§1!^§ = §<$B§.§-"N§(this.§9"I§);
         var _loc2_:String = "";
         var _loc3_:String = "";
         if(_loc1_)
         {
            _loc2_ = _loc1_.§[E§;
            _loc3_ = _loc1_.description;
         }
         if(!_loc1_)
         {
            if(this.§9"I§ == §<$B§.§@!&§.§=#@§)
            {
               _loc2_ = §<$B§.§@!&§.§[E§;
               _loc3_ = §<$B§.§@!&§.description;
            }
            switch(this.§>!D§)
            {
               case §1"d§:
                  _loc2_ = "Slingshots";
                  _loc3_ = "Slingshots are permanent items that can be used in any level and changed between shots. Buy once, keep forever!";
                  break;
               case §[!4§:
                  _loc2_ = "Specials";
                  _loc3_ = "These items are only available for a limited time!";
            }
         }
         this.§?#?§ = new §?#0§(§'o§.mClip,_loc2_,_loc3_,§-!S§.§ !^§,§## §.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§?#?§);
      }
      
      private function §@#A§(param1:Boolean) : void
      {
         this.§9"I§ = "";
         this.§"[§.setVisibility(param1);
         this.§<!N§.setVisibility(this.§"[§.visible);
         this.§6!&§.setVisibility(!param1);
         this.§]![§.setVisibility(!param1);
         this.§`#v§.setVisibility(!param1);
         if(param1)
         {
            this.§8"k§();
         }
      }
      
      private function §1$=§(param1:Boolean, param2:String = "") : void
      {
         if(param2 == "")
         {
            this.§9"I§ = this.§6D§(0);
         }
         this.§>!D§ = §[!4§;
         this.§<D§(this.§9"I§,§[!4§);
         this.§"[§.setVisibility(!param1);
         this.§<!N§.setVisibility(this.§"[§.visible);
         this.§6!&§.setVisibility(param1);
         this.§]![§.setVisibility(!param1);
         this.§`#v§.setVisibility(!param1);
      }
      
      private function §6D§(param1:int) : String
      {
         var _loc4_:§='§ = null;
         var _loc2_:Array = [];
         var _loc3_:String = "";
         for each(_loc4_ in this.§7"y§)
         {
            if(_loc4_ is §+%§)
            {
               _loc2_.push(_loc4_);
            }
         }
         if(_loc2_.length > param1 && _loc2_[param1])
         {
            _loc3_ = §+%§(_loc2_[param1]).§"^§.id;
         }
         return _loc3_;
      }
      
      private function §",§(param1:Boolean, param2:String = "") : void
      {
         if(param2 == "")
         {
            param2 = "GoldenSling";
         }
         else if(param2 == §#8§)
         {
            if(this.§-N§().length > 0)
            {
               param2 = (this.§-N§()[0] as §8"o§).§"^§.id;
            }
         }
         this.§9"I§ = param2;
         this.§>!D§ = §1"d§;
         this.§<D§(this.§9"I§,§1"d§);
         this.§"[§.setVisibility(!param1);
         this.§<!N§.setVisibility(this.§"[§.visible);
         this.§6!&§.setVisibility(!param1);
         this.§]![§.setVisibility(param1);
         this.§`#v§.setVisibility(!param1);
      }
      
      private function §=$-§(param1:Boolean, param2:String = "ExtraBird") : void
      {
         this.§9"I§ = param2;
         this.§>!D§ = §"5§;
         this.§<D§(this.§9"I§);
         this.§"[§.setVisibility(!param1);
         this.§<!N§.setVisibility(this.§"[§.visible);
         this.§6!&§.setVisibility(!param1);
         this.§]![§.setVisibility(!param1);
         this.§`#v§.setVisibility(param1);
         this.§`#v§.getItemByName("Button_Back").setVisibility(this.§&!Z§);
      }
      
      private function §"W§(param1:Event = null, param2:Vector.<§8#E§> = null) : void
      {
         var _loc9_:Object = null;
         var _loc10_:§;!b§ = null;
         this.§%#h§(false);
         if(param1)
         {
            param2 = dataModel.§+!J§.§'"6§;
         }
         this.§6^§(param2);
         var _loc3_:Boolean = true;
         if(dataModel.§+!J§.§3!R§ && dataModel.§+!J§.§3!R§.length > 0)
         {
            this.§'#k§(dataModel.§+!J§.§3!R§);
            _loc3_ = false;
         }
         if(dataModel.§+!J§.slingshots && dataModel.§+!J§.slingshots.length > 0)
         {
            this.§#"4§(dataModel.§+!J§.slingshots);
            _loc3_ = false;
         }
         dispatchEvent(new Event(this.§5#l§));
         var _loc4_:§;!b§ = this.§"[§.getItemByName("Button_Shop_Selection_" + §]a§.§6"f§) as §;!b§;
         var _loc5_:§;!b§ = this.§"[§.getItemByName("Button_Shop_Selection_" + §]a§.§'#G§) as §;!b§;
         var _loc6_:§;!b§ = this.§"[§.getItemByName("Button_Shop_Selection_" + §]a§.§&l§) as §;!b§;
         var _loc7_:§;!b§ = this.§"[§.getItemByName("Button_Shop_Selection_" + §]a§.§^#Y§) as §;!b§;
         if(_loc4_ && dataModel.§+!J§.§3!R§.length == 0)
         {
            this.§"[§.§6+§(_loc4_);
         }
         if(_loc5_ && dataModel.§+!J§.slingshots.length == 0)
         {
            this.§"[§.§6+§(_loc5_);
         }
         if(_loc6_ && dataModel.§+!J§.§'"6§.length == 0)
         {
            this.§"[§.§6+§(_loc6_);
         }
         if(_loc7_ && dataModel.§+!J§.§ "[§.length == 0)
         {
            this.§"[§.§6+§(_loc7_);
         }
         if(_loc3_)
         {
            this.§&!Z§ = false;
            if(this.§9"I§ == "")
            {
               this.§9"I§ = "ExtraBird";
            }
            this.§=$-§(true,this.§9"I§);
            return;
         }
         var _loc8_:int = 0;
         for each(_loc9_ in dataModel.§+!J§.shops)
         {
            if(_loc10_ = this.§"[§.getItemByName("Button_Shop_Selection_" + _loc9_.id) as §;!b§)
            {
               _loc10_.x = _loc8_ * (_loc10_.width + 15);
               _loc8_++;
            }
         }
         this.§8"k§();
         this.§"[§.x = AngryBirdsBase.screenWidth / 2 - this.§"[§.width / 2;
         dataModel.§+!J§.removeEventListener(Event.COMPLETE,this.§"W§);
      }
      
      private function §8"k§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§;!b§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Object = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         if(!this.§0"n§)
         {
            this.§0"n§ = new Dictionary();
         }
         §,#b§(AngryBirdsBase.singleton.dataModel).§#"J§ = false;
         §,#b§(AngryBirdsBase.singleton.dataModel).§9]§ = false;
         §,#b§(AngryBirdsBase.singleton.dataModel).§1@§ = false;
         for each(_loc2_ in dataModel.§+!J§.shops)
         {
            _loc3_ = this.§"[§.getItemByName("Button_Shop_Selection_" + _loc2_.id) as §;!b§;
            if(_loc3_)
            {
               _loc4_ = false;
               _loc5_ = false;
               switch(_loc2_.id)
               {
                  case §]a§.§6"f§:
                     _loc3_.setVisibility(dataModel.§+!J§.§3!R§.length > 0);
                     if(_loc4_ = this.§3!n§(dataModel.§+!J§.§3!R§,false))
                     {
                        §,#b§(AngryBirdsBase.singleton.dataModel).§9]§ = true;
                     }
                     _loc5_ = this.§>#"§(dataModel.§+!J§.§3!R§);
                     break;
                  case §]a§.§'#G§:
                     _loc3_.setVisibility(dataModel.§+!J§.slingshots.length > 0);
                     if(_loc4_ = this.§3!n§(dataModel.§+!J§.slingshots,true))
                     {
                        §,#b§(AngryBirdsBase.singleton.dataModel).§#"J§ = true;
                     }
                     _loc5_ = this.§>#"§(dataModel.§+!J§.slingshots);
                     break;
                  case §]a§.§&l§:
                     _loc3_.setVisibility(dataModel.§+!J§.§'"6§.length > 0);
                     if(_loc4_ = this.§3!n§(dataModel.§+!J§.§'"6§,false))
                     {
                        §,#b§(AngryBirdsBase.singleton.dataModel).§9]§ = true;
                     }
                     _loc5_ = this.§>#"§(dataModel.§+!J§.§'"6§);
                     break;
                  case §]a§.§^#Y§:
                     _loc3_.setVisibility(dataModel.§+!J§.§ "[§.length > 0);
                     if(_loc4_ = this.§3!n§(dataModel.§+!J§.§ "[§,false))
                     {
                        §,#b§(AngryBirdsBase.singleton.dataModel).§1@§ = true;
                     }
                     _loc5_ = this.§>#"§(dataModel.§+!J§.§ "[§);
               }
               _loc3_.mClip.title.text = _loc2_.name;
               if(_loc5_)
               {
                  if(!this.§0"n§[_loc2_.id] || !this.§0"n§[_loc2_.id].newIconAdded)
                  {
                     (_loc8_ = new §=@§.§9!x§("Tag_New_Big")()).name = "Tag_New_Big";
                     _loc3_.mClip.addChild(_loc8_);
                     (_loc6_ = !!this.§0"n§[_loc2_.id] ? this.§0"n§[_loc2_.id] : new Object()).newIconAdded = true;
                     this.§0"n§[_loc2_.id] = _loc6_;
                  }
               }
               else
               {
                  if(_loc9_ = _loc3_.mClip.getChildByName("Tag_New_Big") as MovieClip)
                  {
                     _loc3_.mClip.removeChild(_loc9_);
                  }
                  if(this.§0"n§[_loc2_.id] && this.§0"n§[_loc2_.id].newIconAdded)
                  {
                     this.§0"n§[_loc2_.id].newIconAdded = false;
                  }
               }
               if(_loc4_)
               {
                  if(!this.§0"n§[_loc2_.id] || !this.§0"n§[_loc2_.id].saleIconAdded)
                  {
                     if(_loc5_)
                     {
                        (_loc8_ = new §=@§.§9!x§("Tag_Sale_Big_right_side")()).x = (_loc3_.width >> 1) + 5;
                     }
                     else
                     {
                        _loc8_ = new §=@§.§9!x§("Tag_Sale_Big")();
                     }
                     _loc8_.name = "Tag_Sale_Big";
                     _loc3_.mClip.addChild(_loc8_);
                     (_loc6_ = !!this.§0"n§[_loc2_.id] ? this.§0"n§[_loc2_.id] : new Object()).saleIconAdded = true;
                     this.§0"n§[_loc2_.id] = _loc6_;
                  }
               }
               else
               {
                  if(_loc9_ = _loc3_.mClip.getChildByName("Tag_Sale_Big") as MovieClip)
                  {
                     _loc3_.mClip.removeChild(_loc9_);
                  }
                  if(this.§0"n§[_loc2_.id] && this.§0"n§[_loc2_.id].saleIconAdded)
                  {
                     this.§0"n§[_loc2_.id].saleIconAdded = false;
                  }
               }
            }
         }
         (§+!p§.§;"-§ as §^"a§).§,#@§();
      }
      
      private function §>#"§(param1:Vector.<§8#E§>) : Boolean
      {
         var _loc2_:§8#E§ = null;
         for each(_loc2_ in param1)
         {
            if(this.§7"[§(_loc2_.id))
            {
               return true;
            }
         }
         return false;
      }
      
      private function §7"[§(param1:String) : Boolean
      {
         int(§,#b§(AngryBirdsBase.singleton.dataModel).§0$6§.indexOf(param1));
         var _loc3_:* = §,#b§(AngryBirdsBase.singleton.dataModel).§0$6§.indexOf(param1) > -1;
         if(!_loc3_)
         {
            _loc3_ = §,#b§(AngryBirdsBase.singleton.dataModel).§'$2§.indexOf(param1) > -1;
         }
         return _loc3_;
      }
      
      private function §3!n§(param1:Vector.<§8#E§>, param2:Boolean) : Boolean
      {
         var _loc3_:§8#E§ = null;
         for each(_loc3_ in param1)
         {
            if(!(param2 && §!",§.§3"1§.§2![§(_loc3_.id) > 0 && !§%2§.§6"v§))
            {
               if(_loc3_.isOnSale)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function §0!A§(param1:Vector.<§8#E§>) : Boolean
      {
         var _loc2_:§8#E§ = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§3i§)
            {
               return true;
            }
         }
         return false;
      }
      
      private function §#"4§(param1:Vector.<§8#E§>) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         _loc2_ = param1.length;
         _loc3_ = this.§]![§.mClip.getChildByName("TabsHolder") as MovieClip;
         var _loc4_:Class;
         _loc6_ = (_loc5_ = new (_loc4_ = §=@§.§9!x§("slingshotTab"))()).width >> 1;
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
         this.§'!R§(param1);
      }
      
      private function §'!R§(param1:Vector.<§8#E§>) : int
      {
         var _loc3_:§8#E§ = null;
         var _loc4_:§^#i§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            if(_loc4_ = §[9§.§%"%§(_loc3_.id))
            {
               this.§7s§(this.§@!j§(_loc3_.id,param1),"Icon_Slingshot_" + _loc3_.id,"SlingshopContent" + _loc3_.id,_loc4_.description,_loc4_.§[E§,_loc2_);
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      private function §'#k§(param1:Vector.<§8#E§>) : void
      {
         var _loc8_:Class = null;
         var _loc9_:MovieClip = null;
         var _loc2_:Number = this.§6!&§.mClip.width;
         var _loc3_:int = param1.length;
         var _loc4_:MovieClip = this.§6!&§.mClip.getChildByName("TabsHolder") as MovieClip;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            Number(_loc2_ * (_loc6_ / _loc3_) + _loc2_ / _loc3_ * 0.5);
            _loc8_ = §=@§.§9!x§("powerupTab");
            this.§'#p§ = new _loc8_();
            this.§'#p§.x = _loc6_ * 118;
            this.§'#p§.y = 12;
            this.§'#p§.name = "TabBranded_" + _loc6_;
            this.§'#p§.visible = false;
            _loc4_.addChild(this.§'#p§);
            _loc4_.x = 40;
            if(!this.§6!&§.mClip.contains(_loc4_))
            {
               this.§6!&§.mClip.addChild(_loc4_);
            }
            (_loc9_ = new MovieClip()).graphics.beginFill(16777215,0);
            _loc9_.graphics.drawRect(0,0,this.§6!&§.mClip.width,this.§6!&§.mClip.height);
            _loc9_.graphics.endFill();
            _loc9_.visible = false;
            _loc9_.name = "BrandedTabContainer_" + _loc6_;
            _loc9_.width = _loc2_;
            _loc9_.y = this.§'#p§.y + this.§'#p§.height;
            this.§6!&§.mClip.addChildAt(_loc9_,1);
            _loc6_++;
         }
         this.§="H§(param1);
      }
      
      private function §="H§(param1:Vector.<§8#E§>) : void
      {
         var s:§8#E§ = null;
         var powerupDef:§1!^§ = null;
         var isSpecialPowerup:Boolean = false;
         var owned:Boolean = false;
         var validUntil:Date = null;
         var title:String = null;
         var brandedTab:§='§ = null;
         var shopItems:Vector.<§8#E§> = param1;
         var i:int = 0;
         for each(s in shopItems)
         {
            powerupDef = §<$B§.§3#&§(s.id);
            isSpecialPowerup = false;
            if(!powerupDef)
            {
               powerupDef = §<$B§.§%!E§(s.id);
               if(powerupDef)
               {
                  isSpecialPowerup = true;
               }
            }
            owned = powerupDef && §!",§.§3"1§.§4#<§(powerupDef.§=#@§) > 0;
            try
            {
               validUntil = new Date();
               validUntil.time = s.getPricePoint(0).§="z§;
               title = powerupDef.§[E§;
               if(!isSpecialPowerup)
               {
                  title = "Infinite " + powerupDef.§[E§;
               }
               brandedTab = this.§%"W§(this.§@!j§(s.id,shopItems),s.id + "_Icon","Button_Shop_Branded_" + s.id,powerupDef.§3!C§,title,i,owned,validUntil);
            }
            catch(e:Error)
            {
            }
            i++;
         }
      }
      
      private function §%"W§(param1:§8#E§, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Date = null) : §='§
      {
         var _loc10_:MovieClip;
         (_loc10_ = (this.§6!&§.mClip.getChildByName("TabsHolder") as MovieClip).getChildByName("TabBranded_" + param6) as MovieClip).visible = true;
         if(param1 == null)
         {
            _loc10_.visible = false;
            return null;
         }
         var _loc11_:§+%§;
         (_loc11_ = new §+%§(param1,param2,param3,_loc10_,param4,param5,1,param7,param8)).addEventListener(§1"@§.§3$9§,this.§1#9§);
         _loc11_.addEventListener(§1"@§.§1+§,this.§+#K§);
         this.§7"y§.push(_loc11_);
         return _loc11_;
      }
      
      private function §7s§(param1:§8#E§, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false) : §='§
      {
         var _loc12_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc9_:MovieClip;
         (_loc9_ = (this.§]![§.mClip.getChildByName("TabsHolder") as MovieClip).getChildByName("TabSlingshot_" + param6) as MovieClip).visible = true;
         if(param1 == null)
         {
            _loc9_.visible = false;
            return null;
         }
         var _loc10_:§8"o§;
         (_loc10_ = new §8"o§(param1,param2,param3,_loc9_,param4,param5,1,param7)).addEventListener(§1"@§.§3$9§,this.§`!_§);
         _loc10_.addEventListener(§1"@§.§1+§,this.§+#K§);
         this.§7"y§.push(_loc10_);
         if(this.§7"[§(param1.id))
         {
            (_loc12_ = new §=@§.§9!x§("MovieClip_NewTag_TopBar")()).name = "MovieClip_NewTag_TopBar";
            _loc12_.y = §"!`§;
            _loc9_.addChild(_loc12_);
         }
         else if((_loc12_ = _loc9_.getChildByName("MovieClip_NewTag_TopBar") as MovieClip) && _loc12_.parent)
         {
            _loc12_.parent.removeChild(_loc12_);
         }
         if(param1.isOnSale && (!_loc10_.§[![§() || §%2§.§6"v§))
         {
            (_loc14_ = new §=@§.§9!x§("MovieClip_SaleTag_TopBar")()).name = "Sale";
            _loc14_.y = §"!`§;
            _loc9_.addChild(_loc14_);
         }
         else if((_loc14_ = _loc9_.getChildByName("Sale") as MovieClip) && _loc14_.parent)
         {
            _loc14_.parent.removeChild(_loc14_);
         }
         return _loc10_;
      }
      
      protected function §`!_§(param1:§1"@§) : void
      {
         var _loc2_:§='§ = param1.currentTarget as §='§;
         if(_loc2_)
         {
            this.§9"I§ = _loc2_.§"^§.id;
            this.§>!D§ = §1"d§;
            this.§4#d§(_loc2_,§1"d§);
            §4$4§.playSound("Shop_Selection",§4$4§.§1#l§,0,0.7);
         }
      }
      
      protected function §1#9§(param1:§1"@§) : void
      {
         var _loc2_:§='§ = param1.currentTarget as §='§;
         if(_loc2_)
         {
            this.§9"I§ = _loc2_.§"^§.id;
            this.§>!D§ = §[!4§;
            this.§4#d§(_loc2_,§[!4§);
            §4$4§.playSound("Shop_Selection",§4$4§.§1#l§,0,0.7);
         }
      }
      
      private function §6^§(param1:Vector.<§8#E§>) : void
      {
         this.§%#i§(param1);
         this.§<D§(this.§9"I§);
      }
      
      private function §%#i§(param1:Vector.<§8#E§>) : void
      {
         this.§7"y§ = [];
         this.§9$,§ = 0;
         this.§2#4§ = this.§7^§(this.§@!j§(§<$B§.§3M§,param1),"PowerupBundleIcon","ShopContentPowerupBundle","Each pack contains one Super Seed, Sling Scope, King Sling and Birdquake making it the perfect solution to all your piggy problems.");
         this.§3!§ = this.§7^§(this.§@!j§(§<$B§.§+"4§.§=#@§,param1),"SuperSeedsIcon","ShopContentSuperSeeds","Supersize your bird! Super Seeds turn any bird into a pig-popping giant.");
         this.§8F§ = this.§7^§(this.§@!j§(§<$B§.§<$§.§=#@§,param1),"KingSlingIcon","ShopContentKingSling","Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!");
         this.§<!E§ = this.§7^§(this.§@!j§(§<$B§.§ !n§.§=#@§,param1),"SlingScopeIcon","ShopContentSlingScope","Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!");
         this.§0!%§ = this.§7^§(this.§@!j§(§<$B§.§5#J§.§=#@§,param1),"BirdQuakeIcon","ShopContentBirdQuake","Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!");
         this.§6"Y§ = this.§7^§(this.§@!j§(§<$B§.§[D§.§=#@§,param1),"BoomboxIcon","ShopContentBoombox","Sling TNT");
         this.WINGMAN = this.§7^§(this.§@!j§(§<$B§.§0"s§.§=#@§,param1),"ExtraBirdIcon","ShopContentExtraBird","Call the Wingman to demolish your enemies and impress your friends. Only useable in Tournaments.");
         if(§<$B§.§`"K§.§[#;§)
         {
            this.MIGHTY_EAGLE = this.§7^§(this.§@!j§(§<$B§.§`"K§.§=#@§,param1),"MightyEagleIcon","ShopContentMightyEagle","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.");
         }
         else
         {
            this.MIGHTY_EAGLE = this.§7^§(null,"","","");
         }
      }
      
      private function §@!j§(param1:String, param2:Vector.<§8#E§>) : §8#E§
      {
         var _loc3_:§8#E§ = null;
         for each(_loc3_ in param2)
         {
            if(_loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function §7^§(param1:§8#E§, param2:String, param3:String, param4:String) : §='§
      {
         var _loc9_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc5_:MovieClip = §'o§.mClip.Container_TabbedShopPopup["powerupTab" + this.§9$,§];
         ++this.§9$,§;
         if(param1 == null)
         {
            _loc5_.visible = false;
            return null;
         }
         var _loc6_:String = param2 + "_" + §5"L§.§3"1§.brandedTournamentAssetId;
         if(§=@§.§8!l§(_loc6_))
         {
            param2 = _loc6_;
         }
         var _loc7_:§='§ = new §='§(param1,param2,param3,_loc5_,param4,4);
         if(this.§7"[§(param1.id))
         {
            (_loc9_ = new §=@§.§9!x§("MovieClip_NewTag_TopBar")()).name = "MovieClip_NewTag_TopBar";
            _loc9_.x = §2!1§;
            _loc9_.y = §"!`§;
            _loc5_.addChild(_loc9_);
         }
         else if((_loc9_ = _loc5_.getChildByName("MovieClip_NewTag_TopBar") as MovieClip) && _loc9_.parent)
         {
            _loc9_.parent.removeChild(_loc9_);
         }
         if(param1.isOnSale)
         {
            (_loc11_ = new §=@§.§9!x§("MovieClip_SaleTag_TopBar")()).name = "MovieClip_SaleTag_TopBar";
            _loc11_.x = §2!1§;
            _loc11_.y = §"!`§;
            _loc5_.addChild(_loc11_);
         }
         else if((_loc11_ = _loc5_.getChildByName("MovieClip_SaleTag_TopBar") as MovieClip) && _loc11_.parent)
         {
            _loc11_.parent.removeChild(_loc11_);
         }
         _loc7_.addEventListener(§1"@§.§3$9§,this.§8#B§);
         _loc7_.addEventListener(§1"@§.§1+§,this.§+#K§);
         this.§7"y§.push(_loc7_);
         return _loc7_;
      }
      
      private function §8#B§(param1:§1"@§) : void
      {
         var _loc2_:§='§ = param1.currentTarget as §='§;
         if(_loc2_)
         {
            this.§9"I§ = _loc2_.§"^§.id;
            this.§>!D§ = §"5§;
            this.§4#d§(_loc2_,§"5§);
            §4$4§.playSound("Shop_Selection",§4$4§.§1#l§,0,0.7);
         }
      }
      
      private function §+#K§(param1:§1"@§) : void
      {
         var _loc3_:CoinShopPopup = null;
         var _loc4_:§>%§ = null;
         var _loc2_:* = param1.§"^§.currencyID == "IVC";
         if(param1.point)
         {
            this.§ #O§ = new Point(param1.point.x,param1.point.y);
         }
         this.§"!<§ = this.§9"V§.§"^§.id;
         if(_loc2_ && (dataModel.§%$;§.§5"i§ < param1.pricePoint.price && (isNaN(param1.pricePoint.campaignPrice) || Number(param1.pricePoint.campaignPrice) <= 0) || dataModel.§%$;§.§5"i§ < Number(param1.pricePoint.campaignPrice)))
         {
            _loc3_ = new CoinShopPopup(§-!S§.NORMAL,§## §.TOP,CoinShopPopup.§]#;§);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            return;
         }
         §4$4§.playSound("Shop_Buy",§4$4§.§1#l§);
         this.§?$4§();
         if(_loc2_)
         {
            (_loc4_ = new §>%§(param1.§"^§,param1.pricePoint,ID)).addEventListener(§?!T§.§@!9§,this.§;#r§);
            _loc4_.addEventListener(§?!T§.§'?§,this.§3$E§);
         }
         else
         {
            if(this.§%"h§)
            {
               this.§%"h§.removeEventListeners();
               this.§%"h§ = null;
            }
            this.§%"h§ = new §>-§(param1.§"^§,param1.pricePoint,§>-§.§,! §,ID);
            this.§%"h§.addEventListener(§?!T§.§0"Z§,this.§,!G§);
            this.§%"h§.addEventListener(§?!T§.§'?§,this.§-"o§);
         }
      }
      
      protected function §-"o§(param1:§?!T§) : void
      {
         this.§0!x§();
         this.§[T§(param1.errorMessage,param1.§8!o§,param1.errorCode.toString());
         if(this.§%"h§)
         {
            this.§%"h§.removeEventListeners();
            this.§%"h§ = null;
         }
      }
      
      protected function §3$E§(param1:§?!T§) : void
      {
         §!",§.§3"1§.§,"&§();
         this.§0!x§();
      }
      
      protected function §[T§(param1:String = null, param2:String = null, param3:String = null) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§-!S§.§ !^§,§## §.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      protected function §,!G§(param1:§?!T§) : void
      {
         var _loc3_:§%"&§ = null;
         §!",§.§3"1§.addEventListener(§!",§.§6p§,this.§<"r§);
         this.§0!x§();
         if(this.§0#H§())
         {
            _loc3_ = new §%"&§();
            if(§'o§)
            {
               switch(this.§>!D§)
               {
                  case §"5§:
                     §'o§.mClip.Container_TabbedShopPopup.contentArea.addChild(_loc3_);
                     break;
                  case §[!4§:
                     this.§6!&§.mClip.contentArea.addChild(_loc3_);
                     break;
                  case §1"d§:
                     this.§]![§.mClip.contentArea.addChild(_loc3_);
               }
               _loc3_.x = this.§ #O§.x - 40;
               _loc3_.y = this.§ #O§.y + 40;
               this.§ #O§ = null;
            }
         }
         var _loc2_:§>-§ = param1.currentTarget as §>-§;
         _loc2_.removeEventListener(§?!T§.§0"Z§,this.§,!G§);
         _loc2_.removeEventListener(§?!T§.§'?§,this.§-"o§);
         §'@§.trackPageView(this,§'@§.§0#6§);
         §'@§.trackTransaction(_loc2_.orderId,§`-§,_loc2_.§"^§.id,_loc2_.§"^§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         §'@§.§2!c§(_loc2_.§"^§.id,this.§%"h§.pricePoint.totalQuantity);
         §'@§.trackPageView(this,§'@§.§0#6§);
         if(_loc2_.pricePoint)
         {
            §'@§.trackTransaction(_loc2_.orderId,§`-§,_loc2_.§"^§.id,_loc2_.§"^§.id,_loc2_.pricePoint.price + " x",_loc2_.pricePoint.price,1,0);
         }
         if(this.§%"h§)
         {
            this.§%"h§.removeEventListeners();
            this.§%"h§ = null;
         }
         _loc2_.removeEventListeners();
      }
      
      private function §0#H§() : Boolean
      {
         return this.§ #O§ && this.§"!<§ == this.§9"V§.§"^§.id;
      }
      
      private function §<"r§(param1:Event) : void
      {
         var _loc2_:§='§ = null;
         §!",§.§3"1§.removeEventListener(§!",§.§6p§,this.§<"r§);
         for each(_loc2_ in this.§7"y§)
         {
            _loc2_.refreshItemCount();
         }
         this.§0!x§();
         this.§8"k§();
      }
      
      private function §?$4§() : void
      {
         §'o§.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = false;
         §'o§.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = false;
         §'o§.mClip.Container_TabbedShopPopup.contentArea.alpha = 0.5;
         this.§6!&§.mClip.contentArea.mouseEnabled = false;
         this.§6!&§.mClip.contentArea.mouseChildren = false;
         this.§6!&§.mClip.contentArea.alpha = 0.5;
         this.§]![§.mClip.contentArea.mouseEnabled = false;
         this.§]![§.mClip.contentArea.mouseChildren = false;
         this.§]![§.mClip.contentArea.alpha = 0.5;
         this.§&T§ = new Timer(2000,1);
         this.§&T§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§""w§,false,0,true);
         this.§&T§.start();
      }
      
      private function §0!x§() : void
      {
         if(§'o§ && §'o§.mClip && §'o§.mClip.Container_TabbedShopPopup && §'o§.mClip.Container_TabbedShopPopup.contentArea)
         {
            §'o§.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = true;
            §'o§.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = true;
            §'o§.mClip.Container_TabbedShopPopup.contentArea.alpha = 1;
         }
         if(this.§6!&§ && this.§6!&§.mClip && this.§6!&§.mClip.contentArea)
         {
            this.§6!&§.mClip.contentArea.mouseEnabled = true;
            this.§6!&§.mClip.contentArea.mouseChildren = true;
            this.§6!&§.mClip.contentArea.alpha = 1;
         }
         if(this.§]![§ && this.§]![§.mClip && this.§]![§.mClip.contentArea)
         {
            this.§]![§.mClip.contentArea.mouseEnabled = true;
            this.§]![§.mClip.contentArea.mouseChildren = true;
            this.§]![§.mClip.contentArea.alpha = 1;
         }
      }
      
      private function §;#r§(param1:§?!T§) : void
      {
         var _loc3_:§%"&§ = null;
         if(this.§0#H§())
         {
            _loc3_ = new §%"&§();
            if(§'o§)
            {
               switch(this.§>!D§)
               {
                  case §"5§:
                     §'o§.mClip.Container_TabbedShopPopup.contentArea.addChild(_loc3_);
                     break;
                  case §1"d§:
                     this.§]![§.mClip.contentArea.addChild(_loc3_);
                     break;
                  case §[!4§:
                     this.§6!&§.mClip.contentArea.addChild(_loc3_);
               }
               _loc3_.x = this.§ #O§.x - 40;
               _loc3_.y = this.§ #O§.y + 40;
               this.§ #O§ = null;
            }
         }
         var _loc2_:§>%§ = param1.currentTarget as §>%§;
         _loc2_.removeEventListener(§?!T§.§@!9§,this.§;#r§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
            var _loc5_:int = 0;
            var _loc6_:* = this.§7"y§;
            while(§§hasnext(_loc6_,_loc5_))
            {
               (§§nextvalue(_loc5_,_loc6_)).refreshItemCount();
            }
         }
         if(§'o§)
         {
            this.§0!x§();
         }
         this.§8"k§();
         §'@§.trackPageView(this,§'@§.§0#6§);
         §'@§.trackTransaction(_loc2_.orderId,§`-§,_loc2_.§"^§.id,_loc2_.§"^§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
      }
      
      private function §<D§(param1:String, param2:String = "GENERAL") : void
      {
         var _loc3_:§='§ = this.§=W§(param1);
         if(!_loc3_)
         {
            _loc3_ = this.§=W§("GoldenSling");
         }
         if(_loc3_)
         {
            this.§4#d§(_loc3_,param2);
         }
      }
      
      private function §=W§(param1:String) : §='§
      {
         var _loc2_:§='§ = null;
         for each(_loc2_ in this.§7"y§)
         {
            if(_loc2_.§"^§.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §4#d§(param1:§='§, param2:String = "GENERAL") : void
      {
         var _loc3_:MovieClip = null;
         if(param2 == §"5§)
         {
            _loc3_ = §'o§.mClip.Container_TabbedShopPopup.contentArea;
         }
         else if(param2 == §[!4§)
         {
            _loc3_ = this.§6!&§.mClip.contentArea;
         }
         else if(param2 == §1"d§)
         {
            _loc3_ = this.§]![§.mClip.contentArea;
         }
         this.§^r§();
         if(this.§9"V§)
         {
            if(_loc3_.contains(this.§9"V§.§'$1§))
            {
               _loc3_.removeChild(this.§9"V§.§'$1§);
            }
         }
         var _loc5_:int = 0;
         var _loc6_:* = this.§7"y§;
         while(§§hasnext(_loc6_,_loc5_))
         {
            (§§nextvalue(_loc5_,_loc6_)).§2!9§();
         }
         param1.select();
         this.§9"V§ = param1;
         _loc3_.addChild(param1.§'$1§);
         §'@§.trackPageView(this,param1.§"^§.id);
         § $4§.§"#n§(param1.§"^§);
      }
      
      private function §^r§() : void
      {
         this.§6!&§.mClip.contentArea.removeChildren();
         §'o§.mClip.Container_TabbedShopPopup.contentArea.removeChildren();
         this.§]![§.mClip.contentArea.removeChildren();
      }
      
      public function get walletContainer() : Sprite
      {
         return §'o§.mClip.Container_Shop_Background;
      }
      
      public function §+E§(param1:Wallet) : void
      {
         param1.removeEventListener(Wallet.§2!M§,this.§1!X§);
         param1.dispose();
         param1 = null;
      }
      
      public function get §4$8§() : Wallet
      {
         return this.§1"w§;
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function §2!^§() : String
      {
         return §'@§.§5"!§;
      }
      
      public function §6#U§() : String
      {
         return §'@§.§7$@§;
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(!this.§7"y§ || this.§7"y§.length == 0)
         {
            this.§9"G§();
         }
         else
         {
            this.§6!]§();
         }
         §'@§.trackPageView(this);
         §'@§.§1$-§();
         var _loc2_:Wallet = new Wallet(this);
         this.§ "@§(_loc2_);
         _loc2_.addEventListener(Wallet.§2!M§,this.§1!X§);
      }
      
      private function §6!]§(param1:Event = null) : void
      {
         if(this.§9"I§ && this.§>!D§)
         {
            switch(this.§>!D§)
            {
               case §"5§:
                  this.§=$-§(true,this.§9"I§);
                  break;
               case §1"d§:
                  this.§",§(true,this.§9"I§);
                  break;
               case §[!4§:
                  this.§1$=§(true,this.§9"I§);
            }
         }
      }
      
      private function §1",§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§='§ = null;
         if(this.§1"w§)
         {
            this.§+E§(this.§1"w§);
         }
         if(this.§@"'§)
         {
            (this.§@"'§ as §="3§).removeEventListener(§8!`§.§>#t§,this.§0"d§);
            (this.§@"'§ as §="3§).removeEventListener(§8!`§.§33§,this.§^#x§);
            (this.§@"'§ as §="3§).removeEventListener(§8!`§.§@,§,this.§<E§);
            this.§@"'§ = null;
         }
         dataModel.§+!J§.removeEventListener(Event.COMPLETE,this.§"W§);
         §!",§.§3"1§.removeEventListener(Event.CHANGE,this.§>!S§);
         §=#c§.§`$ §("handleUserCancelledOrder",this.§!#3§);
         §=#c§.§`$ §("purchaseFailed",this.§0!h§);
         if(this.§%"h§ && this.§%"h§.§^2§)
         {
            this.§%"h§.§^2§ = false;
            §!",§.§3"1§.§,"&§();
         }
         if(this.§%"h§)
         {
            this.§%"h§.removeEventListeners();
         }
         if(this.§7"y§)
         {
            for each(_loc3_ in this.§7"y§)
            {
               _loc3_.dispose();
            }
         }
         this.§0"n§ = null;
         this.§^!d§.removeEventListener(§ l§.§-"i§,this.§>#q§);
         this.§^!d§ = null;
         super.hide(param1,param2);
      }
      
      public function §9M§() : String
      {
         return this.§2!^§() + "-" + this.§6#U§();
      }
      
      protected function §>!S§(param1:Event) : void
      {
         var _loc2_:§='§ = null;
         for each(_loc2_ in this.§7"y§)
         {
            _loc2_.refreshItemCount();
         }
      }
      
      private function §%#h§(param1:Boolean) : void
      {
         if(!§'o§)
         {
            return;
         }
         §'o§.mClip.AngryBirdLoader.visible = param1;
      }
      
      public function §-N§() : Array
      {
         var _loc2_:§='§ = null;
         var _loc1_:Array = new Array();
         for each(_loc2_ in this.§7"y§)
         {
            if(_loc2_ is §8"o§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      private function §1#a§() : void
      {
         this.§@"'§.initialize();
         this.§@"'§.redeem();
      }
      
      private function §""w§(param1:TimerEvent) : void
      {
         if(this.§&T§)
         {
            this.§&T§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§""w§);
            this.§&T§ = null;
            this.§0!x§();
         }
      }
   }
}
