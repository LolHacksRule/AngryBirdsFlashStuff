package §>q§
{
   import §!x§.§?!Q§;
   import §"!U§.§%$0§;
   import §"!U§.§6!J§;
   import §"!U§.§7§;
   import §"!U§.§<Z§;
   import §"!U§.§=#V§;
   import §#!s§.§@J§;
   import §#!s§.Wallet;
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §'!U§.§0!?§;
   import §'!U§.§>$$§;
   import §+"%§.§6X§;
   import §1!@§.§&#a§;
   import §1"0§.§4$#§;
   import §4#%§.§@#@§;
   import §6"r§.§0"<§;
   import §6"r§.§]$!§;
   import §;!H§.§!!8§;
   import §;!H§.§9R§;
   import §;!H§.§=!o§;
   import §>!#§.§ 1§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §?!_§.§,"@§;
   import §?!_§.§,$!§;
   import §?"R§.RedeemCodePopup;
   import §?"R§.WarningPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import §^$4§.§3""§;
   import §^$4§.§4I§;
   import §^$4§.§>"T§;
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
   
   public class CoinShopPopup extends AbstractPopup implements §@J§, § 1§, §@#@§
   {
      
      public static const ID:String = "CoinShopPopup";
      
      public static const §#!Y§:String = "Not enough coins!";
      
      public static const §4^§:String = "Coin Shop";
      
      public static var §7"M§:Boolean = false;
      
      protected static const §,c§:int = 3;
      
      private static const §'!-§:uint = 2;
      
      protected static const §-"]§:int = 550;
      
      private static const §"#§:String = "Button_Pay0";
      
      private static const §>#Y§:String = "Button_Pay1";
      
      private static const §7$-§:String = "Button_Pay2";
      
      private static const § !9§:String = "Button_Redeem";
      
      private static const §4"N§:String = "Button_Code";
      
      private static const §!"_§:String = "In-app Shop Coins";
      
      private static var §#"]§:Class = §5!j§;
      
      private static var §]"y§:§,$!§;
       
      
      private var § E§:Timer;
      
      private var §0#w§:String;
      
      private var §!"M§:int;
      
      private var §2!v§:Boolean = false;
      
      private var §<"u§:Vector.<§@#a§>;
      
      private var §5#>§:Boolean = false;
      
      private var §`!`§:Boolean = false;
      
      private var §7W§:String = "";
      
      private var §^m§:Wallet;
      
      private var §#!]§:§@#a§;
      
      private const §,"Z§:int = 0;
      
      private const §>"j§:int = 1;
      
      private const §=!"§:int = 2;
      
      private const § ##§:int = 3;
      
      private const §%# §:int = 4;
      
      private var §+#$§:int = 0;
      
      private var §9!6§:§4#k§;
      
      private var §>#I§:MovieClip;
      
      private var §<!9§:§0"<§;
      
      private var §^#n§:Boolean;
      
      private var §;I§:Boolean;
      
      private var §9!3§:§=#V§;
      
      private var §4#f§:§6!J§;
      
      private var § #+§:§7#9§;
      
      private var § each§:§5$!§;
      
      private var § >§:Number = 240;
      
      private var §6!&§:§9R§;
      
      private var §6#G§:String = "";
      
      private var §-#-§:§!!8§;
      
      private var §?#=§:Boolean = true;
      
      private var §3!w§:Boolean;
      
      private var §6!E§:Boolean;
      
      public function CoinShopPopup(param1:int, param2:int, param3:String = "", param4:XML = null)
      {
         if(param4 == null)
         {
            param4 = §?!Q§.§<1§(§#"]§);
         }
         super(param1,param2,param4,ID);
         this.§7W§ = param3;
      }
      
      protected static function get dataModel() : §+3§
      {
         return AngryBirdsBase.singleton.dataModel as §+3§;
      }
      
      override protected function init() : void
      {
         var _loc2_:DisplayObject = null;
         §7!j§.getItemByName("Container_CoinShopPopup").setVisibility(true);
         this.§<!9§ = §7!j§.getItemByName("Container_Tab_PayByMobile") as §0"<§;
         if(this.§<!9§)
         {
            _loc2_ = §7!j§.mClip.Container_CoinShopPopup[§>#Y§];
            _loc2_.addEventListener(MouseEvent.CLICK,this.§8"X§);
            this.§>#I§ = this.§<!9§.getItemByName("Container_Country").mClip;
            this.§>#I§.visible = false;
            (this.§<!9§.getItemByName("TextField_ChooseCountry") as §]$!§).setText("Choose your country:");
            this.§<!9§.getItemByName("Button_ActiveCountry").mClip.addEventListener(MouseEvent.CLICK,this.§<$0§);
            this.§<!9§.mClip.btnOK.visible = false;
            this.§<!9§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§?"_§);
         }
         this.§<"u§ = new Vector.<§@#a§>();
         if(§7!j§.mClip.Container_CoinShopPopup.Button_ShopClose)
         {
            §7!j§.mClip.Container_CoinShopPopup.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§="R§);
         }
         if(this.§7W§ == "")
         {
            this.§7W§ = §4^§;
         }
         §7!j§.mClip.Container_CoinShopPopup.coinShopTitle.text = this.§7W§;
         if(§7!j§.getItemByName(§"#§))
         {
            §7!j§.getItemByName(§"#§).mClip.gotoAndStop("Active_Selected");
         }
         §7!j§.mClip.Container_CoinShopPopup.coinShopTitle.text = this.§7W§;
         var _loc1_:§>$$§ = §7!j§.getItemByName(§"#§);
         if(_loc1_)
         {
            _loc1_.mClip.gotoAndStop("Active_Selected");
         }
         this.§ E§ = new Timer(2000,1);
         this.§`"t§();
         this.§-#-§ = new §=!o§();
         (this.§-#-§ as §=!o§).addEventListener(§4I§.§`!M§,this.§!$9§);
         (this.§-#-§ as §=!o§).addEventListener(§4I§.§ !,§,this.§1q§);
         (this.§-#-§ as §=!o§).addEventListener(§4I§.§do§,this.§>"U§);
         this.§3!w§ = false;
         this.§6!E§ = false;
      }
      
      protected function §>"U§(param1:§4I§) : void
      {
      }
      
      protected function §1q§(param1:§4I§) : void
      {
      }
      
      protected function §!$9§(param1:§4I§) : void
      {
         §,"W§.§0#l§("FacebookGiftCard",param1.quantity);
      }
      
      private function §["2§(param1:MouseEvent) : void
      {
      }
      
      protected function §<$0§(param1:Event) : void
      {
         this.§8!Z§(null);
         this.§8"X§(null);
      }
      
      private function §?"_§(param1:MouseEvent) : void
      {
         this.§8!Z§(this.§9!6§.§25§ as §,$!§);
      }
      
      private function §8!Z§(param1:§,$!§) : void
      {
         §]"y§ = param1;
         if(§]"y§)
         {
            this.§>#I§.visible = false;
            this.§<!9§.mClip.btnOK.visible = false;
            this.§&"b§();
            this.§<!9§.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.§<!9§.getItemByName("Button_ActiveCountry").setVisibility(true);
            this.§<!9§.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "<b><u>Country: " + §]"y§.name + "</u></b>";
         }
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         var _loc2_:§@#a§ = null;
         super.show(param1);
         §>"$§.pause();
         this.§%#,§(new Wallet(this,false,true,true));
         this.§^#n§ = false;
         this.§;I§ = false;
         this.§&!R§(true);
         for each(_loc2_ in this.§<"u§)
         {
            _loc2_.§5'§(true);
            _loc2_.addEventListener(§@#a§.§2E§,this.§;"!§);
         }
         if(this.§<!9§)
         {
            if(!dataModel.§<!^§.§<!E§)
            {
               dataModel.§<!^§.addEventListener(Event.COMPLETE,this.§<"p§);
               dataModel.§<!^§.§`!m§();
               §7!j§.getItemByName(§>#Y§).setVisibility(false);
            }
            else
            {
               this.§<"p§(null);
            }
         }
         var _loc3_:DisplayObject = §7!j§.mClip.Container_CoinShopPopup[§"#§];
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.addEventListener(MouseEvent.CLICK,this.§%#9§);
         }
         var _loc4_:DisplayObject;
         if(_loc4_ = §7!j§.mClip.Container_CoinShopPopup[§7$-§])
         {
            _loc4_.visible = false;
            if(dataModel.§9"k§)
            {
               _loc4_.addEventListener(MouseEvent.CLICK,this.§<#9§);
            }
         }
         var _loc5_:Object;
         if(_loc5_ = §7!j§.mClip.Container_CoinShopPopup[§ !9§])
         {
            _loc5_.addEventListener(MouseEvent.CLICK,this.§while§);
         }
         var _loc6_:Object;
         if(_loc6_ = §7!j§.mClip.Container_CoinShopPopup[§4"N§])
         {
            _loc6_.addEventListener(MouseEvent.CLICK,this.§'#f§);
         }
         if(!dataModel.§ ,§.§>m§)
         {
            dataModel.§ ,§.addEventListener(Event.COMPLETE,this.§`i§);
         }
         else
         {
            this.§`i§(null,dataModel.§ ,§.§>m§);
         }
         §,"W§.trackPageView(this);
         §-#A§.§6$2§().§ "V§("SHOP_COINS");
         §7"M§ = false;
         this.§ E§.stop();
         if(dataModel.§ ,§.§>m§ && dataModel.§ ,§.§>m§.length > 0)
         {
            §&#a§.§[!;§(dataModel.§ ,§.§>m§[0]);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "COUNTRY_DROPDOWN":
               if(this.§9!6§.isOpen)
               {
                  this.§9!6§.close();
               }
               else
               {
                  this.§9!6§.open();
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
         if(this.§+#$§ == this.§,"Z§ && §7!j§.getItemByName(§"#§))
         {
            §7!j§.getItemByName(§"#§).mClip.gotoAndStop("Active_Selected");
         }
         else if(this.§+#$§ == this.§>"j§ && §7!j§.getItemByName(§>#Y§))
         {
            §7!j§.getItemByName(§>#Y§).mClip.gotoAndStop("Active_Selected");
         }
      }
      
      private function §,"-§() : void
      {
         if(§7!j§.getItemByName(§"#§) && §7!j§.getItemByName(§>#Y§) && §7!j§.getItemByName(§7$-§))
         {
            §7!j§.getItemByName(§"#§).mClip.gotoAndStop("Active_Up_Default");
            §7!j§.getItemByName(§>#Y§).mClip.gotoAndStop("Active_Up_Default");
            §7!j§.getItemByName(§7$-§).mClip.gotoAndStop("Active_Up_Default");
         }
         if(§7!j§.getItemByName(§ !9§))
         {
            §7!j§.getItemByName(§ !9§).mClip.gotoAndStop("Active_Up_Default");
         }
         if(§7!j§.getItemByName(§4"N§))
         {
            §7!j§.getItemByName(§4"N§).mClip.gotoAndStop("Active_Up_Default");
         }
      }
      
      protected function §%#9§(param1:Event) : void
      {
         this.§<!9§.setVisibility(false);
         this.§+#$§ = this.§,"Z§;
         this.§#!]§ = null;
         this.§,"-§();
         §7!j§.getItemByName(§"#§).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.§ ,§.§>m§)
         {
            dataModel.§ ,§.addEventListener(Event.COMPLETE,this.§`i§);
         }
         else
         {
            this.§`i§(null,dataModel.§ ,§.§>m§);
         }
         this.§`"t§();
      }
      
      protected function §<"p§(param1:§3""§) : void
      {
         dataModel.§<!^§.removeEventListener(Event.COMPLETE,this.§<"p§);
         this.§^#n§ = true;
         this.§&!R§(false);
         if(!dataModel.§<!^§.§1$4§() || dataModel.§<!^§.§1$4§().length == 0)
         {
            §7!j§.getItemByName(§>#Y§).setVisibility(false);
            return;
         }
         §7!j§.getItemByName(§>#Y§).setVisibility(true);
         if(this.§+#$§ == this.§>"j§)
         {
            this.§<!9§.setVisibility(true);
            §7!j§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            §7!j§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         if(param1)
         {
            if(param1.§""0§ || dataModel.§<!^§.§1$4§().length == 1)
            {
               if(param1.§""0§)
               {
                  this.§8!Z§(param1.§""0§);
               }
               else
               {
                  this.§8!Z§(dataModel.§<!^§.§1$4§()[0]);
               }
               this.§<!9§.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "";
            }
            else if(!param1.§0"J§)
            {
            }
         }
         else if(dataModel.§<!^§.§1$4§().length == 1)
         {
            this.§8!Z§(dataModel.§<!^§.§1$4§()[0]);
         }
         else
         {
            this.§8!Z§(§]"y§);
         }
         this.§9!6§ = new §4#k§(this.§>#I§,§,"@§,dataModel.§<!^§.§1$4§());
         this.§9!6§.§@#k§ = 140;
         var _loc2_:Number = (this.§9!6§.data.length + 1) * this.§9!6§.§ "K§.height;
         if(_loc2_ > this.§ >§)
         {
            _loc2_ = this.§ >§;
         }
         this.§9!6§.§<"0§ = _loc2_;
         this.§>#I§.Country_DropDownContainer.height = _loc2_ + 30;
         this.§9!6§.§@!?§ = 0;
         this.§>#I§.selectedValue.mouseChildren = false;
         this.§>#I§.selectedValue.mouseEnabled = false;
         this.§>#I§.arrow.mouseEnabled = false;
         this.§9!6§.addEventListener(Event.CLOSE,this.§%"z§);
         this.§9!6§.addEventListener(Event.OPEN,this.§;"i§);
         this.§%"z§(null);
         this.§9!6§.addEventListener(Event.CHANGE,this.§=b§);
      }
      
      protected function §;"i§(param1:Event) : void
      {
         this.§>#I§.Country_DropDownContainer.visible = true;
      }
      
      protected function §%"z§(param1:Event) : void
      {
         this.§>#I§.Country_DropDownContainer.visible = false;
      }
      
      protected function §=b§(param1:Event) : void
      {
         this.§=#w§();
         §7!j§.mClip.Container_CoinShopPopup.Container_Tab_PayByMobile.btnOK.visible = true;
      }
      
      protected function §8"X§(param1:Event) : void
      {
         this.§+#$§ = this.§>"j§;
         this.§#!]§ = null;
         this.§,"-§();
         §7!j§.getItemByName(§>#Y§).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.§<!^§.§<!E§)
         {
            this.§<!9§.setVisibility(false);
         }
         else
         {
            this.§<!9§.setVisibility(true);
         }
         §7!j§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
         §7!j§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         if(§]"y§ == null)
         {
            this.§>#I§.visible = true;
            this.§<!9§.getItemByName("TextField_ChooseCountry").setVisibility(true);
            this.§<!9§.mClip.btnOK.visible = true;
            this.§<!9§.getItemByName("Button_ActiveCountry").setVisibility(false);
            this.§=#w§();
         }
         else
         {
            this.§>#I§.visible = false;
            this.§<!9§.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.§<!9§.mClip.btnOK.visible = false;
            this.§<!9§.getItemByName("Button_ActiveCountry").setVisibility(dataModel.§<!^§.§1$4§().length > 1);
            this.§&"b§();
         }
         this.§`"t§();
      }
      
      private function §=#w§() : void
      {
         var _loc1_:§@#a§ = null;
         var _loc2_:MovieClip = null;
         for each(_loc1_ in this.§<"u§)
         {
            _loc1_.§5'§(false);
         }
         _loc2_ = §7!j§.mClip.Container_CoinShopPopup.ContentUpperRow;
         _loc2_.visible = false;
         _loc2_ = §7!j§.mClip.Container_CoinShopPopup.ContentLowerRow;
         _loc2_.visible = false;
      }
      
      private function §&"b§() : void
      {
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§7#9§ = null;
         var _loc8_:§@#a§ = null;
         if(§]"y§ == null)
         {
         }
         if(this.§9!3§ == null)
         {
            this.§=#w§();
            return;
         }
         if(this.§<"u§ && this.§<"u§.length > 0)
         {
            var _loc9_:int = 0;
            var _loc10_:* = this.§<"u§;
            while(§§hasnext(_loc10_,_loc9_))
            {
               (§§nextvalue(_loc9_,_loc10_)).disable();
            }
         }
         var _loc1_:§<Z§ = this.§"!G§(§]"y§.§?#Q§);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 2)
         {
            (_loc5_ = _loc3_ == 0 ? §7!j§.mClip.Container_CoinShopPopup.ContentUpperRow : §7!j§.mClip.Container_CoinShopPopup.ContentLowerRow).visible = false;
            _loc6_ = 0;
            while(_loc6_ < §,c§)
            {
               if(!_loc1_)
               {
                  break;
               }
               if(!(_loc7_ = _loc1_.§6!X§(_loc2_)))
               {
                  break;
               }
               (_loc8_ = new §!"H§(_loc2_,_loc7_,_loc1_.currencyID,"ButtonBuyBirdCoinAll",_loc7_.id)).addEventListener(§@#a§.§2E§,this.§;"!§);
               this.§<"u§.push(_loc8_);
               _loc5_.visible = true;
               _loc5_.addChild(_loc8_.getGraphics());
               _loc8_.x = §-"]§ / §,c§ * _loc6_;
               _loc2_++;
               _loc6_++;
            }
            _loc3_++;
         }
      }
      
      private function §"!G§(param1:String) : §<Z§
      {
         var _loc2_:§<Z§ = null;
         var _loc3_:§<Z§ = null;
         for each(_loc3_ in dataModel.§<!^§.§<!E§)
         {
            if(_loc3_.§?#Q§ == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §%#,§(param1:Wallet) : void
      {
         this.§^m§ = param1;
      }
      
      public function §]"]§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §`#$§() : Wallet
      {
         return this.§^m§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §7!j§.mClip.Container_CoinShopPopup;
      }
      
      private function §@g§() : void
      {
         this.§?#=§ = true;
         this.§0#w§ = null;
         this.§!"M§ = 0;
      }
      
      protected function §2!i§(param1:String, param2:Number, param3:Boolean) : void
      {
         var _loc4_:§%$0§ = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         this.§?#=§ = true;
         this.§2!v§ = false;
         this.§6!E§ = param3;
         if(this.§#!]§)
         {
            _loc4_ = new §%$0§();
            this.§#!]§.getGraphics().addChild(_loc4_);
            this.§3!w§ = true;
            if(param3)
            {
               _loc4_.addEventListener(§%$0§.§>$;§,this.§-#n§,false,0,true);
            }
            else
            {
               _loc4_.addEventListener(§%$0§.§>$;§,this.§2"W§,false,0,true);
            }
         }
         else
         {
            this.§3!w§ = false;
            if(param3)
            {
               this.§;I§ = false;
               dataModel.§ ,§.addEventListener(Event.COMPLETE,this.§`i§);
               dataModel.§ ,§.§?#v§(true);
            }
         }
         if(this.§6!&§)
         {
            this.§6!&§.removeEventListener(§>"T§.§3#-§,this.§!"<§);
            this.§6!&§.removeEventListener(§>"T§.§-b§,this.§2!_§);
            this.§6!&§.removeEventListeners();
            this.§6!&§ = null;
         }
         §7"M§ = false;
         if(this.§0#w§)
         {
            _loc5_ = [_loc6_];
            dispatchEvent(new §>"T§(§>"T§.§>"d§,false,false,_loc5_));
            _loc6_ = {};
            §,"W§.§9!C§(this.§0#w§,this.§!"M§);
            §,"W§.trackPageView(this,§,"W§.§=!b§);
            if((_loc7_ = dataModel.§ ,§ && dataModel.§ ,§.§>m§ && dataModel.§ ,§.§>m§.length > 0 && dataModel.§ ,§.§>m§[0] && dataModel.§ ,§.§>m§[0].currencyID ? dataModel.§ ,§.§>m§[0].currencyID : this.§6#G§) && _loc7_ != "")
            {
               this.§6#G§ = _loc7_;
            }
            if(this.§4#f§)
            {
               _loc6_ = {
                  "product":this.§0#w§,
                  "pricePoint":this.§4#f§.§ c§
               };
               §,"W§.trackTransaction(param1,§!"_§,this.§0#w§,this.§0#w§,this.§!"M§ + " x",this.§4#f§.§ c§,1,0);
            }
            else if(this.§ #+§)
            {
               _loc6_ = {
                  "product":"VirtualCurrency_" + param2,
                  "pricePoint":this.§ #+§.§ c§
               };
               §,"W§.trackTransaction(param1,§!"_§,this.§0#w§,this.§0#w§,this.§!"M§ + " x",this.§ #+§.§ c§,1,0);
            }
            this.§0#w§ = null;
            this.§!"M§ = 0;
            this.§4#f§ = null;
            this.§ #+§ = null;
         }
      }
      
      private function §2"W§(param1:Event) : void
      {
         this.§3!w§ = false;
      }
      
      private function §-#n§(param1:Event) : void
      {
         this.§;I§ = false;
         dataModel.§ ,§.addEventListener(Event.COMPLETE,this.§`i§);
         dataModel.§ ,§.§?#v§(true);
         this.§3!w§ = false;
         this.§6!E§ = true;
      }
      
      private function getPricePoint(param1:String) : §6!J§
      {
         var _loc3_:§=#V§ = null;
         var _loc4_:int = 0;
         var _loc5_:§6!J§ = null;
         var _loc2_:int = parseInt(param1.replace("VirtualCurrency_",""));
         if(dataModel.§ ,§.§>m§)
         {
            for each(_loc3_ in dataModel.§ ,§.§>m§)
            {
               if(_loc3_.id == "VirtualCurrency")
               {
                  _loc4_ = 0;
                  while(_loc4_ < _loc3_.§-!6§())
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
      
      private function §`i§(param1:Event = null, param2:Vector.<§=#V§> = null) : void
      {
         if(param1)
         {
            param2 = dataModel.§ ,§.§>m§;
         }
         if(param2.length > 0)
         {
            this.§9!3§ = param2[0];
         }
         else
         {
            this.§9!3§ = null;
            this.§=#w§();
         }
         if(this.§9!3§ && this.§9!3§.currencyID)
         {
            this.§6#G§ = this.§9!3§.currencyID;
         }
         this.§;I§ = true;
         dataModel.§ ,§.removeEventListener(Event.COMPLETE,this.§`i§);
         if(!this.§3!w§)
         {
            this.§&!R§(false);
         }
         this.§6!E§ = false;
      }
      
      public function injectData(param1:§=#V§) : void
      {
         var _loc10_:§@#a§ = null;
         var _loc11_:§@#a§ = null;
         var _loc12_:int = 0;
         if(this.§+#$§ != this.§,"Z§)
         {
            return;
         }
         if(this.§<"u§ && this.§<"u§.length > 0)
         {
            var _loc13_:int = 0;
            var _loc14_:* = this.§<"u§;
            while(§§hasnext(_loc14_,_loc13_))
            {
               (§§nextvalue(_loc13_,_loc14_)).disable();
            }
         }
         this.§<"u§ = new Vector.<§@#a§>();
         var _loc3_:uint = Math.min(2,param1.§-!6§());
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_)
         {
            (_loc10_ = new §0#"§(_loc4_,param1.getPricePoint(_loc4_),param1.currencyID,"ButtonCoinshopNewLarge",param1.id)).addEventListener(§@#a§.§2E§,this.§;"!§);
            this.§<"u§.push(_loc10_);
            _loc4_++;
         }
         while(_loc4_ < param1.§-!6§())
         {
            (_loc11_ = new §'!$§(_loc4_,param1.getPricePoint(_loc4_),param1.currencyID,"ButtonCoinshopNewSmall",param1.id)).addEventListener(§@#a§.§2E§,this.§;"!§);
            this.§<"u§.push(_loc11_);
            _loc4_++;
         }
         var _loc5_:MovieClip;
         (_loc5_ = §7!j§.mClip.Container_CoinShopPopup.ContentUpperRow).visible = false;
         var _loc6_:int = §'!-§ - 1;
         while(_loc6_ >= 0)
         {
            if(_loc6_ < this.§<"u§.length)
            {
               _loc5_.visible = true;
               _loc5_.addChild(this.§<"u§[_loc6_].getGraphics());
               this.§<"u§[_loc6_].x = §-"]§ / §'!-§ * _loc6_;
            }
            _loc6_--;
         }
         (_loc5_ = §7!j§.mClip.Container_CoinShopPopup.ContentLowerRow).visible = false;
         var _loc7_:int = §,c§ - 1;
         while(_loc7_ >= 0)
         {
            if((_loc12_ = §'!-§ + _loc7_) < this.§<"u§.length)
            {
               _loc5_.visible = true;
               _loc5_.addChild(this.§<"u§[_loc12_].getGraphics());
               this.§<"u§[_loc12_].x = §-"]§ / §,c§ * _loc7_;
            }
            _loc7_--;
         }
         var _loc8_:Object;
         if(_loc8_ = §7!j§.mClip.Container_CoinShopPopup[§7$-§])
         {
            if(dataModel.§9"k§)
            {
               _loc8_.visible = true;
               _loc8_.addEventListener(MouseEvent.CLICK,this.§<#9§);
            }
            else
            {
               _loc8_.visible = false;
            }
         }
      }
      
      protected function §;"!§(param1:Event) : void
      {
         var _loc5_:§=#V§ = null;
         var _loc6_:§<Z§ = null;
         if(!dataModel.§ ,§.§>m§)
         {
            return;
         }
         this.§?#=§ = false;
         var _loc2_:§@#a§ = param1.currentTarget as §@#a§;
         var _loc3_:int = _loc2_.§[!s§();
         var _loc4_:String = dataModel.§ ,§.§>m§[0].id;
         this.§#!]§ = param1.currentTarget as §@#a§;
         switch(this.§+#$§)
         {
            case this.§,"Z§:
               _loc5_ = dataModel.§ ,§.§>m§[0];
               this.§4#f§ = _loc5_.getPricePoint(_loc3_);
               this.§4#f§.§<!q§();
               if(_loc5_.currencyID != "USD")
               {
                  this.§ each§ = new §5$!§();
                  this.§ each§.addEventListener(Event.COMPLETE,this.§@"m§);
                  this.§ each§.addEventListener(IOErrorEvent.IO_ERROR,this.§##P§);
                  this.§ each§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§##P§);
                  this.§ each§.dataFormat = URLLoaderDataFormat.TEXT;
                  this.§ each§.load(§>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + _loc5_.currencyID + "&to=USD"));
               }
               else
               {
                  this.buyItem();
               }
               break;
            case this.§>"j§:
               _loc6_ = this.§"!G§(§]"y§.§?#Q§);
               this.§ #+§ = _loc6_.§6!X§(_loc3_);
               this.§ #+§.§<!q§();
               if(_loc6_.currencyID != "USD")
               {
                  this.§ each§ = new §5$!§();
                  this.§ each§.addEventListener(Event.COMPLETE,this.§'#&§);
                  this.§ each§.addEventListener(IOErrorEvent.IO_ERROR,this.§ !!§);
                  this.§ each§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ !!§);
                  this.§ each§.dataFormat = URLLoaderDataFormat.TEXT;
                  this.§ each§.load(§>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + _loc6_.currencyID + "&to=USD"));
               }
               else
               {
                  this.§5"b§();
               }
         }
         §,"W§.trackPageView(this,_loc4_);
      }
      
      private function §##P§(param1:Event) : void
      {
         this.buyItem();
      }
      
      private function §@"m§(param1:Event = null) : void
      {
         if(param1 && param1.currentTarget && param1.currentTarget.data != null && param1.currentTarget.data != "" && this.§4#f§)
         {
            if(this.§4#f§)
            {
               this.§4#f§.§ c§ *= param1.currentTarget.data;
            }
         }
         this.buyItem();
      }
      
      private function § !!§(param1:Event) : void
      {
         this.§5"b§();
      }
      
      private function §'#&§(param1:Event = null) : void
      {
         if(param1.currentTarget.data != null && param1.currentTarget.data != "")
         {
            this.§ #+§.§ c§ *= param1.currentTarget.data;
         }
         this.§5"b§();
      }
      
      protected function §5"b§() : void
      {
         if(!§7"M§)
         {
            this.§2!v§ = true;
            this.§!"M§ = this.§ #+§.totalQuantity;
            this.§0#w§ = dataModel.§ ,§.§>m§[0].id + "_PayByMobile_" + this.§ #+§.totalQuantity + "_" + this.§ #+§.§9!+§;
            AngryBirdsBase.singleton.exitFullScreen();
            §7"M§ = true;
            if(this.§6!&§)
            {
               this.§6!&§.removeEventListeners();
               this.§6!&§ = null;
            }
            this.§=!M§(false);
            this.§6!&§ = new §9R§(dataModel.§ ,§.§>m§[0],this.§ #+§,§9R§.§#2§,ID);
            this.§6!&§.addEventListener(§>"T§.§3#-§,this.§!"<§);
            this.§6!&§.addEventListener(§>"T§.§-b§,this.§2!_§);
            this.§6!&§.addEventListener(§9R§.§%!`§,this.§!# §);
            §,"W§.§8`§(this.§0#w§,this.§!"M§);
         }
      }
      
      protected function §2!_§(param1:§>"T§) : void
      {
         this.§=#r§(param1.errorMessage,param1.§9!]§,param1.errorCode.toString());
         this.§?#=§ = true;
         this.§2!v§ = false;
         if(this.§6!&§)
         {
            this.§6!&§.removeEventListener(§>"T§.§-b§,this.§2!_§);
            this.§6!&§.removeEventListeners();
            this.§6!&§ = null;
         }
         §7"M§ = false;
         this.§0#w§ = null;
         this.§!"M§ = 0;
         this.§4#f§ = null;
         this.§ #+§ = null;
         this.§=!M§(true);
      }
      
      protected function §=#r§(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§[W§.§5Z§,§<d§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      private function §<#9§(param1:MouseEvent) : void
      {
         §7!j§.getItemByName(§7$-§).mClip.gotoAndStop("Active_Selected");
         if(ExternalInterface.available)
         {
            if(!§7"M§)
            {
               this.§2!v§ = true;
               AngryBirdsBase.singleton.exitFullScreen();
               §6X§.§3U§("earnCredits");
               §7"M§ = true;
               this.§ E§.reset();
               this.§ E§.start();
               this.§ E§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§;#z§);
               §,"W§.§;#=§("TrialPay");
            }
         }
         §,"W§.trackPageView(this,"TrialPay");
         this.§`"t§();
      }
      
      private function §;#z§(param1:TimerEvent) : void
      {
         this.§ E§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§;#z§);
         §7"M§ = false;
      }
      
      protected function buyItem() : void
      {
         var _loc1_:§=#V§ = null;
         if(!§7"M§ && !this.§3!w§ && !this.§6!E§ && this.§;I§)
         {
            this.§2!v§ = true;
            if(this.§4#f§)
            {
               this.§!"M§ = this.§4#f§.totalQuantity;
               this.§0#w§ = dataModel.§ ,§.§>m§ && dataModel.§ ,§.§>m§.length > 0 && dataModel.§ ,§.§>m§[0].ogo ? dataModel.§ ,§.§>m§[0].ogo + "_" + this.§4#f§.totalQuantity : "";
            }
            AngryBirdsBase.singleton.exitFullScreen();
            §7"M§ = true;
            if(this.§6!&§)
            {
               this.§6!&§.removeEventListeners();
               this.§6!&§ = null;
            }
            _loc1_ = dataModel.§ ,§ && dataModel.§ ,§.§>m§ && dataModel.§ ,§.§>m§.length > 0 ? dataModel.§ ,§.§>m§[0] : null;
            this.§=!M§(false);
            this.§6!&§ = new §9R§(_loc1_,this.§4#f§,§9R§.§0",§,ID);
            this.§6!&§.addEventListener(§>"T§.§3#-§,this.§!"<§);
            this.§6!&§.addEventListener(§>"T§.§-b§,this.§2!_§);
            §,"W§.§8`§(this.§0#w§,this.§!"M§);
            this.§6!&§.addEventListener(§9R§.§%!`§,this.§!# §);
         }
      }
      
      protected function §!"<§(param1:Event) : void
      {
         var _loc2_:§9R§ = param1.currentTarget as §9R§;
         _loc2_.removeEventListener(§>"T§.§3#-§,this.§!"<§);
         _loc2_.removeEventListener(§>"T§.§-b§,this.§2!_§);
         this.§2!i§(_loc2_.orderId,_loc2_.pricePoint.totalQuantity,_loc2_.pricePoint.needsReloadAfterPurchase);
         this.§=!M§(true);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§@#a§ = null;
         var _loc4_:Object = null;
         for each(_loc3_ in this.§<"u§)
         {
            _loc3_.removeEventListener(§@#a§.§2E§,this.§;"!§);
         }
         if(_loc4_ = §7!j§.mClip.Container_CoinShopPopup[§7$-§])
         {
            _loc4_.removeEventListener(MouseEvent.CLICK,this.§<#9§);
         }
         var _loc5_:Object;
         if(_loc5_ = §7!j§.mClip.Container_CoinShopPopup[§ !9§])
         {
            _loc5_.removeEventListener(MouseEvent.CLICK,this.§while§);
         }
         var _loc6_:Object;
         if(_loc6_ = §7!j§.mClip.Container_CoinShopPopup[§4"N§])
         {
            _loc6_.removeEventListener(MouseEvent.CLICK,this.§'#f§);
         }
         super.hide(param1,param2);
         this.§5#>§ = false;
         this.§`!`§ = false;
         if(this.§2!v§)
         {
            this.§2!v§ = false;
            §%h§.§3!]§.§=L§();
         }
         dataModel.§ ,§.removeEventListener(Event.COMPLETE,this.§`i§);
         dataModel.§<!^§.removeEventListener(Event.COMPLETE,this.§<"p§);
         if(this.§<!9§ && this.§<!9§.mClip)
         {
            this.§<!9§.setVisibility(false);
         }
         if(this.§-#-§)
         {
            (this.§-#-§ as §=!o§).removeEventListener(§4I§.§`!M§,this.§!$9§);
            (this.§-#-§ as §=!o§).removeEventListener(§4I§.§ !,§,this.§1q§);
            (this.§-#-§ as §=!o§).removeEventListener(§4I§.§do§,this.§>"U§);
            this.§-#-§ = null;
         }
      }
      
      override public function dispose() : void
      {
         this.§]"]§(this.§^m§);
         super.dispose();
      }
      
      private function §="R§(param1:MouseEvent) : void
      {
         if(!this.§?#=§)
         {
            return;
         }
         close();
         dispatchEvent(new §4$#§(§4$#§.CLOSE,this));
      }
      
      public function §9"v§() : String
      {
         return §,"W§.§8z§;
      }
      
      public function §7">§() : String
      {
         return §,"W§.§`"b§;
      }
      
      public function §<$#§() : String
      {
         return this.§9"v§() + "-" + this.§7">§();
      }
      
      private function §`"t§() : void
      {
         §7!j§.getItemByName(§"#§).setEnabled(this.§+#$§ != this.§,"Z§);
         §7!j§.getItemByName(§>#Y§).setEnabled(this.§+#$§ != this.§>"j§);
         §7!j§.getItemByName(§7$-§).setEnabled(this.§+#$§ != this.§=!"§);
         §7!j§.getItemByName(§ !9§).setEnabled(this.§+#$§ != this.§ ##§);
         §7!j§.getItemByName(§4"N§).setEnabled(this.§+#$§ != this.§%# §);
      }
      
      private function §&!R§(param1:Boolean) : void
      {
         if(!§7!j§)
         {
            return;
         }
         if(param1)
         {
            §7!j§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = true;
            §7!j§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            §7!j§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         else if(this.§^#n§ && this.§;I§)
         {
            §7!j§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
            if(this.§9!3§)
            {
               this.injectData(this.§9!3§);
            }
         }
      }
      
      private function §while§(param1:MouseEvent) : void
      {
         §7!j§.getItemByName(§ !9§).mClip.gotoAndStop("Active_Selected");
         this.§-#-§.initialize();
         this.§-#-§.redeem();
      }
      
      private function §'#f§(param1:MouseEvent) : void
      {
         §7!j§.getItemByName(§4"N§).mClip.gotoAndStop("Active_Selected");
         this.§5!R§();
      }
      
      private function §5!R§() : void
      {
         var _loc1_:RedeemCodePopup = new RedeemCodePopup(§[W§.§5Z§,§<d§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      private function §=!M§(param1:Boolean) : void
      {
         var _loc2_:§@#a§ = null;
         for each(_loc2_ in this.§<"u§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §,2§() : void
      {
         this.§?#=§ = true;
         §7"M§ = false;
         this.§=!M§(true);
      }
      
      public function §"^§() : void
      {
         §7"M§ = false;
         this.§?#=§ = true;
         this.§=!M§(true);
      }
      
      private function §!# §(param1:Event) : void
      {
         §7"M§ = false;
         this.§?#=§ = true;
         this.§=!M§(true);
      }
   }
}
