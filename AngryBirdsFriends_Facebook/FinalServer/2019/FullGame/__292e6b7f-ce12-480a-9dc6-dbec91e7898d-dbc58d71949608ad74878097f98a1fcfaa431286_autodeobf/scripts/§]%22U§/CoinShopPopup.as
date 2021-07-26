package §]"U§
{
   import § "L§.§23§;
   import § "L§.§7`§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §"N§.§^!r§;
   import §#"4§.§2"M§;
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §,#,§.§=#o§;
   import §,#,§.§]§;
   import §3"V§.§ b§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §6"p§.§1$"§;
   import §7"&§.§1k§;
   import §;#>§.§7!^§;
   import §>#q§.§&!t§;
   import §>#q§.§+R§;
   import §>#q§.§throw§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.WarningPopup;
   import §[#C§.§[!c§;
   import §[#C§.§^$2§;
   import §[#V§.§1!>§;
   import §[#V§.§>#!§;
   import §[#V§.§^"x§;
   import §^"3§.§^"C§;
   import §^"3§.§`$4§;
   import §`"t§.§7"U§;
   import §`D§.§'"j§;
   import §`D§.§2_§;
   import §`D§.§[<§;
   import §`D§.§^!-§;
   import §`D§.§`d§;
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
   
   public class CoinShopPopup extends AbstractPopup implements §+#?§, §2"M§, §1k§
   {
      
      public static const ID:String = "CoinShopPopup";
      
      public static const §<!7§:String = "Not enough coins!";
      
      public static const §0R§:String = "Coin Shop";
      
      public static var §`!D§:Boolean = false;
      
      protected static const §`$+§:int = 3;
      
      private static const §>g§:uint = 2;
      
      protected static const §#?§:int = 550;
      
      private static const §,"$§:String = "Button_Pay0";
      
      private static const §'$4§:String = "Button_Pay1";
      
      private static const §2#@§:String = "Button_Redeem";
      
      private static const §&v§:String = "In-app Shop Coins";
      
      private static var §]!t§:Class = §+#I§;
      
      private static var §^#_§:§^$2§;
       
      
      private var §@"n§:Timer;
      
      private var §[!?§:String;
      
      private var §%2§:int;
      
      private var §&Z§:Boolean = false;
      
      private var §3"q§:Vector.<§]#e§>;
      
      private var §]=§:Boolean = false;
      
      private var §>#n§:Boolean = false;
      
      private var §7![§:String = "";
      
      private var §"#W§:Wallet;
      
      private var §9!g§:§]#e§;
      
      private const §>"S§:int = 0;
      
      private const §5"z§:int = 1;
      
      private const §&$<§:int = 2;
      
      private const §<#m§:int = 3;
      
      private var §2N§:int = 0;
      
      private var §1!G§:§#$2§;
      
      private var §0#D§:MovieClip;
      
      private var §#C§:§23§;
      
      private var §0$#§:Boolean;
      
      private var §8G§:Boolean;
      
      private var §9!8§:§2_§;
      
      private var §=$&§:§'"j§;
      
      private var §1"R§:§`d§;
      
      private var §@$2§:§-$C§;
      
      private var §"1§:Number = 240;
      
      private var §!!P§:§&!t§;
      
      private var §9"4§:String = "";
      
      private var §1![§:§+R§;
      
      private var §7!M§:Boolean = true;
      
      private var §&$&§:Boolean;
      
      private var §""-§:Boolean;
      
      private var §`#0§:§^!r§;
      
      public function CoinShopPopup(param1:int, param2:int, param3:String = "", param4:XML = null)
      {
         if(param4 == null)
         {
            param4 = §1$"§.§%Z§(§]!t§);
         }
         super(param1,param2,param4,ID);
         this.§7![§ = param3;
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      override protected function init() : void
      {
         var _loc2_:DisplayObject = null;
         §;#'§.getItemByName("Container_CoinShopPopup").setVisibility(true);
         this.§#C§ = §;#'§.getItemByName("Container_Tab_PayByMobile") as §23§;
         if(this.§#C§)
         {
            _loc2_ = §;#'§.mClip.Container_CoinShopPopup[§'$4§];
            _loc2_.addEventListener(MouseEvent.CLICK,this.§!!v§);
            this.§0#D§ = this.§#C§.getItemByName("Container_Country").mClip;
            this.§0#D§.visible = false;
            (this.§#C§.getItemByName("TextField_ChooseCountry") as §7`§).setText("Choose your country:");
            this.§#C§.getItemByName("Button_ActiveCountry").mClip.addEventListener(MouseEvent.CLICK,this.§-'§);
            this.§#C§.mClip.btnOK.visible = false;
            this.§#C§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§5<§);
         }
         this.§3"q§ = new Vector.<§]#e§>();
         if(§;#'§.mClip.Container_CoinShopPopup.Button_ShopClose)
         {
            §;#'§.mClip.Container_CoinShopPopup.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§+"O§);
         }
         if(this.§7![§ == "")
         {
            this.§7![§ = §0R§;
         }
         §;#'§.mClip.Container_CoinShopPopup.coinShopTitle.text = this.§7![§;
         if(§;#'§.getItemByName(§,"$§))
         {
            §;#'§.getItemByName(§,"$§).mClip.gotoAndStop("Active_Selected");
         }
         §;#'§.mClip.Container_CoinShopPopup.coinShopTitle.text = this.§7![§;
         var _loc1_:§^"C§ = §;#'§.getItemByName(§,"$§);
         if(_loc1_)
         {
            _loc1_.mClip.gotoAndStop("Active_Selected");
         }
         this.§@"n§ = new Timer(2000,1);
         this.§9v§();
         this.§1![§ = new §throw§();
         (this.§1![§ as §throw§).addEventListener(§>#!§.§@K§,this.§,!,§);
         (this.§1![§ as §throw§).addEventListener(§>#!§.§<w§,this.§@"j§);
         (this.§1![§ as §throw§).addEventListener(§>#!§.§0#J§,this.§7F§);
         this.§&$&§ = false;
         this.§""-§ = false;
         this.§`#0§ = §^!r§.§+!,§;
         this.§`#0§.addEventListener(§^!r§.§0!A§,this.§3!=§);
      }
      
      private function §3!=§(param1:Event) : void
      {
         this.§2"=§(true);
         if(!dataModel.§[h§.§`!6§)
         {
            dataModel.§[h§.addEventListener(Event.COMPLETE,this.§@$1§);
         }
         else
         {
            this.§@$1§(null,dataModel.§[h§.§`!6§);
         }
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
      
      private function §"#o§(param1:MouseEvent) : void
      {
      }
      
      protected function §-'§(param1:Event) : void
      {
         this.§&"Z§(null);
         this.§!!v§(null);
      }
      
      private function §5<§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         this.§&"Z§(this.§1!G§.§9V§ as §^$2§);
      }
      
      private function §&"Z§(param1:§^$2§) : void
      {
         §^#_§ = param1;
         if(§^#_§)
         {
            this.§0#D§.visible = false;
            this.§#C§.mClip.btnOK.visible = false;
            this.§8!M§();
            this.§#C§.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.§#C§.getItemByName("Button_ActiveCountry").setVisibility(true);
            this.§#C§.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "<b><u>Country: " + §^#_§.name + "</u></b>";
         }
      }
      
      override protected function show(param1:Boolean = true) : void
      {
         var _loc2_:§]#e§ = null;
         super.show(param1);
         §]$?§.pause();
         this.§6"h§(new Wallet(this,false,true,true));
         this.§0$#§ = false;
         this.§8G§ = false;
         this.§2"=§(true);
         for each(_loc2_ in this.§3"q§)
         {
            _loc2_.setVisible(true);
            _loc2_.addEventListener(§]#e§.§^@§,this.§&"N§);
         }
         if(this.§#C§)
         {
            if(!dataModel.§]t§.§6"Y§)
            {
               dataModel.§]t§.addEventListener(Event.COMPLETE,this.§ #O§);
               dataModel.§]t§.§?d§();
               §;#'§.getItemByName(§'$4§).setVisibility(false);
            }
            else
            {
               this.§ #O§(null);
            }
         }
         var _loc3_:DisplayObject = §;#'§.mClip.Container_CoinShopPopup[§,"$§];
         if(_loc3_)
         {
            _loc3_.visible = true;
            _loc3_.addEventListener(MouseEvent.CLICK,this.§`h§);
         }
         var _loc4_:Object;
         if(_loc4_ = §;#'§.mClip.Container_CoinShopPopup[§2#@§])
         {
            _loc4_.addEventListener(MouseEvent.CLICK,this.§<!j§);
         }
         if(!dataModel.§[h§.§`!6§)
         {
            dataModel.§[h§.addEventListener(Event.COMPLETE,this.§@$1§);
         }
         else
         {
            this.§@$1§(null,dataModel.§[h§.§`!6§);
         }
         §<"G§.trackPageView(this);
         §3";§.§#"'§().§0#P§("COIN_SHOP");
         §`!D§ = false;
         this.§@"n§.stop();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         switch(param2)
         {
            case "COUNTRY_DROPDOWN":
               if(this.§1!G§.isOpen)
               {
                  this.§1!G§.close();
               }
               else
               {
                  this.§1!G§.open();
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
         if(this.§2N§ == this.§>"S§ && §;#'§.getItemByName(§,"$§))
         {
            §;#'§.getItemByName(§,"$§).mClip.gotoAndStop("Active_Selected");
         }
         else if(this.§2N§ == this.§5"z§ && §;#'§.getItemByName(§'$4§))
         {
            §;#'§.getItemByName(§'$4§).mClip.gotoAndStop("Active_Selected");
         }
      }
      
      private function §9"s§() : void
      {
         if(§;#'§.getItemByName(§,"$§) && §;#'§.getItemByName(§'$4§))
         {
            §;#'§.getItemByName(§,"$§).mClip.gotoAndStop("Active_Up_Default");
            §;#'§.getItemByName(§'$4§).mClip.gotoAndStop("Active_Up_Default");
         }
         if(§;#'§.getItemByName(§2#@§))
         {
            §;#'§.getItemByName(§2#@§).mClip.gotoAndStop("Active_Up_Default");
         }
      }
      
      protected function §`h§(param1:Event) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         this.§#C§.setVisibility(false);
         this.§2N§ = this.§>"S§;
         this.§9!g§ = null;
         this.§9"s§();
         §;#'§.getItemByName(§,"$§).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.§[h§.§`!6§)
         {
            dataModel.§[h§.addEventListener(Event.COMPLETE,this.§@$1§);
         }
         else
         {
            this.§@$1§(null,dataModel.§[h§.§`!6§);
         }
         this.§9v§();
      }
      
      protected function § #O§(param1:§^"x§) : void
      {
         dataModel.§]t§.removeEventListener(Event.COMPLETE,this.§ #O§);
         this.§0$#§ = true;
         this.§2"=§(false);
         if(!dataModel.§]t§.§"#0§() || dataModel.§]t§.§"#0§().length == 0)
         {
            §;#'§.getItemByName(§'$4§).setVisibility(false);
            return;
         }
         §;#'§.getItemByName(§'$4§).setVisibility(true);
         if(this.§2N§ == this.§5"z§)
         {
            this.§#C§.setVisibility(true);
            §;#'§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            §;#'§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         if(param1)
         {
            if(param1.§%"m§ || dataModel.§]t§.§"#0§().length == 1)
            {
               if(param1.§%"m§)
               {
                  this.§&"Z§(param1.§%"m§);
               }
               else
               {
                  this.§&"Z§(dataModel.§]t§.§"#0§()[0]);
               }
               this.§#C§.getItemByName("Button_ActiveCountry").mClip.text.htmlText = "";
            }
            else if(!param1.§9!C§)
            {
            }
         }
         else if(dataModel.§]t§.§"#0§().length == 1)
         {
            this.§&"Z§(dataModel.§]t§.§"#0§()[0]);
         }
         else
         {
            this.§&"Z§(§^#_§);
         }
         this.§1!G§ = new §#$2§(this.§0#D§,§[!c§,dataModel.§]t§.§"#0§());
         this.§1!G§.§&"2§ = 140;
         var _loc2_:Number = (this.§1!G§.data.length + 1) * this.§1!G§.§%"]§.height;
         if(_loc2_ > this.§"1§)
         {
            _loc2_ = this.§"1§;
         }
         this.§1!G§.§5#a§ = _loc2_;
         this.§0#D§.Country_DropDownContainer.height = _loc2_ + 30;
         this.§1!G§.§#"q§ = 0;
         this.§0#D§.selectedValue.mouseChildren = false;
         this.§0#D§.selectedValue.mouseEnabled = false;
         this.§0#D§.arrow.mouseEnabled = false;
         this.§1!G§.addEventListener(Event.CLOSE,this.§'4§);
         this.§1!G§.addEventListener(Event.OPEN,this.§<$?§);
         this.§'4§(null);
         this.§1!G§.addEventListener(Event.CHANGE,this.§ +§);
      }
      
      protected function §<$?§(param1:Event) : void
      {
         this.§0#D§.Country_DropDownContainer.visible = true;
      }
      
      protected function §'4§(param1:Event) : void
      {
         this.§0#D§.Country_DropDownContainer.visible = false;
      }
      
      protected function § +§(param1:Event) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         this.§&>§();
         §;#'§.mClip.Container_CoinShopPopup.Container_Tab_PayByMobile.btnOK.visible = true;
      }
      
      protected function §!!v§(param1:Event) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         this.§2N§ = this.§5"z§;
         this.§9!g§ = null;
         this.§9"s§();
         §;#'§.getItemByName(§'$4§).mClip.gotoAndStop("Active_Selected");
         if(!dataModel.§]t§.§6"Y§)
         {
            this.§#C§.setVisibility(false);
         }
         else
         {
            this.§#C§.setVisibility(true);
         }
         §;#'§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
         §;#'§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         if(§^#_§ == null)
         {
            this.§0#D§.visible = true;
            this.§#C§.getItemByName("TextField_ChooseCountry").setVisibility(true);
            this.§#C§.mClip.btnOK.visible = true;
            this.§#C§.getItemByName("Button_ActiveCountry").setVisibility(false);
            this.§&>§();
         }
         else
         {
            this.§0#D§.visible = false;
            this.§#C§.getItemByName("TextField_ChooseCountry").setVisibility(false);
            this.§#C§.mClip.btnOK.visible = false;
            this.§#C§.getItemByName("Button_ActiveCountry").setVisibility(dataModel.§]t§.§"#0§().length > 1);
            this.§8!M§();
         }
         this.§9v§();
      }
      
      private function §&>§() : void
      {
         var _loc1_:§]#e§ = null;
         var _loc2_:MovieClip = null;
         for each(_loc1_ in this.§3"q§)
         {
            _loc1_.setVisible(false);
         }
         _loc2_ = §;#'§.mClip.Container_CoinShopPopup.ContentUpperRow;
         _loc2_.visible = false;
         _loc2_ = §;#'§.mClip.Container_CoinShopPopup.ContentLowerRow;
         _loc2_.visible = false;
      }
      
      private function §8!M§() : void
      {
         var _loc4_:§]#e§ = null;
         var _loc5_:MovieClip = null;
         var _loc6_:int = 0;
         var _loc7_:§`d§ = null;
         var _loc8_:§]#e§ = null;
         if(§^#_§ == null)
         {
         }
         if(this.§9!8§ == null)
         {
            this.§&>§();
            return;
         }
         if(this.§3"q§ && this.§3"q§.length > 0)
         {
            for each(_loc4_ in this.§3"q§)
            {
               _loc4_.disable();
            }
         }
         var _loc1_:§[<§ = this.§6#I§(§^#_§.§"`§);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 2)
         {
            (_loc5_ = _loc3_ == 0 ? §;#'§.mClip.Container_CoinShopPopup.ContentUpperRow : §;#'§.mClip.Container_CoinShopPopup.ContentLowerRow).visible = false;
            _loc6_ = 0;
            while(_loc6_ < §`$+§)
            {
               if(!_loc1_)
               {
                  break;
               }
               if(!(_loc7_ = _loc1_.§1$1§(_loc2_)))
               {
                  break;
               }
               (_loc8_ = new §="I§(_loc2_,_loc7_,_loc1_.currencyID,"ButtonBuyBirdCoinAll",_loc7_.id)).addEventListener(§]#e§.§^@§,this.§&"N§);
               this.§3"q§.push(_loc8_);
               _loc5_.visible = true;
               _loc5_.addChild(_loc8_.getGraphics());
               _loc8_.x = §#?§ / §`$+§ * _loc6_;
               _loc2_++;
               _loc6_++;
            }
            _loc3_++;
         }
      }
      
      private function §6#I§(param1:String) : §[<§
      {
         var _loc2_:§[<§ = null;
         var _loc3_:§[<§ = null;
         for each(_loc3_ in dataModel.§]t§.§6"Y§)
         {
            if(_loc3_.§"`§ == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function §7=§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §[!a§() : Wallet
      {
         return this.§"#W§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §;#'§.mClip.Container_CoinShopPopup;
      }
      
      private function §4##§() : void
      {
         this.§7!M§ = true;
         this.§[!?§ = null;
         this.§%2§ = 0;
      }
      
      protected function §<u§(param1:String, param2:Number, param3:Boolean) : void
      {
         var _loc4_:§^!-§ = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         this.§7!M§ = true;
         this.§&Z§ = false;
         this.§""-§ = param3;
         if(this.§9!g§)
         {
            _loc4_ = new §^!-§();
            this.§9!g§.getGraphics().addChild(_loc4_);
            this.§&$&§ = true;
            if(param3)
            {
               _loc4_.addEventListener(§^!-§.§3!L§,this.§'"S§,false,0,true);
            }
            else
            {
               _loc4_.addEventListener(§^!-§.§3!L§,this.§][§,false,0,true);
            }
         }
         else
         {
            this.§&$&§ = false;
            if(param3)
            {
               this.§8G§ = false;
               dataModel.§[h§.addEventListener(Event.COMPLETE,this.§@$1§);
               dataModel.§[h§.§#"N§(true);
            }
         }
         if(this.§!!P§)
         {
            this.§!!P§.removeEventListener(§1!>§.§#-§,this.§#"k§);
            this.§!!P§.removeEventListener(§1!>§.§6#!§,this.§>!y§);
            this.§!!P§.removeEventListeners();
            this.§!!P§ = null;
         }
         §`!D§ = false;
         if(this.§[!?§)
         {
            _loc5_ = [_loc6_];
            dispatchEvent(new §1!>§(§1!>§.§^#b§,false,false,_loc5_));
            _loc6_ = {};
            §<"G§.§+#L§(this.§[!?§,this.§%2§);
            §<"G§.trackPageView(this,§<"G§.§4"<§);
            if((_loc7_ = dataModel.§[h§ && dataModel.§[h§.§`!6§ && dataModel.§[h§.§`!6§.length > 0 && dataModel.§[h§.§`!6§[0] && dataModel.§[h§.§`!6§[0].currencyID ? dataModel.§[h§.§`!6§[0].currencyID : this.§9"4§) && _loc7_ != "")
            {
               this.§9"4§ = _loc7_;
            }
            if(this.§=$&§)
            {
               _loc6_ = {
                  "product":this.§[!?§,
                  "pricePoint":this.§=$&§.§ !C§
               };
               §<"G§.trackTransaction(param1,§&v§,this.§[!?§,this.§[!?§,this.§%2§ + " x",this.§=$&§.§ !C§,1,0);
            }
            else if(this.§1"R§)
            {
               _loc6_ = {
                  "product":"VirtualCurrency_" + param2,
                  "pricePoint":this.§1"R§.§ !C§
               };
               §<"G§.trackTransaction(param1,§&v§,this.§[!?§,this.§[!?§,this.§%2§ + " x",this.§1"R§.§ !C§,1,0);
            }
            this.§[!?§ = null;
            this.§%2§ = 0;
            this.§=$&§ = null;
            this.§1"R§ = null;
         }
      }
      
      private function §][§(param1:Event) : void
      {
         this.§&$&§ = false;
      }
      
      private function §'"S§(param1:Event) : void
      {
         this.§8G§ = false;
         dataModel.§[h§.addEventListener(Event.COMPLETE,this.§@$1§);
         dataModel.§[h§.§#"N§(true);
         this.§&$&§ = false;
         this.§""-§ = true;
      }
      
      private function getPricePoint(param1:String) : §'"j§
      {
         var _loc3_:§2_§ = null;
         var _loc4_:int = 0;
         var _loc5_:§'"j§ = null;
         var _loc2_:int = parseInt(param1.replace("VirtualCurrency_",""));
         if(dataModel.§[h§.§`!6§)
         {
            for each(_loc3_ in dataModel.§[h§.§`!6§)
            {
               if(_loc3_.id == "VirtualCurrency")
               {
                  _loc4_ = 0;
                  while(_loc4_ < _loc3_.§set §())
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
      
      private function §@$1§(param1:Event = null, param2:Vector.<§2_§> = null) : void
      {
         if(param1)
         {
            param2 = dataModel.§[h§.§`!6§;
         }
         if(param2.length > 0)
         {
            this.§9!8§ = param2[0];
         }
         else
         {
            this.§9!8§ = null;
            this.§&>§();
         }
         if(this.§9!8§ && this.§9!8§.currencyID)
         {
            this.§9"4§ = this.§9!8§.currencyID;
         }
         this.§8G§ = true;
         dataModel.§[h§.removeEventListener(Event.COMPLETE,this.§@$1§);
         if(!this.§&$&§)
         {
            this.§2"=§(false);
         }
         this.§""-§ = false;
         if(dataModel.§[h§.§`!6§ && dataModel.§[h§.§`!6§.length > 0)
         {
            §7"U§.§5e§(dataModel.§[h§.§`!6§[0]);
         }
      }
      
      public function injectData(param1:§2_§) : void
      {
         var _loc8_:§]#e§ = null;
         var _loc9_:§]#e§ = null;
         var _loc10_:§]#e§ = null;
         var _loc11_:int = 0;
         if(this.§2N§ != this.§>"S§)
         {
            return;
         }
         if(this.§3"q§ && this.§3"q§.length > 0)
         {
            for each(_loc8_ in this.§3"q§)
            {
               _loc8_.disable();
            }
         }
         this.§3"q§ = new Vector.<§]#e§>();
         var _loc3_:uint = Math.min(2,param1.§set §());
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_)
         {
            (_loc9_ = new §6#]§(_loc4_,param1.getPricePoint(_loc4_),param1.currencyID,"ButtonCoinshopNewLarge",param1.id)).addEventListener(§]#e§.§^@§,this.§&"N§);
            this.§3"q§.push(_loc9_);
            _loc4_++;
         }
         while(_loc4_ < param1.§set §())
         {
            (_loc10_ = new §3!z§(_loc4_,param1.getPricePoint(_loc4_),param1.currencyID,"ButtonCoinshopNewSmall",param1.id)).addEventListener(§]#e§.§^@§,this.§&"N§);
            this.§3"q§.push(_loc10_);
            _loc4_++;
         }
         var _loc5_:MovieClip;
         (_loc5_ = §;#'§.mClip.Container_CoinShopPopup.ContentUpperRow).visible = false;
         var _loc6_:int = §>g§ - 1;
         while(_loc6_ >= 0)
         {
            if(_loc6_ < this.§3"q§.length)
            {
               _loc5_.visible = true;
               _loc5_.addChild(this.§3"q§[_loc6_].getGraphics());
               this.§3"q§[_loc6_].x = §#?§ / §>g§ * _loc6_;
            }
            _loc6_--;
         }
         (_loc5_ = §;#'§.mClip.Container_CoinShopPopup.ContentLowerRow).visible = false;
         var _loc7_:int = §`$+§ - 1;
         while(_loc7_ >= 0)
         {
            if((_loc11_ = §>g§ + _loc7_) < this.§3"q§.length)
            {
               _loc5_.visible = true;
               _loc5_.addChild(this.§3"q§[_loc11_].getGraphics());
               this.§3"q§[_loc11_].x = §#?§ / §`$+§ * _loc7_;
            }
            _loc7_--;
         }
      }
      
      protected function §&"N§(param1:Event) : void
      {
         var _loc5_:§2_§ = null;
         var _loc6_:§[<§ = null;
         if(!dataModel.§[h§.§`!6§)
         {
            return;
         }
         this.§7!M§ = false;
         var _loc2_:§]#e§ = param1.currentTarget as §]#e§;
         var _loc3_:int = _loc2_.§?!1§();
         var _loc4_:String = dataModel.§[h§.§`!6§[0].id;
         this.§9!g§ = param1.currentTarget as §]#e§;
         switch(this.§2N§)
         {
            case this.§>"S§:
               _loc5_ = dataModel.§[h§.§`!6§[0];
               this.§=$&§ = _loc5_.getPricePoint(_loc3_);
               this.§=$&§.§4j§();
               if(_loc5_.currencyID != "USD")
               {
                  this.§@$2§ = new §-$C§();
                  this.§@$2§.addEventListener(Event.COMPLETE,this.§&#B§);
                  this.§@$2§.addEventListener(IOErrorEvent.IO_ERROR,this.§0"K§);
                  this.§@$2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0"K§);
                  this.§@$2§.dataFormat = URLLoaderDataFormat.TEXT;
                  this.§@$2§.load(§?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + _loc5_.currencyID + "&to=USD"));
               }
               else
               {
                  this.buyItem();
               }
               break;
            case this.§5"z§:
               _loc6_ = this.§6#I§(§^#_§.§"`§);
               this.§1"R§ = _loc6_.§1$1§(_loc3_);
               this.§1"R§.§4j§();
               if(_loc6_.currencyID != "USD")
               {
                  this.§@$2§ = new §-$C§();
                  this.§@$2§.addEventListener(Event.COMPLETE,this.§0!a§);
                  this.§@$2§.addEventListener(IOErrorEvent.IO_ERROR,this.§]!l§);
                  this.§@$2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]!l§);
                  this.§@$2§.dataFormat = URLLoaderDataFormat.TEXT;
                  this.§@$2§.load(§?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/currencyConversionRate?from=" + _loc6_.currencyID + "&to=USD"));
               }
               else
               {
                  this.§&#c§();
               }
         }
         §<"G§.trackPageView(this,_loc4_);
      }
      
      private function §0"K§(param1:Event) : void
      {
         this.buyItem();
      }
      
      private function §&#B§(param1:Event = null) : void
      {
         if(param1 && param1.currentTarget && param1.currentTarget.data != null && param1.currentTarget.data != "" && this.§=$&§)
         {
            if(this.§=$&§)
            {
               this.§=$&§.§ !C§ *= param1.currentTarget.data;
            }
         }
         this.buyItem();
      }
      
      private function §]!l§(param1:Event) : void
      {
         this.§&#c§();
      }
      
      private function §0!a§(param1:Event = null) : void
      {
         if(param1.currentTarget.data != null && param1.currentTarget.data != "")
         {
            this.§1"R§.§ !C§ *= param1.currentTarget.data;
         }
         this.§&#c§();
      }
      
      protected function §&#c§() : void
      {
         if(!§`!D§)
         {
            this.§&Z§ = true;
            this.§%2§ = this.§1"R§.totalQuantity;
            this.§[!?§ = dataModel.§[h§.§`!6§[0].id + "_PayByMobile_" + this.§1"R§.totalQuantity + "_" + this.§1"R§.§>"_§;
            AngryBirdsBase.singleton.exitFullScreen();
            §`!D§ = true;
            if(this.§!!P§)
            {
               this.§!!P§.removeEventListeners();
               this.§!!P§ = null;
            }
            this.§-$%§(false);
            this.§!!P§ = new §&!t§(dataModel.§[h§.§`!6§[0],this.§1"R§,§&!t§.§6g§,ID);
            this.§!!P§.addEventListener(§1!>§.§#-§,this.§#"k§);
            this.§!!P§.addEventListener(§1!>§.§6#!§,this.§>!y§);
            this.§!!P§.addEventListener(§&!t§.§2<§,this.§8!s§);
            §<"G§.§%h§(this.§[!?§,this.§%2§);
         }
      }
      
      protected function §>!y§(param1:§1!>§) : void
      {
         this.§4!0§(param1.errorMessage,param1.§^$6§,param1.errorCode.toString());
         this.§7!M§ = true;
         this.§&Z§ = false;
         if(this.§!!P§)
         {
            this.§!!P§.removeEventListener(§1!>§.§6#!§,this.§>!y§);
            this.§!!P§.removeEventListeners();
            this.§!!P§ = null;
         }
         §`!D§ = false;
         this.§[!?§ = null;
         this.§%2§ = 0;
         this.§=$&§ = null;
         this.§1"R§ = null;
         this.§-$%§(true);
      }
      
      protected function §4!0§(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:WarningPopup = new WarningPopup(§@#D§.§,"4§,§5R§.TOP,param1,param2,param3,false);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
      }
      
      private function §,"?§(param1:TimerEvent) : void
      {
         this.§@"n§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§,"?§);
         §`!D§ = false;
      }
      
      protected function buyItem() : void
      {
         var _loc1_:§2_§ = null;
         if(!§`!D§ && !this.§&$&§ && !this.§""-§ && this.§8G§)
         {
            this.§&Z§ = true;
            if(this.§=$&§)
            {
               this.§%2§ = this.§=$&§.totalQuantity;
               this.§[!?§ = dataModel.§[h§.§`!6§ && dataModel.§[h§.§`!6§.length > 0 && dataModel.§[h§.§`!6§[0].ogo ? dataModel.§[h§.§`!6§[0].ogo + "_" + this.§=$&§.totalQuantity : "";
            }
            AngryBirdsBase.singleton.exitFullScreen();
            §`!D§ = true;
            if(this.§!!P§)
            {
               this.§!!P§.removeEventListeners();
               this.§!!P§ = null;
            }
            _loc1_ = dataModel.§[h§ && dataModel.§[h§.§`!6§ && dataModel.§[h§.§`!6§.length > 0 ? dataModel.§[h§.§`!6§[0] : null;
            this.§-$%§(false);
            this.§!!P§ = new §&!t§(_loc1_,this.§=$&§,§&!t§.§&+§,ID);
            this.§!!P§.addEventListener(§1!>§.§#-§,this.§#"k§);
            this.§!!P§.addEventListener(§1!>§.§6#!§,this.§>!y§);
            §<"G§.§%h§(this.§[!?§,this.§%2§);
            this.§!!P§.addEventListener(§&!t§.§2<§,this.§8!s§);
         }
      }
      
      protected function §#"k§(param1:Event) : void
      {
         var _loc2_:§&!t§ = param1.currentTarget as §&!t§;
         _loc2_.removeEventListener(§1!>§.§#-§,this.§#"k§);
         _loc2_.removeEventListener(§1!>§.§6#!§,this.§>!y§);
         this.§<u§(_loc2_.orderId,_loc2_.pricePoint.totalQuantity,_loc2_.pricePoint.needsReloadAfterPurchase);
         this.§-$%§(true);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:§]#e§ = null;
         var _loc4_:Object = null;
         for each(_loc3_ in this.§3"q§)
         {
            _loc3_.removeEventListener(§]#e§.§^@§,this.§&"N§);
         }
         if(_loc4_ = §;#'§.mClip.Container_CoinShopPopup[§2#@§])
         {
            _loc4_.removeEventListener(MouseEvent.CLICK,this.§<!j§);
         }
         super.hide(param1,param2);
         this.§]=§ = false;
         this.§>#n§ = false;
         if(this.§&Z§)
         {
            this.§&Z§ = false;
            §]#0§.§+!,§.§@!z§();
         }
         dataModel.§[h§.removeEventListener(Event.COMPLETE,this.§@$1§);
         dataModel.§]t§.removeEventListener(Event.COMPLETE,this.§ #O§);
         if(this.§#C§ && this.§#C§.mClip)
         {
            this.§#C§.setVisibility(false);
         }
         if(this.§1![§)
         {
            (this.§1![§ as §throw§).removeEventListener(§>#!§.§@K§,this.§,!,§);
            (this.§1![§ as §throw§).removeEventListener(§>#!§.§<w§,this.§@"j§);
            (this.§1![§ as §throw§).removeEventListener(§>#!§.§0#J§,this.§7F§);
            this.§1![§ = null;
         }
         this.§`#0§.removeEventListener(§^!r§.§0!A§,this.§3!=§);
         this.§`#0§ = null;
      }
      
      override public function dispose() : void
      {
         this.§7=§(this.§"#W§);
         super.dispose();
      }
      
      private function §+"O§(param1:MouseEvent) : void
      {
         if(!this.§7!M§)
         {
            return;
         }
         close();
         dispatchEvent(new §7!^§(§7!^§.CLOSE,this));
      }
      
      public function §0!q§() : String
      {
         return §<"G§.§7"'§;
      }
      
      public function §4!G§() : String
      {
         return §<"G§.§=!c§;
      }
      
      public function §6#n§() : String
      {
         return this.§0!q§() + "-" + this.§4!G§();
      }
      
      private function §9v§() : void
      {
         §;#'§.getItemByName(§,"$§).setEnabled(this.§2N§ != this.§>"S§);
         §;#'§.getItemByName(§'$4§).setEnabled(this.§2N§ != this.§5"z§);
         §;#'§.getItemByName(§2#@§).setEnabled(this.§2N§ != this.§<#m§);
      }
      
      private function §2"=§(param1:Boolean) : void
      {
         if(!§;#'§)
         {
            return;
         }
         if(param1)
         {
            §;#'§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = true;
            §;#'§.mClip.Container_CoinShopPopup.ContentUpperRow.visible = false;
            §;#'§.mClip.Container_CoinShopPopup.ContentLowerRow.visible = false;
         }
         else if(this.§0$#§ && this.§8G§)
         {
            §;#'§.mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
            if(this.§9!8§)
            {
               this.injectData(this.§9!8§);
            }
         }
      }
      
      private function §<!j§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         §;#'§.getItemByName(§2#@§).mClip.gotoAndStop("Active_Selected");
         this.§1![§.initialize();
         this.§1![§.redeem();
      }
      
      private function §-$%§(param1:Boolean) : void
      {
         var _loc2_:§]#e§ = null;
         for each(_loc2_ in this.§3"q§)
         {
            _loc2_.setEnabled(param1);
         }
      }
      
      public function §-!n§() : void
      {
         this.§7!M§ = true;
         §`!D§ = false;
         this.§-$%§(true);
      }
      
      public function §+!n§() : void
      {
         §`!D§ = false;
         this.§7!M§ = true;
         this.§-$%§(true);
      }
      
      private function §8!s§(param1:Event) : void
      {
         §`!D§ = false;
         this.§7!M§ = true;
         this.§-$%§(true);
      }
   }
}
