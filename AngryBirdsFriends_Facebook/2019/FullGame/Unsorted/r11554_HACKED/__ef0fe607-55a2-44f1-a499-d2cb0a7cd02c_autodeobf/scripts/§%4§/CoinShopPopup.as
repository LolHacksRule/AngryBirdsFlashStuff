package §%4§
{
   import §!!?§.§!#z§;
   import §!!?§.§,!K§;
   import §!!?§.§4b§;
   import §!!?§.§<#a§;
   import §!!?§.§]!d§;
   import §!§.§="D§;
   import §'#g§.§&^§;
   import §'#g§.§-$§;
   import §'#g§.§2#d§;
   import §+#B§.§+$A§;
   import §+#B§.§0"+§;
   import §+#B§.§5"w§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §1";§.§!"M§;
   import §1";§.§^a§;
   import §4!n§.§#$>§;
   import §4!n§.§'!,§;
   import §5!$§.§-#j§;
   import §5!$§.§<c§;
   import §5"c§.§!!o§;
   import §5"c§.§8K§;
   import §5"c§.§^c§;
   import §8"b§.§&!b§;
   import §9#K§.§#D§;
   import §;$5§.§9§;
   import §;$5§.AbstractPopup;
   import §;w§.§5"_§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.§%#§;
   import §?!N§.WarningPopup;
   import §?§.§<$?§;
   import §]"'§.§#$D§;
   import §]"'§.§@"%§;
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
   
   public class CoinShopPopup extends AbstractPopup implements §["b§, §0"+§, §="D§
   {
      
      public static const ID:String = "CoinShopPopup";
      
      public static const §-$7§:String = "Not enough coins!";
      
      public static const §!Z§:String = "Coin Shop";
      
      public static var §"E§:Boolean = false;
      
      protected static const §9"8§:int = 3;
      
      private static const §[!l§:uint = 2;
      
      protected static const §@#9§:int = 550;
      
      private static const §-!T§:String = "Button_Pay0";
      
      private static const §]"v§:String = "Button_Pay1";
      
      private static const §5!q§:String = "Button_Redeem";
      
      private static const §[!_§:String = "In-app Shop Coins";
      
      private static var §!"7§:Class = §95§;
      
      private static var §9F§:§^a§;
       
      
      private var §5d§:Timer;
      
      private var §-_§:String;
      
      private var §'#'§:int;
      
      private var §function§:Boolean = false;
      
      private var §'"b§:Vector.<§]#X§>;
      
      private var §8!m§:Boolean = false;
      
      private var §@!T§:Boolean = false;
      
      private var §,§:String = "";
      
      private var §?3§:Wallet;
      
      private var §4#K§:§]#X§;
      
      private const §"!]§:int = 0;
      
      private const §;"z§:int = 1;
      
      private const §<#f§:int = 2;
      
      private const §>#4§:int = 3;
      
      private var §,#B§:int = 0;
      
      private var §##,§:§ #`§;
      
      private var §,"n§:MovieClip;
      
      private var §?U§:§<c§;
      
      private var §2"A§:Boolean;
      
      private var §6#!§:Boolean;
      
      private var §@#s§:§,!K§;
      
      private var §`^§:§<#a§;
      
      private var §2#H§:§!#z§;
      
      private var §&![§:§'!n§;
      
      private var §>"=§:Number = 240;
      
      private var §>$&§:§&^§;
      
      private var §-!`§:String = "";
      
      private var §3#e§:§-$§;
      
      private var §-"j§:Boolean = true;
      
      private var §`!n§:Boolean;
      
      private var §+"h§:Boolean;
      
      private var §<#E§:§<$?§;
      
      public function CoinShopPopup(param1:int, param2:int, param3:String = "", param4:XML = null)
      {
         if(param4 == null)
         {
            param4 = §#D§.§%"l§(§!"7§);
         }
         super(param1,param2,param4,ID);
         this.§,§ = param3;
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      override protected function init() : void
      {
         var _loc2_:DisplayObject = null;
         §8#Y§.getItemByName("Container_CoinShopPopup").setVisibility(true);
         this.§?U§ = §8#Y§.getItemByName("Container_Tab_PayByMobile") as §<c§;
         if(this.§?U§)
         {
            _loc2_ = §8#Y§.mClip.Container_CoinShopPopup[§]"v§];
            _loc2_.addEventListener(MouseEvent.CLICK,this.§#"<§);
            this.§,"n§ = this.§?U§.getItemByName("Container_Country").mClip;
            this.§,"n§.visible = false;
            (this.§?U§.getItemByName("TextField_ChooseCountry") as §-#j§).setText("Choose your country:");
            this.§?U§.getItemByName("Button_ActiveCountry").mClip.addEventListener(MouseEvent.CLICK,this.§>$'§);
            this.§?U§.mClip.btnOK.visible = false;
            this.§?U§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§'#U§);
         }
         this.§'"b§ = new Vector.<§]#X§>();
         if(§8#Y§.mClip.Container_CoinShopPopup.Button_ShopClose)
         {
            §8#Y§.mClip.Container_CoinShopPopup.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§>"J§);
         }
         if(this.§,§ == "")
         {
            this.§,§ = §!Z§;
         }
         §8#Y§.mClip.Container_CoinShopPopup.coinShopTitle.text = this.§,§;
         if(§8#Y§.getItemByName(§-!T§))
         {
            §8#Y§.getItemByName(§-!T§).mClip.gotoAndStop("Active_Selected");
         }
         §8#Y§.mClip.Container_CoinShopPopup.coinShopTitle.text = this.§,§;
         var _loc1_:§#$>§ = §8#Y§.getItemByName(§-!T§);
         if(_loc1_)
         {
            _loc1_.mClip.gotoAndStop("Active_Selected");
         }
         this.§5d§ = new Timer(2000,1);
         this.§2"N§();
         this.§3#e§ = new §2#d§();
         (this.§3#e§ as §2#d§).addEventListener(§!!o§.§?O§,this.§^[§);
         (this.§3#e§ as §2#d§).addEventListener(§!!o§.§[!]§,this.§7!>§);
         (this.§3#e§ as §2#d§).addEventListener(§!!o§.§"#X§,this.§'!s§);
         this.§`!n§ = false;
         this.§+"h§ = false;
         this.§<#E§ = §<$?§.§?q§;
         this.§<#E§.addEventListener(§<$?§.§ !O§,this.§;8§);
      }
      
      private function §;8§(param1:Event) : void
      {
         this.§2#p§(true);
         if(!dataModel.§,H§.§4"c§)
         {
            dataModel.§,H§.addEventListener(Event.COMPLETE,this.§9"-§);
         }
         else
         {
            this.§9"-§(null,dataModel.§,H§.§4"c§);
         }
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
      
      private function §+#,§(param1:MouseEvent) : void
      {
      }
      
      protected function §>$'§(param1:Event) : void
      {
         this.§6#s§(null);
         this.§#"<§(null);
      }
      
      private function §'#U§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         this.§6#s§(this.§##,§.§1!7§ as §^a§);
      }
      
      private function §6#s§(param1:§^a§) : void
      {
         §9F§ = param1;
         if(§9F§)
         {
            this.§,"n§.visible = false;
            this.§?U§.mClip.btnOK.visible = false;
            this.§ "b§();
            this.§?U§.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.§?U§.getItemByName("Button_ActiveCountry").setVisibility(true);
            this.§?U§.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "<b><u>Country: " + §9F§.name + "</u></b>";
         }
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         var _loc2_:§]#X§ = null;
         super.show(param1);
         §%"T§.pause();
         this.§[D§(new Wallet(this,false,true,true));
         this.§2"A§ = false;
         this.§6#!§ = false;
         this.§2#p§(true);
         for each(_loc2_ in this.§'"b§)
         {
            _loc2_.setVisible(true);
            _loc2_.addEventListener(§]#X§.§8#&§,this.§;!l§);
         }
         if(this.§?U§)
         {
            if(!dataModel.§%#8§.§'K§)
            {
               dataModel.§%#8§.addEventListener(Event.COMPLETE,this.§ #k§);
               dataModel.§%#8§.§8e§();
               §8#Y§.getItemByName(§]"v§).setVisibility(false);
            }
            else
            {
               this.§ #k§(null);
            }
         }
         var _loc3_:DisplayObject = §8#Y§.mClip.Container_CoinShopPopup[§-!T§];
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.addEventListener(MouseEvent.CLICK,this.§?!A§);
         }
         var _loc4_:Object;
         if(_loc4_ = §8#Y§.mClip.Container_CoinShopPopup[§5!q§])
         {
            _loc4_.addEventListener(MouseEvent.CLICK,this.§,#`§);
         }
         if(!dataModel.§,H§.§4"c§)
         {
            dataModel.§,H§.addEventListener(Event.COMPLETE,this.§9"-§);
         }
         else
         {
            this.§9"-§(null,dataModel.§,H§.§4"c§);
         }
         §5"w§.trackPageView(this);
         §+$A§.§@"i§().§2K§("COIN_SHOP");
         §"E§ = false;
         this.§5d§.stop();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         switch(param2)
         {
            case "COUNTRY_DROPDOWN":
               if(this.§##,§.isOpen)
               {
                  this.§##,§.close();
               }
               else
               {
                  this.§##,§.open();
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
         if(this.§,#B§ == this.§"!]§ && §8#Y§.getItemByName(§-!T§))
         {
            §8#Y§.getItemByName(§-!T§).mClip.gotoAndStop("Active_Selected");
         }
         else if(this.§,#B§ == this.§;"z§ && §8#Y§.getItemByName(§]"v§))
         {
            §8#Y§.getItemByName(§]"v§).mClip.gotoAndStop("Active_Selected");
         }
      }
      
      private function §3!2§() : void
      {
         if(§8#Y§.getItemByName(§-!T§) && §8#Y§.getItemByName(§]"v§))
         {
            §8#Y§.getItemByName(§-!T§).mClip.gotoAndStop("Active_Up_Default");
            §8#Y§.getItemByName(§]"v§).mClip.gotoAndStop("Active_Up_Default");
         }
         if(§8#Y§.getItemByName(§5!q§))
         {
            §8#Y§.getItemByName(§5!q§).mClip.gotoAndStop("Active_Up_Default");
         }
      }
      
      protected function §?!A§(param1:Event) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         this.§?U§.setVisibility(false);
         this.§,#B§ = this.§"!]§;
         this.§4#K§ = null;
         this.§3!2§();
         §8#Y§.getItemByName(§-!T§).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.§,H§.§4"c§)
         {
            dataModel.§,H§.addEventListener(Event.COMPLETE,this.§9"-§);
         }
         else
         {
            this.§9"-§(null,dataModel.§,H§.§4"c§);
         }
         this.§2"N§();
      }
      
      protected function § #k§(param1:§^c§) : void
      {
         dataModel.§%#8§.removeEventListener(Event.COMPLETE,this.§ #k§);
         this.§2"A§ = true;
         this.§2#p§(false);
         if(!dataModel.§%#8§.§1!d§() || dataModel.§%#8§.§1!d§().length == 0)
         {
            §8#Y§.getItemByName(§]"v§).setVisibility(false);
            return;
         }
         §8#Y§.getItemByName(§]"v§).setVisibility(true);
         if(this.§,#B§ == this.§;"z§)
         {
            this.§?U§.setVisibility(true);
            §8#Y§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            §8#Y§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         if(param1)
         {
            if(param1.§>#X§ || dataModel.§%#8§.§1!d§().length == 1)
            {
               if(param1.§>#X§)
               {
                  this.§6#s§(param1.§>#X§);
               }
               else
               {
                  this.§6#s§(dataModel.§%#8§.§1!d§()[0]);
               }
               this.§?U§.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "";
            }
            else if(!param1.§'4§)
            {
            }
         }
         else if(dataModel.§%#8§.§1!d§().length == 1)
         {
            this.§6#s§(dataModel.§%#8§.§1!d§()[0]);
         }
         else
         {
            this.§6#s§(§9F§);
         }
         this.§##,§ = new § #`§(this.§,"n§,§!"M§,dataModel.§%#8§.§1!d§());
         this.§##,§.§6!O§ = 140;
         var _loc2_:Number = (this.§##,§.data.length + 1) * this.§##,§.§4r§.height;
         if(_loc2_ > this.§>"=§)
         {
            _loc2_ = this.§>"=§;
         }
         this.§##,§.§^"-§ = _loc2_;
         this.§,"n§.Country_DropDownContainer.height = _loc2_ + 30;
         this.§##,§.§[!G§ = 0;
         this.§,"n§.selectedValue.mouseChildren = false;
         this.§,"n§.selectedValue.mouseEnabled = false;
         this.§,"n§.arrow.mouseEnabled = false;
         this.§##,§.addEventListener(Event.CLOSE,this.§>"G§);
         this.§##,§.addEventListener(Event.OPEN,this.§][§);
         this.§>"G§(null);
         this.§##,§.addEventListener(Event.CHANGE,this.§@#t§);
      }
      
      protected function §][§(param1:Event) : void
      {
         this.§,"n§.Country_DropDownContainer.visible = true;
      }
      
      protected function §>"G§(param1:Event) : void
      {
         this.§,"n§.Country_DropDownContainer.visible = false;
      }
      
      protected function §@#t§(param1:Event) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         this.§<#X§();
         §8#Y§.mClip.Container_CoinShopPopup.Container_Tab_PayByMobile.btnOK.visible = true;
      }
      
      protected function §#"<§(param1:Event) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         this.§,#B§ = this.§;"z§;
         this.§4#K§ = null;
         this.§3!2§();
         §8#Y§.getItemByName(§]"v§).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.§%#8§.§'K§)
         {
            this.§?U§.setVisibility(false);
         }
         else
         {
            this.§?U§.setVisibility(true);
         }
         §8#Y§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
         §8#Y§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         if(§9F§ == null)
         {
            this.§,"n§.visible = true;
            this.§?U§.getItemByName("TextField_ChooseCountry").setVisibility(true);
            this.§?U§.mClip.btnOK.visible = true;
            this.§?U§.getItemByName("Button_ActiveCountry").setVisibility(false);
            this.§<#X§();
         }
         else
         {
            this.§,"n§.visible = false;
            this.§?U§.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.§?U§.mClip.btnOK.visible = false;
            this.§?U§.getItemByName("Button_ActiveCountry").setVisibility(dataModel.§%#8§.§1!d§().length > 1);
            this.§ "b§();
         }
         this.§2"N§();
      }
      
      private function §<#X§() : void
      {
         var _loc1_:§]#X§ = null;
         var _loc2_:MovieClip = null;
         for each(_loc1_ in this.§'"b§)
         {
            _loc1_.setVisible(false);
         }
         _loc2_ = §8#Y§.mClip.Container_CoinShopPopup.ContentUpperRow;
         _loc2_.visible = false;
         _loc2_ = §8#Y§.mClip.Container_CoinShopPopup.ContentLowerRow;
         _loc2_.visible = false;
      }
      
      private function § "b§() : void
      {
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§!#z§ = null;
         var _loc8_:§]#X§ = null;
         if(§9F§ == null)
         {
         }
         if(this.§@#s§ == null)
         {
            this.§<#X§();
            return;
         }
         if(this.§'"b§ && this.§'"b§.length > 0)
         {
            var _loc9_:int = 0;
            var _loc10_:* = this.§'"b§;
            while(§§hasnext(_loc10_,_loc9_))
            {
               (§§nextvalue(_loc9_,_loc10_)).disable();
            }
         }
         var _loc1_:§]!d§ = this.§<#A§(§9F§.§ "[§);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 2)
         {
            (_loc5_ = _loc3_ == 0 ? §8#Y§.mClip.Container_CoinShopPopup.ContentUpperRow : §8#Y§.mClip.Container_CoinShopPopup.ContentLowerRow).visible = false;
            _loc6_ = 0;
            while(_loc6_ < §9"8§)
            {
               if(!_loc1_)
               {
                  break;
               }
               if(!(_loc7_ = _loc1_.§@8§(_loc2_)))
               {
                  break;
               }
               (_loc8_ = new §7$D§(_loc2_,_loc7_,_loc1_.currencyID,"ButtonBuyBirdCoinAll",_loc7_.id)).addEventListener(§]#X§.§8#&§,this.§;!l§);
               this.§'"b§.push(_loc8_);
               _loc5_.visible = true;
               _loc5_.addChild(_loc8_.getGraphics());
               _loc8_.x = §@#9§ / §9"8§ * _loc6_;
               _loc2_++;
               _loc6_++;
            }
            _loc3_++;
         }
      }
      
      private function §<#A§(param1:String) : §]!d§
      {
         var _loc2_:§]!d§ = null;
         var _loc3_:§]!d§ = null;
         for each(_loc3_ in dataModel.§%#8§.§'K§)
         {
            if(_loc3_.§ "[§ == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §8#Y§.mClip.Container_CoinShopPopup;
      }
      
      private function §>'§() : void
      {
         this.§-"j§ = true;
         this.§-_§ = null;
         this.§'#'§ = 0;
      }
      
      protected function §51§(param1:String, param2:Number, param3:Boolean) : void
      {
         var _loc4_:§4b§ = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         this.§-"j§ = true;
         this.§function§ = false;
         this.§+"h§ = param3;
         if(this.§4#K§)
         {
            _loc4_ = new §4b§();
            this.§4#K§.getGraphics().addChild(_loc4_);
            this.§`!n§ = true;
            if(param3)
            {
               _loc4_.addEventListener(§4b§.§[S§,this.§5!4§,false,0,true);
            }
            else
            {
               _loc4_.addEventListener(§4b§.§[S§,this.§8$2§,false,0,true);
            }
         }
         else
         {
            this.§`!n§ = false;
            if(param3)
            {
               this.§6#!§ = false;
               dataModel.§,H§.addEventListener(Event.COMPLETE,this.§9"-§);
               dataModel.§,H§.§"#E§(true);
            }
         }
         if(this.§>$&§)
         {
            this.§>$&§.removeEventListener(§8K§.§ ",§,this.§6$A§);
            this.§>$&§.removeEventListener(§8K§.§<"&§,this.§#n§);
            this.§>$&§.removeEventListeners();
            this.§>$&§ = null;
         }
         §"E§ = false;
         if(this.§-_§)
         {
            _loc5_ = [_loc6_];
            dispatchEvent(new §8K§(§8K§.§`#y§,false,false,_loc5_));
            _loc6_ = {};
            §5"w§.§7&§(this.§-_§,this.§'#'§);
            §5"w§.trackPageView(this,§5"w§.§9`§);
            if((_loc7_ = dataModel.§,H§ && dataModel.§,H§.§4"c§ && dataModel.§,H§.§4"c§.length > 0 && dataModel.§,H§.§4"c§[0] && dataModel.§,H§.§4"c§[0].currencyID ? dataModel.§,H§.§4"c§[0].currencyID : this.§-!`§) && _loc7_ != "")
            {
               this.§-!`§ = _loc7_;
            }
            if(this.§`^§)
            {
               _loc6_ = {
                  "product":this.§-_§,
                  "pricePoint":this.§`^§.§@"E§
               };
               §5"w§.trackTransaction(param1,§[!_§,this.§-_§,this.§-_§,this.§'#'§ + " x",this.§`^§.§@"E§,1,0);
            }
            else if(this.§2#H§)
            {
               _loc6_ = {
                  "product":"VirtualCurrency_" + param2,
                  "pricePoint":this.§2#H§.§@"E§
               };
               §5"w§.trackTransaction(param1,§[!_§,this.§-_§,this.§-_§,this.§'#'§ + " x",this.§2#H§.§@"E§,1,0);
            }
            this.§-_§ = null;
            this.§'#'§ = 0;
            this.§`^§ = null;
            this.§2#H§ = null;
         }
      }
      
      private function §8$2§(param1:Event) : void
      {
         this.§`!n§ = false;
      }
      
      private function §5!4§(param1:Event) : void
      {
         this.§6#!§ = false;
         dataModel.§,H§.addEventListener(Event.COMPLETE,this.§9"-§);
         dataModel.§,H§.§"#E§(true);
         this.§`!n§ = false;
         this.§+"h§ = true;
      }
      
      private function getPricePoint(param1:String) : §<#a§
      {
         var _loc3_:§,!K§ = null;
         var _loc4_:int = 0;
         var _loc5_:§<#a§ = null;
         var _loc2_:int = parseInt(param1.replace("VirtualCurrency_",""));
         if(dataModel.§,H§.§4"c§)
         {
            for each(_loc3_ in dataModel.§,H§.§4"c§)
            {
               if(_loc3_.id == "VirtualCurrency")
               {
                  _loc4_ = 0;
                  while(_loc4_ < _loc3_.§&R§())
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
      
      private function §9"-§(param1:Event = null, param2:Vector.<§,!K§> = null) : void
      {
         if(param1)
         {
            param2 = dataModel.§,H§.§4"c§;
         }
         if(param2.length > 0)
         {
            this.§@#s§ = param2[0];
         }
         else
         {
            this.§@#s§ = null;
            this.§<#X§();
         }
         if(this.§@#s§ && this.§@#s§.currencyID)
         {
            this.§-!`§ = this.§@#s§.currencyID;
         }
         this.§6#!§ = true;
         dataModel.§,H§.removeEventListener(Event.COMPLETE,this.§9"-§);
         if(!this.§`!n§)
         {
            this.§2#p§(false);
         }
         this.§+"h§ = false;
         if(dataModel.§,H§.§4"c§ && dataModel.§,H§.§4"c§.length > 0)
         {
            §&!b§.§%"J§(dataModel.§,H§.§4"c§[0]);
         }
      }
      
      public function injectData(param1:§,!K§) : void
      {
         var _loc9_:§]#X§ = null;
         var _loc10_:§]#X§ = null;
         var _loc11_:int = 0;
         if(this.§,#B§ != this.§"!]§)
         {
            return;
         }
         if(this.§'"b§ && this.§'"b§.length > 0)
         {
            var _loc12_:int = 0;
            var _loc13_:* = this.§'"b§;
            while(§§hasnext(_loc13_,_loc12_))
            {
               (§§nextvalue(_loc12_,_loc13_)).disable();
            }
         }
         this.§'"b§ = new Vector.<§]#X§>();
         var _loc3_:uint = Math.min(2,param1.§&R§());
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_)
         {
            (_loc9_ = new §7#'§(_loc4_,param1.getPricePoint(_loc4_),param1.currencyID,"ButtonCoinshopNewLarge",param1.id)).addEventListener(§]#X§.§8#&§,this.§;!l§);
            this.§'"b§.push(_loc9_);
            _loc4_++;
         }
         while(_loc4_ < param1.§&R§())
         {
            (_loc10_ = new §5$5§(_loc4_,param1.getPricePoint(_loc4_),param1.currencyID,"ButtonCoinshopNewSmall",param1.id)).addEventListener(§]#X§.§8#&§,this.§;!l§);
            this.§'"b§.push(_loc10_);
            _loc4_++;
         }
         var _loc5_:MovieClip;
         (_loc5_ = §8#Y§.mClip.Container_CoinShopPopup.ContentUpperRow).visible = false;
         var _loc6_:int = §[!l§ - 1;
         while(_loc6_ >= 0)
         {
            if(_loc6_ < this.§'"b§.length)
            {
               _loc5_.visible = true;
               _loc5_.addChild(this.§'"b§[_loc6_].getGraphics());
               this.§'"b§[_loc6_].x = §@#9§ / §[!l§ * _loc6_;
            }
            _loc6_--;
         }
         (_loc5_ = §8#Y§.mClip.Container_CoinShopPopup.ContentLowerRow).visible = false;
         var _loc7_:int = §9"8§ - 1;
         while(_loc7_ >= 0)
         {
            if((_loc11_ = §[!l§ + _loc7_) < this.§'"b§.length)
            {
               _loc5_.visible = true;
               _loc5_.addChild(this.§'"b§[_loc11_].getGraphics());
               this.§'"b§[_loc11_].x = §@#9§ / §9"8§ * _loc7_;
            }
            _loc7_--;
         }
      }
      
      protected function §;!l§(param1:Event) : void
      {
         var _loc5_:§,!K§ = null;
         var _loc6_:§]!d§ = null;
         if(!dataModel.§,H§.§4"c§)
         {
            return;
         }
         this.§-"j§ = false;
         var _loc2_:§]#X§ = param1.currentTarget as §]#X§;
         var _loc3_:int = _loc2_.§[$>§();
         var _loc4_:String = dataModel.§,H§.§4"c§[0].id;
         this.§4#K§ = param1.currentTarget as §]#X§;
         switch(this.§,#B§)
         {
            case this.§"!]§:
               _loc5_ = dataModel.§,H§.§4"c§[0];
               this.§`^§ = _loc5_.getPricePoint(_loc3_);
               this.§`^§.§=!Y§();
               if(_loc5_.currencyID != "USD")
               {
                  this.§&![§ = new §'!n§();
                  this.§&![§.addEventListener(Event.COMPLETE,this.§0!Z§);
                  this.§&![§.addEventListener(IOErrorEvent.IO_ERROR,this.§2"n§);
                  this.§&![§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2"n§);
                  this.§&![§.dataFormat = URLLoaderDataFormat.TEXT;
                  this.§&![§.load(§2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + _loc5_.currencyID + "&to=USD"));
               }
               else
               {
                  this.buyItem();
               }
               break;
            case this.§;"z§:
               _loc6_ = this.§<#A§(§9F§.§ "[§);
               this.§2#H§ = _loc6_.§@8§(_loc3_);
               this.§2#H§.§=!Y§();
               if(_loc6_.currencyID != "USD")
               {
                  this.§&![§ = new §'!n§();
                  this.§&![§.addEventListener(Event.COMPLETE,this.§-!h§);
                  this.§&![§.addEventListener(IOErrorEvent.IO_ERROR,this.§"R§);
                  this.§&![§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§"R§);
                  this.§&![§.dataFormat = URLLoaderDataFormat.TEXT;
                  this.§&![§.load(§2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + _loc6_.currencyID + "&to=USD"));
               }
               else
               {
                  this.§>#I§();
               }
         }
         §5"w§.trackPageView(this,_loc4_);
      }
      
      private function §2"n§(param1:Event) : void
      {
         this.buyItem();
      }
      
      private function §0!Z§(param1:Event = null) : void
      {
         if(param1 && param1.currentTarget && param1.currentTarget.data != null && param1.currentTarget.data != "" && this.§`^§)
         {
            if(this.§`^§)
            {
               this.§`^§.§@"E§ *= param1.currentTarget.data;
            }
         }
         this.buyItem();
      }
      
      private function §"R§(param1:Event) : void
      {
         this.§>#I§();
      }
      
      private function §-!h§(param1:Event = null) : void
      {
         if(param1.currentTarget.data != null && param1.currentTarget.data != "")
         {
            this.§2#H§.§@"E§ *= param1.currentTarget.data;
         }
         this.§>#I§();
      }
      
      protected function §>#I§() : void
      {
         if(!§"E§)
         {
            this.§function§ = true;
            this.§'#'§ = this.§2#H§.totalQuantity;
            this.§-_§ = dataModel.§,H§.§4"c§[0].id + "_PayByMobile_" + this.§2#H§.totalQuantity + "_" + this.§2#H§.§^!K§;
            AngryBirdsBase.singleton.exitFullScreen();
            §"E§ = true;
            if(this.§>$&§)
            {
               this.§>$&§.removeEventListeners();
               this.§>$&§ = null;
            }
            this.§ Y§(false);
            this.§>$&§ = new §&^§(dataModel.§,H§.§4"c§[0],this.§2#H§,§&^§.§0!E§,ID);
            this.§>$&§.addEventListener(§8K§.§ ",§,this.§6$A§);
            this.§>$&§.addEventListener(§8K§.§<"&§,this.§#n§);
            this.§>$&§.addEventListener(§&^§.§2!§,this.§0"g§);
            §5"w§.§?# §(this.§-_§,this.§'#'§);
         }
      }
      
      protected function §#n§(param1:§8K§) : void
      {
         this.§^!c§(param1.errorMessage,param1.§ $1§,param1.errorCode.toString());
         this.§-"j§ = true;
         this.§function§ = false;
         if(this.§>$&§)
         {
            this.§>$&§.removeEventListener(§8K§.§<"&§,this.§#n§);
            this.§>$&§.removeEventListeners();
            this.§>$&§ = null;
         }
         §"E§ = false;
         this.§-_§ = null;
         this.§'#'§ = 0;
         this.§`^§ = null;
         this.§2#H§ = null;
         this.§ Y§(true);
      }
      
      protected function §^!c§(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§%#§.§3t§,§9#5§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      private function §[#a§(param1:TimerEvent) : void
      {
         this.§5d§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§[#a§);
         §"E§ = false;
      }
      
      protected function buyItem() : void
      {
         var _loc1_:§,!K§ = null;
         if(!§"E§ && !this.§`!n§ && !this.§+"h§ && this.§6#!§)
         {
            this.§function§ = true;
            if(this.§`^§)
            {
               this.§'#'§ = this.§`^§.totalQuantity;
               this.§-_§ = dataModel.§,H§.§4"c§ && dataModel.§,H§.§4"c§.length > 0 && dataModel.§,H§.§4"c§[0].ogo ? dataModel.§,H§.§4"c§[0].ogo + "_" + this.§`^§.totalQuantity : "";
            }
            AngryBirdsBase.singleton.exitFullScreen();
            §"E§ = true;
            if(this.§>$&§)
            {
               this.§>$&§.removeEventListeners();
               this.§>$&§ = null;
            }
            _loc1_ = dataModel.§,H§ && dataModel.§,H§.§4"c§ && dataModel.§,H§.§4"c§.length > 0 ? dataModel.§,H§.§4"c§[0] : null;
            this.§ Y§(false);
            this.§>$&§ = new §&^§(_loc1_,this.§`^§,§&^§.§?$4§,ID);
            this.§>$&§.addEventListener(§8K§.§ ",§,this.§6$A§);
            this.§>$&§.addEventListener(§8K§.§<"&§,this.§#n§);
            §5"w§.§?# §(this.§-_§,this.§'#'§);
            this.§>$&§.addEventListener(§&^§.§2!§,this.§0"g§);
         }
      }
      
      protected function §6$A§(param1:Event) : void
      {
         var _loc2_:§&^§ = param1.currentTarget as §&^§;
         _loc2_.removeEventListener(§8K§.§ ",§,this.§6$A§);
         _loc2_.removeEventListener(§8K§.§<"&§,this.§#n§);
         this.§51§(_loc2_.orderId,_loc2_.pricePoint.totalQuantity,_loc2_.pricePoint.needsReloadAfterPurchase);
         this.§ Y§(true);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§]#X§ = null;
         var _loc4_:Object = null;
         for each(_loc3_ in this.§'"b§)
         {
            _loc3_.removeEventListener(§]#X§.§8#&§,this.§;!l§);
         }
         if(_loc4_ = §8#Y§.mClip.Container_CoinShopPopup[§5!q§])
         {
            _loc4_.removeEventListener(MouseEvent.CLICK,this.§,#`§);
         }
         super.hide(param1,param2);
         this.§8!m§ = false;
         this.§@!T§ = false;
         if(this.§function§)
         {
            this.§function§ = false;
            §#$D§.§?q§.§>!'§();
         }
         dataModel.§,H§.removeEventListener(Event.COMPLETE,this.§9"-§);
         dataModel.§%#8§.removeEventListener(Event.COMPLETE,this.§ #k§);
         if(this.§?U§ && this.§?U§.mClip)
         {
            this.§?U§.setVisibility(false);
         }
         if(this.§3#e§)
         {
            (this.§3#e§ as §2#d§).removeEventListener(§!!o§.§?O§,this.§^[§);
            (this.§3#e§ as §2#d§).removeEventListener(§!!o§.§[!]§,this.§7!>§);
            (this.§3#e§ as §2#d§).removeEventListener(§!!o§.§"#X§,this.§'!s§);
            this.§3#e§ = null;
         }
         this.§<#E§.removeEventListener(§<$?§.§ !O§,this.§;8§);
         this.§<#E§ = null;
      }
      
      override public function dispose() : void
      {
         this.§"[§(this.§?3§);
         super.dispose();
      }
      
      private function §>"J§(param1:MouseEvent) : void
      {
         if(!this.§-"j§)
         {
            return;
         }
         close();
         dispatchEvent(new §5"_§(§5"_§.CLOSE,this));
      }
      
      public function §<"r§() : String
      {
         return §5"w§.§3#R§;
      }
      
      public function §5!R§() : String
      {
         return §5"w§.§8#]§;
      }
      
      public function §+"n§() : String
      {
         return this.§<"r§() + "-" + this.§5!R§();
      }
      
      private function §2"N§() : void
      {
         §8#Y§.getItemByName(§-!T§).setEnabled(this.§,#B§ != this.§"!]§);
         §8#Y§.getItemByName(§]"v§).setEnabled(this.§,#B§ != this.§;"z§);
         §8#Y§.getItemByName(§5!q§).setEnabled(this.§,#B§ != this.§>#4§);
      }
      
      private function §2#p§(param1:Boolean) : void
      {
         if(!§8#Y§)
         {
            return;
         }
         if(param1)
         {
            §8#Y§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = true;
            §8#Y§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            §8#Y§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         else if(this.§2"A§ && this.§6#!§)
         {
            §8#Y§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
            if(this.§@#s§)
            {
               this.injectData(this.§@#s§);
            }
         }
      }
      
      private function §,#`§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         §8#Y§.getItemByName(§5!q§).mClip.gotoAndStop("Active_Selected");
         this.§3#e§.initialize();
         this.§3#e§.redeem();
      }
      
      private function § Y§(param1:Boolean) : void
      {
         var _loc2_:§]#X§ = null;
         for each(_loc2_ in this.§'"b§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §9#0§() : void
      {
         this.§-"j§ = true;
         §"E§ = false;
         this.§ Y§(true);
      }
      
      public function §[$&§() : void
      {
         §"E§ = false;
         this.§-"j§ = true;
         this.§ Y§(true);
      }
      
      private function §0"g§(param1:Event) : void
      {
         §"E§ = false;
         this.§-"j§ = true;
         this.§ Y§(true);
      }
   }
}
