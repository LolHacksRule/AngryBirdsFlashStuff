package §9"0§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import § o§.§%"!§;
   import § o§.RedeemCodePopup;
   import § o§.WarningPopup;
   import §!@§.§&"R§;
   import §!@§.§-#$§;
   import §!@§.§<"U§;
   import §%#A§.§]!_§;
   import §%#A§.§^!4§;
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&"J§.§4"W§;
   import §&"J§.§`]§;
   import §+"E§.§!!s§;
   import §+"E§.§8#m§;
   import §+"E§.§9"z§;
   import §1#W§.§!#&§;
   import §4$<§.§?§;
   import §6!0§.§ "8§;
   import §6"r§.§!#A§;
   import §6V§.§7#M§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §7",§.§!#q§;
   import §7",§.§2#i§;
   import §7",§.§7!P§;
   import §7",§.§;"f§;
   import §7",§.§<!H§;
   import §9$6§.§5#&§;
   import §9$6§.§@Q§;
   import §<"1§.§'"S§;
   import §<"1§.§[!K§;
   import §<"p§.§8N§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §[!E§.§>#`§;
   import §[§.§]"w§;
   import §^#]§.§@!g§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class CoinShopPopup extends AbstractPopup implements §8[§, §7#M§, §]"w§
   {
      
      public static const ID:String = "CoinShopPopup";
      
      public static const §%#=§:String = "Not enough coins!";
      
      public static const §9§:String = "Coin Shop";
      
      public static var §1"+§:Boolean = false;
      
      protected static const §"n§:int = 3;
      
      private static const §%!-§:uint = 2;
      
      protected static const §0B§:int = 550;
      
      private static const §-!a§:String = "Button_Pay0";
      
      private static const §@j§:String = "Button_Pay1";
      
      private static const § !x§:String = "Button_Pay2";
      
      private static const §6=§:String = "Button_Redeem";
      
      private static const §23§:String = "Button_Code";
      
      private static const §[!r§:String = "In-app Shop Coins";
      
      private static var §6[§:Class = §3$-§;
      
      private static var §;4§:§5#&§;
       
      
      private var §^$%§:Timer;
      
      private var §>0§:String;
      
      private var §?!X§:int;
      
      private var §+D§:Boolean = false;
      
      private var § $"§:Vector.<§<0§>;
      
      private var §'!K§:Boolean = false;
      
      private var §7#+§:Boolean = false;
      
      private var §<"a§:String = "";
      
      private var §3!B§:Wallet;
      
      private var §5`§:§<0§;
      
      private const §""[§:int = 0;
      
      private const §@$3§:int = 1;
      
      private const §"#c§:int = 2;
      
      private const §%!h§:int = 3;
      
      private const §&%§:int = 4;
      
      private var §##X§:int = 0;
      
      private var §["O§:§,"n§;
      
      private var §1"d§:MovieClip;
      
      private var §0!G§:§]!_§;
      
      private var §3!F§:Boolean;
      
      private var §8"$§:Boolean;
      
      private var §9#H§:§2#i§;
      
      private var §9"2§:§!#q§;
      
      private var §?"v§:§<!H§;
      
      private var §+"§:§4"v§;
      
      private var §["Y§:Number = 240;
      
      private var §?!V§:§<"U§;
      
      private var §-k§:String = "";
      
      private var §8#&§:§&"R§;
      
      private var §?7§:Boolean = true;
      
      private var §8'§:Boolean;
      
      private var §3#A§:Boolean;
      
      private var §&"t§:§>#`§;
      
      public function CoinShopPopup(param1:int, param2:int, param3:String = "", param4:XML = null)
      {
         if(param4 == null)
         {
            param4 = §8N§.§1F§(§6[§);
         }
         super(param1,param2,param4,ID);
         this.§<"a§ = param3;
      }
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      override protected function init() : void
      {
         var _loc2_:DisplayObject = null;
         §1"6§.getItemByName("Container_CoinShopPopup").setVisibility(true);
         this.§0!G§ = §1"6§.getItemByName("Container_Tab_PayByMobile") as §]!_§;
         if(this.§0!G§)
         {
            _loc2_ = §1"6§.mClip.Container_CoinShopPopup[§@j§];
            _loc2_.addEventListener(MouseEvent.CLICK,this.§5"Y§);
            this.§1"d§ = this.§0!G§.getItemByName("Container_Country").mClip;
            this.§1"d§.visible = false;
            (this.§0!G§.getItemByName("TextField_ChooseCountry") as §^!4§).setText("Choose your country:");
            this.§0!G§.getItemByName("Button_ActiveCountry").mClip.addEventListener(MouseEvent.CLICK,this.§6"%§);
            this.§0!G§.mClip.btnOK.visible = false;
            this.§0!G§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§#=§);
         }
         this.§ $"§ = new Vector.<§<0§>();
         if(§1"6§.mClip.Container_CoinShopPopup.Button_ShopClose)
         {
            §1"6§.mClip.Container_CoinShopPopup.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§]2§);
         }
         if(this.§<"a§ == "")
         {
            this.§<"a§ = §9§;
         }
         §1"6§.mClip.Container_CoinShopPopup.coinShopTitle.text = this.§<"a§;
         if(§1"6§.getItemByName(§-!a§))
         {
            §1"6§.getItemByName(§-!a§).mClip.gotoAndStop("Active_Selected");
         }
         §1"6§.mClip.Container_CoinShopPopup.coinShopTitle.text = this.§<"a§;
         var _loc1_:§[!K§ = §1"6§.getItemByName(§-!a§);
         if(_loc1_)
         {
            _loc1_.mClip.gotoAndStop("Active_Selected");
         }
         this.§^$%§ = new Timer(2000,1);
         this.§`!^§();
         this.§8#&§ = new §-#$§();
         (this.§8#&§ as §-#$§).addEventListener(§8#m§.§,#y§,this.§1$'§);
         (this.§8#&§ as §-#$§).addEventListener(§8#m§.§?E§,this.§["G§);
         (this.§8#&§ as §-#$§).addEventListener(§8#m§.§`y§,this.§1"I§);
         this.§8'§ = false;
         this.§3#A§ = false;
         this.§&"t§ = §>#`§.§ "D§;
         this.§&"t§.addEventListener(§>#`§.§0!D§,this.§2"#§);
      }
      
      private function §2"#§(param1:Event) : void
      {
         this.§6!&§(true);
         if(!dataModel.§#"r§.§'"I§)
         {
            dataModel.§#"r§.addEventListener(Event.COMPLETE,this.§&q§);
         }
         else
         {
            this.§&q§(null,dataModel.§#"r§.§'"I§);
         }
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
      
      private function §%#W§(param1:MouseEvent) : void
      {
      }
      
      protected function §6"%§(param1:Event) : void
      {
         this.§"#0§(null);
         this.§5"Y§(null);
      }
      
      private function §#=§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         this.§"#0§(this.§["O§.§,"k§ as §5#&§);
      }
      
      private function §"#0§(param1:§5#&§) : void
      {
         §;4§ = param1;
         if(§;4§)
         {
            this.§1"d§.visible = false;
            this.§0!G§.mClip.btnOK.visible = false;
            this.§!!e§();
            this.§0!G§.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.§0!G§.getItemByName("Button_ActiveCountry").setVisibility(true);
            this.§0!G§.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "<b><u>Country: " + §;4§.name + "</u></b>";
         }
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         var _loc2_:§<0§ = null;
         super.show(param1);
         §!#A§.pause();
         this.§##Y§(new Wallet(this,false,true,true));
         this.§3!F§ = false;
         this.§8"$§ = false;
         this.§6!&§(true);
         for each(_loc2_ in this.§ $"§)
         {
            _loc2_.§8"d§(true);
            _loc2_.addEventListener(§<0§.§2!_§,this.§8"V§);
         }
         if(this.§0!G§)
         {
            if(!dataModel.§5$#§.§4"k§)
            {
               dataModel.§5$#§.addEventListener(Event.COMPLETE,this.§[!4§);
               dataModel.§5$#§.§^!$§();
               §1"6§.getItemByName(§@j§).setVisibility(false);
            }
            else
            {
               this.§[!4§(null);
            }
         }
         var _loc3_:DisplayObject = §1"6§.mClip.Container_CoinShopPopup[§-!a§];
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.addEventListener(MouseEvent.CLICK,this.§^I§);
         }
         var _loc4_:DisplayObject;
         if(_loc4_ = §1"6§.mClip.Container_CoinShopPopup[§ !x§])
         {
            _loc4_.visible = false;
            if(dataModel.§5"9§)
            {
               _loc4_.addEventListener(MouseEvent.CLICK,this.§]!4§);
            }
         }
         var _loc5_:Object;
         if(_loc5_ = §1"6§.mClip.Container_CoinShopPopup[§6=§])
         {
            _loc5_.addEventListener(MouseEvent.CLICK,this.§["[§);
         }
         var _loc6_:Object;
         if(_loc6_ = §1"6§.mClip.Container_CoinShopPopup[§23§])
         {
            _loc6_.addEventListener(MouseEvent.CLICK,this.§-$'§);
         }
         if(!dataModel.§#"r§.§'"I§)
         {
            dataModel.§#"r§.addEventListener(Event.COMPLETE,this.§&q§);
         }
         else
         {
            this.§&q§(null,dataModel.§#"r§.§'"I§);
         }
         §`"5§.trackPageView(this);
         §?!=§.§3!q§().§]f§("COIN_SHOP");
         §1"+§ = false;
         this.§^$%§.stop();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         switch(param2)
         {
            case "COUNTRY_DROPDOWN":
               if(this.§["O§.isOpen)
               {
                  this.§["O§.close();
               }
               else
               {
                  this.§["O§.open();
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
         if(this.§##X§ == this.§""[§ && §1"6§.getItemByName(§-!a§))
         {
            §1"6§.getItemByName(§-!a§).mClip.gotoAndStop("Active_Selected");
         }
         else if(this.§##X§ == this.§@$3§ && §1"6§.getItemByName(§@j§))
         {
            §1"6§.getItemByName(§@j§).mClip.gotoAndStop("Active_Selected");
         }
      }
      
      private function § h§() : void
      {
         if(§1"6§.getItemByName(§-!a§) && §1"6§.getItemByName(§@j§) && §1"6§.getItemByName(§ !x§))
         {
            §1"6§.getItemByName(§-!a§).mClip.gotoAndStop("Active_Up_Default");
            §1"6§.getItemByName(§@j§).mClip.gotoAndStop("Active_Up_Default");
            §1"6§.getItemByName(§ !x§).mClip.gotoAndStop("Active_Up_Default");
         }
         if(§1"6§.getItemByName(§6=§))
         {
            §1"6§.getItemByName(§6=§).mClip.gotoAndStop("Active_Up_Default");
         }
         if(§1"6§.getItemByName(§23§))
         {
            §1"6§.getItemByName(§23§).mClip.gotoAndStop("Active_Up_Default");
         }
      }
      
      protected function §^I§(param1:Event) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         this.§0!G§.setVisibility(false);
         this.§##X§ = this.§""[§;
         this.§5`§ = null;
         this.§ h§();
         §1"6§.getItemByName(§-!a§).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.§#"r§.§'"I§)
         {
            dataModel.§#"r§.addEventListener(Event.COMPLETE,this.§&q§);
         }
         else
         {
            this.§&q§(null,dataModel.§#"r§.§'"I§);
         }
         this.§`!^§();
      }
      
      protected function §[!4§(param1:§!!s§) : void
      {
         dataModel.§5$#§.removeEventListener(Event.COMPLETE,this.§[!4§);
         this.§3!F§ = true;
         this.§6!&§(false);
         if(!dataModel.§5$#§.§4!C§() || dataModel.§5$#§.§4!C§().length == 0)
         {
            §1"6§.getItemByName(§@j§).setVisibility(false);
            return;
         }
         §1"6§.getItemByName(§@j§).setVisibility(true);
         if(this.§##X§ == this.§@$3§)
         {
            this.§0!G§.setVisibility(true);
            §1"6§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            §1"6§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         if(param1)
         {
            if(param1.§>"'§ || dataModel.§5$#§.§4!C§().length == 1)
            {
               if(param1.§>"'§)
               {
                  this.§"#0§(param1.§>"'§);
               }
               else
               {
                  this.§"#0§(dataModel.§5$#§.§4!C§()[0]);
               }
               this.§0!G§.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "";
            }
            else if(!param1.§!"P§)
            {
            }
         }
         else if(dataModel.§5$#§.§4!C§().length == 1)
         {
            this.§"#0§(dataModel.§5$#§.§4!C§()[0]);
         }
         else
         {
            this.§"#0§(§;4§);
         }
         this.§["O§ = new §,"n§(this.§1"d§,§@Q§,dataModel.§5$#§.§4!C§());
         this.§["O§.§3"7§ = 140;
         var _loc2_:Number = (this.§["O§.data.length + 1) * this.§["O§.§3#F§.height;
         if(_loc2_ > this.§["Y§)
         {
            _loc2_ = this.§["Y§;
         }
         this.§["O§.§8!=§ = _loc2_;
         this.§1"d§.Country_DropDownContainer.height = _loc2_ + 30;
         this.§["O§.§]#5§ = 0;
         this.§1"d§.selectedValue.mouseChildren = false;
         this.§1"d§.selectedValue.mouseEnabled = false;
         this.§1"d§.arrow.mouseEnabled = false;
         this.§["O§.addEventListener(Event.CLOSE,this.§7!I§);
         this.§["O§.addEventListener(Event.OPEN,this.§1"A§);
         this.§7!I§(null);
         this.§["O§.addEventListener(Event.CHANGE,this.§"!X§);
      }
      
      protected function §1"A§(param1:Event) : void
      {
         this.§1"d§.Country_DropDownContainer.visible = true;
      }
      
      protected function §7!I§(param1:Event) : void
      {
         this.§1"d§.Country_DropDownContainer.visible = false;
      }
      
      protected function §"!X§(param1:Event) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         this.§2#>§();
         §1"6§.mClip.Container_CoinShopPopup.Container_Tab_PayByMobile.btnOK.visible = true;
      }
      
      protected function §5"Y§(param1:Event) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         this.§##X§ = this.§@$3§;
         this.§5`§ = null;
         this.§ h§();
         §1"6§.getItemByName(§@j§).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.§5$#§.§4"k§)
         {
            this.§0!G§.setVisibility(false);
         }
         else
         {
            this.§0!G§.setVisibility(true);
         }
         §1"6§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
         §1"6§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         if(§;4§ == null)
         {
            this.§1"d§.visible = true;
            this.§0!G§.getItemByName("TextField_ChooseCountry").setVisibility(true);
            this.§0!G§.mClip.btnOK.visible = true;
            this.§0!G§.getItemByName("Button_ActiveCountry").setVisibility(false);
            this.§2#>§();
         }
         else
         {
            this.§1"d§.visible = false;
            this.§0!G§.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.§0!G§.mClip.btnOK.visible = false;
            this.§0!G§.getItemByName("Button_ActiveCountry").setVisibility(dataModel.§5$#§.§4!C§().length > 1);
            this.§!!e§();
         }
         this.§`!^§();
      }
      
      private function §2#>§() : void
      {
         var _loc1_:§<0§ = null;
         var _loc2_:MovieClip = null;
         for each(_loc1_ in this.§ $"§)
         {
            _loc1_.§8"d§(false);
         }
         _loc2_ = §1"6§.mClip.Container_CoinShopPopup.ContentUpperRow;
         _loc2_.visible = false;
         _loc2_ = §1"6§.mClip.Container_CoinShopPopup.ContentLowerRow;
         _loc2_.visible = false;
      }
      
      private function §!!e§() : void
      {
         var _loc4_:§<0§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§<!H§ = null;
         var _loc8_:§<0§ = null;
         if(§;4§ == null)
         {
         }
         if(this.§9#H§ == null)
         {
            this.§2#>§();
            return;
         }
         if(this.§ $"§ && this.§ $"§.length > 0)
         {
            for each(_loc4_ in this.§ $"§)
            {
               _loc4_.disable();
            }
         }
         var _loc1_:§;"f§ = this.§#"@§(§;4§.§9"F§);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 2)
         {
            (_loc5_ = _loc3_ == 0 ? §1"6§.mClip.Container_CoinShopPopup.ContentUpperRow : §1"6§.mClip.Container_CoinShopPopup.ContentLowerRow).visible = false;
            _loc6_ = 0;
            while(_loc6_ < §"n§)
            {
               if(!_loc1_)
               {
                  break;
               }
               if(!(_loc7_ = _loc1_.§6!k§(_loc2_)))
               {
                  break;
               }
               (_loc8_ = new §0!"§(_loc2_,_loc7_,_loc1_.currencyID,"ButtonBuyBirdCoinAll",_loc7_.id)).addEventListener(§<0§.§2!_§,this.§8"V§);
               this.§ $"§.push(_loc8_);
               _loc5_.visible = true;
               _loc5_.addChild(_loc8_.getGraphics());
               _loc8_.x = §0B§ / §"n§ * _loc6_;
               _loc2_++;
               _loc6_++;
            }
            _loc3_++;
         }
      }
      
      private function §#"@§(param1:String) : §;"f§
      {
         var _loc2_:§;"f§ = null;
         var _loc3_:§;"f§ = null;
         for each(_loc3_ in dataModel.§5$#§.§4"k§)
         {
            if(_loc3_.§9"F§ == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function §"#H§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §2",§() : Wallet
      {
         return this.§3!B§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §1"6§.mClip.Container_CoinShopPopup;
      }
      
      private function §#!9§() : void
      {
         this.§?7§ = true;
         this.§>0§ = null;
         this.§?!X§ = 0;
      }
      
      protected function §@O§(param1:String, param2:Number, param3:Boolean) : void
      {
         var _loc4_:§7!P§ = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         this.§?7§ = true;
         this.§+D§ = false;
         this.§3#A§ = param3;
         if(this.§5`§)
         {
            _loc4_ = new §7!P§();
            this.§5`§.getGraphics().addChild(_loc4_);
            this.§8'§ = true;
            if(param3)
            {
               _loc4_.addEventListener(§7!P§.§ J§,this.§>"C§,false,0,true);
            }
            else
            {
               _loc4_.addEventListener(§7!P§.§ J§,this.§["N§,false,0,true);
            }
         }
         else
         {
            this.§8'§ = false;
            if(param3)
            {
               this.§8"$§ = false;
               dataModel.§#"r§.addEventListener(Event.COMPLETE,this.§&q§);
               dataModel.§#"r§.§ "O§(true);
            }
         }
         if(this.§?!V§)
         {
            this.§?!V§.removeEventListener(§9"z§.§2!c§,this.§<$#§);
            this.§?!V§.removeEventListener(§9"z§.§@H§,this.§=$#§);
            this.§?!V§.removeEventListeners();
            this.§?!V§ = null;
         }
         §1"+§ = false;
         if(this.§>0§)
         {
            _loc5_ = [_loc6_];
            dispatchEvent(new §9"z§(§9"z§.§9$>§,false,false,_loc5_));
            _loc6_ = {};
            §`"5§.§0"o§(this.§>0§,this.§?!X§);
            §`"5§.trackPageView(this,§`"5§.§9>§);
            if((_loc7_ = dataModel.§#"r§ && dataModel.§#"r§.§'"I§ && dataModel.§#"r§.§'"I§.length > 0 && dataModel.§#"r§.§'"I§[0] && dataModel.§#"r§.§'"I§[0].currencyID ? dataModel.§#"r§.§'"I§[0].currencyID : this.§-k§) && _loc7_ != "")
            {
               this.§-k§ = _loc7_;
            }
            if(this.§9"2§)
            {
               _loc6_ = {
                  "product":this.§>0§,
                  "pricePoint":this.§9"2§.§&>§
               };
               §`"5§.trackTransaction(param1,§[!r§,this.§>0§,this.§>0§,this.§?!X§ + " x",this.§9"2§.§&>§,1,0);
            }
            else if(this.§?"v§)
            {
               _loc6_ = {
                  "product":"VirtualCurrency_" + param2,
                  "pricePoint":this.§?"v§.§&>§
               };
               §`"5§.trackTransaction(param1,§[!r§,this.§>0§,this.§>0§,this.§?!X§ + " x",this.§?"v§.§&>§,1,0);
            }
            this.§>0§ = null;
            this.§?!X§ = 0;
            this.§9"2§ = null;
            this.§?"v§ = null;
         }
      }
      
      private function §["N§(param1:Event) : void
      {
         this.§8'§ = false;
      }
      
      private function §>"C§(param1:Event) : void
      {
         this.§8"$§ = false;
         dataModel.§#"r§.addEventListener(Event.COMPLETE,this.§&q§);
         dataModel.§#"r§.§ "O§(true);
         this.§8'§ = false;
         this.§3#A§ = true;
      }
      
      private function getPricePoint(param1:String) : §!#q§
      {
         var _loc3_:§2#i§ = null;
         var _loc4_:int = 0;
         var _loc5_:§!#q§ = null;
         var _loc2_:int = parseInt(param1.replace("VirtualCurrency_",""));
         if(dataModel.§#"r§.§'"I§)
         {
            for each(_loc3_ in dataModel.§#"r§.§'"I§)
            {
               if(_loc3_.id == "VirtualCurrency")
               {
                  _loc4_ = 0;
                  while(_loc4_ < _loc3_.§]$4§())
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
      
      private function §&q§(param1:Event = null, param2:Vector.<§2#i§> = null) : void
      {
         if(param1)
         {
            param2 = dataModel.§#"r§.§'"I§;
         }
         if(param2.length > 0)
         {
            this.§9#H§ = param2[0];
         }
         else
         {
            this.§9#H§ = null;
            this.§2#>§();
         }
         if(this.§9#H§ && this.§9#H§.currencyID)
         {
            this.§-k§ = this.§9#H§.currencyID;
         }
         this.§8"$§ = true;
         dataModel.§#"r§.removeEventListener(Event.COMPLETE,this.§&q§);
         if(!this.§8'§)
         {
            this.§6!&§(false);
         }
         this.§3#A§ = false;
         if(dataModel.§#"r§.§'"I§ && dataModel.§#"r§.§'"I§.length > 0)
         {
            §@!g§.§;n§(dataModel.§#"r§.§'"I§[0]);
         }
      }
      
      public function injectData(param1:§2#i§) : void
      {
         var _loc9_:§<0§ = null;
         var _loc10_:§<0§ = null;
         var _loc11_:§<0§ = null;
         var _loc12_:int = 0;
         if(this.§##X§ != this.§""[§)
         {
            return;
         }
         if(this.§ $"§ && this.§ $"§.length > 0)
         {
            for each(_loc9_ in this.§ $"§)
            {
               _loc9_.disable();
            }
         }
         this.§ $"§ = new Vector.<§<0§>();
         var _loc3_:uint = Math.min(2,param1.§]$4§());
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_)
         {
            (_loc10_ = new §+#%§(_loc4_,param1.getPricePoint(_loc4_),param1.currencyID,"ButtonCoinshopNewLarge",param1.id)).addEventListener(§<0§.§2!_§,this.§8"V§);
            this.§ $"§.push(_loc10_);
            _loc4_++;
         }
         while(_loc4_ < param1.§]$4§())
         {
            (_loc11_ = new §=!W§(_loc4_,param1.getPricePoint(_loc4_),param1.currencyID,"ButtonCoinshopNewSmall",param1.id)).addEventListener(§<0§.§2!_§,this.§8"V§);
            this.§ $"§.push(_loc11_);
            _loc4_++;
         }
         var _loc5_:MovieClip;
         (_loc5_ = §1"6§.mClip.Container_CoinShopPopup.ContentUpperRow).visible = false;
         var _loc6_:int = §%!-§ - 1;
         while(_loc6_ >= 0)
         {
            if(_loc6_ < this.§ $"§.length)
            {
               _loc5_.visible = true;
               _loc5_.addChild(this.§ $"§[_loc6_].getGraphics());
               this.§ $"§[_loc6_].x = §0B§ / §%!-§ * _loc6_;
            }
            _loc6_--;
         }
         (_loc5_ = §1"6§.mClip.Container_CoinShopPopup.ContentLowerRow).visible = false;
         var _loc7_:int = §"n§ - 1;
         while(_loc7_ >= 0)
         {
            if((_loc12_ = §%!-§ + _loc7_) < this.§ $"§.length)
            {
               _loc5_.visible = true;
               _loc5_.addChild(this.§ $"§[_loc12_].getGraphics());
               this.§ $"§[_loc12_].x = §0B§ / §"n§ * _loc7_;
            }
            _loc7_--;
         }
         var _loc8_:Object;
         if(_loc8_ = §1"6§.mClip.Container_CoinShopPopup[§ !x§])
         {
            if(dataModel.§5"9§)
            {
               _loc8_.visible = true;
               _loc8_.addEventListener(MouseEvent.CLICK,this.§]!4§);
            }
            else
            {
               _loc8_.visible = false;
            }
         }
      }
      
      protected function §8"V§(param1:Event) : void
      {
         var _loc5_:§2#i§ = null;
         var _loc6_:§;"f§ = null;
         if(!dataModel.§#"r§.§'"I§)
         {
            return;
         }
         this.§?7§ = false;
         var _loc2_:§<0§ = param1.currentTarget as §<0§;
         var _loc3_:int = _loc2_.§<"x§();
         var _loc4_:String = dataModel.§#"r§.§'"I§[0].id;
         this.§5`§ = param1.currentTarget as §<0§;
         switch(this.§##X§)
         {
            case this.§""[§:
               _loc5_ = dataModel.§#"r§.§'"I§[0];
               this.§9"2§ = _loc5_.getPricePoint(_loc3_);
               this.§9"2§.§9#L§();
               if(_loc5_.currencyID != "USD")
               {
                  this.§+"§ = new §4"v§();
                  this.§+"§.addEventListener(Event.COMPLETE,this.§<$§);
                  this.§+"§.addEventListener(IOErrorEvent.IO_ERROR,this.§0"=§);
                  this.§+"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0"=§);
                  this.§+"§.dataFormat = URLLoaderDataFormat.TEXT;
                  this.§+"§.load(§%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + _loc5_.currencyID + "&to=USD"));
                  break;
               }
               this.buyItem();
               break;
            case this.§@$3§:
               _loc6_ = this.§#"@§(§;4§.§9"F§);
               this.§?"v§ = _loc6_.§6!k§(_loc3_);
               this.§?"v§.§9#L§();
               if(_loc6_.currencyID != "USD")
               {
                  this.§+"§ = new §4"v§();
                  this.§+"§.addEventListener(Event.COMPLETE,this.§7!5§);
                  this.§+"§.addEventListener(IOErrorEvent.IO_ERROR,this.§2!a§);
                  this.§+"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!a§);
                  this.§+"§.dataFormat = URLLoaderDataFormat.TEXT;
                  this.§+"§.load(§%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + _loc6_.currencyID + "&to=USD"));
                  break;
               }
               this.§7$=§();
               break;
         }
         §`"5§.trackPageView(this,_loc4_);
      }
      
      private function §0"=§(param1:Event) : void
      {
         this.buyItem();
      }
      
      private function §<$§(param1:Event = null) : void
      {
         if(param1 && param1.currentTarget && param1.currentTarget.data != null && param1.currentTarget.data != "" && this.§9"2§)
         {
            if(this.§9"2§)
            {
               this.§9"2§.§&>§ *= param1.currentTarget.data;
            }
         }
         this.buyItem();
      }
      
      private function §2!a§(param1:Event) : void
      {
         this.§7$=§();
      }
      
      private function §7!5§(param1:Event = null) : void
      {
         if(param1.currentTarget.data != null && param1.currentTarget.data != "")
         {
            this.§?"v§.§&>§ *= param1.currentTarget.data;
         }
         this.§7$=§();
      }
      
      protected function §7$=§() : void
      {
         if(!§1"+§)
         {
            this.§+D§ = true;
            this.§?!X§ = this.§?"v§.totalQuantity;
            this.§>0§ = dataModel.§#"r§.§'"I§[0].id + "_PayByMobile_" + this.§?"v§.totalQuantity + "_" + this.§?"v§.§%!&§;
            AngryBirdsBase.singleton.exitFullScreen();
            §1"+§ = true;
            if(this.§?!V§)
            {
               this.§?!V§.removeEventListeners();
               this.§?!V§ = null;
            }
            this.§4!;§(false);
            this.§?!V§ = new §<"U§(dataModel.§#"r§.§'"I§[0],this.§?"v§,§<"U§.§9$;§,ID);
            this.§?!V§.addEventListener(§9"z§.§2!c§,this.§<$#§);
            this.§?!V§.addEventListener(§9"z§.§@H§,this.§=$#§);
            this.§?!V§.addEventListener(§<"U§.§1">§,this.§;#a§);
            §`"5§.§=Q§(this.§>0§,this.§?!X§);
         }
      }
      
      protected function §=$#§(param1:§9"z§) : void
      {
         this.§=!,§(param1.errorMessage,param1.§7$+§,param1.errorCode.toString());
         this.§?7§ = true;
         this.§+D§ = false;
         if(this.§?!V§)
         {
            this.§?!V§.removeEventListener(§9"z§.§@H§,this.§=$#§);
            this.§?!V§.removeEventListeners();
            this.§?!V§ = null;
         }
         §1"+§ = false;
         this.§>0§ = null;
         this.§?!X§ = 0;
         this.§9"2§ = null;
         this.§?"v§ = null;
         this.§4!;§(true);
      }
      
      protected function §=!,§(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§%"!§.§4!P§,§^#o§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      private function §]!4§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         §1"6§.getItemByName(§ !x§).mClip.gotoAndStop("Active_Selected");
         if(ExternalInterface.available)
         {
            if(!§1"+§)
            {
               this.§+D§ = true;
               AngryBirdsBase.singleton.exitFullScreen();
               § "8§.§ "§("earnCredits");
               §1"+§ = true;
               this.§^$%§.reset();
               this.§^$%§.start();
               this.§^$%§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^"b§);
               §`"5§.§ !s§("TrialPay");
            }
         }
         §`"5§.trackPageView(this,"TrialPay");
         this.§`!^§();
      }
      
      private function §^"b§(param1:TimerEvent) : void
      {
         this.§^$%§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^"b§);
         §1"+§ = false;
      }
      
      protected function buyItem() : void
      {
         var _loc1_:§2#i§ = null;
         if(!§1"+§ && !this.§8'§ && !this.§3#A§ && this.§8"$§)
         {
            this.§+D§ = true;
            if(this.§9"2§)
            {
               this.§?!X§ = this.§9"2§.totalQuantity;
               this.§>0§ = dataModel.§#"r§.§'"I§ && dataModel.§#"r§.§'"I§.length > 0 && dataModel.§#"r§.§'"I§[0].ogo ? dataModel.§#"r§.§'"I§[0].ogo + "_" + this.§9"2§.totalQuantity : "";
            }
            AngryBirdsBase.singleton.exitFullScreen();
            §1"+§ = true;
            if(this.§?!V§)
            {
               this.§?!V§.removeEventListeners();
               this.§?!V§ = null;
            }
            _loc1_ = dataModel.§#"r§ && dataModel.§#"r§.§'"I§ && dataModel.§#"r§.§'"I§.length > 0 ? dataModel.§#"r§.§'"I§[0] : null;
            this.§4!;§(false);
            this.§?!V§ = new §<"U§(_loc1_,this.§9"2§,§<"U§.§ $4§,ID);
            this.§?!V§.addEventListener(§9"z§.§2!c§,this.§<$#§);
            this.§?!V§.addEventListener(§9"z§.§@H§,this.§=$#§);
            §`"5§.§=Q§(this.§>0§,this.§?!X§);
            this.§?!V§.addEventListener(§<"U§.§1">§,this.§;#a§);
         }
      }
      
      protected function §<$#§(param1:Event) : void
      {
         var _loc2_:§<"U§ = param1.currentTarget as §<"U§;
         _loc2_.removeEventListener(§9"z§.§2!c§,this.§<$#§);
         _loc2_.removeEventListener(§9"z§.§@H§,this.§=$#§);
         this.§@O§(_loc2_.orderId,_loc2_.pricePoint.totalQuantity,_loc2_.pricePoint.needsReloadAfterPurchase);
         this.§4!;§(true);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§<0§ = null;
         var _loc4_:Object = null;
         for each(_loc3_ in this.§ $"§)
         {
            _loc3_.removeEventListener(§<0§.§2!_§,this.§8"V§);
         }
         if(_loc4_ = §1"6§.mClip.Container_CoinShopPopup[§ !x§])
         {
            _loc4_.removeEventListener(MouseEvent.CLICK,this.§]!4§);
         }
         var _loc5_:Object;
         if(_loc5_ = §1"6§.mClip.Container_CoinShopPopup[§6=§])
         {
            _loc5_.removeEventListener(MouseEvent.CLICK,this.§["[§);
         }
         var _loc6_:Object;
         if(_loc6_ = §1"6§.mClip.Container_CoinShopPopup[§23§])
         {
            _loc6_.removeEventListener(MouseEvent.CLICK,this.§-$'§);
         }
         super.hide(param1,param2);
         this.§'!K§ = false;
         this.§7#+§ = false;
         if(this.§+D§)
         {
            this.§+D§ = false;
            §4"W§.§ "D§.§@!z§();
         }
         dataModel.§#"r§.removeEventListener(Event.COMPLETE,this.§&q§);
         dataModel.§5$#§.removeEventListener(Event.COMPLETE,this.§[!4§);
         if(this.§0!G§ && this.§0!G§.mClip)
         {
            this.§0!G§.setVisibility(false);
         }
         if(this.§8#&§)
         {
            (this.§8#&§ as §-#$§).removeEventListener(§8#m§.§,#y§,this.§1$'§);
            (this.§8#&§ as §-#$§).removeEventListener(§8#m§.§?E§,this.§["G§);
            (this.§8#&§ as §-#$§).removeEventListener(§8#m§.§`y§,this.§1"I§);
            this.§8#&§ = null;
         }
         this.§&"t§.removeEventListener(§>#`§.§0!D§,this.§2"#§);
         this.§&"t§ = null;
      }
      
      override public function dispose() : void
      {
         this.§"#H§(this.§3!B§);
         super.dispose();
      }
      
      private function §]2§(param1:MouseEvent) : void
      {
         if(!this.§?7§)
         {
            return;
         }
         close();
         dispatchEvent(new §?#7§(§?#7§.CLOSE,this));
      }
      
      public function §<"b§() : String
      {
         return §`"5§.§7"C§;
      }
      
      public function §>"-§() : String
      {
         return §`"5§.§8$3§;
      }
      
      public function §-"K§() : String
      {
         return this.§<"b§() + "-" + this.§>"-§();
      }
      
      private function §`!^§() : void
      {
         §1"6§.getItemByName(§-!a§).setEnabled(this.§##X§ != this.§""[§);
         §1"6§.getItemByName(§@j§).setEnabled(this.§##X§ != this.§@$3§);
         §1"6§.getItemByName(§ !x§).setEnabled(this.§##X§ != this.§"#c§);
         §1"6§.getItemByName(§6=§).setEnabled(this.§##X§ != this.§%!h§);
         §1"6§.getItemByName(§23§).setEnabled(this.§##X§ != this.§&%§);
      }
      
      private function §6!&§(param1:Boolean) : void
      {
         if(!§1"6§)
         {
            return;
         }
         if(param1)
         {
            §1"6§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = true;
            §1"6§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            §1"6§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         else if(this.§3!F§ && this.§8"$§)
         {
            §1"6§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
            if(this.§9#H§)
            {
               this.injectData(this.§9#H§);
            }
         }
      }
      
      private function §["[§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         §1"6§.getItemByName(§6=§).mClip.gotoAndStop("Active_Selected");
         this.§8#&§.initialize();
         this.§8#&§.redeem();
      }
      
      private function §-$'§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         §1"6§.getItemByName(§23§).mClip.gotoAndStop("Active_Selected");
         this.§!#N§();
      }
      
      private function §!#N§() : void
      {
         var _loc1_:RedeemCodePopup = new RedeemCodePopup(§%"!§.§4!P§,§^#o§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      private function §4!;§(param1:Boolean) : void
      {
         var _loc2_:§<0§ = null;
         for each(_loc2_ in this.§ $"§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §9!Q§() : void
      {
         this.§?7§ = true;
         §1"+§ = false;
         this.§4!;§(true);
      }
      
      public function §if§() : void
      {
         §1"+§ = false;
         this.§?7§ = true;
         this.§4!;§(true);
      }
      
      private function §;#a§(param1:Event) : void
      {
         §1"+§ = false;
         this.§?7§ = true;
         this.§4!;§(true);
      }
   }
}
