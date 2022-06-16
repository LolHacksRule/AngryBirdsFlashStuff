package §4#V§
{
   import §!$;§.§8#F§;
   import §&"`§.§"#x§;
   import §&"`§.§##P§;
   import §&"`§.§2#N§;
   import §&"`§.§2i§;
   import §&"`§.§@",§;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §0#m§.§8#§;
   import §00§.§3# §;
   import §00§.§9$'§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §1"N§.§+"O§;
   import §1"N§.§4k§;
   import §1"N§.§>#`§;
   import §2"5§.§1"?§;
   import §2"5§.§7,§;
   import §2"5§.§[#G§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §3#T§.§'§;
   import §3#T§.§@"!§;
   import §;#D§.§3#U§;
   import §<h§.§%M§;
   import §<h§.§[#K§;
   import §=!,§.§1!l§;
   import §?P§.WarningPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import §[#[§.§=#Q§;
   import §]!6§.§="p§;
   import §`7§.§ try§;
   import §`7§.§7E§;
   import §`7§.§`"x§;
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
   
   public class CoinShopPopup extends AbstractPopup implements §9#a§, §7E§, §8#§
   {
      
      public static const ID:String = "CoinShopPopup";
      
      public static const §'$7§:String = "Not enough coins!";
      
      public static const §##T§:String = "Coin Shop";
      
      public static var §@"h§:Boolean = false;
      
      protected static const §1#>§:int = 3;
      
      private static const §!!a§:uint = 2;
      
      protected static const §]"e§:int = 550;
      
      private static const §8#o§:String = "Button_Pay0";
      
      private static const §9!o§:String = "Button_Pay1";
      
      private static const §!">§:String = "Button_Redeem";
      
      private static const §>E§:String = "In-app Shop Coins";
      
      private static var §@#%§:Class = §^!9§;
      
      private static var §"?§:§9$'§;
       
      
      private var §,#4§:Timer;
      
      private var §+"t§:String;
      
      private var §>3§:int;
      
      private var §"#n§:Boolean = false;
      
      private var § #p§:Vector.<§7w§>;
      
      private var §>8§:Boolean = false;
      
      private var §@$0§:Boolean = false;
      
      private var §&2§:String = "";
      
      private var §&"K§:Wallet;
      
      private var §>$,§:§7w§;
      
      private const §45§:int = 0;
      
      private const §'!g§:int = 1;
      
      private const §67§:int = 2;
      
      private const §?!K§:int = 3;
      
      private var §%#4§:int = 0;
      
      private var §>#?§:§>P§;
      
      private var §4#_§:MovieClip;
      
      private var § #Z§:§[#K§;
      
      private var §-H§:Boolean;
      
      private var §<!z§:Boolean;
      
      private var §<!D§:§"#x§;
      
      private var §9!6§:§##P§;
      
      private var §#!c§:§2#N§;
      
      private var §>v§:§1"V§;
      
      private var §>7§:Number = 240;
      
      private var §+#v§:§4k§;
      
      private var §^""§:String = "";
      
      private var §0"i§:§+"O§;
      
      private var §;!n§:Boolean = true;
      
      private var §<"b§:Boolean;
      
      private var §;#§:Boolean;
      
      private var §@!e§:§1!l§;
      
      public function CoinShopPopup(param1:int, param2:int, param3:String = "", param4:XML = null)
      {
         if(param4 == null)
         {
            param4 = §="p§.§+@§(§@#%§);
         }
         super(param1,param2,param4,ID);
         this.§&2§ = param3;
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      override protected function init() : void
      {
         var _loc2_:DisplayObject = null;
         §,#2§.getItemByName("Container_CoinShopPopup").setVisibility(true);
         this.§ #Z§ = §,#2§.getItemByName("Container_Tab_PayByMobile") as §[#K§;
         if(this.§ #Z§)
         {
            _loc2_ = §,#2§.mClip.Container_CoinShopPopup[§9!o§];
            _loc2_.addEventListener(MouseEvent.CLICK,this.§0!;§);
            this.§4#_§ = this.§ #Z§.getItemByName("Container_Country").mClip;
            this.§4#_§.visible = false;
            (this.§ #Z§.getItemByName("TextField_ChooseCountry") as §%M§).setText("Choose your country:");
            this.§ #Z§.getItemByName("Button_ActiveCountry").mClip.addEventListener(MouseEvent.CLICK,this.§9,§);
            this.§ #Z§.mClip.btnOK.visible = false;
            this.§ #Z§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§=!-§);
         }
         this.§ #p§ = new Vector.<§7w§>();
         if(§,#2§.mClip.Container_CoinShopPopup.Button_ShopClose)
         {
            §,#2§.mClip.Container_CoinShopPopup.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§-"F§);
         }
         if(this.§&2§ == "")
         {
            this.§&2§ = §##T§;
         }
         §,#2§.mClip.Container_CoinShopPopup.coinShopTitle.text = this.§&2§;
         if(§,#2§.getItemByName(§8#o§))
         {
            §,#2§.getItemByName(§8#o§).mClip.gotoAndStop("Active_Selected");
         }
         §,#2§.mClip.Container_CoinShopPopup.coinShopTitle.text = this.§&2§;
         var _loc1_:§@"!§ = §,#2§.getItemByName(§8#o§);
         if(_loc1_)
         {
            _loc1_.mClip.gotoAndStop("Active_Selected");
         }
         this.§,#4§ = new Timer(2000,1);
         this.§5$$§();
         this.§0"i§ = new §>#`§();
         (this.§0"i§ as §>#`§).addEventListener(§[#G§.§@!B§,this.§+!v§);
         (this.§0"i§ as §>#`§).addEventListener(§[#G§.§!"§,this.§="5§);
         (this.§0"i§ as §>#`§).addEventListener(§[#G§.§7!#§,this.§4n§);
         this.§<"b§ = false;
         this.§;#§ = false;
         this.§@!e§ = §1!l§.§6!§;
         this.§@!e§.addEventListener(§1!l§.§>#,§,this.§'"r§);
      }
      
      private function §'"r§(param1:Event) : void
      {
         this.§"!M§(true);
         if(!dataModel.§-!h§.§]'§)
         {
            dataModel.§-!h§.addEventListener(Event.COMPLETE,this.§52§);
         }
         else
         {
            this.§52§(null,dataModel.§-!h§.§]'§);
         }
      }
      
      protected function §4n§(param1:§[#G§) : void
      {
      }
      
      protected function §="5§(param1:§[#G§) : void
      {
      }
      
      protected function §+!v§(param1:§[#G§) : void
      {
         §`"x§.§["E§("FacebookGiftCard",param1.quantity);
      }
      
      private function §<#W§(param1:MouseEvent) : void
      {
      }
      
      protected function §9,§(param1:Event) : void
      {
         this.§5o§(null);
         this.§0!;§(null);
      }
      
      private function §=!-§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         this.§5o§(this.§>#?§.§+$0§ as §9$'§);
      }
      
      private function §5o§(param1:§9$'§) : void
      {
         §"?§ = param1;
         if(§"?§)
         {
            this.§4#_§.visible = false;
            this.§ #Z§.mClip.btnOK.visible = false;
            this.§6#c§();
            this.§ #Z§.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.§ #Z§.getItemByName("Button_ActiveCountry").setVisibility(true);
            this.§ #Z§.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "<b><u>Country: " + §"?§.name + "</u></b>";
         }
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         var _loc2_:§7w§ = null;
         super.show(param1);
         §3#U§.pause();
         this.§[?§(new Wallet(this,false,true,true));
         this.§-H§ = false;
         this.§<!z§ = false;
         this.§"!M§(true);
         for each(_loc2_ in this.§ #p§)
         {
            _loc2_.§;"?§(true);
            _loc2_.addEventListener(§7w§.§&[§,this.§9#L§);
         }
         if(this.§ #Z§)
         {
            if(!dataModel.§6!Z§.§`#n§)
            {
               dataModel.§6!Z§.addEventListener(Event.COMPLETE,this.§ #t§);
               dataModel.§6!Z§.§%#D§();
               §,#2§.getItemByName(§9!o§).setVisibility(false);
            }
            else
            {
               this.§ #t§(null);
            }
         }
         var _loc3_:DisplayObject = §,#2§.mClip.Container_CoinShopPopup[§8#o§];
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.addEventListener(MouseEvent.CLICK,this.§'!8§);
         }
         var _loc4_:Object;
         if(_loc4_ = §,#2§.mClip.Container_CoinShopPopup[§!">§])
         {
            _loc4_.addEventListener(MouseEvent.CLICK,this.§<K§);
         }
         if(!dataModel.§-!h§.§]'§)
         {
            dataModel.§-!h§.addEventListener(Event.COMPLETE,this.§52§);
         }
         else
         {
            this.§52§(null,dataModel.§-!h§.§]'§);
         }
         §`"x§.trackPageView(this);
         § try§.§!!t§().§%"?§("COIN_SHOP");
         §@"h§ = false;
         this.§,#4§.stop();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "COUNTRY_DROPDOWN":
               if(this.§>#?§.isOpen)
               {
                  this.§>#?§.close();
               }
               else
               {
                  this.§>#?§.open();
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
         if(this.§%#4§ == this.§45§ && §,#2§.getItemByName(§8#o§))
         {
            §,#2§.getItemByName(§8#o§).mClip.gotoAndStop("Active_Selected");
         }
         else if(this.§%#4§ == this.§'!g§ && §,#2§.getItemByName(§9!o§))
         {
            §,#2§.getItemByName(§9!o§).mClip.gotoAndStop("Active_Selected");
         }
      }
      
      private function §<$%§() : void
      {
         if(§,#2§.getItemByName(§8#o§) && §,#2§.getItemByName(§9!o§))
         {
            §,#2§.getItemByName(§8#o§).mClip.gotoAndStop("Active_Up_Default");
            §,#2§.getItemByName(§9!o§).mClip.gotoAndStop("Active_Up_Default");
         }
         if(§,#2§.getItemByName(§!">§))
         {
            §,#2§.getItemByName(§!">§).mClip.gotoAndStop("Active_Up_Default");
         }
      }
      
      protected function §'!8§(param1:Event) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         this.§ #Z§.setVisibility(false);
         this.§%#4§ = this.§45§;
         this.§>$,§ = null;
         this.§<$%§();
         §,#2§.getItemByName(§8#o§).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.§-!h§.§]'§)
         {
            dataModel.§-!h§.addEventListener(Event.COMPLETE,this.§52§);
         }
         else
         {
            this.§52§(null,dataModel.§-!h§.§]'§);
         }
         this.§5$$§();
      }
      
      protected function § #t§(param1:§7,§) : void
      {
         dataModel.§6!Z§.removeEventListener(Event.COMPLETE,this.§ #t§);
         this.§-H§ = true;
         this.§"!M§(false);
         if(!dataModel.§6!Z§.§7N§() || dataModel.§6!Z§.§7N§().length == 0)
         {
            §,#2§.getItemByName(§9!o§).setVisibility(false);
            return;
         }
         §,#2§.getItemByName(§9!o§).setVisibility(true);
         if(this.§%#4§ == this.§'!g§)
         {
            this.§ #Z§.setVisibility(true);
            §,#2§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            §,#2§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         if(param1)
         {
            if(param1.§9>§ || dataModel.§6!Z§.§7N§().length == 1)
            {
               if(param1.§9>§)
               {
                  this.§5o§(param1.§9>§);
               }
               else
               {
                  this.§5o§(dataModel.§6!Z§.§7N§()[0]);
               }
               this.§ #Z§.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "";
            }
            else if(!param1.§6!s§)
            {
            }
         }
         else if(dataModel.§6!Z§.§7N§().length == 1)
         {
            this.§5o§(dataModel.§6!Z§.§7N§()[0]);
         }
         else
         {
            this.§5o§(§"?§);
         }
         this.§>#?§ = new §>P§(this.§4#_§,§3# §,dataModel.§6!Z§.§7N§());
         this.§>#?§.§7! § = 140;
         var _loc2_:Number = (this.§>#?§.data.length + 1) * this.§>#?§.§`"$§.height;
         if(_loc2_ > this.§>7§)
         {
            _loc2_ = this.§>7§;
         }
         this.§>#?§.§&x§ = _loc2_;
         this.§4#_§.Country_DropDownContainer.height = _loc2_ + 30;
         this.§>#?§.§%#p§ = 0;
         this.§4#_§.selectedValue.mouseChildren = false;
         this.§4#_§.selectedValue.mouseEnabled = false;
         this.§4#_§.arrow.mouseEnabled = false;
         this.§>#?§.addEventListener(Event.CLOSE,this.§[#o§);
         this.§>#?§.addEventListener(Event.OPEN,this.§`"[§);
         this.§[#o§(null);
         this.§>#?§.addEventListener(Event.CHANGE,this.§,3§);
      }
      
      protected function §`"[§(param1:Event) : void
      {
         this.§4#_§.Country_DropDownContainer.visible = true;
      }
      
      protected function §[#o§(param1:Event) : void
      {
         this.§4#_§.Country_DropDownContainer.visible = false;
      }
      
      protected function §,3§(param1:Event) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         this.§0#X§();
         §,#2§.mClip.Container_CoinShopPopup.Container_Tab_PayByMobile.btnOK.visible = true;
      }
      
      protected function §0!;§(param1:Event) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         this.§%#4§ = this.§'!g§;
         this.§>$,§ = null;
         this.§<$%§();
         §,#2§.getItemByName(§9!o§).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.§6!Z§.§`#n§)
         {
            this.§ #Z§.setVisibility(false);
         }
         else
         {
            this.§ #Z§.setVisibility(true);
         }
         §,#2§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
         §,#2§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         if(§"?§ == null)
         {
            this.§4#_§.visible = true;
            this.§ #Z§.getItemByName("TextField_ChooseCountry").setVisibility(true);
            this.§ #Z§.mClip.btnOK.visible = true;
            this.§ #Z§.getItemByName("Button_ActiveCountry").setVisibility(false);
            this.§0#X§();
         }
         else
         {
            this.§4#_§.visible = false;
            this.§ #Z§.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.§ #Z§.mClip.btnOK.visible = false;
            this.§ #Z§.getItemByName("Button_ActiveCountry").setVisibility(dataModel.§6!Z§.§7N§().length > 1);
            this.§6#c§();
         }
         this.§5$$§();
      }
      
      private function §0#X§() : void
      {
         var _loc1_:§7w§ = null;
         var _loc2_:MovieClip = null;
         for each(_loc1_ in this.§ #p§)
         {
            _loc1_.§;"?§(false);
         }
         _loc2_ = §,#2§.mClip.Container_CoinShopPopup.ContentUpperRow;
         _loc2_.visible = false;
         _loc2_ = §,#2§.mClip.Container_CoinShopPopup.ContentLowerRow;
         _loc2_.visible = false;
      }
      
      private function §6#c§() : void
      {
         var _loc4_:§7w§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§2#N§ = null;
         var _loc8_:§7w§ = null;
         if(§"?§ == null)
         {
         }
         if(this.§<!D§ == null)
         {
            this.§0#X§();
            return;
         }
         if(this.§ #p§ && this.§ #p§.length > 0)
         {
            for each(_loc4_ in this.§ #p§)
            {
               _loc4_.disable();
            }
         }
         var _loc1_:§2i§ = this.§<!F§(§"?§.§@-§);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 2)
         {
            (_loc5_ = _loc3_ == 0 ? §,#2§.mClip.Container_CoinShopPopup.ContentUpperRow : §,#2§.mClip.Container_CoinShopPopup.ContentLowerRow).visible = false;
            _loc6_ = 0;
            while(_loc6_ < §1#>§)
            {
               if(!_loc1_)
               {
                  break;
               }
               if(!(_loc7_ = _loc1_.§7!W§(_loc2_)))
               {
                  break;
               }
               (_loc8_ = new §,"E§(_loc2_,_loc7_,_loc1_.currencyID,"ButtonBuyBirdCoinAll",_loc7_.id)).addEventListener(§7w§.§&[§,this.§9#L§);
               this.§ #p§.push(_loc8_);
               _loc5_.visible = true;
               _loc5_.addChild(_loc8_.getGraphics());
               _loc8_.x = §]"e§ / §1#>§ * _loc6_;
               _loc2_++;
               _loc6_++;
            }
            _loc3_++;
         }
      }
      
      private function §<!F§(param1:String) : §2i§
      {
         var _loc2_:§2i§ = null;
         var _loc3_:§2i§ = null;
         for each(_loc3_ in dataModel.§6!Z§.§`#n§)
         {
            if(_loc3_.§@-§ == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function §8!3§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §8"K§() : Wallet
      {
         return this.§&"K§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §,#2§.mClip.Container_CoinShopPopup;
      }
      
      private function §[1§() : void
      {
         this.§;!n§ = true;
         this.§+"t§ = null;
         this.§>3§ = 0;
      }
      
      protected function §8#d§(param1:String, param2:Number, param3:Boolean) : void
      {
         var _loc4_:§@",§ = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         this.§;!n§ = true;
         this.§"#n§ = false;
         this.§;#§ = param3;
         if(this.§>$,§)
         {
            _loc4_ = new §@",§();
            this.§>$,§.getGraphics().addChild(_loc4_);
            this.§<"b§ = true;
            if(param3)
            {
               _loc4_.addEventListener(§@",§.§!!,§,this.§&#w§,false,0,true);
            }
            else
            {
               _loc4_.addEventListener(§@",§.§!!,§,this.§`!2§,false,0,true);
            }
         }
         else
         {
            this.§<"b§ = false;
            if(param3)
            {
               this.§<!z§ = false;
               dataModel.§-!h§.addEventListener(Event.COMPLETE,this.§52§);
               dataModel.§-!h§.§6"s§(true);
            }
         }
         if(this.§+#v§)
         {
            this.§+#v§.removeEventListener(§1"?§.§7"^§,this.§3![§);
            this.§+#v§.removeEventListener(§1"?§.§^#M§,this.§=##§);
            this.§+#v§.removeEventListeners();
            this.§+#v§ = null;
         }
         §@"h§ = false;
         if(this.§+"t§)
         {
            _loc5_ = [_loc6_];
            dispatchEvent(new §1"?§(§1"?§.§=#j§,false,false,_loc5_));
            _loc6_ = {};
            §`"x§.§!!4§(this.§+"t§,this.§>3§);
            §`"x§.trackPageView(this,§`"x§.§1!B§);
            if((_loc7_ = dataModel.§-!h§ && dataModel.§-!h§.§]'§ && dataModel.§-!h§.§]'§.length > 0 && dataModel.§-!h§.§]'§[0] && dataModel.§-!h§.§]'§[0].currencyID ? dataModel.§-!h§.§]'§[0].currencyID : this.§^""§) && _loc7_ != "")
            {
               this.§^""§ = _loc7_;
            }
            if(this.§9!6§)
            {
               _loc6_ = {
                  "product":this.§+"t§,
                  "pricePoint":this.§9!6§.§!"g§
               };
               §`"x§.trackTransaction(param1,§>E§,this.§+"t§,this.§+"t§,this.§>3§ + " x",this.§9!6§.§!"g§,1,0);
            }
            else if(this.§#!c§)
            {
               _loc6_ = {
                  "product":"VirtualCurrency_" + param2,
                  "pricePoint":this.§#!c§.§!"g§
               };
               §`"x§.trackTransaction(param1,§>E§,this.§+"t§,this.§+"t§,this.§>3§ + " x",this.§#!c§.§!"g§,1,0);
            }
            this.§+"t§ = null;
            this.§>3§ = 0;
            this.§9!6§ = null;
            this.§#!c§ = null;
         }
      }
      
      private function §`!2§(param1:Event) : void
      {
         this.§<"b§ = false;
      }
      
      private function §&#w§(param1:Event) : void
      {
         this.§<!z§ = false;
         dataModel.§-!h§.addEventListener(Event.COMPLETE,this.§52§);
         dataModel.§-!h§.§6"s§(true);
         this.§<"b§ = false;
         this.§;#§ = true;
      }
      
      private function getPricePoint(param1:String) : §##P§
      {
         var _loc3_:§"#x§ = null;
         var _loc4_:int = 0;
         var _loc5_:§##P§ = null;
         var _loc2_:int = parseInt(param1.replace("VirtualCurrency_",""));
         if(dataModel.§-!h§.§]'§)
         {
            for each(_loc3_ in dataModel.§-!h§.§]'§)
            {
               if(_loc3_.id == "VirtualCurrency")
               {
                  _loc4_ = 0;
                  while(_loc4_ < _loc3_.§?" §())
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
      
      private function §52§(param1:Event = null, param2:Vector.<§"#x§> = null) : void
      {
         if(param1)
         {
            param2 = dataModel.§-!h§.§]'§;
         }
         if(param2.length > 0)
         {
            this.§<!D§ = param2[0];
         }
         else
         {
            this.§<!D§ = null;
            this.§0#X§();
         }
         if(this.§<!D§ && this.§<!D§.currencyID)
         {
            this.§^""§ = this.§<!D§.currencyID;
         }
         this.§<!z§ = true;
         dataModel.§-!h§.removeEventListener(Event.COMPLETE,this.§52§);
         if(!this.§<"b§)
         {
            this.§"!M§(false);
         }
         this.§;#§ = false;
         if(dataModel.§-!h§.§]'§ && dataModel.§-!h§.§]'§.length > 0)
         {
            §=#Q§.§"!8§(dataModel.§-!h§.§]'§[0]);
         }
      }
      
      public function injectData(param1:§"#x§) : void
      {
         var _loc8_:§7w§ = null;
         var _loc9_:§7w§ = null;
         var _loc10_:§7w§ = null;
         var _loc11_:int = 0;
         if(this.§%#4§ != this.§45§)
         {
            return;
         }
         if(this.§ #p§ && this.§ #p§.length > 0)
         {
            for each(_loc8_ in this.§ #p§)
            {
               _loc8_.disable();
            }
         }
         this.§ #p§ = new Vector.<§7w§>();
         var _loc3_:uint = Math.min(2,param1.§?" §());
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_)
         {
            (_loc9_ = new §9h§(_loc4_,param1.getPricePoint(_loc4_),param1.currencyID,"ButtonCoinshopNewLarge",param1.id)).addEventListener(§7w§.§&[§,this.§9#L§);
            this.§ #p§.push(_loc9_);
            _loc4_++;
         }
         while(_loc4_ < param1.§?" §())
         {
            (_loc10_ = new §!"G§(_loc4_,param1.getPricePoint(_loc4_),param1.currencyID,"ButtonCoinshopNewSmall",param1.id)).addEventListener(§7w§.§&[§,this.§9#L§);
            this.§ #p§.push(_loc10_);
            _loc4_++;
         }
         var _loc5_:MovieClip;
         (_loc5_ = §,#2§.mClip.Container_CoinShopPopup.ContentUpperRow).visible = false;
         var _loc6_:int = §!!a§ - 1;
         while(_loc6_ >= 0)
         {
            if(_loc6_ < this.§ #p§.length)
            {
               _loc5_.visible = true;
               _loc5_.addChild(this.§ #p§[_loc6_].getGraphics());
               this.§ #p§[_loc6_].x = §]"e§ / §!!a§ * _loc6_;
            }
            _loc6_--;
         }
         (_loc5_ = §,#2§.mClip.Container_CoinShopPopup.ContentLowerRow).visible = false;
         var _loc7_:int = §1#>§ - 1;
         while(_loc7_ >= 0)
         {
            if((_loc11_ = §!!a§ + _loc7_) < this.§ #p§.length)
            {
               _loc5_.visible = true;
               _loc5_.addChild(this.§ #p§[_loc11_].getGraphics());
               this.§ #p§[_loc11_].x = §]"e§ / §1#>§ * _loc7_;
            }
            _loc7_--;
         }
      }
      
      protected function §9#L§(param1:Event) : void
      {
         var _loc5_:§"#x§ = null;
         var _loc6_:§2i§ = null;
         if(!dataModel.§-!h§.§]'§)
         {
            return;
         }
         this.§;!n§ = false;
         var _loc2_:§7w§ = param1.currentTarget as §7w§;
         var _loc3_:int = _loc2_.§@#+§();
         var _loc4_:String = dataModel.§-!h§.§]'§[0].id;
         this.§>$,§ = param1.currentTarget as §7w§;
         switch(this.§%#4§)
         {
            case this.§45§:
               _loc5_ = dataModel.§-!h§.§]'§[0];
               this.§9!6§ = _loc5_.getPricePoint(_loc3_);
               this.§9!6§.§9!2§();
               if(_loc5_.currencyID != "USD")
               {
                  this.§>v§ = new §1"V§();
                  this.§>v§.addEventListener(Event.COMPLETE,this.§%#c§);
                  this.§>v§.addEventListener(IOErrorEvent.IO_ERROR,this.§;!q§);
                  this.§>v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;!q§);
                  this.§>v§.dataFormat = URLLoaderDataFormat.TEXT;
                  this.§>v§.load(§["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + _loc5_.currencyID + "&to=USD"));
               }
               else
               {
                  this.buyItem();
               }
               break;
            case this.§'!g§:
               _loc6_ = this.§<!F§(§"?§.§@-§);
               this.§#!c§ = _loc6_.§7!W§(_loc3_);
               this.§#!c§.§9!2§();
               if(_loc6_.currencyID != "USD")
               {
                  this.§>v§ = new §1"V§();
                  this.§>v§.addEventListener(Event.COMPLETE,this.§1#c§);
                  this.§>v§.addEventListener(IOErrorEvent.IO_ERROR,this.§8#n§);
                  this.§>v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8#n§);
                  this.§>v§.dataFormat = URLLoaderDataFormat.TEXT;
                  this.§>v§.load(§["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + _loc6_.currencyID + "&to=USD"));
               }
               else
               {
                  this.§9!B§();
               }
         }
         §`"x§.trackPageView(this,_loc4_);
      }
      
      private function §;!q§(param1:Event) : void
      {
         this.buyItem();
      }
      
      private function §%#c§(param1:Event = null) : void
      {
         if(param1 && param1.currentTarget && param1.currentTarget.data != null && param1.currentTarget.data != "" && this.§9!6§)
         {
            if(this.§9!6§)
            {
               this.§9!6§.§!"g§ *= param1.currentTarget.data;
            }
         }
         this.buyItem();
      }
      
      private function §8#n§(param1:Event) : void
      {
         this.§9!B§();
      }
      
      private function §1#c§(param1:Event = null) : void
      {
         if(param1.currentTarget.data != null && param1.currentTarget.data != "")
         {
            this.§#!c§.§!"g§ *= param1.currentTarget.data;
         }
         this.§9!B§();
      }
      
      protected function §9!B§() : void
      {
         if(!§@"h§)
         {
            this.§"#n§ = true;
            this.§>3§ = this.§#!c§.totalQuantity;
            this.§+"t§ = dataModel.§-!h§.§]'§[0].id + "_PayByMobile_" + this.§#!c§.totalQuantity + "_" + this.§#!c§.§2"m§;
            AngryBirdsBase.singleton.exitFullScreen();
            §@"h§ = true;
            if(this.§+#v§)
            {
               this.§+#v§.removeEventListeners();
               this.§+#v§ = null;
            }
            this.§2" §(false);
            this.§+#v§ = new §4k§(dataModel.§-!h§.§]'§[0],this.§#!c§,§4k§.§?k§,ID);
            this.§+#v§.addEventListener(§1"?§.§7"^§,this.§3![§);
            this.§+#v§.addEventListener(§1"?§.§^#M§,this.§=##§);
            this.§+#v§.addEventListener(§4k§.§-s§,this.§8#I§);
            §`"x§.§?"8§(this.§+"t§,this.§>3§);
         }
      }
      
      protected function §=##§(param1:§1"?§) : void
      {
         this.§<#Y§(param1.errorMessage,param1.§%C§,param1.errorCode.toString());
         this.§;!n§ = true;
         this.§"#n§ = false;
         if(this.§+#v§)
         {
            this.§+#v§.removeEventListener(§1"?§.§^#M§,this.§=##§);
            this.§+#v§.removeEventListeners();
            this.§+#v§ = null;
         }
         §@"h§ = false;
         this.§+"t§ = null;
         this.§>3§ = 0;
         this.§9!6§ = null;
         this.§#!c§ = null;
         this.§2" §(true);
      }
      
      protected function §<#Y§(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      private function §24§(param1:TimerEvent) : void
      {
         this.§,#4§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§24§);
         §@"h§ = false;
      }
      
      protected function buyItem() : void
      {
         var _loc1_:§"#x§ = null;
         if(!§@"h§ && !this.§<"b§ && !this.§;#§ && this.§<!z§)
         {
            this.§"#n§ = true;
            if(this.§9!6§)
            {
               this.§>3§ = this.§9!6§.totalQuantity;
               this.§+"t§ = dataModel.§-!h§.§]'§ && dataModel.§-!h§.§]'§.length > 0 && dataModel.§-!h§.§]'§[0].ogo ? dataModel.§-!h§.§]'§[0].ogo + "_" + this.§9!6§.totalQuantity : "";
            }
            AngryBirdsBase.singleton.exitFullScreen();
            §@"h§ = true;
            if(this.§+#v§)
            {
               this.§+#v§.removeEventListeners();
               this.§+#v§ = null;
            }
            _loc1_ = dataModel.§-!h§ && dataModel.§-!h§.§]'§ && dataModel.§-!h§.§]'§.length > 0 ? dataModel.§-!h§.§]'§[0] : null;
            this.§2" §(false);
            this.§+#v§ = new §4k§(_loc1_,this.§9!6§,§4k§.§4!c§,ID);
            this.§+#v§.addEventListener(§1"?§.§7"^§,this.§3![§);
            this.§+#v§.addEventListener(§1"?§.§^#M§,this.§=##§);
            §`"x§.§?"8§(this.§+"t§,this.§>3§);
            this.§+#v§.addEventListener(§4k§.§-s§,this.§8#I§);
         }
      }
      
      protected function §3![§(param1:Event) : void
      {
         var _loc2_:§4k§ = param1.currentTarget as §4k§;
         _loc2_.removeEventListener(§1"?§.§7"^§,this.§3![§);
         _loc2_.removeEventListener(§1"?§.§^#M§,this.§=##§);
         this.§8#d§(_loc2_.orderId,_loc2_.pricePoint.totalQuantity,_loc2_.pricePoint.needsReloadAfterPurchase);
         this.§2" §(true);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§7w§ = null;
         var _loc4_:Object = null;
         for each(_loc3_ in this.§ #p§)
         {
            _loc3_.removeEventListener(§7w§.§&[§,this.§9#L§);
         }
         if(_loc4_ = §,#2§.mClip.Container_CoinShopPopup[§!">§])
         {
            _loc4_.removeEventListener(MouseEvent.CLICK,this.§<K§);
         }
         super.hide(param1,param2);
         this.§>8§ = false;
         this.§@$0§ = false;
         if(this.§"#n§)
         {
            this.§"#n§ = false;
            §-#+§.§6!§.§<"k§();
         }
         dataModel.§-!h§.removeEventListener(Event.COMPLETE,this.§52§);
         dataModel.§6!Z§.removeEventListener(Event.COMPLETE,this.§ #t§);
         if(this.§ #Z§ && this.§ #Z§.mClip)
         {
            this.§ #Z§.setVisibility(false);
         }
         if(this.§0"i§)
         {
            (this.§0"i§ as §>#`§).removeEventListener(§[#G§.§@!B§,this.§+!v§);
            (this.§0"i§ as §>#`§).removeEventListener(§[#G§.§!"§,this.§="5§);
            (this.§0"i§ as §>#`§).removeEventListener(§[#G§.§7!#§,this.§4n§);
            this.§0"i§ = null;
         }
         this.§@!e§.removeEventListener(§1!l§.§>#,§,this.§'"r§);
         this.§@!e§ = null;
      }
      
      override public function dispose() : void
      {
         this.§8!3§(this.§&"K§);
         super.dispose();
      }
      
      private function §-"F§(param1:MouseEvent) : void
      {
         if(!this.§;!n§)
         {
            return;
         }
         close();
         dispatchEvent(new §8#F§(§8#F§.CLOSE,this));
      }
      
      public function §!3§() : String
      {
         return §`"x§.§[$6§;
      }
      
      public function §0'§() : String
      {
         return §`"x§.§1#R§;
      }
      
      public function §+#k§() : String
      {
         return this.§!3§() + "-" + this.§0'§();
      }
      
      private function §5$$§() : void
      {
         §,#2§.getItemByName(§8#o§).setEnabled(this.§%#4§ != this.§45§);
         §,#2§.getItemByName(§9!o§).setEnabled(this.§%#4§ != this.§'!g§);
         §,#2§.getItemByName(§!">§).setEnabled(this.§%#4§ != this.§?!K§);
      }
      
      private function §"!M§(param1:Boolean) : void
      {
         if(!§,#2§)
         {
            return;
         }
         if(param1)
         {
            §,#2§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = true;
            §,#2§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            §,#2§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         else if(this.§-H§ && this.§<!z§)
         {
            §,#2§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
            if(this.§<!D§)
            {
               this.injectData(this.§<!D§);
            }
         }
      }
      
      private function §<K§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         §,#2§.getItemByName(§!">§).mClip.gotoAndStop("Active_Selected");
         this.§0"i§.initialize();
         this.§0"i§.redeem();
      }
      
      private function §2" §(param1:Boolean) : void
      {
         var _loc2_:§7w§ = null;
         for each(_loc2_ in this.§ #p§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §^!7§() : void
      {
         this.§;!n§ = true;
         §@"h§ = false;
         this.§2" §(true);
      }
      
      public function §[!V§() : void
      {
         §@"h§ = false;
         this.§;!n§ = true;
         this.§2" §(true);
      }
      
      private function §8#I§(param1:Event) : void
      {
         §@"h§ = false;
         this.§;!n§ = true;
         this.§2" §(true);
      }
   }
}
