package §%#U§
{
   import §!!?§.§,!K§;
   import §!!?§.§<#a§;
   import §!§.§="D§;
   import §%#v§.§0"j§;
   import §%4§.CoinShopPopup;
   import §'#g§.§1"i§;
   import §+#B§.§""D§;
   import §+#B§.§0"+§;
   import §+#B§.§5"w§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §-#R§.§4"p§;
   import §-#R§.§=u§;
   import §5!$§.§-#j§;
   import §5"c§.§8K§;
   import §;$5§.§9§;
   import §;$5§.AbstractPopup;
   import §;w§.§5"_§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §]"'§.§#$D§;
   import §]"'§.§@"%§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class PowerupSuggestionPopup extends AbstractPopup implements §="D§, §0"+§, §["b§
   {
       
      
      private var §0!6§:§4"p§;
      
      private var §'$$§:§,!K§;
      
      private var §^"v§:§<#a§;
      
      private var §8"x§:String;
      
      private const §?!>§:String = "Use a Power-up!";
      
      private const §&;§:String = "Get Power-ups!";
      
      private var §?3§:Wallet;
      
      private var §`"y§:Number;
      
      public function PowerupSuggestionPopup(param1:int, param2:int, param3:§4"p§, param4:String)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupPowerupSuggestion[0],"PowerupSuggestionPopup");
         this.§0!6§ = param3;
         this.§8"x§ = param4;
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §8#Y§.setVisibility(false);
         §8#Y§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§>"J§);
         §8#Y§.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(false);
         §8#Y§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
         §8#Y§.mClip.MovieClip_PowerupSuggestion.gotoAndStop(0);
         §8#Y§.getItemByName("MovieClip_PowerupSuggestion").setVisibility(false);
         §8#Y§.getItemByName("Button_PowerupSuggestion").setVisibility(false);
         if((AngryBirdsBase.singleton.dataModel as §@"%§).§,H§.§3$+§)
         {
            this.§;0§(null);
         }
         else
         {
            (AngryBirdsBase.singleton.dataModel as §@"%§).§,H§.addEventListener(Event.COMPLETE,this.§;0§);
         }
         this.§+"^§();
         §%"T§.pause();
      }
      
      private function §+"^§() : void
      {
         this.§[D§(new Wallet(this,true,true));
         this.§?3§.§5#k§.visible = true;
         this.§`"y§ = §@"%§(§'"a§.§!!8§.dataModel).§8!8§.§"$6§;
         this.§?3§.setCoinsAmountText(this.§`"y§);
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         if(§8#Y§)
         {
            return §8#Y§.getItemByName("walletContainer").mClip;
         }
         return null;
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
      
      protected function §;0§(param1:Event) : void
      {
         (AngryBirdsBase.singleton.dataModel as §@"%§).§,H§.removeEventListener(Event.COMPLETE,this.§;0§);
         var _loc2_:int = §#$D§.§?q§.§<"M§(this.§0!6§.§]'§);
         var _loc3_:int = (AngryBirdsBase.singleton.dataModel as §@"%§).§8!8§.§"$6§;
         this.§'$$§ = (AngryBirdsBase.singleton.dataModel as §@"%§).§,H§.§]#%§(this.§0!6§.§]'§);
         this.§^"v§ = this.§'$$§.getPricePoint(3);
         if(§8#Y§)
         {
            §8#Y§.setVisibility(true);
            §8#Y§.mClip.MovieClip_PowerupSuggestion.visible = true;
            §8#Y§.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(true);
            §8#Y§.getItemByName("MovieClip_Powerup_Banner").setVisibility(false);
            (§8#Y§.getItemByName("TextField_PowerupSuggestion_Text") as §-#j§).setText("x " + this.§^"v§.totalQuantity);
            §8#Y§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
            §8#Y§.mClip.MovieClip_PowerupSuggestion.gotoAndStop(this.§0!6§.§]'§);
            §8#Y§.getItemByName("MovieClip_PowerupSuggestion").setVisibility(true);
            §8#Y§.getItemByName("Button_PowerupSuggestion").setVisibility(true);
            §8#Y§.getItemByName("TextField_Use").mClip.mouseChildren = false;
            §8#Y§.getItemByName("TextField_Use").mClip.mouseEnabled = false;
            §8#Y§.getItemByName("TextField_Price").mClip.mouseChildren = false;
            §8#Y§.getItemByName("TextField_Price").mClip.mouseEnabled = false;
            §8#Y§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§;!@§);
            §8#Y§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§4"u§);
            §8#Y§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§5!<§);
            §8#Y§.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = false;
            if(_loc2_ > 0)
            {
               (§8#Y§.getItemByName("TextField_PowerupSuggestion_Header") as §-#j§).setText(this.§?!>§);
               §8#Y§.getItemByName("TextField_Use").setVisibility(true);
               §8#Y§.getItemByName("TextField_Price").setVisibility(false);
               (§8#Y§.getItemByName("TextField_Use") as §-#j§).setText("USE");
               §8#Y§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§;!@§);
            }
            else
            {
               (§8#Y§.getItemByName("TextField_PowerupSuggestion_Header") as §-#j§).setText(this.§&;§);
               §8#Y§.getItemByName("MovieClip_Powerup_Banner").setVisibility(true);
               §8#Y§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(true);
               §8#Y§.getItemByName("TextField_Use").setVisibility(false);
               §8#Y§.getItemByName("TextField_Price").setVisibility(true);
               §8#Y§.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = true;
               (§8#Y§.getItemByName("TextField_Price") as §-#j§).setText(§""D§.§"k§(this.§^"v§.price).toString());
               if(_loc3_ < this.§^"v§.price)
               {
                  §8#Y§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§4"u§);
               }
               else
               {
                  §8#Y§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§5!<§);
               }
            }
         }
      }
      
      private function §;!@§(param1:Event) : void
      {
         §5"w§.§7$&§(this.§8"x§);
         §8#Y§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§;!@§);
         dispatchEvent(new §=u§(§=u§.§!"m§,this.§0!6§.eventName));
         close();
      }
      
      private function §4"u§(param1:Event) : void
      {
         §5"w§.§8!=§(this.§8"x§);
         var _loc2_:CoinShopPopup = new CoinShopPopup(§%#§.NORMAL,§9#5§.TOP,CoinShopPopup.§-$7§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         _loc2_.addEventListener(§8K§.§`#y§,this.§9#8§);
         _loc2_.addEventListener(§5"_§.§4+§,this.§[#j§);
      }
      
      protected function §[#j§(param1:Event) : void
      {
         this.§"#M§();
      }
      
      protected function §9#8§(param1:Event) : void
      {
         this.§"#M§();
      }
      
      private function §5!<§(param1:MouseEvent) : void
      {
         §8#Y§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§5!<§);
         §[#%§.playSound("Shop_Buy",§[#%§.§-"I§);
         var _loc2_:§1"i§ = new §1"i§(this.§'$$§,this.§^"v§,id,§%"T§.§;`§.currentLevel.name);
         _loc2_.addEventListener(§8K§.§`#y§,this.§&##§);
      }
      
      protected function §&##§(param1:§8K§) : void
      {
         §5"w§.§=$<§(this.§8"x§);
         var _loc2_:§1"i§ = param1.currentTarget as §1"i§;
         _loc2_.removeEventListener(§8K§.§`#y§,this.§&##§);
         §5"w§.trackPageView(this,§5"w§.§9`§);
         §5"w§.trackTransaction(_loc2_.orderId,this.§5!R§(),_loc2_.§4">§.id,_loc2_.§4">§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         this.§"#M§();
      }
      
      private function §"#M§() : void
      {
         this.§;0§(null);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         (AngryBirdsBase.singleton.dataModel as §@"%§).§,H§.removeEventListener(Event.COMPLETE,this.§;0§);
         if(§8#Y§ && §8#Y§.mClip.Button_PowerupSuggestion)
         {
            §8#Y§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§;!@§);
            §8#Y§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§4"u§);
            §8#Y§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§5!<§);
         }
      }
      
      private function §>"J§(param1:MouseEvent) : void
      {
         §5"w§.§3#'§(this.§8"x§);
         close();
      }
      
      public function §<"r§() : String
      {
         return §5"w§.§;#j§;
      }
      
      public function §5!R§() : String
      {
         return §5"w§.§2!4§;
      }
      
      public function §+"n§() : String
      {
         return this.§<"r§() + "-" + this.§5!R§();
      }
   }
}
