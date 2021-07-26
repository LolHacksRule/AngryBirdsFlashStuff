package §"c§
{
   import § §.§!";§;
   import § §.§%e§;
   import § §.§<!1§;
   import §!#C§.§ $?§;
   import §!#C§.§4!Q§;
   import §"!n§.§;"x§;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §#,§.§]$+§;
   import §#,§.§`"$§;
   import §&!_§.§!!K§;
   import §&!_§.§,!n§;
   import §&!_§.§0I§;
   import §'M§.§"Z§;
   import §,!Q§.§6"n§;
   import §,!Q§.§8#=§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §1#v§.§6"a§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §5" §.§!#h§;
   import §5" §.§,!7§;
   import §5" §.§5u§;
   import §5" §.§<F§;
   import §5" §.§=n§;
   import §6#f§.§<!M§;
   import §6t§.§,5§;
   import §6t§.§4?§;
   import §6t§.§5#R§;
   import §8#K§.§3Z§;
   import §=!f§.§!#R§;
   import §=!f§.§8q§;
   import §>z§.§#"l§;
   import §>z§.WarningPopup;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
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
   
   public class CoinShopPopup extends AbstractPopup implements §&>§, §,!n§, §%!#§
   {
      
      public static const ID:String = "CoinShopPopup";
      
      public static const §["3§:String = "Not enough coins!";
      
      public static const §7x§:String = "Coin Shop";
      
      public static var §31§:Boolean = false;
      
      protected static const §5_§:int = 3;
      
      private static const §1!c§:uint = 2;
      
      protected static const §3#M§:int = 550;
      
      private static const §'#m§:String = "Button_Pay0";
      
      private static const §5"6§:String = "Button_Pay1";
      
      private static const §`<§:String = "Button_Redeem";
      
      private static const §5$,§:String = "In-app Shop Coins";
      
      private static var §"$4§:Class = §>#]§;
      
      private static var §0!>§:§8q§;
       
      
      private var §+!^§:Timer;
      
      private var §,h§:String;
      
      private var §[$ §:int;
      
      private var § !C§:Boolean = false;
      
      private var §@#0§:Vector.<§ L§>;
      
      private var §7!P§:Boolean = false;
      
      private var §,!k§:Boolean = false;
      
      private var §0?§:String = "";
      
      private var §1!B§:Wallet;
      
      private var §%@§:§ L§;
      
      private const §@"a§:int = 0;
      
      private const §3#Y§:int = 1;
      
      private const §-#J§:int = 2;
      
      private const §+!E§:int = 3;
      
      private var §9#s§:int = 0;
      
      private var §%!2§:§]q§;
      
      private var §`"]§:MovieClip;
      
      private var §["v§:§]$+§;
      
      private var §^#s§:Boolean;
      
      private var §]S§:Boolean;
      
      private var §<a§:§=n§;
      
      private var §^"%§:§5u§;
      
      private var §<r§:§!#h§;
      
      private var §2!N§:§!!o§;
      
      private var §3!P§:Number = 240;
      
      private var §""2§:§%e§;
      
      private var §'!2§:String = "";
      
      private var §!!?§:§<!1§;
      
      private var §2# §:Boolean = true;
      
      private var §8&§:Boolean;
      
      private var §9"T§:Boolean;
      
      private var §->§:§<!M§;
      
      public function CoinShopPopup(param1:int, param2:int, param3:String = "", param4:XML = null)
      {
         if(param4 == null)
         {
            param4 = §6"a§.§&!d§(§"$4§);
         }
         super(param1,param2,param4,ID);
         this.§0?§ = param3;
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      override protected function init() : void
      {
         var _loc2_:DisplayObject = null;
         §&!M§.getItemByName("Container_CoinShopPopup").setVisibility(true);
         this.§["v§ = §&!M§.getItemByName("Container_Tab_PayByMobile") as §]$+§;
         if(this.§["v§)
         {
            _loc2_ = §&!M§.mClip.Container_CoinShopPopup[§5"6§];
            _loc2_.addEventListener(MouseEvent.CLICK,this.§3!z§);
            this.§`"]§ = this.§["v§.getItemByName("Container_Country").mClip;
            this.§`"]§.visible = false;
            (this.§["v§.getItemByName("TextField_ChooseCountry") as §`"$§).setText("Choose your country:");
            this.§["v§.getItemByName("Button_ActiveCountry").mClip.addEventListener(MouseEvent.CLICK,this.§#!§);
            this.§["v§.mClip.btnOK.visible = false;
            this.§["v§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§ #D§);
         }
         this.§@#0§ = new Vector.<§ L§>();
         if(§&!M§.mClip.Container_CoinShopPopup.Button_ShopClose)
         {
            §&!M§.mClip.Container_CoinShopPopup.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§-!b§);
         }
         if(this.§0?§ == "")
         {
            this.§0?§ = §7x§;
         }
         §&!M§.mClip.Container_CoinShopPopup.coinShopTitle.text = this.§0?§;
         if(§&!M§.getItemByName(§'#m§))
         {
            §&!M§.getItemByName(§'#m§).mClip.gotoAndStop("Active_Selected");
         }
         §&!M§.mClip.Container_CoinShopPopup.coinShopTitle.text = this.§0?§;
         var _loc1_:§8#=§ = §&!M§.getItemByName(§'#m§);
         if(_loc1_)
         {
            _loc1_.mClip.gotoAndStop("Active_Selected");
         }
         this.§+!^§ = new Timer(2000,1);
         this.§;"G§();
         this.§!!?§ = new §!";§();
         (this.§!!?§ as §!";§).addEventListener(§,5§.§?C§,this.§`#`§);
         (this.§!!?§ as §!";§).addEventListener(§,5§.§]#=§,this.§1$+§);
         (this.§!!?§ as §!";§).addEventListener(§,5§.§8"L§,this.§+s§);
         this.§8&§ = false;
         this.§9"T§ = false;
         this.§->§ = §<!M§.§`"H§;
         this.§->§.addEventListener(§<!M§.§"! §,this.§>#§);
      }
      
      private function §>#§(param1:Event) : void
      {
         this.§""L§(true);
         if(!dataModel.§="N§.§8!5§)
         {
            dataModel.§="N§.addEventListener(Event.COMPLETE,this.§-A§);
         }
         else
         {
            this.§-A§(null,dataModel.§="N§.§8!5§);
         }
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
      
      private function §;#'§(param1:MouseEvent) : void
      {
      }
      
      protected function §#!§(param1:Event) : void
      {
         this.§+#0§(null);
         this.§3!z§(null);
      }
      
      private function § #D§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         this.§+#0§(this.§%!2§.§5!s§ as §8q§);
      }
      
      private function §+#0§(param1:§8q§) : void
      {
         §0!>§ = param1;
         if(§0!>§)
         {
            this.§`"]§.visible = false;
            this.§["v§.mClip.btnOK.visible = false;
            this.§%!3§();
            this.§["v§.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.§["v§.getItemByName("Button_ActiveCountry").setVisibility(true);
            this.§["v§.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "<b><u>Country: " + §0!>§.name + "</u></b>";
         }
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         var _loc2_:§ L§ = null;
         super.show(param1);
         §7n§.pause();
         this.§0!A§(new Wallet(this,false,true,true));
         this.§^#s§ = false;
         this.§]S§ = false;
         this.§""L§(true);
         for each(_loc2_ in this.§@#0§)
         {
            _loc2_.setVisible(true);
            _loc2_.addEventListener(§ L§.§5"E§,this.§&#^§);
         }
         if(this.§["v§)
         {
            if(!dataModel.§^P§.§ -§)
            {
               dataModel.§^P§.addEventListener(Event.COMPLETE,this.§2"0§);
               dataModel.§^P§.§]!_§();
               §&!M§.getItemByName(§5"6§).setVisibility(false);
            }
            else
            {
               this.§2"0§(null);
            }
         }
         var _loc3_:DisplayObject = §&!M§.mClip.Container_CoinShopPopup[§'#m§];
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.addEventListener(MouseEvent.CLICK,this.§!#,§);
         }
         var _loc4_:Object;
         if(_loc4_ = §&!M§.mClip.Container_CoinShopPopup[§`<§])
         {
            _loc4_.addEventListener(MouseEvent.CLICK,this.§-#s§);
         }
         if(!dataModel.§="N§.§8!5§)
         {
            dataModel.§="N§.addEventListener(Event.COMPLETE,this.§-A§);
         }
         else
         {
            this.§-A§(null,dataModel.§="N§.§8!5§);
         }
         §0I§.trackPageView(this);
         §!!K§.§%#S§().§""o§("COIN_SHOP");
         §31§ = false;
         this.§+!^§.stop();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         switch(param2)
         {
            case "COUNTRY_DROPDOWN":
               if(this.§%!2§.isOpen)
               {
                  this.§%!2§.close();
               }
               else
               {
                  this.§%!2§.open();
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
         if(this.§9#s§ == this.§@"a§ && §&!M§.getItemByName(§'#m§))
         {
            §&!M§.getItemByName(§'#m§).mClip.gotoAndStop("Active_Selected");
         }
         else if(this.§9#s§ == this.§3#Y§ && §&!M§.getItemByName(§5"6§))
         {
            §&!M§.getItemByName(§5"6§).mClip.gotoAndStop("Active_Selected");
         }
      }
      
      private function §?n§() : void
      {
         if(§&!M§.getItemByName(§'#m§) && §&!M§.getItemByName(§5"6§))
         {
            §&!M§.getItemByName(§'#m§).mClip.gotoAndStop("Active_Up_Default");
            §&!M§.getItemByName(§5"6§).mClip.gotoAndStop("Active_Up_Default");
         }
         if(§&!M§.getItemByName(§`<§))
         {
            §&!M§.getItemByName(§`<§).mClip.gotoAndStop("Active_Up_Default");
         }
      }
      
      protected function §!#,§(param1:Event) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         this.§["v§.setVisibility(false);
         this.§9#s§ = this.§@"a§;
         this.§%@§ = null;
         this.§?n§();
         §&!M§.getItemByName(§'#m§).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.§="N§.§8!5§)
         {
            dataModel.§="N§.addEventListener(Event.COMPLETE,this.§-A§);
         }
         else
         {
            this.§-A§(null,dataModel.§="N§.§8!5§);
         }
         this.§;"G§();
      }
      
      protected function §2"0§(param1:§5#R§) : void
      {
         dataModel.§^P§.removeEventListener(Event.COMPLETE,this.§2"0§);
         this.§^#s§ = true;
         this.§""L§(false);
         if(!dataModel.§^P§.§`$9§() || dataModel.§^P§.§`$9§().length == 0)
         {
            §&!M§.getItemByName(§5"6§).setVisibility(false);
            return;
         }
         §&!M§.getItemByName(§5"6§).setVisibility(true);
         if(this.§9#s§ == this.§3#Y§)
         {
            this.§["v§.setVisibility(true);
            §&!M§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            §&!M§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         if(param1)
         {
            if(param1.§0#>§ || dataModel.§^P§.§`$9§().length == 1)
            {
               if(param1.§0#>§)
               {
                  this.§+#0§(param1.§0#>§);
               }
               else
               {
                  this.§+#0§(dataModel.§^P§.§`$9§()[0]);
               }
               this.§["v§.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "";
            }
            else if(!param1.§%#K§)
            {
            }
         }
         else if(dataModel.§^P§.§`$9§().length == 1)
         {
            this.§+#0§(dataModel.§^P§.§`$9§()[0]);
         }
         else
         {
            this.§+#0§(§0!>§);
         }
         this.§%!2§ = new §]q§(this.§`"]§,§!#R§,dataModel.§^P§.§`$9§());
         this.§%!2§.§#"h§ = 140;
         var _loc2_:Number = (this.§%!2§.data.length + 1) * this.§%!2§.§`n§.height;
         if(_loc2_ > this.§3!P§)
         {
            _loc2_ = this.§3!P§;
         }
         this.§%!2§.§!!I§ = _loc2_;
         this.§`"]§.Country_DropDownContainer.height = _loc2_ + 30;
         this.§%!2§.§+$>§ = 0;
         this.§`"]§.selectedValue.mouseChildren = false;
         this.§`"]§.selectedValue.mouseEnabled = false;
         this.§`"]§.arrow.mouseEnabled = false;
         this.§%!2§.addEventListener(Event.CLOSE,this.§&$6§);
         this.§%!2§.addEventListener(Event.OPEN,this.§+#l§);
         this.§&$6§(null);
         this.§%!2§.addEventListener(Event.CHANGE,this.§5#d§);
      }
      
      protected function §+#l§(param1:Event) : void
      {
         this.§`"]§.Country_DropDownContainer.visible = true;
      }
      
      protected function §&$6§(param1:Event) : void
      {
         this.§`"]§.Country_DropDownContainer.visible = false;
      }
      
      protected function §5#d§(param1:Event) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         this.§+J§();
         §&!M§.mClip.Container_CoinShopPopup.Container_Tab_PayByMobile.btnOK.visible = true;
      }
      
      protected function §3!z§(param1:Event) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         this.§9#s§ = this.§3#Y§;
         this.§%@§ = null;
         this.§?n§();
         §&!M§.getItemByName(§5"6§).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.§^P§.§ -§)
         {
            this.§["v§.setVisibility(false);
         }
         else
         {
            this.§["v§.setVisibility(true);
         }
         §&!M§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
         §&!M§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         if(§0!>§ == null)
         {
            this.§`"]§.visible = true;
            this.§["v§.getItemByName("TextField_ChooseCountry").setVisibility(true);
            this.§["v§.mClip.btnOK.visible = true;
            this.§["v§.getItemByName("Button_ActiveCountry").setVisibility(false);
            this.§+J§();
         }
         else
         {
            this.§`"]§.visible = false;
            this.§["v§.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.§["v§.mClip.btnOK.visible = false;
            this.§["v§.getItemByName("Button_ActiveCountry").setVisibility(dataModel.§^P§.§`$9§().length > 1);
            this.§%!3§();
         }
         this.§;"G§();
      }
      
      private function §+J§() : void
      {
         var _loc1_:§ L§ = null;
         var _loc2_:MovieClip = null;
         for each(_loc1_ in this.§@#0§)
         {
            _loc1_.setVisible(false);
         }
         _loc2_ = §&!M§.mClip.Container_CoinShopPopup.ContentUpperRow;
         _loc2_.visible = false;
         _loc2_ = §&!M§.mClip.Container_CoinShopPopup.ContentLowerRow;
         _loc2_.visible = false;
      }
      
      private function §%!3§() : void
      {
         var _loc4_:§ L§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§!#h§ = null;
         var _loc8_:§ L§ = null;
         if(§0!>§ == null)
         {
         }
         if(this.§<a§ == null)
         {
            this.§+J§();
            return;
         }
         if(this.§@#0§ && this.§@#0§.length > 0)
         {
            for each(_loc4_ in this.§@#0§)
            {
               _loc4_.disable();
            }
         }
         var _loc1_:§<F§ = this.§]"+§(§0!>§.§>!Z§);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 2)
         {
            (_loc5_ = _loc3_ == 0 ? §&!M§.mClip.Container_CoinShopPopup.ContentUpperRow : §&!M§.mClip.Container_CoinShopPopup.ContentLowerRow).visible = false;
            _loc6_ = 0;
            while(_loc6_ < §5_§)
            {
               if(!_loc1_)
               {
                  break;
               }
               if(!(_loc7_ = _loc1_.§4"O§(_loc2_)))
               {
                  break;
               }
               (_loc8_ = new §4!V§(_loc2_,_loc7_,_loc1_.currencyID,"ButtonBuyBirdCoinAll",_loc7_.id)).addEventListener(§ L§.§5"E§,this.§&#^§);
               this.§@#0§.push(_loc8_);
               _loc5_.visible = true;
               _loc5_.addChild(_loc8_.getGraphics());
               _loc8_.x = §3#M§ / §5_§ * _loc6_;
               _loc2_++;
               _loc6_++;
            }
            _loc3_++;
         }
      }
      
      private function §]"+§(param1:String) : §<F§
      {
         var _loc2_:§<F§ = null;
         var _loc3_:§<F§ = null;
         for each(_loc3_ in dataModel.§^P§.§ -§)
         {
            if(_loc3_.§>!Z§ == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
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
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §&!M§.mClip.Container_CoinShopPopup;
      }
      
      private function §4"E§() : void
      {
         this.§2# § = true;
         this.§,h§ = null;
         this.§[$ § = 0;
      }
      
      protected function §'a§(param1:String, param2:Number, param3:Boolean) : void
      {
         var _loc4_:§,!7§ = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         this.§2# § = true;
         this.§ !C§ = false;
         this.§9"T§ = param3;
         if(this.§%@§)
         {
            _loc4_ = new §,!7§();
            this.§%@§.getGraphics().addChild(_loc4_);
            this.§8&§ = true;
            if(param3)
            {
               _loc4_.addEventListener(§,!7§.§'!9§,this.§]$6§,false,0,true);
            }
            else
            {
               _loc4_.addEventListener(§,!7§.§'!9§,this.§`!W§,false,0,true);
            }
         }
         else
         {
            this.§8&§ = false;
            if(param3)
            {
               this.§]S§ = false;
               dataModel.§="N§.addEventListener(Event.COMPLETE,this.§-A§);
               dataModel.§="N§.§;"4§(true);
            }
         }
         if(this.§""2§)
         {
            this.§""2§.removeEventListener(§4?§.§3!b§,this.§7-§);
            this.§""2§.removeEventListener(§4?§.§3$2§,this.§@$C§);
            this.§""2§.removeEventListeners();
            this.§""2§ = null;
         }
         §31§ = false;
         if(this.§,h§)
         {
            _loc5_ = [_loc6_];
            dispatchEvent(new §4?§(§4?§.§?w§,false,false,_loc5_));
            _loc6_ = {};
            §0I§.§6#?§(this.§,h§,this.§[$ §);
            §0I§.trackPageView(this,§0I§.§'#u§);
            if((_loc7_ = dataModel.§="N§ && dataModel.§="N§.§8!5§ && dataModel.§="N§.§8!5§.length > 0 && dataModel.§="N§.§8!5§[0] && dataModel.§="N§.§8!5§[0].currencyID ? dataModel.§="N§.§8!5§[0].currencyID : this.§'!2§) && _loc7_ != "")
            {
               this.§'!2§ = _loc7_;
            }
            if(this.§^"%§)
            {
               _loc6_ = {
                  "product":this.§,h§,
                  "pricePoint":this.§^"%§.§"#P§
               };
               §0I§.trackTransaction(param1,§5$,§,this.§,h§,this.§,h§,this.§[$ § + " x",this.§^"%§.§"#P§,1,0);
            }
            else if(this.§<r§)
            {
               _loc6_ = {
                  "product":"VirtualCurrency_" + param2,
                  "pricePoint":this.§<r§.§"#P§
               };
               §0I§.trackTransaction(param1,§5$,§,this.§,h§,this.§,h§,this.§[$ § + " x",this.§<r§.§"#P§,1,0);
            }
            this.§,h§ = null;
            this.§[$ § = 0;
            this.§^"%§ = null;
            this.§<r§ = null;
         }
      }
      
      private function §`!W§(param1:Event) : void
      {
         this.§8&§ = false;
      }
      
      private function §]$6§(param1:Event) : void
      {
         this.§]S§ = false;
         dataModel.§="N§.addEventListener(Event.COMPLETE,this.§-A§);
         dataModel.§="N§.§;"4§(true);
         this.§8&§ = false;
         this.§9"T§ = true;
      }
      
      private function getPricePoint(param1:String) : §5u§
      {
         var _loc3_:§=n§ = null;
         var _loc4_:int = 0;
         var _loc5_:§5u§ = null;
         var _loc2_:int = parseInt(param1.replace("VirtualCurrency_",""));
         if(dataModel.§="N§.§8!5§)
         {
            for each(_loc3_ in dataModel.§="N§.§8!5§)
            {
               if(_loc3_.id == "VirtualCurrency")
               {
                  _loc4_ = 0;
                  while(_loc4_ < _loc3_.§^#G§())
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
      
      private function §-A§(param1:Event = null, param2:Vector.<§=n§> = null) : void
      {
         if(param1)
         {
            param2 = dataModel.§="N§.§8!5§;
         }
         if(param2.length > 0)
         {
            this.§<a§ = param2[0];
         }
         else
         {
            this.§<a§ = null;
            this.§+J§();
         }
         if(this.§<a§ && this.§<a§.currencyID)
         {
            this.§'!2§ = this.§<a§.currencyID;
         }
         this.§]S§ = true;
         dataModel.§="N§.removeEventListener(Event.COMPLETE,this.§-A§);
         if(!this.§8&§)
         {
            this.§""L§(false);
         }
         this.§9"T§ = false;
         if(dataModel.§="N§.§8!5§ && dataModel.§="N§.§8!5§.length > 0)
         {
            §;"x§.§,!]§(dataModel.§="N§.§8!5§[0]);
         }
      }
      
      public function injectData(param1:§=n§) : void
      {
         var _loc8_:§ L§ = null;
         var _loc9_:§ L§ = null;
         var _loc10_:§ L§ = null;
         var _loc11_:int = 0;
         if(this.§9#s§ != this.§@"a§)
         {
            return;
         }
         if(this.§@#0§ && this.§@#0§.length > 0)
         {
            for each(_loc8_ in this.§@#0§)
            {
               _loc8_.disable();
            }
         }
         this.§@#0§ = new Vector.<§ L§>();
         var _loc3_:uint = Math.min(2,param1.§^#G§());
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_)
         {
            (_loc9_ = new §21§(_loc4_,param1.getPricePoint(_loc4_),param1.currencyID,"ButtonCoinshopNewLarge",param1.id)).addEventListener(§ L§.§5"E§,this.§&#^§);
            this.§@#0§.push(_loc9_);
            _loc4_++;
         }
         while(_loc4_ < param1.§^#G§())
         {
            (_loc10_ = new §7"n§(_loc4_,param1.getPricePoint(_loc4_),param1.currencyID,"ButtonCoinshopNewSmall",param1.id)).addEventListener(§ L§.§5"E§,this.§&#^§);
            this.§@#0§.push(_loc10_);
            _loc4_++;
         }
         var _loc5_:MovieClip;
         (_loc5_ = §&!M§.mClip.Container_CoinShopPopup.ContentUpperRow).visible = false;
         var _loc6_:int = §1!c§ - 1;
         while(_loc6_ >= 0)
         {
            if(_loc6_ < this.§@#0§.length)
            {
               _loc5_.visible = true;
               _loc5_.addChild(this.§@#0§[_loc6_].getGraphics());
               this.§@#0§[_loc6_].x = §3#M§ / §1!c§ * _loc6_;
            }
            _loc6_--;
         }
         (_loc5_ = §&!M§.mClip.Container_CoinShopPopup.ContentLowerRow).visible = false;
         var _loc7_:int = §5_§ - 1;
         while(_loc7_ >= 0)
         {
            if((_loc11_ = §1!c§ + _loc7_) < this.§@#0§.length)
            {
               _loc5_.visible = true;
               _loc5_.addChild(this.§@#0§[_loc11_].getGraphics());
               this.§@#0§[_loc11_].x = §3#M§ / §5_§ * _loc7_;
            }
            _loc7_--;
         }
      }
      
      protected function §&#^§(param1:Event) : void
      {
         var _loc5_:§=n§ = null;
         var _loc6_:§<F§ = null;
         if(!dataModel.§="N§.§8!5§)
         {
            return;
         }
         this.§2# § = false;
         var _loc2_:§ L§ = param1.currentTarget as § L§;
         var _loc3_:int = _loc2_.§##6§();
         var _loc4_:String = dataModel.§="N§.§8!5§[0].id;
         this.§%@§ = param1.currentTarget as § L§;
         switch(this.§9#s§)
         {
            case this.§@"a§:
               _loc5_ = dataModel.§="N§.§8!5§[0];
               this.§^"%§ = _loc5_.getPricePoint(_loc3_);
               this.§^"%§.§>0§();
               if(_loc5_.currencyID != "USD")
               {
                  this.§2!N§ = new §!!o§();
                  this.§2!N§.addEventListener(Event.COMPLETE,this.§"#=§);
                  this.§2!N§.addEventListener(IOErrorEvent.IO_ERROR,this.§%"L§);
                  this.§2!N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%"L§);
                  this.§2!N§.dataFormat = URLLoaderDataFormat.TEXT;
                  this.§2!N§.load(§;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + _loc5_.currencyID + "&to=USD"));
               }
               else
               {
                  this.buyItem();
               }
               break;
            case this.§3#Y§:
               _loc6_ = this.§]"+§(§0!>§.§>!Z§);
               this.§<r§ = _loc6_.§4"O§(_loc3_);
               this.§<r§.§>0§();
               if(_loc6_.currencyID != "USD")
               {
                  this.§2!N§ = new §!!o§();
                  this.§2!N§.addEventListener(Event.COMPLETE,this.§-E§);
                  this.§2!N§.addEventListener(IOErrorEvent.IO_ERROR,this.§=!3§);
                  this.§2!N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!3§);
                  this.§2!N§.dataFormat = URLLoaderDataFormat.TEXT;
                  this.§2!N§.load(§;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + _loc6_.currencyID + "&to=USD"));
               }
               else
               {
                  this.§3$E§();
               }
         }
         §0I§.trackPageView(this,_loc4_);
      }
      
      private function §%"L§(param1:Event) : void
      {
         this.buyItem();
      }
      
      private function §"#=§(param1:Event = null) : void
      {
         if(param1 && param1.currentTarget && param1.currentTarget.data != null && param1.currentTarget.data != "" && this.§^"%§)
         {
            if(this.§^"%§)
            {
               this.§^"%§.§"#P§ *= param1.currentTarget.data;
            }
         }
         this.buyItem();
      }
      
      private function §=!3§(param1:Event) : void
      {
         this.§3$E§();
      }
      
      private function §-E§(param1:Event = null) : void
      {
         if(param1.currentTarget.data != null && param1.currentTarget.data != "")
         {
            this.§<r§.§"#P§ *= param1.currentTarget.data;
         }
         this.§3$E§();
      }
      
      protected function §3$E§() : void
      {
         if(!§31§)
         {
            this.§ !C§ = true;
            this.§[$ § = this.§<r§.totalQuantity;
            this.§,h§ = dataModel.§="N§.§8!5§[0].id + "_PayByMobile_" + this.§<r§.totalQuantity + "_" + this.§<r§.§>7§;
            AngryBirdsBase.singleton.exitFullScreen();
            §31§ = true;
            if(this.§""2§)
            {
               this.§""2§.removeEventListeners();
               this.§""2§ = null;
            }
            this.§%!o§(false);
            this.§""2§ = new §%e§(dataModel.§="N§.§8!5§[0],this.§<r§,§%e§.§2#2§,ID);
            this.§""2§.addEventListener(§4?§.§3!b§,this.§7-§);
            this.§""2§.addEventListener(§4?§.§3$2§,this.§@$C§);
            this.§""2§.addEventListener(§%e§.§##"§,this.§1$4§);
            §0I§.§<#0§(this.§,h§,this.§[$ §);
         }
      }
      
      protected function §@$C§(param1:§4?§) : void
      {
         this.§;%§(param1.errorMessage,param1.§5I§,param1.errorCode.toString());
         this.§2# § = true;
         this.§ !C§ = false;
         if(this.§""2§)
         {
            this.§""2§.removeEventListener(§4?§.§3$2§,this.§@$C§);
            this.§""2§.removeEventListeners();
            this.§""2§ = null;
         }
         §31§ = false;
         this.§,h§ = null;
         this.§[$ § = 0;
         this.§^"%§ = null;
         this.§<r§ = null;
         this.§%!o§(true);
      }
      
      protected function §;%§(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      private function §;#g§(param1:TimerEvent) : void
      {
         this.§+!^§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§;#g§);
         §31§ = false;
      }
      
      protected function buyItem() : void
      {
         var _loc1_:§=n§ = null;
         if(!§31§ && !this.§8&§ && !this.§9"T§ && this.§]S§)
         {
            this.§ !C§ = true;
            if(this.§^"%§)
            {
               this.§[$ § = this.§^"%§.totalQuantity;
               this.§,h§ = dataModel.§="N§.§8!5§ && dataModel.§="N§.§8!5§.length > 0 && dataModel.§="N§.§8!5§[0].ogo ? dataModel.§="N§.§8!5§[0].ogo + "_" + this.§^"%§.totalQuantity : "";
            }
            AngryBirdsBase.singleton.exitFullScreen();
            §31§ = true;
            if(this.§""2§)
            {
               this.§""2§.removeEventListeners();
               this.§""2§ = null;
            }
            _loc1_ = dataModel.§="N§ && dataModel.§="N§.§8!5§ && dataModel.§="N§.§8!5§.length > 0 ? dataModel.§="N§.§8!5§[0] : null;
            this.§%!o§(false);
            this.§""2§ = new §%e§(_loc1_,this.§^"%§,§%e§.§1#S§,ID);
            this.§""2§.addEventListener(§4?§.§3!b§,this.§7-§);
            this.§""2§.addEventListener(§4?§.§3$2§,this.§@$C§);
            §0I§.§<#0§(this.§,h§,this.§[$ §);
            this.§""2§.addEventListener(§%e§.§##"§,this.§1$4§);
         }
      }
      
      protected function §7-§(param1:Event) : void
      {
         var _loc2_:§%e§ = param1.currentTarget as §%e§;
         _loc2_.removeEventListener(§4?§.§3!b§,this.§7-§);
         _loc2_.removeEventListener(§4?§.§3$2§,this.§@$C§);
         this.§'a§(_loc2_.orderId,_loc2_.pricePoint.totalQuantity,_loc2_.pricePoint.needsReloadAfterPurchase);
         this.§%!o§(true);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§ L§ = null;
         var _loc4_:Object = null;
         for each(_loc3_ in this.§@#0§)
         {
            _loc3_.removeEventListener(§ L§.§5"E§,this.§&#^§);
         }
         if(_loc4_ = §&!M§.mClip.Container_CoinShopPopup[§`<§])
         {
            _loc4_.removeEventListener(MouseEvent.CLICK,this.§-#s§);
         }
         super.hide(param1,param2);
         this.§7!P§ = false;
         this.§,!k§ = false;
         if(this.§ !C§)
         {
            this.§ !C§ = false;
            § $?§.§`"H§.§-!P§();
         }
         dataModel.§="N§.removeEventListener(Event.COMPLETE,this.§-A§);
         dataModel.§^P§.removeEventListener(Event.COMPLETE,this.§2"0§);
         if(this.§["v§ && this.§["v§.mClip)
         {
            this.§["v§.setVisibility(false);
         }
         if(this.§!!?§)
         {
            (this.§!!?§ as §!";§).removeEventListener(§,5§.§?C§,this.§`#`§);
            (this.§!!?§ as §!";§).removeEventListener(§,5§.§]#=§,this.§1$+§);
            (this.§!!?§ as §!";§).removeEventListener(§,5§.§8"L§,this.§+s§);
            this.§!!?§ = null;
         }
         this.§->§.removeEventListener(§<!M§.§"! §,this.§>#§);
         this.§->§ = null;
      }
      
      override public function dispose() : void
      {
         this.§&!U§(this.§1!B§);
         super.dispose();
      }
      
      private function §-!b§(param1:MouseEvent) : void
      {
         if(!this.§2# §)
         {
            return;
         }
         close();
         dispatchEvent(new §"Z§(§"Z§.CLOSE,this));
      }
      
      public function §;!=§() : String
      {
         return §0I§.§!#O§;
      }
      
      public function §#"!§() : String
      {
         return §0I§.§%#7§;
      }
      
      public function §+"-§() : String
      {
         return this.§;!=§() + "-" + this.§#"!§();
      }
      
      private function §;"G§() : void
      {
         §&!M§.getItemByName(§'#m§).setEnabled(this.§9#s§ != this.§@"a§);
         §&!M§.getItemByName(§5"6§).setEnabled(this.§9#s§ != this.§3#Y§);
         §&!M§.getItemByName(§`<§).setEnabled(this.§9#s§ != this.§+!E§);
      }
      
      private function §""L§(param1:Boolean) : void
      {
         if(!§&!M§)
         {
            return;
         }
         if(param1)
         {
            §&!M§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = true;
            §&!M§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            §&!M§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         else if(this.§^#s§ && this.§]S§)
         {
            §&!M§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
            if(this.§<a§)
            {
               this.injectData(this.§<a§);
            }
         }
      }
      
      private function §-#s§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         §&!M§.getItemByName(§`<§).mClip.gotoAndStop("Active_Selected");
         this.§!!?§.initialize();
         this.§!!?§.redeem();
      }
      
      private function §%!o§(param1:Boolean) : void
      {
         var _loc2_:§ L§ = null;
         for each(_loc2_ in this.§@#0§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §#u§() : void
      {
         this.§2# § = true;
         §31§ = false;
         this.§%!o§(true);
      }
      
      public function §]K§() : void
      {
         §31§ = false;
         this.§2# § = true;
         this.§%!o§(true);
      }
      
      private function §1$4§(param1:Event) : void
      {
         §31§ = false;
         this.§2# § = true;
         this.§%!o§(true);
      }
   }
}
