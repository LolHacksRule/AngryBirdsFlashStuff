package § $E§
{
   import § "L§.§7`§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §#"4§.§2"M§;
   import §#"4§.§6!B§;
   import §#"4§.§<"G§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §,#,§.§=#o§;
   import §,#,§.§]§;
   import §3"V§.§ b§;
   import §7"&§.§1k§;
   import §9T§.§!#;§;
   import §9T§.§@#d§;
   import §;#>§.§7!^§;
   import §>#q§.§8#Z§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §[#V§.§1!>§;
   import §]"U§.CoinShopPopup;
   import §`D§.§'"j§;
   import §`D§.§2_§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class PowerupSuggestionPopup extends AbstractPopup implements §1k§, §2"M§, §+#?§
   {
       
      
      private var §-"r§:§!#;§;
      
      private var §@l§:§2_§;
      
      private var §`!Q§:§'"j§;
      
      private var §5"s§:String;
      
      private const §<"g§:String = "Use a Power-up!";
      
      private const §#"o§:String = "Get Power-ups!";
      
      private var §"#W§:Wallet;
      
      private var §"#`§:Number;
      
      public function PowerupSuggestionPopup(param1:int, param2:int, param3:§!#;§, param4:String)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupPowerupSuggestion[0],"PowerupSuggestionPopup");
         this.§-"r§ = param3;
         this.§5"s§ = param4;
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §;#'§.setVisibility(false);
         §;#'§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§+"O§);
         §;#'§.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(false);
         §;#'§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
         §;#'§.mClip.MovieClip_PowerupSuggestion.gotoAndStop(0);
         §;#'§.getItemByName("MovieClip_PowerupSuggestion").setVisibility(false);
         §;#'§.getItemByName("Button_PowerupSuggestion").setVisibility(false);
         if((AngryBirdsBase.singleton.dataModel as §=#o§).§[h§.§"!S§)
         {
            this.§#!>§(null);
         }
         else
         {
            (AngryBirdsBase.singleton.dataModel as §=#o§).§[h§.addEventListener(Event.COMPLETE,this.§#!>§);
         }
         this.§&!J§();
         §]$?§.pause();
      }
      
      private function §&!J§() : void
      {
         this.§6"h§(new Wallet(this,true,true));
         this.§"#W§.§`#8§.visible = true;
         this.§"#`§ = §=#o§(§@z§.§ !D§.dataModel).§1q§.§#"+§;
         this.§"#W§.setCoinsAmountText(this.§"#`§);
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         if(§;#'§)
         {
            return §;#'§.getItemByName("walletContainer").mClip;
         }
         return null;
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
      
      protected function §#!>§(param1:Event) : void
      {
         (AngryBirdsBase.singleton.dataModel as §=#o§).§[h§.removeEventListener(Event.COMPLETE,this.§#!>§);
         var _loc2_:int = §]#0§.§+!,§.§,#k§(this.§-"r§.§8t§);
         var _loc3_:int = (AngryBirdsBase.singleton.dataModel as §=#o§).§1q§.§#"+§;
         this.§@l§ = (AngryBirdsBase.singleton.dataModel as §=#o§).§[h§.§'"k§(this.§-"r§.§8t§);
         this.§`!Q§ = this.§@l§.getPricePoint(3);
         if(§;#'§)
         {
            §;#'§.setVisibility(true);
            §;#'§.mClip.MovieClip_PowerupSuggestion.visible = true;
            §;#'§.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(true);
            §;#'§.getItemByName("MovieClip_Powerup_Banner").setVisibility(false);
            (§;#'§.getItemByName("TextField_PowerupSuggestion_Text") as §7`§).setText("x " + this.§`!Q§.totalQuantity);
            §;#'§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
            §;#'§.mClip.MovieClip_PowerupSuggestion.gotoAndStop(this.§-"r§.§8t§);
            §;#'§.getItemByName("MovieClip_PowerupSuggestion").setVisibility(true);
            §;#'§.getItemByName("Button_PowerupSuggestion").setVisibility(true);
            §;#'§.getItemByName("TextField_Use").mClip.mouseChildren = false;
            §;#'§.getItemByName("TextField_Use").mClip.mouseEnabled = false;
            §;#'§.getItemByName("TextField_Price").mClip.mouseChildren = false;
            §;#'§.getItemByName("TextField_Price").mClip.mouseEnabled = false;
            §;#'§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§@2§);
            §;#'§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§?#3§);
            §;#'§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§^"Z§);
            §;#'§.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = false;
            if(_loc2_ > 0)
            {
               (§;#'§.getItemByName("TextField_PowerupSuggestion_Header") as §7`§).setText(this.§<"g§);
               §;#'§.getItemByName("TextField_Use").setVisibility(true);
               §;#'§.getItemByName("TextField_Price").setVisibility(false);
               (§;#'§.getItemByName("TextField_Use") as §7`§).setText("USE");
               §;#'§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§@2§);
            }
            else
            {
               (§;#'§.getItemByName("TextField_PowerupSuggestion_Header") as §7`§).setText(this.§#"o§);
               §;#'§.getItemByName("MovieClip_Powerup_Banner").setVisibility(true);
               §;#'§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(true);
               §;#'§.getItemByName("TextField_Use").setVisibility(false);
               §;#'§.getItemByName("TextField_Price").setVisibility(true);
               §;#'§.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = true;
               (§;#'§.getItemByName("TextField_Price") as §7`§).setText(§6!B§.§^"O§(this.§`!Q§.price).toString());
               if(_loc3_ < this.§`!Q§.price)
               {
                  §;#'§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§?#3§);
               }
               else
               {
                  §;#'§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§^"Z§);
               }
            }
         }
      }
      
      private function §@2§(param1:Event) : void
      {
         §<"G§.§9"l§(this.§5"s§);
         §;#'§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§@2§);
         dispatchEvent(new §@#d§(§@#d§.§8p§,this.§-"r§.eventName));
         close();
      }
      
      private function §?#3§(param1:Event) : void
      {
         §<"G§.§##g§(this.§5"s§);
         var _loc2_:CoinShopPopup = new CoinShopPopup(§@#D§.NORMAL,§5R§.TOP,CoinShopPopup.§<!7§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         _loc2_.addEventListener(§1!>§.§^#b§,this.§9"v§);
         _loc2_.addEventListener(§7!^§.§;""§,this.§!"v§);
      }
      
      protected function §!"v§(param1:Event) : void
      {
         this.§;l§();
      }
      
      protected function §9"v§(param1:Event) : void
      {
         this.§;l§();
      }
      
      private function §^"Z§(param1:MouseEvent) : void
      {
         §;#'§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§^"Z§);
         § b§.playSound("Shop_Buy",§ b§.§;$5§);
         var _loc2_:§8#Z§ = new §8#Z§(this.§@l§,this.§`!Q§,id,§]$?§.§2#§.currentLevel.name);
         _loc2_.addEventListener(§1!>§.§^#b§,this.§>!j§);
      }
      
      protected function §>!j§(param1:§1!>§) : void
      {
         §<"G§.§?#E§(this.§5"s§);
         var _loc2_:§8#Z§ = param1.currentTarget as §8#Z§;
         _loc2_.removeEventListener(§1!>§.§^#b§,this.§>!j§);
         §<"G§.trackPageView(this,§<"G§.§4"<§);
         §<"G§.trackTransaction(_loc2_.orderId,this.§4!G§(),_loc2_.§@" §.id,_loc2_.§@" §.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         this.§;l§();
      }
      
      private function §;l§() : void
      {
         this.§#!>§(null);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         (AngryBirdsBase.singleton.dataModel as §=#o§).§[h§.removeEventListener(Event.COMPLETE,this.§#!>§);
         if(§;#'§ && §;#'§.mClip.Button_PowerupSuggestion)
         {
            §;#'§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§@2§);
            §;#'§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§?#3§);
            §;#'§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§^"Z§);
         }
      }
      
      private function §+"O§(param1:MouseEvent) : void
      {
         §<"G§.§0",§(this.§5"s§);
         close();
      }
      
      public function §0!q§() : String
      {
         return §<"G§.§+"a§;
      }
      
      public function §4!G§() : String
      {
         return §<"G§.§#"d§;
      }
      
      public function §6#n§() : String
      {
         return this.§0!q§() + "-" + this.§4!G§();
      }
   }
}
