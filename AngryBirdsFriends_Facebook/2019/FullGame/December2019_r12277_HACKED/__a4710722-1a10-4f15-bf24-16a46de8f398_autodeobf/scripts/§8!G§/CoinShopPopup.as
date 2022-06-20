package §8!G§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import § h§.WarningPopup;
   import §!!H§.§ $4§;
   import §#"3§.§"$!§;
   import §#Q§.§ l§;
   import §+!n§.§+!p§;
   import §+Z§.§2!w§;
   import §+Z§.§8!`§;
   import §+Z§.§?!T§;
   import §2$;§.§!"e§;
   import §2$;§.§-$5§;
   import §2E§.§'@§;
   import §2E§.§'r§;
   import §2E§.§]!P§;
   import §4#l§.§%"&§;
   import §4#l§.§0"[§;
   import §4#l§.§8#E§;
   import §4#l§.§>"`§;
   import §4#l§.§^$@§;
   import §4$A§.§=$5§;
   import §5"l§.§0!b§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §9!6§.§## §;
   import §9!6§.AbstractPopup;
   import §<"8§.§ %§;
   import §<"8§.§5!5§;
   import §<8§.§6!1§;
   import §<8§.§8!g§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §>#Y§.§!",§;
   import §>#Y§.§,#b§;
   import §@!_§.§="3§;
   import §@!_§.§>-§;
   import §@!_§.§^"E§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class CoinShopPopup extends AbstractPopup implements §;"P§, §'r§, §=$5§
   {
      
      public static const ID:String = "CoinShopPopup";
      
      public static const §]#;§:String = "Not enough coins!";
      
      public static const §#"R§:String = "Coin Shop";
      
      public static var §[$%§:Boolean = false;
      
      protected static const §-!r§:int = 3;
      
      private static const §="l§:uint = 2;
      
      protected static const §,J§:int = 550;
      
      private static const §!#C§:String = "Button_Pay0";
      
      private static const §>!B§:String = "Button_Pay1";
      
      private static const §`>§:String = "Button_Redeem";
      
      private static const §`-§:String = "In-app Shop Coins";
      
      private static var §%"p§:Class = §^"@§;
      
      private static var §8!E§:§ %§;
       
      
      private var §&6§:Timer;
      
      private var §,!b§:String;
      
      private var §]$A§:int;
      
      private var §?#W§:Boolean = false;
      
      private var §[$5§:Vector.<§0!R§>;
      
      private var §#G§:Boolean = false;
      
      private var §!f§:Boolean = false;
      
      private var §%!5§:String = "";
      
      private var §1"w§:Wallet;
      
      private var §4#!§:§0!R§;
      
      private const §>!_§:int = 0;
      
      private const §8"J§:int = 1;
      
      private const §;"1§:int = 2;
      
      private const §0#x§:int = 3;
      
      private var §1$+§:int = 0;
      
      private var §9#g§:§4!x§;
      
      private var §8"c§:MovieClip;
      
      private var §0#n§:§!"e§;
      
      private var §["2§:Boolean;
      
      private var §^#_§:Boolean;
      
      private var §<!,§:§8#E§;
      
      private var §+#>§:§>"`§;
      
      private var §0!+§:§0"[§;
      
      private var §<#G§:§5"f§;
      
      private var § !Z§:Number = 240;
      
      private var §%"h§:§>-§;
      
      private var §=§:String = "";
      
      private var §@"'§:§^"E§;
      
      private var § '§:Boolean = true;
      
      private var §^"R§:Boolean;
      
      private var §>#R§:Boolean;
      
      private var §^!d§:§ l§;
      
      public function CoinShopPopup(param1:int, param2:int, param3:String = "", param4:XML = null)
      {
         if(param4 == null)
         {
            param4 = §"$!§.§0!T§(§%"p§);
         }
         super(param1,param2,param4,ID);
         this.§%!5§ = param3;
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      override protected function init() : void
      {
         var _loc2_:DisplayObject = null;
         §'o§.getItemByName("Container_CoinShopPopup").setVisibility(true);
         this.§0#n§ = §'o§.getItemByName("Container_Tab_PayByMobile") as §!"e§;
         if(this.§0#n§)
         {
            _loc2_ = §'o§.mClip.Container_CoinShopPopup[§>!B§];
            _loc2_.addEventListener(MouseEvent.CLICK,this.§7#!§);
            this.§8"c§ = this.§0#n§.getItemByName("Container_Country").mClip;
            this.§8"c§.visible = false;
            (this.§0#n§.getItemByName("TextField_ChooseCountry") as §-$5§).setText("Choose your country:");
            this.§0#n§.getItemByName("Button_ActiveCountry").mClip.addEventListener(MouseEvent.CLICK,this.§`!P§);
            this.§0#n§.mClip.btnOK.visible = false;
            this.§0#n§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§1#Q§);
         }
         this.§[$5§ = new Vector.<§0!R§>();
         if(§'o§.mClip.Container_CoinShopPopup.Button_ShopClose)
         {
            §'o§.mClip.Container_CoinShopPopup.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§-"D§);
         }
         if(this.§%!5§ == "")
         {
            this.§%!5§ = §#"R§;
         }
         §'o§.mClip.Container_CoinShopPopup.coinShopTitle.text = this.§%!5§;
         if(§'o§.getItemByName(§!#C§))
         {
            §'o§.getItemByName(§!#C§).mClip.gotoAndStop("Active_Selected");
         }
         §'o§.mClip.Container_CoinShopPopup.coinShopTitle.text = this.§%!5§;
         var _loc1_:§6!1§ = §'o§.getItemByName(§!#C§);
         if(_loc1_)
         {
            _loc1_.mClip.gotoAndStop("Active_Selected");
         }
         this.§&6§ = new Timer(2000,1);
         this.§@L§();
         this.§@"'§ = new §="3§();
         (this.§@"'§ as §="3§).addEventListener(§8!`§.§>#t§,this.§0"d§);
         (this.§@"'§ as §="3§).addEventListener(§8!`§.§33§,this.§^#x§);
         (this.§@"'§ as §="3§).addEventListener(§8!`§.§@,§,this.§<E§);
         this.§^"R§ = false;
         this.§>#R§ = false;
         this.§^!d§ = § l§.§3"1§;
         this.§^!d§.addEventListener(§ l§.§-"i§,this.§>#q§);
      }
      
      private function §>#q§(param1:Event) : void
      {
         this.§%#h§(true);
         if(!dataModel.§+!J§.§ "[§)
         {
            dataModel.§+!J§.addEventListener(Event.COMPLETE,this.§"W§);
         }
         else
         {
            this.§"W§(null,dataModel.§+!J§.§ "[§);
         }
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
      
      private function §>d§(param1:MouseEvent) : void
      {
      }
      
      protected function §`!P§(param1:Event) : void
      {
         this.§!#h§(null);
         this.§7#!§(null);
      }
      
      private function §1#Q§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         this.§!#h§(this.§9#g§.§%"r§ as § %§);
      }
      
      private function §!#h§(param1:§ %§) : void
      {
         §8!E§ = param1;
         if(§8!E§)
         {
            this.§8"c§.visible = false;
            this.§0#n§.mClip.btnOK.visible = false;
            this.§<n§();
            this.§0#n§.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.§0#n§.getItemByName("Button_ActiveCountry").setVisibility(true);
            this.§0#n§.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "<b><u>Country: " + §8!E§.name + "</u></b>";
         }
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         var _loc2_:§0!R§ = null;
         super.show(param1);
         §+!p§.pause();
         this.§ "@§(new Wallet(this,false,true,true));
         this.§["2§ = false;
         this.§^#_§ = false;
         this.§%#h§(true);
         for each(_loc2_ in this.§[$5§)
         {
            _loc2_.setVisible(true);
            _loc2_.addEventListener(§0!R§.§?!a§,this.§;"y§);
         }
         if(this.§0#n§)
         {
            if(!dataModel.§'!<§.§[!k§)
            {
               dataModel.§'!<§.addEventListener(Event.COMPLETE,this.§20§);
               dataModel.§'!<§.§7c§();
               §'o§.getItemByName(§>!B§).setVisibility(false);
            }
            else
            {
               this.§20§(null);
            }
         }
         var _loc3_:DisplayObject = §'o§.mClip.Container_CoinShopPopup[§!#C§];
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.addEventListener(MouseEvent.CLICK,this.§%#6§);
         }
         var _loc4_:Object;
         if(_loc4_ = §'o§.mClip.Container_CoinShopPopup[§`>§])
         {
            _loc4_.addEventListener(MouseEvent.CLICK,this.§=!v§);
         }
         if(!dataModel.§+!J§.§ "[§)
         {
            dataModel.§+!J§.addEventListener(Event.COMPLETE,this.§"W§);
         }
         else
         {
            this.§"W§(null,dataModel.§+!J§.§ "[§);
         }
         §'@§.trackPageView(this);
         §]!P§.§1!7§().§9a§("COIN_SHOP");
         §[$%§ = false;
         this.§&6§.stop();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         switch(param2)
         {
            case "COUNTRY_DROPDOWN":
               if(this.§9#g§.isOpen)
               {
                  this.§9#g§.close();
               }
               else
               {
                  this.§9#g§.open();
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
         if(this.§1$+§ == this.§>!_§ && §'o§.getItemByName(§!#C§))
         {
            §'o§.getItemByName(§!#C§).mClip.gotoAndStop("Active_Selected");
         }
         else if(this.§1$+§ == this.§8"J§ && §'o§.getItemByName(§>!B§))
         {
            §'o§.getItemByName(§>!B§).mClip.gotoAndStop("Active_Selected");
         }
      }
      
      private function §'#Y§() : void
      {
         if(§'o§.getItemByName(§!#C§) && §'o§.getItemByName(§>!B§))
         {
            §'o§.getItemByName(§!#C§).mClip.gotoAndStop("Active_Up_Default");
            §'o§.getItemByName(§>!B§).mClip.gotoAndStop("Active_Up_Default");
         }
         if(§'o§.getItemByName(§`>§))
         {
            §'o§.getItemByName(§`>§).mClip.gotoAndStop("Active_Up_Default");
         }
      }
      
      protected function §%#6§(param1:Event) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         this.§0#n§.setVisibility(false);
         this.§1$+§ = this.§>!_§;
         this.§4#!§ = null;
         this.§'#Y§();
         §'o§.getItemByName(§!#C§).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.§+!J§.§ "[§)
         {
            dataModel.§+!J§.addEventListener(Event.COMPLETE,this.§"W§);
         }
         else
         {
            this.§"W§(null,dataModel.§+!J§.§ "[§);
         }
         this.§@L§();
      }
      
      protected function §20§(param1:§2!w§) : void
      {
         dataModel.§'!<§.removeEventListener(Event.COMPLETE,this.§20§);
         this.§["2§ = true;
         this.§%#h§(false);
         if(!dataModel.§'!<§.§4?§() || dataModel.§'!<§.§4?§().length == 0)
         {
            §'o§.getItemByName(§>!B§).setVisibility(false);
            return;
         }
         §'o§.getItemByName(§>!B§).setVisibility(true);
         if(this.§1$+§ == this.§8"J§)
         {
            this.§0#n§.setVisibility(true);
            §'o§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            §'o§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         if(param1)
         {
            if(param1.§<"D§ || dataModel.§'!<§.§4?§().length == 1)
            {
               if(param1.§<"D§)
               {
                  this.§!#h§(param1.§<"D§);
               }
               else
               {
                  this.§!#h§(dataModel.§'!<§.§4?§()[0]);
               }
               this.§0#n§.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "";
            }
            else if(!param1.§5!h§)
            {
            }
         }
         else if(dataModel.§'!<§.§4?§().length == 1)
         {
            this.§!#h§(dataModel.§'!<§.§4?§()[0]);
         }
         else
         {
            this.§!#h§(§8!E§);
         }
         this.§9#g§ = new §4!x§(this.§8"c§,§5!5§,dataModel.§'!<§.§4?§());
         this.§9#g§.§;9§ = 140;
         var _loc2_:Number = (this.§9#g§.data.length + 1) * this.§9#g§.§5"u§.height;
         if(_loc2_ > this.§ !Z§)
         {
            _loc2_ = this.§ !Z§;
         }
         this.§9#g§.§1"=§ = _loc2_;
         this.§8"c§.Country_DropDownContainer.height = _loc2_ + 30;
         this.§9#g§.§false§ = 0;
         this.§8"c§.selectedValue.mouseChildren = false;
         this.§8"c§.selectedValue.mouseEnabled = false;
         this.§8"c§.arrow.mouseEnabled = false;
         this.§9#g§.addEventListener(Event.CLOSE,this.§=#`§);
         this.§9#g§.addEventListener(Event.OPEN,this.§4"e§);
         this.§=#`§(null);
         this.§9#g§.addEventListener(Event.CHANGE,this.§^"G§);
      }
      
      protected function §4"e§(param1:Event) : void
      {
         this.§8"c§.Country_DropDownContainer.visible = true;
      }
      
      protected function §=#`§(param1:Event) : void
      {
         this.§8"c§.Country_DropDownContainer.visible = false;
      }
      
      protected function §^"G§(param1:Event) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         this.§]#G§();
         §'o§.mClip.Container_CoinShopPopup.Container_Tab_PayByMobile.btnOK.visible = true;
      }
      
      protected function §7#!§(param1:Event) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         this.§1$+§ = this.§8"J§;
         this.§4#!§ = null;
         this.§'#Y§();
         §'o§.getItemByName(§>!B§).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.§'!<§.§[!k§)
         {
            this.§0#n§.setVisibility(false);
         }
         else
         {
            this.§0#n§.setVisibility(true);
         }
         §'o§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
         §'o§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         if(§8!E§ == null)
         {
            this.§8"c§.visible = true;
            this.§0#n§.getItemByName("TextField_ChooseCountry").setVisibility(true);
            this.§0#n§.mClip.btnOK.visible = true;
            this.§0#n§.getItemByName("Button_ActiveCountry").setVisibility(false);
            this.§]#G§();
         }
         else
         {
            this.§8"c§.visible = false;
            this.§0#n§.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.§0#n§.mClip.btnOK.visible = false;
            this.§0#n§.getItemByName("Button_ActiveCountry").setVisibility(dataModel.§'!<§.§4?§().length > 1);
            this.§<n§();
         }
         this.§@L§();
      }
      
      private function §]#G§() : void
      {
         var _loc1_:§0!R§ = null;
         var _loc2_:MovieClip = null;
         for each(_loc1_ in this.§[$5§)
         {
            _loc1_.setVisible(false);
         }
         _loc2_ = §'o§.mClip.Container_CoinShopPopup.ContentUpperRow;
         _loc2_.visible = false;
         _loc2_ = §'o§.mClip.Container_CoinShopPopup.ContentLowerRow;
         _loc2_.visible = false;
      }
      
      private function §<n§() : void
      {
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§0"[§ = null;
         var _loc8_:§0!R§ = null;
         if(§8!E§ == null)
         {
         }
         if(this.§<!,§ == null)
         {
            this.§]#G§();
            return;
         }
         if(this.§[$5§ && this.§[$5§.length > 0)
         {
            var _loc9_:int = 0;
            var _loc10_:* = this.§[$5§;
            while(§§hasnext(_loc10_,_loc9_))
            {
               (§§nextvalue(_loc9_,_loc10_)).disable();
            }
         }
         var _loc1_:§^$@§ = this.§##'§(§8!E§.§#"d§);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 2)
         {
            (_loc5_ = _loc3_ == 0 ? §'o§.mClip.Container_CoinShopPopup.ContentUpperRow : §'o§.mClip.Container_CoinShopPopup.ContentLowerRow).visible = false;
            _loc6_ = 0;
            while(_loc6_ < §-!r§)
            {
               if(!_loc1_)
               {
                  break;
               }
               if(!(_loc7_ = _loc1_.§1!d§(_loc2_)))
               {
                  break;
               }
               (_loc8_ = new §+"G§(_loc2_,_loc7_,_loc1_.currencyID,"ButtonBuyBirdCoinAll",_loc7_.id)).addEventListener(§0!R§.§?!a§,this.§;"y§);
               this.§[$5§.push(_loc8_);
               _loc5_.visible = true;
               _loc5_.addChild(_loc8_.getGraphics());
               _loc8_.x = §,J§ / §-!r§ * _loc6_;
               _loc2_++;
               _loc6_++;
            }
            _loc3_++;
         }
      }
      
      private function §##'§(param1:String) : §^$@§
      {
         var _loc2_:§^$@§ = null;
         var _loc3_:§^$@§ = null;
         for each(_loc3_ in dataModel.§'!<§.§[!k§)
         {
            if(_loc3_.§#"d§ == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function §+E§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §4$8§() : Wallet
      {
         return this.§1"w§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §'o§.mClip.Container_CoinShopPopup;
      }
      
      private function §0!h§() : void
      {
         this.§ '§ = true;
         this.§,!b§ = null;
         this.§]$A§ = 0;
      }
      
      protected function §>#§(param1:String, param2:Number, param3:Boolean) : void
      {
         var _loc4_:§%"&§ = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         this.§ '§ = true;
         this.§?#W§ = false;
         this.§>#R§ = param3;
         if(this.§4#!§)
         {
            _loc4_ = new §%"&§();
            this.§4#!§.getGraphics().addChild(_loc4_);
            this.§^"R§ = true;
            if(param3)
            {
               _loc4_.addEventListener(§%"&§.§,$%§,this.§%4§,false,0,true);
            }
            else
            {
               _loc4_.addEventListener(§%"&§.§,$%§,this.§`"J§,false,0,true);
            }
         }
         else
         {
            this.§^"R§ = false;
            if(param3)
            {
               this.§^#_§ = false;
               dataModel.§+!J§.addEventListener(Event.COMPLETE,this.§"W§);
               dataModel.§+!J§.§!$"§(true);
            }
         }
         if(this.§%"h§)
         {
            this.§%"h§.removeEventListener(§?!T§.§0"Z§,this.§,!G§);
            this.§%"h§.removeEventListener(§?!T§.§'?§,this.§-"o§);
            this.§%"h§.removeEventListeners();
            this.§%"h§ = null;
         }
         §[$%§ = false;
         if(this.§,!b§)
         {
            _loc5_ = [_loc6_];
            dispatchEvent(new §?!T§(§?!T§.§@!9§,false,false,_loc5_));
            _loc6_ = {};
            §'@§.§2!c§(this.§,!b§,this.§]$A§);
            §'@§.trackPageView(this,§'@§.§0#6§);
            if((_loc7_ = dataModel.§+!J§ && dataModel.§+!J§.§ "[§ && dataModel.§+!J§.§ "[§.length > 0 && dataModel.§+!J§.§ "[§[0] && dataModel.§+!J§.§ "[§[0].currencyID ? dataModel.§+!J§.§ "[§[0].currencyID : this.§=§) && _loc7_ != "")
            {
               this.§=§ = _loc7_;
            }
            if(this.§+#>§)
            {
               _loc6_ = {
                  "product":this.§,!b§,
                  "pricePoint":this.§+#>§.§5<§
               };
               §'@§.trackTransaction(param1,§`-§,this.§,!b§,this.§,!b§,this.§]$A§ + " x",this.§+#>§.§5<§,1,0);
            }
            else if(this.§0!+§)
            {
               _loc6_ = {
                  "product":"VirtualCurrency_" + param2,
                  "pricePoint":this.§0!+§.§5<§
               };
               §'@§.trackTransaction(param1,§`-§,this.§,!b§,this.§,!b§,this.§]$A§ + " x",this.§0!+§.§5<§,1,0);
            }
            this.§,!b§ = null;
            this.§]$A§ = 0;
            this.§+#>§ = null;
            this.§0!+§ = null;
         }
      }
      
      private function §`"J§(param1:Event) : void
      {
         this.§^"R§ = false;
      }
      
      private function §%4§(param1:Event) : void
      {
         this.§^#_§ = false;
         dataModel.§+!J§.addEventListener(Event.COMPLETE,this.§"W§);
         dataModel.§+!J§.§!$"§(true);
         this.§^"R§ = false;
         this.§>#R§ = true;
      }
      
      private function getPricePoint(param1:String) : §>"`§
      {
         var _loc3_:§8#E§ = null;
         var _loc4_:int = 0;
         var _loc5_:§>"`§ = null;
         var _loc2_:int = parseInt(param1.replace("VirtualCurrency_",""));
         if(dataModel.§+!J§.§ "[§)
         {
            for each(_loc3_ in dataModel.§+!J§.§ "[§)
            {
               if(_loc3_.id == "VirtualCurrency")
               {
                  _loc4_ = 0;
                  while(_loc4_ < _loc3_.§+!2§())
                  {
                     if((_loc5_ = _loc3_.getPricePoint(_loc4_)).totalQuantity == _loc2_)
                     {
                        return _loc5_;
                     }
                     _loc4_++;
                  }
               }
            }
         }
         return null;
      }
      
      private function §"W§(param1:Event = null, param2:Vector.<§8#E§> = null) : void
      {
         if(param1)
         {
            param2 = dataModel.§+!J§.§ "[§;
         }
         if(param2.length > 0)
         {
            this.§<!,§ = param2[0];
         }
         else
         {
            this.§<!,§ = null;
            this.§]#G§();
         }
         if(this.§<!,§ && this.§<!,§.currencyID)
         {
            this.§=§ = this.§<!,§.currencyID;
         }
         this.§^#_§ = true;
         dataModel.§+!J§.removeEventListener(Event.COMPLETE,this.§"W§);
         if(!this.§^"R§)
         {
            this.§%#h§(false);
         }
         this.§>#R§ = false;
         if(dataModel.§+!J§.§ "[§ && dataModel.§+!J§.§ "[§.length > 0)
         {
            § $4§.§"#n§(dataModel.§+!J§.§ "[§[0]);
         }
      }
      
      public function injectData(param1:§8#E§) : void
      {
         var _loc9_:§0!R§ = null;
         var _loc10_:§0!R§ = null;
         var _loc11_:int = 0;
         if(this.§1$+§ != this.§>!_§)
         {
            return;
         }
         if(this.§[$5§ && this.§[$5§.length > 0)
         {
            var _loc12_:int = 0;
            var _loc13_:* = this.§[$5§;
            while(§§hasnext(_loc13_,_loc12_))
            {
               (§§nextvalue(_loc12_,_loc13_)).disable();
            }
         }
         this.§[$5§ = new Vector.<§0!R§>();
         var _loc3_:uint = Math.min(2,param1.§+!2§());
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_)
         {
            (_loc9_ = new §5#M§(_loc4_,param1.getPricePoint(_loc4_),param1.currencyID,"ButtonCoinshopNewLarge",param1.id)).addEventListener(§0!R§.§?!a§,this.§;"y§);
            this.§[$5§.push(_loc9_);
            _loc4_++;
         }
         while(_loc4_ < param1.§+!2§())
         {
            (_loc10_ = new § "L§(_loc4_,param1.getPricePoint(_loc4_),param1.currencyID,"ButtonCoinshopNewSmall",param1.id)).addEventListener(§0!R§.§?!a§,this.§;"y§);
            this.§[$5§.push(_loc10_);
            _loc4_++;
         }
         var _loc5_:MovieClip;
         (_loc5_ = §'o§.mClip.Container_CoinShopPopup.ContentUpperRow).visible = false;
         var _loc6_:int = §="l§ - 1;
         while(_loc6_ >= 0)
         {
            if(_loc6_ < this.§[$5§.length)
            {
               _loc5_.visible = true;
               _loc5_.addChild(this.§[$5§[_loc6_].getGraphics());
               this.§[$5§[_loc6_].x = §,J§ / §="l§ * _loc6_;
            }
            _loc6_--;
         }
         (_loc5_ = §'o§.mClip.Container_CoinShopPopup.ContentLowerRow).visible = false;
         var _loc7_:int = §-!r§ - 1;
         while(_loc7_ >= 0)
         {
            if((_loc11_ = §="l§ + _loc7_) < this.§[$5§.length)
            {
               _loc5_.visible = true;
               _loc5_.addChild(this.§[$5§[_loc11_].getGraphics());
               this.§[$5§[_loc11_].x = §,J§ / §-!r§ * _loc7_;
            }
            _loc7_--;
         }
      }
      
      protected function §;"y§(param1:Event) : void
      {
         var _loc5_:§8#E§ = null;
         var _loc6_:§^$@§ = null;
         if(!dataModel.§+!J§.§ "[§)
         {
            return;
         }
         this.§ '§ = false;
         var _loc2_:§0!R§ = param1.currentTarget as §0!R§;
         var _loc3_:int = _loc2_.§%$!§();
         var _loc4_:String = dataModel.§+!J§.§ "[§[0].id;
         this.§4#!§ = param1.currentTarget as §0!R§;
         switch(this.§1$+§)
         {
            case this.§>!_§:
               _loc5_ = dataModel.§+!J§.§ "[§[0];
               this.§+#>§ = _loc5_.getPricePoint(_loc3_);
               this.§+#>§.§&$+§();
               if(_loc5_.currencyID != "USD")
               {
                  this.§<#G§ = new §5"f§();
                  this.§<#G§.addEventListener(Event.COMPLETE,this.§+#g§);
                  this.§<#G§.addEventListener(IOErrorEvent.IO_ERROR,this.§"$4§);
                  this.§<#G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"$4§);
                  this.§<#G§.dataFormat = URLLoaderDataFormat.TEXT;
                  this.§<#G§.load(§!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + _loc5_.currencyID + "&to=USD"));
               }
               else
               {
                  this.buyItem();
               }
               break;
            case this.§8"J§:
               _loc6_ = this.§##'§(§8!E§.§#"d§);
               this.§0!+§ = _loc6_.§1!d§(_loc3_);
               this.§0!+§.§&$+§();
               if(_loc6_.currencyID != "USD")
               {
                  this.§<#G§ = new §5"f§();
                  this.§<#G§.addEventListener(Event.COMPLETE,this.§"">§);
                  this.§<#G§.addEventListener(IOErrorEvent.IO_ERROR,this.§1"8§);
                  this.§<#G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1"8§);
                  this.§<#G§.dataFormat = URLLoaderDataFormat.TEXT;
                  this.§<#G§.load(§!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + _loc6_.currencyID + "&to=USD"));
               }
               else
               {
                  this.§3!e§();
               }
         }
         §'@§.trackPageView(this,_loc4_);
      }
      
      private function §"$4§(param1:Event) : void
      {
         this.buyItem();
      }
      
      private function §+#g§(param1:Event = null) : void
      {
         if(param1 && param1.currentTarget && param1.currentTarget.data != null && param1.currentTarget.data != "" && this.§+#>§)
         {
            if(this.§+#>§)
            {
               this.§+#>§.§5<§ *= param1.currentTarget.data;
            }
         }
         this.buyItem();
      }
      
      private function §1"8§(param1:Event) : void
      {
         this.§3!e§();
      }
      
      private function §"">§(param1:Event = null) : void
      {
         if(param1.currentTarget.data != null && param1.currentTarget.data != "")
         {
            this.§0!+§.§5<§ *= param1.currentTarget.data;
         }
         this.§3!e§();
      }
      
      protected function §3!e§() : void
      {
         if(!§[$%§)
         {
            this.§?#W§ = true;
            this.§]$A§ = this.§0!+§.totalQuantity;
            this.§,!b§ = dataModel.§+!J§.§ "[§[0].id + "_PayByMobile_" + this.§0!+§.totalQuantity + "_" + this.§0!+§.§ k§;
            AngryBirdsBase.singleton.exitFullScreen();
            §[$%§ = true;
            if(this.§%"h§)
            {
               this.§%"h§.removeEventListeners();
               this.§%"h§ = null;
            }
            this.§,!o§(false);
            this.§%"h§ = new §>-§(dataModel.§+!J§.§ "[§[0],this.§0!+§,§>-§.§%#s§,ID);
            this.§%"h§.addEventListener(§?!T§.§0"Z§,this.§,!G§);
            this.§%"h§.addEventListener(§?!T§.§'?§,this.§-"o§);
            this.§%"h§.addEventListener(§>-§.§2Z§,this.§;-§);
            §'@§.§]!l§(this.§,!b§,this.§]$A§);
         }
      }
      
      protected function §-"o§(param1:§?!T§) : void
      {
         this.§[T§(param1.errorMessage,param1.§8!o§,param1.errorCode.toString());
         this.§ '§ = true;
         this.§?#W§ = false;
         if(this.§%"h§)
         {
            this.§%"h§.removeEventListener(§?!T§.§'?§,this.§-"o§);
            this.§%"h§.removeEventListeners();
            this.§%"h§ = null;
         }
         §[$%§ = false;
         this.§,!b§ = null;
         this.§]$A§ = 0;
         this.§+#>§ = null;
         this.§0!+§ = null;
         this.§,!o§(true);
      }
      
      protected function §[T§(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§-!S§.§ !^§,§## §.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      private function §"!9§(param1:TimerEvent) : void
      {
         this.§&6§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§"!9§);
         §[$%§ = false;
      }
      
      protected function buyItem() : void
      {
         var _loc1_:§8#E§ = null;
         if(!§[$%§ && !this.§^"R§ && !this.§>#R§ && this.§^#_§)
         {
            this.§?#W§ = true;
            if(this.§+#>§)
            {
               this.§]$A§ = this.§+#>§.totalQuantity;
               this.§,!b§ = dataModel.§+!J§.§ "[§ && dataModel.§+!J§.§ "[§.length > 0 && dataModel.§+!J§.§ "[§[0].ogo ? dataModel.§+!J§.§ "[§[0].ogo + "_" + this.§+#>§.totalQuantity : "";
            }
            AngryBirdsBase.singleton.exitFullScreen();
            §[$%§ = true;
            if(this.§%"h§)
            {
               this.§%"h§.removeEventListeners();
               this.§%"h§ = null;
            }
            _loc1_ = dataModel.§+!J§ && dataModel.§+!J§.§ "[§ && dataModel.§+!J§.§ "[§.length > 0 ? dataModel.§+!J§.§ "[§[0] : null;
            this.§,!o§(false);
            this.§%"h§ = new §>-§(_loc1_,this.§+#>§,§>-§.§,! §,ID);
            this.§%"h§.addEventListener(§?!T§.§0"Z§,this.§,!G§);
            this.§%"h§.addEventListener(§?!T§.§'?§,this.§-"o§);
            §'@§.§]!l§(this.§,!b§,this.§]$A§);
            this.§%"h§.addEventListener(§>-§.§2Z§,this.§;-§);
         }
      }
      
      protected function §,!G§(param1:Event) : void
      {
         var _loc2_:§>-§ = param1.currentTarget as §>-§;
         _loc2_.removeEventListener(§?!T§.§0"Z§,this.§,!G§);
         _loc2_.removeEventListener(§?!T§.§'?§,this.§-"o§);
         this.§>#§(_loc2_.orderId,_loc2_.pricePoint.totalQuantity,_loc2_.pricePoint.needsReloadAfterPurchase);
         this.§,!o§(true);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§0!R§ = null;
         var _loc4_:Object = null;
         for each(_loc3_ in this.§[$5§)
         {
            _loc3_.removeEventListener(§0!R§.§?!a§,this.§;"y§);
         }
         if(_loc4_ = §'o§.mClip.Container_CoinShopPopup[§`>§])
         {
            _loc4_.removeEventListener(MouseEvent.CLICK,this.§=!v§);
         }
         super.hide(param1,param2);
         this.§#G§ = false;
         this.§!f§ = false;
         if(this.§?#W§)
         {
            this.§?#W§ = false;
            §!",§.§3"1§.§,"&§();
         }
         dataModel.§+!J§.removeEventListener(Event.COMPLETE,this.§"W§);
         dataModel.§'!<§.removeEventListener(Event.COMPLETE,this.§20§);
         if(this.§0#n§ && this.§0#n§.mClip)
         {
            this.§0#n§.setVisibility(false);
         }
         if(this.§@"'§)
         {
            (this.§@"'§ as §="3§).removeEventListener(§8!`§.§>#t§,this.§0"d§);
            (this.§@"'§ as §="3§).removeEventListener(§8!`§.§33§,this.§^#x§);
            (this.§@"'§ as §="3§).removeEventListener(§8!`§.§@,§,this.§<E§);
            this.§@"'§ = null;
         }
         this.§^!d§.removeEventListener(§ l§.§-"i§,this.§>#q§);
         this.§^!d§ = null;
      }
      
      override public function dispose() : void
      {
         this.§+E§(this.§1"w§);
         super.dispose();
      }
      
      private function §-"D§(param1:MouseEvent) : void
      {
         if(!this.§ '§)
         {
            return;
         }
         close();
         dispatchEvent(new §0!b§(§0!b§.CLOSE,this));
      }
      
      public function §2!^§() : String
      {
         return §'@§.§5"!§;
      }
      
      public function §6#U§() : String
      {
         return §'@§.§6#V§;
      }
      
      public function §9M§() : String
      {
         return this.§2!^§() + "-" + this.§6#U§();
      }
      
      private function §@L§() : void
      {
         §'o§.getItemByName(§!#C§).setEnabled(this.§1$+§ != this.§>!_§);
         §'o§.getItemByName(§>!B§).setEnabled(this.§1$+§ != this.§8"J§);
         §'o§.getItemByName(§`>§).setEnabled(this.§1$+§ != this.§0#x§);
      }
      
      private function §%#h§(param1:Boolean) : void
      {
         if(!§'o§)
         {
            return;
         }
         if(param1)
         {
            §'o§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = true;
            §'o§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            §'o§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         else if(this.§["2§ && this.§^#_§)
         {
            §'o§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
            if(this.§<!,§)
            {
               this.injectData(this.§<!,§);
            }
         }
      }
      
      private function §=!v§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         §'o§.getItemByName(§`>§).mClip.gotoAndStop("Active_Selected");
         this.§@"'§.initialize();
         this.§@"'§.redeem();
      }
      
      private function §,!o§(param1:Boolean) : void
      {
         var _loc2_:§0!R§ = null;
         for each(_loc2_ in this.§[$5§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §!"S§() : void
      {
         this.§ '§ = true;
         §[$%§ = false;
         this.§,!o§(true);
      }
      
      public function §?J§() : void
      {
         §[$%§ = false;
         this.§ '§ = true;
         this.§,!o§(true);
      }
      
      private function §;-§(param1:Event) : void
      {
         §[$%§ = false;
         this.§ '§ = true;
         this.§,!o§(true);
      }
   }
}
