package §7",§
{
   import § o§.§ 0§;
   import § o§.§%"!§;
   import § o§.RedeemCodePopup;
   import § o§.WarningPopup;
   import §!@§.§&"R§;
   import §!@§.§&$#§;
   import §!@§.§-#$§;
   import §!@§.§;"k§;
   import §!@§.§<"U§;
   import §%#A§.§,#w§;
   import §%#A§.§]!_§;
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&"J§.§4"W§;
   import §&"J§.§`]§;
   import §+!C§.§@!^§;
   import §+"E§.§#!S§;
   import §+"E§.§8#m§;
   import §+"E§.§9"z§;
   import §1#W§.§!#&§;
   import §6!0§.§ "8§;
   import §6"r§.§!#A§;
   import §6V§.§7#M§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §8#D§.§=>§;
   import §9"0§.CoinShopPopup;
   import §;P§.§-#b§;
   import §;P§.§super§;
   import §<"1§.§'"S§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §=#C§.§6!u§;
   import §=#C§.§7"G§;
   import §[!E§.§>#`§;
   import §[§.§]"w§;
   import §^#]§.§@!g§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class TabbedShopPopup extends AbstractPopup implements §7#M§, §8[§, §]"w§
   {
      
      public static const ID:String = "TabbedShopPopup";
      
      private static const §91§:int = -35;
      
      private static const §`#H§:int = -15;
      
      private static const §[!r§:String = "In-app Shop";
      
      public static const §'!h§:String = "uiSoundsChannel";
      
      private static const §6#y§:int = 8;
      
      public static const §+6§:String = "SLINGSHOT";
      
      public static const §>$>§:String = "GENERAL";
      
      public static const §+!7§:String = "SPECIAL";
      
      private static var §>!]§:Boolean;
      
      public static const §>#l§:String = "SlingshotFirstTab";
       
      
      public var §3!B§:Wallet;
      
      private var §3k§:§"$8§;
      
      private var §8!q§:§"$8§;
      
      private var §`"l§:§"$8§;
      
      private var §'S§:§"$8§;
      
      private var §[!`§:§"$8§;
      
      private var MIGHTY_EAGLE:§"$8§;
      
      private var WINGMAN:§"$8§;
      
      private var §3!O§:§"$8§;
      
      private var §0"I§:§"$8§;
      
      private var §7!d§:Array;
      
      private var §9"u§:§"$8§;
      
      private var §!!R§:String = "";
      
      private var §^"@§:String;
      
      private var §2"a§:Point;
      
      private var §@$-§:§]!_§;
      
      private var §7#s§:§]!_§;
      
      private var §+<§:§]!_§;
      
      private var §@$5§:§]!_§;
      
      private var §=!v§:§]!_§;
      
      private var §?"6§:MovieClip;
      
      private var §^#n§:MovieClip;
      
      private var §0!S§:String;
      
      private var §?!V§:§<"U§;
      
      private var §^!A§:Timer;
      
      private var §]!N§:§ 0§;
      
      private var §3$5§:Boolean = true;
      
      private var §0#S§:String = "ShopTabsInitialzed";
      
      private var §8#&§:§&"R§;
      
      private var §'%§:Dictionary;
      
      private var §,"u§:Timer;
      
      private var §;!H§:Boolean;
      
      private var §&"t§:§>#`§;
      
      private var §<i§:int;
      
      public function TabbedShopPopup(param1:int, param2:int, param3:String = "", param4:String = "GENERAL", param5:Boolean = false)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_TabbedShop[0],ID);
         this.§0!S§ = param4;
         this.§^"@§ = param3;
         this.§;!H§ = param5;
         addEventListener(this.§0#S§,this.§5#5§);
      }
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      override protected function init() : void
      {
         var _loc3_:MovieClip = null;
         super.init();
         this.§6!&§(true);
         this.§@$-§ = §1"6§.getItemByName("Container_Shop_Branded") as §]!_§;
         this.§7#s§ = §1"6§.getItemByName("Container_Shop_Slingshots") as §]!_§;
         this.§+<§ = §1"6§.getItemByName("Container_TabbedShopPopup") as §]!_§;
         this.§@$5§ = §1"6§.getItemByName("Container_Shop_Selection_Buttons") as §]!_§;
         this.§=!v§ = §1"6§.getItemByName("Container_Shop_Selection_Extras") as §]!_§;
         §1"6§.mClip.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         § "8§.addCallback("handleUserCancelledOrder",this.§0!i§);
         § "8§.addCallback("purchaseFailed",this.§#!9§);
         if(!§>!]§)
         {
            §>!]§ = true;
         }
         §4"W§.§ "D§.addEventListener(Event.CHANGE,this.§0#H§);
         var _loc1_:int = 0;
         while(_loc1_ < §6#y§)
         {
            _loc3_ = §1"6§.mClip.Container_TabbedShopPopup["powerupTab" + _loc1_];
            if(_loc3_)
            {
               _loc3_.gotoAndStop("Normal");
            }
            _loc1_++;
         }
         this.§@"C§();
         this.§8#&§ = new §-#$§();
         (this.§8#&§ as §-#$§).addEventListener(§8#m§.§,#y§,this.§1$'§);
         (this.§8#&§ as §-#$§).addEventListener(§8#m§.§?E§,this.§["G§);
         (this.§8#&§ as §-#$§).addEventListener(§8#m§.§`y§,this.§1"I§);
         var _loc2_:§,#w§ = this.§=!v§.getItemByName("Button_EarnBirdCoins") as §,#w§;
         if(_loc2_)
         {
            _loc2_.visible = dataModel.§5"9§;
         }
         if(this.§^"@§ == "")
         {
            §?!=§.§3!q§().§]f§("SHOP_MAIN",this.§;!H§);
         }
         this.§&"t§ = §>#`§.§ "D§;
         this.§&"t§.addEventListener(§>#`§.§0!D§,this.§2"#§);
      }
      
      private function §2"#§(param1:Event) : void
      {
         var _loc2_:§"$8§ = null;
         this.§6!&§(true);
         for each(_loc2_ in this.§7!d§)
         {
            _loc2_.dispose();
         }
         this.§@"C§();
      }
      
      protected function §1"I§(param1:§8#m§) : void
      {
      }
      
      protected function §["G§(param1:§8#m§) : void
      {
      }
      
      protected function §1$'§(param1:§8#m§) : void
      {
         §`"5§.§!>§("FacebookGiftCard",param1.quantity);
      }
      
      private function §#!9§() : void
      {
      }
      
      private function §0!i§() : void
      {
      }
      
      private function §@"C§() : void
      {
         if(!dataModel.§#"r§.§ #q§)
         {
            §4"W§.§ "D§.§@!z§();
            dataModel.§#"r§.addEventListener(Event.COMPLETE,this.§&q§);
         }
         else
         {
            this.§&q§(null,dataModel.§#"r§.§ #q§);
         }
      }
      
      protected function §4`§(param1:Event) : void
      {
      }
      
      protected function §@!f§(param1:Event) : void
      {
         var _loc3_:§#!S§ = null;
         var _loc2_:§2#i§ = this.§1X§("BrandedShopBundle",dataModel.§#"r§.§,#@§);
         if(_loc2_)
         {
            _loc3_ = new §#!S§(§#!S§.§8!d§,TabbedShopPopup.§+!7§,false,false,_loc2_,_loc2_.getPricePoint(0));
            this.§2$,§(_loc3_);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         var _loc4_:CoinShopPopup = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHOP_BRANDED":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§]-§(true);
               §?!=§.§3!q§().§]f§("SHOP_BRANDED");
               break;
            case "SHOP_SLINGSHOTS":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§8!9§(true);
               §?!=§.§3!q§().§]f§("SHOP_SLINGSHOTS");
               break;
            case "SHOP_POWERUPS":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§9!I§(true);
               §?!=§.§3!q§().§]f§("SHOP_POWERUPS");
               break;
            case "SHOP_VC":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               _loc4_ = new CoinShopPopup(§%"!§.NORMAL,§^#o§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
               break;
            case "BACK":
               §!#&§.playSound("Menu_Back",§!#&§.§6#h§);
               this.§1Q§(true);
               break;
            case "INFO":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§""j§();
               break;
            case "REDEEM":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§7!]§();
               break;
            case "EARNCOINS":
               §!#&§.playSound("Menu_Confirm");
               AngryBirdsBase.singleton.exitFullScreen();
               § "8§.§ "§("earnCredits");
               break;
            case "REDEEM_CODE":
               §!#&§.playSound("Menu_Confirm");
               this.§!#N§();
         }
      }
      
      private function §!#N§() : void
      {
         var _loc1_:RedeemCodePopup = new RedeemCodePopup(§%"!§.§4!P§,§^#o§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      private function §""j§() : void
      {
         var _loc1_:§-#b§ = §super§.§="=§(this.§^"@§);
         var _loc2_:String = "";
         var _loc3_:String = "";
         if(_loc1_)
         {
            _loc2_ = _loc1_.§,!&§;
            _loc3_ = _loc1_.description;
         }
         if(!_loc1_)
         {
            if(this.§^"@§ == §super§.§4T§.§?"9§)
            {
               _loc2_ = §super§.§4T§.§,!&§;
               _loc3_ = §super§.§4T§.description;
            }
            switch(this.§0!S§)
            {
               case §+6§:
                  _loc2_ = "Slingshots";
                  _loc3_ = "Slingshots are permanent items that can be used in any level and changed between shots. Buy once, keep forever!";
                  break;
               case §+!7§:
                  _loc2_ = "Specials";
                  _loc3_ = "These items are only available for a limited time!";
            }
         }
         this.§]!N§ = new § 0§(§1"6§.mClip,_loc2_,_loc3_,§%"!§.§4!P§,§^#o§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§]!N§);
      }
      
      private function §1Q§(param1:Boolean) : void
      {
         this.§^"@§ = "";
         this.§@$5§.setVisibility(param1);
         this.§=!v§.setVisibility(this.§@$5§.visible);
         this.§@$-§.setVisibility(!param1);
         this.§7#s§.setVisibility(!param1);
         this.§+<§.setVisibility(!param1);
         if(param1)
         {
            this.§?!%§();
         }
      }
      
      private function §]-§(param1:Boolean, param2:String = "") : void
      {
         if(param2 == "")
         {
            this.§^"@§ = this.§^!F§(0);
         }
         this.§0!S§ = §+!7§;
         this.§4O§(this.§^"@§,§+!7§);
         this.§@$5§.setVisibility(!param1);
         this.§=!v§.setVisibility(this.§@$5§.visible);
         this.§@$-§.setVisibility(param1);
         this.§7#s§.setVisibility(!param1);
         this.§+<§.setVisibility(!param1);
      }
      
      private function §^!F§(param1:int) : String
      {
         var _loc4_:§"$8§ = null;
         var _loc2_:Array = [];
         var _loc3_:String = "";
         for each(_loc4_ in this.§7!d§)
         {
            if(_loc4_ is §-!Q§)
            {
               _loc2_.push(_loc4_);
            }
         }
         if(_loc2_.length > param1 && _loc2_[param1])
         {
            _loc3_ = §-!Q§(_loc2_[param1]).§in§.id;
         }
         return _loc3_;
      }
      
      private function §8!9§(param1:Boolean, param2:String = "") : void
      {
         if(param2 == "")
         {
            param2 = "GoldenSling";
         }
         else if(param2 == §>#l§)
         {
            if(this.§@!=§().length > 0)
            {
               param2 = (this.§@!=§()[0] as §<#w§).§in§.id;
            }
         }
         this.§^"@§ = param2;
         this.§0!S§ = §+6§;
         this.§4O§(this.§^"@§,§+6§);
         this.§@$5§.setVisibility(!param1);
         this.§=!v§.setVisibility(this.§@$5§.visible);
         this.§@$-§.setVisibility(!param1);
         this.§7#s§.setVisibility(param1);
         this.§+<§.setVisibility(!param1);
      }
      
      private function §9!I§(param1:Boolean, param2:String = "ExtraBird") : void
      {
         this.§^"@§ = param2;
         this.§0!S§ = §>$>§;
         this.§4O§(this.§^"@§);
         this.§@$5§.setVisibility(!param1);
         this.§=!v§.setVisibility(this.§@$5§.visible);
         this.§@$-§.setVisibility(!param1);
         this.§7#s§.setVisibility(!param1);
         this.§+<§.setVisibility(param1);
         this.§+<§.getItemByName("Button_Back").setVisibility(this.§3$5§);
      }
      
      private function §&q§(param1:Event = null, param2:Vector.<§2#i§> = null) : void
      {
         var _loc9_:Object = null;
         var _loc10_:§,#w§ = null;
         this.§6!&§(false);
         if(param1)
         {
            param2 = dataModel.§#"r§.§ #q§;
         }
         this.§%!$§(param2);
         var _loc3_:Boolean = true;
         if(dataModel.§#"r§.§,#@§ && dataModel.§#"r§.§,#@§.length > 0)
         {
            this.§6!g§(dataModel.§#"r§.§,#@§);
            _loc3_ = false;
         }
         if(dataModel.§#"r§.slingshots && dataModel.§#"r§.slingshots.length > 0)
         {
            this.§=#w§(dataModel.§#"r§.slingshots);
            _loc3_ = false;
         }
         dispatchEvent(new Event(this.§0#S§));
         var _loc4_:§,#w§ = this.§@$5§.getItemByName("Button_Shop_Selection_" + §;"k§.§1"J§) as §,#w§;
         var _loc5_:§,#w§ = this.§@$5§.getItemByName("Button_Shop_Selection_" + §;"k§.§<Y§) as §,#w§;
         var _loc6_:§,#w§ = this.§@$5§.getItemByName("Button_Shop_Selection_" + §;"k§.§?!f§) as §,#w§;
         var _loc7_:§,#w§ = this.§@$5§.getItemByName("Button_Shop_Selection_" + §;"k§.§5"h§) as §,#w§;
         if(_loc4_ && dataModel.§#"r§.§,#@§.length == 0)
         {
            this.§@$5§.§#!N§(_loc4_);
         }
         if(_loc5_ && dataModel.§#"r§.slingshots.length == 0)
         {
            this.§@$5§.§#!N§(_loc5_);
         }
         if(_loc6_ && dataModel.§#"r§.§ #q§.length == 0)
         {
            this.§@$5§.§#!N§(_loc6_);
         }
         if(_loc7_ && dataModel.§#"r§.§'"I§.length == 0)
         {
            this.§@$5§.§#!N§(_loc7_);
         }
         if(_loc3_)
         {
            this.§3$5§ = false;
            if(this.§^"@§ == "")
            {
               this.§^"@§ = "ExtraBird";
            }
            this.§9!I§(true,this.§^"@§);
            return;
         }
         var _loc8_:int = 0;
         for each(_loc9_ in dataModel.§#"r§.shops)
         {
            if(_loc10_ = this.§@$5§.getItemByName("Button_Shop_Selection_" + _loc9_.id) as §,#w§)
            {
               _loc10_.x = _loc8_ * (_loc10_.width + 20);
               _loc8_++;
            }
         }
         this.§?!%§();
         this.§@$5§.x = AngryBirdsBase.screenWidth / 2 - this.§@$5§.width / 2;
         dataModel.§#"r§.removeEventListener(Event.COMPLETE,this.§&q§);
      }
      
      private function §?!%§() : void
      {
         var _loc2_:Object = null;
         var _loc3_:§,#w§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Object = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc1_:int = 0;
         if(!this.§'%§)
         {
            this.§'%§ = new Dictionary();
         }
         §`]§(AngryBirdsBase.singleton.dataModel).§7!Z§ = false;
         §`]§(AngryBirdsBase.singleton.dataModel).§9q§ = false;
         §`]§(AngryBirdsBase.singleton.dataModel).§@!$§ = false;
         for each(_loc2_ in dataModel.§#"r§.shops)
         {
            _loc3_ = this.§@$5§.getItemByName("Button_Shop_Selection_" + _loc2_.id) as §,#w§;
            if(_loc3_)
            {
               _loc4_ = false;
               _loc5_ = false;
               switch(_loc2_.id)
               {
                  case §;"k§.§1"J§:
                     _loc3_.setVisibility(dataModel.§#"r§.§,#@§.length > 0);
                     if(_loc4_ = this.§<l§(dataModel.§#"r§.§,#@§,false))
                     {
                        §`]§(AngryBirdsBase.singleton.dataModel).§9q§ = true;
                     }
                     _loc5_ = this.§ $!§(dataModel.§#"r§.§,#@§);
                     break;
                  case §;"k§.§<Y§:
                     _loc3_.setVisibility(dataModel.§#"r§.slingshots.length > 0);
                     if(_loc4_ = this.§<l§(dataModel.§#"r§.slingshots,true))
                     {
                        §`]§(AngryBirdsBase.singleton.dataModel).§7!Z§ = true;
                     }
                     _loc5_ = this.§ $!§(dataModel.§#"r§.slingshots);
                     break;
                  case §;"k§.§?!f§:
                     _loc3_.setVisibility(dataModel.§#"r§.§ #q§.length > 0);
                     if(_loc4_ = this.§<l§(dataModel.§#"r§.§ #q§,false))
                     {
                        §`]§(AngryBirdsBase.singleton.dataModel).§9q§ = true;
                     }
                     _loc5_ = this.§ $!§(dataModel.§#"r§.§ #q§);
                     break;
                  case §;"k§.§5"h§:
                     _loc3_.setVisibility(dataModel.§#"r§.§'"I§.length > 0);
                     if(_loc4_ = this.§<l§(dataModel.§#"r§.§'"I§,false))
                     {
                        §`]§(AngryBirdsBase.singleton.dataModel).§@!$§ = true;
                     }
                     _loc5_ = this.§ $!§(dataModel.§#"r§.§'"I§);
               }
               _loc3_.mClip.title.text = _loc2_.name;
               if(_loc5_)
               {
                  if(!this.§'%§[_loc2_.id] || !this.§'%§[_loc2_.id].newIconAdded)
                  {
                     (_loc8_ = new (_loc7_ = §+$#§.§["`§("Tag_New_Big"))()).name = "Tag_New_Big";
                     _loc3_.mClip.addChild(_loc8_);
                     (_loc6_ = !!this.§'%§[_loc2_.id] ? this.§'%§[_loc2_.id] : new Object()).newIconAdded = true;
                     this.§'%§[_loc2_.id] = _loc6_;
                  }
               }
               else
               {
                  if(_loc9_ = _loc3_.mClip.getChildByName("Tag_New_Big") as MovieClip)
                  {
                     _loc3_.mClip.removeChild(_loc9_);
                  }
                  if(this.§'%§[_loc2_.id] && this.§'%§[_loc2_.id].newIconAdded)
                  {
                     this.§'%§[_loc2_.id].newIconAdded = false;
                  }
               }
               if(_loc4_)
               {
                  if(!this.§'%§[_loc2_.id] || !this.§'%§[_loc2_.id].saleIconAdded)
                  {
                     if(_loc5_)
                     {
                        (_loc8_ = new (_loc7_ = §+$#§.§["`§("Tag_Sale_Big_right_side"))()).x = (_loc3_.width >> 1) + 5;
                     }
                     else
                     {
                        _loc8_ = new (_loc7_ = §+$#§.§["`§("Tag_Sale_Big"))();
                     }
                     _loc8_.name = "Tag_Sale_Big";
                     _loc3_.mClip.addChild(_loc8_);
                     (_loc6_ = !!this.§'%§[_loc2_.id] ? this.§'%§[_loc2_.id] : new Object()).saleIconAdded = true;
                     this.§'%§[_loc2_.id] = _loc6_;
                  }
               }
               else
               {
                  if(_loc9_ = _loc3_.mClip.getChildByName("Tag_Sale_Big") as MovieClip)
                  {
                     _loc3_.mClip.removeChild(_loc9_);
                  }
                  if(this.§'%§[_loc2_.id] && this.§'%§[_loc2_.id].saleIconAdded)
                  {
                     this.§'%§[_loc2_.id].saleIconAdded = false;
                  }
               }
            }
            _loc1_++;
         }
         (§!#A§.§>q§ as §-#+§).§4"T§();
      }
      
      private function § $!§(param1:Vector.<§2#i§>) : Boolean
      {
         var _loc2_:§2#i§ = null;
         for each(_loc2_ in param1)
         {
            if(this.§+&§(_loc2_.id))
            {
               return true;
            }
         }
         return false;
      }
      
      private function §+&§(param1:String) : Boolean
      {
         var _loc2_:int = §`]§(AngryBirdsBase.singleton.dataModel).§^#h§.indexOf(param1);
         var _loc3_:* = §`]§(AngryBirdsBase.singleton.dataModel).§^#h§.indexOf(param1) > -1;
         if(!_loc3_)
         {
            _loc3_ = §`]§(AngryBirdsBase.singleton.dataModel).§!"z§.indexOf(param1) > -1;
         }
         return _loc3_;
      }
      
      private function §<l§(param1:Vector.<§2#i§>, param2:Boolean) : Boolean
      {
         var _loc3_:§2#i§ = null;
         for each(_loc3_ in param1)
         {
            if(!(param2 && §4"W§.§ "D§.§04§(_loc3_.id) > 0 && !§@!^§.§]"K§))
            {
               if(_loc3_.isOnSale)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function §!#m§(param1:Vector.<§2#i§>) : Boolean
      {
         var _loc2_:§2#i§ = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§`@§)
            {
               return true;
            }
         }
         return false;
      }
      
      private function §=#w§(param1:Vector.<§2#i§>) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         _loc2_ = param1.length;
         _loc3_ = this.§7#s§.mClip.getChildByName("TabsHolder") as MovieClip;
         var _loc4_:Class;
         _loc6_ = (_loc5_ = new (_loc4_ = §+$#§.§["`§("slingshotTab"))()).width >> 1;
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
         this.§ $-§(param1);
      }
      
      private function § $-§(param1:Vector.<§2#i§>) : int
      {
         var _loc3_:§2#i§ = null;
         var _loc4_:§6!u§ = null;
         var _loc5_:§"$8§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            if(_loc4_ = §7"G§.§-o§(_loc3_.id))
            {
               _loc5_ = this.§!G§(this.§1X§(_loc3_.id,param1),"Icon_Slingshot_" + _loc3_.id,"SlingshopContent" + _loc3_.id,_loc4_.description,_loc4_.§,!&§,_loc2_);
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      private function §6!g§(param1:Vector.<§2#i§>) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Class = null;
         var _loc9_:MovieClip = null;
         var _loc2_:Number = this.§@$-§.mClip.width;
         var _loc3_:int = param1.length;
         var _loc4_:MovieClip = this.§@$-§.mClip.getChildByName("TabsHolder") as MovieClip;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = _loc2_ * (_loc6_ / _loc3_) + _loc2_ / _loc3_ * 0.5;
            _loc8_ = §+$#§.§["`§("powerupTab");
            this.§^#n§ = new _loc8_();
            this.§^#n§.x = _loc6_ * 118;
            this.§^#n§.y = 12;
            this.§^#n§.name = "TabBranded_" + _loc6_;
            this.§^#n§.visible = false;
            _loc4_.addChild(this.§^#n§);
            _loc4_.x = 40;
            if(!this.§@$-§.mClip.contains(_loc4_))
            {
               this.§@$-§.mClip.addChild(_loc4_);
            }
            (_loc9_ = new MovieClip()).graphics.beginFill(16777215,0);
            _loc9_.graphics.drawRect(0,0,this.§@$-§.mClip.width,this.§@$-§.mClip.height);
            _loc9_.graphics.endFill();
            _loc9_.visible = false;
            _loc9_.name = "BrandedTabContainer_" + _loc6_;
            _loc9_.width = _loc2_;
            _loc9_.y = this.§^#n§.y + this.§^#n§.height;
            this.§@$-§.mClip.addChildAt(_loc9_,1);
            _loc6_++;
         }
         this.§5$9§(param1);
      }
      
      private function §5$9§(param1:Vector.<§2#i§>) : void
      {
         var s:§2#i§ = null;
         var powerupDef:§-#b§ = null;
         var isSpecialPowerup:Boolean = false;
         var owned:Boolean = false;
         var validUntil:Date = null;
         var title:String = null;
         var brandedTab:§"$8§ = null;
         var shopItems:Vector.<§2#i§> = param1;
         var i:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = shopItems;
         for(; §§hasnext(_loc4_,_loc3_); i++)
         {
            s = §§nextvalue(_loc3_,_loc4_);
            powerupDef = §super§.§0!h§(s.id);
            isSpecialPowerup = false;
            if(!powerupDef)
            {
               powerupDef = §super§.§="u§(s.id);
               if(powerupDef)
               {
                  isSpecialPowerup = true;
               }
            }
            owned = powerupDef && §4"W§.§ "D§.§@^§(powerupDef.§?"9§) > 0;
            try
            {
               validUntil = new Date();
               validUntil.time = s.getPricePoint(0).§[!h§;
               title = powerupDef.§,!&§;
               if(!isSpecialPowerup)
               {
                  title = "Infinite " + powerupDef.§,!&§;
               }
               brandedTab = this.§'"v§(this.§1X§(s.id,shopItems),s.id + "_Icon","Button_Shop_Branded_" + s.id,powerupDef.§@"m§,title,i,owned,validUntil);
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      private function §'"v§(param1:§2#i§, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Date = null) : §"$8§
      {
         var _loc10_:MovieClip;
         var _loc9_:MovieClip;
         (_loc10_ = (_loc9_ = this.§@$-§.mClip.getChildByName("TabsHolder") as MovieClip).getChildByName("TabBranded_" + param6) as MovieClip).visible = true;
         if(param1 == null)
         {
            _loc10_.visible = false;
            return null;
         }
         var _loc11_:§-!Q§;
         (_loc11_ = new §-!Q§(param1,param2,param3,_loc10_,param4,param5,1,param7,param8)).addEventListener(§#!S§.§,"p§,this.§%7§);
         _loc11_.addEventListener(§#!S§.§8!d§,this.§2$,§);
         this.§7!d§.push(_loc11_);
         return _loc11_;
      }
      
      private function §!G§(param1:§2#i§, param2:String, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false) : §"$8§
      {
         var _loc11_:Class = null;
         var _loc12_:MovieClip = null;
         var _loc13_:Class = null;
         var _loc14_:MovieClip = null;
         var _loc9_:MovieClip;
         var _loc8_:MovieClip;
         (_loc9_ = (_loc8_ = this.§7#s§.mClip.getChildByName("TabsHolder") as MovieClip).getChildByName("TabSlingshot_" + param6) as MovieClip).visible = true;
         if(param1 == null)
         {
            _loc9_.visible = false;
            return null;
         }
         var _loc10_:§<#w§;
         (_loc10_ = new §<#w§(param1,param2,param3,_loc9_,param4,param5,1,param7)).addEventListener(§#!S§.§,"p§,this.§'3§);
         _loc10_.addEventListener(§#!S§.§8!d§,this.§2$,§);
         this.§7!d§.push(_loc10_);
         if(this.§+&§(param1.id))
         {
            (_loc12_ = new (_loc11_ = §+$#§.§["`§("MovieClip_NewTag_TopBar"))()).name = "MovieClip_NewTag_TopBar";
            _loc12_.y = §`#H§;
            _loc9_.addChild(_loc12_);
         }
         else if((_loc12_ = _loc9_.getChildByName("MovieClip_NewTag_TopBar") as MovieClip) && _loc12_.parent)
         {
            _loc12_.parent.removeChild(_loc12_);
         }
         if(param1.isOnSale && (!_loc10_.§[!-§() || §@!^§.§]"K§))
         {
            (_loc14_ = new (_loc13_ = §+$#§.§["`§("MovieClip_SaleTag_TopBar"))()).name = "Sale";
            _loc14_.y = §`#H§;
            _loc9_.addChild(_loc14_);
         }
         else if((_loc14_ = _loc9_.getChildByName("Sale") as MovieClip) && _loc14_.parent)
         {
            _loc14_.parent.removeChild(_loc14_);
         }
         return _loc10_;
      }
      
      protected function §'3§(param1:§#!S§) : void
      {
         var _loc2_:§"$8§ = param1.currentTarget as §"$8§;
         if(_loc2_)
         {
            this.§^"@§ = _loc2_.§in§.id;
            this.§0!S§ = §+6§;
            this.§'h§(_loc2_,§+6§);
            §!#&§.playSound("Shop_Selection",§!#&§.§6#h§,0,0.7);
         }
      }
      
      protected function §%7§(param1:§#!S§) : void
      {
         var _loc2_:§"$8§ = param1.currentTarget as §"$8§;
         if(_loc2_)
         {
            this.§^"@§ = _loc2_.§in§.id;
            this.§0!S§ = §+!7§;
            this.§'h§(_loc2_,§+!7§);
            §!#&§.playSound("Shop_Selection",§!#&§.§6#h§,0,0.7);
         }
      }
      
      private function §%!$§(param1:Vector.<§2#i§>) : void
      {
         this.§2#!§(param1);
         this.§4O§(this.§^"@§);
      }
      
      private function §2#!§(param1:Vector.<§2#i§>) : void
      {
         this.§7!d§ = [];
         this.§<i§ = 0;
         this.§3k§ = this.§2!O§(this.§1X§(§super§.§5"b§,param1),"PowerupBundleIcon","ShopContentPowerupBundle","Each pack contains one Super Seed, Sling Scope, King Sling and Birdquake making it the perfect solution to all your piggy problems.");
         this.§8!q§ = this.§2!O§(this.§1X§(§super§.§@"B§.§?"9§,param1),"SuperSeedsIcon","ShopContentSuperSeeds","Supersize your bird! Super Seeds turn any bird into a pig-popping giant.");
         this.§'S§ = this.§2!O§(this.§1X§(§super§.§&"l§.§?"9§,param1),"KingSlingIcon","ShopContentKingSling","Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!");
         this.§`"l§ = this.§2!O§(this.§1X§(§super§.§!!y§.§?"9§,param1),"SlingScopeIcon","ShopContentSlingScope","Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!");
         this.§[!`§ = this.§2!O§(this.§1X§(§super§.§+!d§.§?"9§,param1),"BirdQuakeIcon","ShopContentBirdQuake","Rattle the battle! Use the Birdquake to bring pigs\' defenses crashing to the ground!");
         this.WINGMAN = this.§2!O§(this.§1X§(§super§.§#"[§.§?"9§,param1),"ExtraBirdIcon","ShopContentExtraBird","Call the Wingman to demolish your enemies and impress your friends. Only useable in Tournaments.");
         this.MIGHTY_EAGLE = this.§2!O§(this.§1X§(§super§.§["0§.§?"9§,param1),"MightyEagleIcon","ShopContentMightyEagle","Summon the Mighty Eagle to wreak havoc on the pigs and collect Total Destruction feathers. Only useable in story levels.");
         this.§0"I§ = this.§2!O§(this.§1X§(§super§.§9!T§.§?"9§,param1),"MushroomIcon","ShopContentMushroom","Create a mighty bloom of mushrooms beneath the pigs and topple their towers! Only useable in the Pig Tales levels.");
      }
      
      private function §1X§(param1:String, param2:Vector.<§2#i§>) : §2#i§
      {
         var _loc3_:§2#i§ = null;
         for each(_loc3_ in param2)
         {
            if(_loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function §2!O§(param1:§2#i§, param2:String, param3:String, param4:String) : §"$8§
      {
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:Class = null;
         var _loc10_:MovieClip = null;
         var _loc5_:MovieClip = §1"6§.mClip.Container_TabbedShopPopup["powerupTab" + this.§<i§];
         ++this.§<i§;
         if(param1 == null)
         {
            _loc5_.visible = false;
            return null;
         }
         var _loc6_:§"$8§ = new §"$8§(param1,param2,param3,_loc5_,param4,4);
         if(this.§+&§(param1.id))
         {
            (_loc8_ = new (_loc7_ = §+$#§.§["`§("MovieClip_NewTag_TopBar"))()).name = "MovieClip_NewTag_TopBar";
            _loc8_.x = §91§;
            _loc8_.y = §`#H§;
            _loc5_.addChild(_loc8_);
         }
         else if((_loc8_ = _loc5_.getChildByName("MovieClip_NewTag_TopBar") as MovieClip) && _loc8_.parent)
         {
            _loc8_.parent.removeChild(_loc8_);
         }
         if(param1.isOnSale)
         {
            (_loc10_ = new (_loc9_ = §+$#§.§["`§("MovieClip_SaleTag_TopBar"))()).name = "MovieClip_SaleTag_TopBar";
            _loc10_.x = §91§;
            _loc10_.y = §`#H§;
            _loc5_.addChild(_loc10_);
         }
         else if((_loc10_ = _loc5_.getChildByName("MovieClip_SaleTag_TopBar") as MovieClip) && _loc10_.parent)
         {
            _loc10_.parent.removeChild(_loc10_);
         }
         _loc6_.addEventListener(§#!S§.§,"p§,this.§%#j§);
         _loc6_.addEventListener(§#!S§.§8!d§,this.§2$,§);
         this.§7!d§.push(_loc6_);
         return _loc6_;
      }
      
      private function §%#j§(param1:§#!S§) : void
      {
         var _loc2_:§"$8§ = param1.currentTarget as §"$8§;
         if(_loc2_)
         {
            this.§^"@§ = _loc2_.§in§.id;
            this.§0!S§ = §>$>§;
            this.§'h§(_loc2_,§>$>§);
            §!#&§.playSound("Shop_Selection",§!#&§.§6#h§,0,0.7);
         }
      }
      
      private function §2$,§(param1:§#!S§) : void
      {
         var _loc3_:CoinShopPopup = null;
         var _loc4_:§&$#§ = null;
         var _loc2_:* = param1.§in§.currencyID == "IVC";
         if(param1.point)
         {
            this.§2"a§ = new Point(param1.point.x,param1.point.y);
         }
         this.§!!R§ = this.§9"u§.§in§.id;
         if(_loc2_ && (dataModel.§>p§.§5##§ < param1.pricePoint.price && (isNaN(param1.pricePoint.campaignPrice) || Number(param1.pricePoint.campaignPrice) <= 0) || dataModel.§>p§.§5##§ < Number(param1.pricePoint.campaignPrice)))
         {
            _loc3_ = new CoinShopPopup(§%"!§.NORMAL,§^#o§.TOP,CoinShopPopup.§%#=§);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            return;
         }
         §!#&§.playSound("Shop_Buy",§!#&§.§6#h§);
         this.§#!p§();
         if(_loc2_)
         {
            (_loc4_ = new §&$#§(param1.§in§,param1.pricePoint,ID)).addEventListener(§9"z§.§9$>§,this.§66§);
            _loc4_.addEventListener(§9"z§.§@H§,this.§"!6§);
         }
         else
         {
            if(this.§?!V§)
            {
               this.§?!V§.removeEventListeners();
               this.§?!V§ = null;
            }
            this.§?!V§ = new §<"U§(param1.§in§,param1.pricePoint,§<"U§.§ $4§,ID);
            this.§?!V§.addEventListener(§9"z§.§2!c§,this.§<$#§);
            this.§?!V§.addEventListener(§9"z§.§@H§,this.§=$#§);
         }
      }
      
      protected function §=$#§(param1:§9"z§) : void
      {
         this.§`4§();
         this.§=!,§(param1.errorMessage,param1.§7$+§,param1.errorCode.toString());
         if(this.§?!V§)
         {
            this.§?!V§.removeEventListeners();
            this.§?!V§ = null;
         }
      }
      
      protected function §"!6§(param1:§9"z§) : void
      {
         §4"W§.§ "D§.§@!z§();
         this.§`4§();
      }
      
      protected function §=!,§(param1:String = null, param2:String = null, param3:String = null) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§%"!§.§4!P§,§^#o§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      protected function §<$#§(param1:§9"z§) : void
      {
         var _loc3_:§7!P§ = null;
         §4"W§.§ "D§.addEventListener(§4"W§.§`!X§,this.§<$6§);
         this.§`4§();
         if(this.§5!q§())
         {
            _loc3_ = new §7!P§();
            if(§1"6§)
            {
               switch(this.§0!S§)
               {
                  case §>$>§:
                     §1"6§.mClip.Container_TabbedShopPopup.contentArea.addChild(_loc3_);
                     break;
                  case §+!7§:
                     this.§@$-§.mClip.contentArea.addChild(_loc3_);
                     break;
                  case §+6§:
                     this.§7#s§.mClip.contentArea.addChild(_loc3_);
               }
               _loc3_.x = this.§2"a§.x - 40;
               _loc3_.y = this.§2"a§.y + 40;
               this.§2"a§ = null;
            }
         }
         var _loc2_:§<"U§ = param1.currentTarget as §<"U§;
         _loc2_.removeEventListener(§9"z§.§2!c§,this.§<$#§);
         _loc2_.removeEventListener(§9"z§.§@H§,this.§=$#§);
         §`"5§.trackPageView(this,§`"5§.§9>§);
         §`"5§.trackTransaction(_loc2_.orderId,§[!r§,_loc2_.§in§.id,_loc2_.§in§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         §`"5§.§0"o§(_loc2_.§in§.id,this.§?!V§.pricePoint.totalQuantity);
         §`"5§.trackPageView(this,§`"5§.§9>§);
         if(_loc2_.pricePoint)
         {
            §`"5§.trackTransaction(_loc2_.orderId,§[!r§,_loc2_.§in§.id,_loc2_.§in§.id,_loc2_.pricePoint.price + " x",_loc2_.pricePoint.price,1,0);
         }
         if(this.§?!V§)
         {
            this.§?!V§.removeEventListeners();
            this.§?!V§ = null;
         }
         _loc2_.removeEventListeners();
      }
      
      private function §5!q§() : Boolean
      {
         return this.§2"a§ && this.§!!R§ == this.§9"u§.§in§.id;
      }
      
      private function §<$6§(param1:Event) : void
      {
         var _loc2_:§"$8§ = null;
         §4"W§.§ "D§.removeEventListener(§4"W§.§`!X§,this.§<$6§);
         for each(_loc2_ in this.§7!d§)
         {
            _loc2_.refreshItemCount();
         }
         this.§`4§();
         this.§?!%§();
      }
      
      private function §#!p§() : void
      {
         §1"6§.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = false;
         §1"6§.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = false;
         §1"6§.mClip.Container_TabbedShopPopup.contentArea.alpha = 0.5;
         this.§@$-§.mClip.contentArea.mouseEnabled = false;
         this.§@$-§.mClip.contentArea.mouseChildren = false;
         this.§@$-§.mClip.contentArea.alpha = 0.5;
         this.§7#s§.mClip.contentArea.mouseEnabled = false;
         this.§7#s§.mClip.contentArea.mouseChildren = false;
         this.§7#s§.mClip.contentArea.alpha = 0.5;
         this.§,"u§ = new Timer(2000,1);
         this.§,"u§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§,#x§,false,0,true);
         this.§,"u§.start();
      }
      
      private function §`4§() : void
      {
         if(§1"6§ && §1"6§.mClip && §1"6§.mClip.Container_TabbedShopPopup && §1"6§.mClip.Container_TabbedShopPopup.contentArea)
         {
            §1"6§.mClip.Container_TabbedShopPopup.contentArea.mouseEnabled = true;
            §1"6§.mClip.Container_TabbedShopPopup.contentArea.mouseChildren = true;
            §1"6§.mClip.Container_TabbedShopPopup.contentArea.alpha = 1;
         }
         if(this.§@$-§ && this.§@$-§.mClip && this.§@$-§.mClip.contentArea)
         {
            this.§@$-§.mClip.contentArea.mouseEnabled = true;
            this.§@$-§.mClip.contentArea.mouseChildren = true;
            this.§@$-§.mClip.contentArea.alpha = 1;
         }
         if(this.§7#s§ && this.§7#s§.mClip && this.§7#s§.mClip.contentArea)
         {
            this.§7#s§.mClip.contentArea.mouseEnabled = true;
            this.§7#s§.mClip.contentArea.mouseChildren = true;
            this.§7#s§.mClip.contentArea.alpha = 1;
         }
      }
      
      private function §66§(param1:§9"z§) : void
      {
         var _loc3_:§7!P§ = null;
         var _loc4_:§"$8§ = null;
         if(this.§5!q§())
         {
            _loc3_ = new §7!P§();
            if(§1"6§)
            {
               switch(this.§0!S§)
               {
                  case §>$>§:
                     §1"6§.mClip.Container_TabbedShopPopup.contentArea.addChild(_loc3_);
                     break;
                  case §+6§:
                     this.§7#s§.mClip.contentArea.addChild(_loc3_);
                     break;
                  case §+!7§:
                     this.§@$-§.mClip.contentArea.addChild(_loc3_);
               }
               _loc3_.x = this.§2"a§.x - 40;
               _loc3_.y = this.§2"a§.y + 40;
               this.§2"a§ = null;
            }
         }
         var _loc2_:§&$#§ = param1.currentTarget as §&$#§;
         _loc2_.removeEventListener(§9"z§.§9$>§,this.§66§);
         if(param1.changedItems && param1.changedItems.length > 0)
         {
            for each(_loc4_ in this.§7!d§)
            {
               _loc4_.refreshItemCount();
            }
         }
         if(§1"6§)
         {
            this.§`4§();
         }
         this.§?!%§();
         §`"5§.trackPageView(this,§`"5§.§9>§);
         §`"5§.trackTransaction(_loc2_.orderId,§[!r§,_loc2_.§in§.id,_loc2_.§in§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
      }
      
      private function §4O§(param1:String, param2:String = "GENERAL") : void
      {
         var _loc3_:§"$8§ = this.§=O§(param1);
         if(!_loc3_)
         {
            _loc3_ = this.§=O§("GoldenSling");
         }
         if(_loc3_)
         {
            this.§'h§(_loc3_,param2);
         }
      }
      
      private function §=O§(param1:String) : §"$8§
      {
         var _loc2_:§"$8§ = null;
         for each(_loc2_ in this.§7!d§)
         {
            if(_loc2_.§in§.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §'h§(param1:§"$8§, param2:String = "GENERAL") : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:§"$8§ = null;
         if(param2 == §>$>§)
         {
            _loc3_ = §1"6§.mClip.Container_TabbedShopPopup.contentArea;
         }
         else if(param2 == §+!7§)
         {
            _loc3_ = this.§@$-§.mClip.contentArea;
         }
         else if(param2 == §+6§)
         {
            _loc3_ = this.§7#s§.mClip.contentArea;
         }
         this.§ #`§();
         if(this.§9"u§)
         {
            if(_loc3_.contains(this.§9"u§.§6d§))
            {
               _loc3_.removeChild(this.§9"u§.§6d§);
            }
         }
         for each(_loc4_ in this.§7!d§)
         {
            _loc4_.§"!L§();
         }
         param1.select();
         this.§9"u§ = param1;
         _loc3_.addChild(param1.§6d§);
         §`"5§.trackPageView(this,param1.§in§.id);
         §@!g§.§;n§(param1.§in§);
      }
      
      private function § #`§() : void
      {
         this.§@$-§.mClip.contentArea.removeChildren();
         §1"6§.mClip.Container_TabbedShopPopup.contentArea.removeChildren();
         this.§7#s§.mClip.contentArea.removeChildren();
      }
      
      public function get walletContainer() : Sprite
      {
         return §1"6§.mClip.Container_Shop_Background;
      }
      
      public function §"#H§(param1:Wallet) : void
      {
         param1.removeEventListener(Wallet.§,#Q§,this.§4`§);
         param1.dispose();
         param1 = null;
      }
      
      public function get §2",§() : Wallet
      {
         return this.§3!B§;
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function §<"b§() : String
      {
         return §`"5§.§7"C§;
      }
      
      public function §>"-§() : String
      {
         return §`"5§.§=!f§;
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         super.show(param1);
         if(!this.§7!d§ || this.§7!d§.length == 0)
         {
            this.§@"C§();
         }
         else
         {
            this.§5#5§();
         }
         §`"5§.trackPageView(this);
         §`"5§.§<#"§();
         var _loc2_:Wallet = new Wallet(this);
         this.§##Y§(_loc2_);
         _loc2_.addEventListener(Wallet.§,#Q§,this.§4`§);
      }
      
      private function §5#5§(param1:Event = null) : void
      {
         if(this.§^"@§ && this.§0!S§)
         {
            switch(this.§0!S§)
            {
               case §>$>§:
                  this.§9!I§(true,this.§^"@§);
                  break;
               case §+6§:
                  this.§8!9§(true,this.§^"@§);
                  break;
               case §+!7§:
                  this.§]-§(true,this.§^"@§);
            }
         }
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§"$8§ = null;
         if(this.§3!B§)
         {
            this.§"#H§(this.§3!B§);
         }
         if(this.§8#&§)
         {
            (this.§8#&§ as §-#$§).removeEventListener(§8#m§.§,#y§,this.§1$'§);
            (this.§8#&§ as §-#$§).removeEventListener(§8#m§.§?E§,this.§["G§);
            (this.§8#&§ as §-#$§).removeEventListener(§8#m§.§`y§,this.§1"I§);
            this.§8#&§ = null;
         }
         dataModel.§#"r§.removeEventListener(Event.COMPLETE,this.§&q§);
         §4"W§.§ "D§.removeEventListener(Event.CHANGE,this.§0#H§);
         § "8§.§+#R§("handleUserCancelledOrder",this.§0!i§);
         § "8§.§+#R§("purchaseFailed",this.§#!9§);
         if(this.§?!V§ && this.§?!V§.§6#r§)
         {
            this.§?!V§.§6#r§ = false;
            §4"W§.§ "D§.§@!z§();
         }
         if(this.§?!V§)
         {
            this.§?!V§.removeEventListeners();
         }
         if(this.§7!d§)
         {
            for each(_loc3_ in this.§7!d§)
            {
               _loc3_.dispose();
            }
         }
         this.§'%§ = null;
         this.§&"t§.removeEventListener(§>#`§.§0!D§,this.§2"#§);
         this.§&"t§ = null;
         super.hide(param1,param2);
      }
      
      public function §-"K§() : String
      {
         return this.§<"b§() + "-" + this.§>"-§();
      }
      
      protected function §0#H§(param1:Event) : void
      {
         var _loc2_:§"$8§ = null;
         for each(_loc2_ in this.§7!d§)
         {
            _loc2_.refreshItemCount();
         }
      }
      
      private function §6!&§(param1:Boolean) : void
      {
         if(!§1"6§)
         {
            return;
         }
         §1"6§.mClip.AngryBirdLoader.visible = param1;
      }
      
      public function §@!=§() : Array
      {
         var _loc2_:§"$8§ = null;
         var _loc1_:Array = new Array();
         for each(_loc2_ in this.§7!d§)
         {
            if(_loc2_ is §<#w§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      private function §7!]§() : void
      {
         this.§8#&§.initialize();
         this.§8#&§.redeem();
      }
      
      private function §,#x§(param1:TimerEvent) : void
      {
         if(this.§,"u§)
         {
            this.§,"u§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§,#x§);
            this.§,"u§ = null;
            this.§`4§();
         }
      }
   }
}
