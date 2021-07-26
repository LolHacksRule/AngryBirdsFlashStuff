package §7"`§
{
   import § §.§2"O§;
   import §!#C§.§ $?§;
   import §!#C§.§4!Q§;
   import §"c§.CoinShopPopup;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §#,§.§`"$§;
   import §%!-§.§?l§;
   import §&!_§.§,!n§;
   import §&!_§.§0I§;
   import §&!_§.§9#%§;
   import §'M§.§"Z§;
   import §-;§.§2,§;
   import §-;§.§<K§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §5" §.§5u§;
   import §5" §.§=n§;
   import §6t§.§4?§;
   import §8#K§.§3Z§;
   import §>z§.§#"l§;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class PowerupSuggestionPopup extends AbstractPopup implements §%!#§, §,!n§, §&>§
   {
       
      
      private var §#Q§:§<K§;
      
      private var §3$@§:§=n§;
      
      private var §?!M§:§5u§;
      
      private var §[##§:String;
      
      private const §4#E§:String = "Use a Power-up!";
      
      private const §+#%§:String = "Get Power-ups!";
      
      private var §1!B§:Wallet;
      
      private var §?=§:Number;
      
      public function PowerupSuggestionPopup(param1:int, param2:int, param3:§<K§, param4:String)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupPowerupSuggestion[0],"PowerupSuggestionPopup");
         this.§#Q§ = param3;
         this.§[##§ = param4;
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §&!M§.setVisibility(false);
         §&!M§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§-!b§);
         §&!M§.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(false);
         §&!M§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
         §&!M§.mClip.MovieClip_PowerupSuggestion.gotoAndStop(0);
         §&!M§.getItemByName("MovieClip_PowerupSuggestion").setVisibility(false);
         §&!M§.getItemByName("Button_PowerupSuggestion").setVisibility(false);
         if((AngryBirdsBase.singleton.dataModel as §4!Q§).§="N§.§,!d§)
         {
            this.§7"P§(null);
         }
         else
         {
            (AngryBirdsBase.singleton.dataModel as §4!Q§).§="N§.addEventListener(Event.COMPLETE,this.§7"P§);
         }
         this.§=3§();
         §7n§.pause();
      }
      
      private function §=3§() : void
      {
         this.§0!A§(new Wallet(this,true,true));
         this.§1!B§.§+F§.visible = true;
         this.§?=§ = §4!Q§(§ #v§.§1!!§.dataModel).§1W§.§<B§;
         this.§1!B§.setCoinsAmountText(this.§?=§);
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         if(§&!M§)
         {
            return §&!M§.getItemByName("walletContainer").mClip;
         }
         return null;
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
      
      protected function §7"P§(param1:Event) : void
      {
         (AngryBirdsBase.singleton.dataModel as §4!Q§).§="N§.removeEventListener(Event.COMPLETE,this.§7"P§);
         var _loc2_:int = § $?§.§`"H§.§0#s§(this.§#Q§.§1#7§);
         var _loc3_:int = (AngryBirdsBase.singleton.dataModel as §4!Q§).§1W§.§<B§;
         this.§3$@§ = (AngryBirdsBase.singleton.dataModel as §4!Q§).§="N§.§ #8§(this.§#Q§.§1#7§);
         this.§?!M§ = this.§3$@§.getPricePoint(3);
         if(§&!M§)
         {
            §&!M§.setVisibility(true);
            §&!M§.mClip.MovieClip_PowerupSuggestion.visible = true;
            §&!M§.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(true);
            §&!M§.getItemByName("MovieClip_Powerup_Banner").setVisibility(false);
            (§&!M§.getItemByName("TextField_PowerupSuggestion_Text") as §`"$§).setText("x " + this.§?!M§.totalQuantity);
            §&!M§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
            §&!M§.mClip.MovieClip_PowerupSuggestion.gotoAndStop(this.§#Q§.§1#7§);
            §&!M§.getItemByName("MovieClip_PowerupSuggestion").setVisibility(true);
            §&!M§.getItemByName("Button_PowerupSuggestion").setVisibility(true);
            §&!M§.getItemByName("TextField_Use").mClip.mouseChildren = false;
            §&!M§.getItemByName("TextField_Use").mClip.mouseEnabled = false;
            §&!M§.getItemByName("TextField_Price").mClip.mouseChildren = false;
            §&!M§.getItemByName("TextField_Price").mClip.mouseEnabled = false;
            §&!M§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§8#3§);
            §&!M§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§ #]§);
            §&!M§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§,U§);
            §&!M§.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = false;
            if(_loc2_ > 0)
            {
               (§&!M§.getItemByName("TextField_PowerupSuggestion_Header") as §`"$§).setText(this.§4#E§);
               §&!M§.getItemByName("TextField_Use").setVisibility(true);
               §&!M§.getItemByName("TextField_Price").setVisibility(false);
               (§&!M§.getItemByName("TextField_Use") as §`"$§).setText("USE");
               §&!M§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§8#3§);
            }
            else
            {
               (§&!M§.getItemByName("TextField_PowerupSuggestion_Header") as §`"$§).setText(this.§+#%§);
               §&!M§.getItemByName("MovieClip_Powerup_Banner").setVisibility(true);
               §&!M§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(true);
               §&!M§.getItemByName("TextField_Use").setVisibility(false);
               §&!M§.getItemByName("TextField_Price").setVisibility(true);
               §&!M§.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = true;
               (§&!M§.getItemByName("TextField_Price") as §`"$§).setText(§9#%§.§##W§(this.§?!M§.price).toString());
               if(_loc3_ < this.§?!M§.price)
               {
                  §&!M§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§ #]§);
               }
               else
               {
                  §&!M§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§,U§);
               }
            }
         }
      }
      
      private function §8#3§(param1:Event) : void
      {
         §0I§.§1#&§(this.§[##§);
         §&!M§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§8#3§);
         dispatchEvent(new §2,§(§2,§.§@$!§,this.§#Q§.eventName));
         close();
      }
      
      private function § #]§(param1:Event) : void
      {
         §0I§.§>$8§(this.§[##§);
         var _loc2_:CoinShopPopup = new CoinShopPopup(§#"l§.NORMAL,§]"Y§.TOP,CoinShopPopup.§["3§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         _loc2_.addEventListener(§4?§.§?w§,this.§1"!§);
         _loc2_.addEventListener(§"Z§.§=#m§,this.§@"%§);
      }
      
      protected function §@"%§(param1:Event) : void
      {
         this.§4!v§();
      }
      
      protected function §1"!§(param1:Event) : void
      {
         this.§4!v§();
      }
      
      private function §,U§(param1:MouseEvent) : void
      {
         §&!M§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§,U§);
         §3Z§.playSound("Shop_Buy",§3Z§.§[!F§);
         var _loc2_:§2"O§ = new §2"O§(this.§3$@§,this.§?!M§,id,§7n§.§6#K§.currentLevel.name);
         _loc2_.addEventListener(§4?§.§?w§,this.§%$#§);
      }
      
      protected function §%$#§(param1:§4?§) : void
      {
         §0I§.§;W§(this.§[##§);
         var _loc2_:§2"O§ = param1.currentTarget as §2"O§;
         _loc2_.removeEventListener(§4?§.§?w§,this.§%$#§);
         §0I§.trackPageView(this,§0I§.§'#u§);
         §0I§.trackTransaction(_loc2_.orderId,this.§#"!§(),_loc2_.§6!-§.id,_loc2_.§6!-§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         this.§4!v§();
      }
      
      private function §4!v§() : void
      {
         this.§7"P§(null);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         (AngryBirdsBase.singleton.dataModel as §4!Q§).§="N§.removeEventListener(Event.COMPLETE,this.§7"P§);
         if(§&!M§ && §&!M§.mClip.Button_PowerupSuggestion)
         {
            §&!M§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§8#3§);
            §&!M§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§ #]§);
            §&!M§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§,U§);
         }
      }
      
      private function §-!b§(param1:MouseEvent) : void
      {
         §0I§.§'!6§(this.§[##§);
         close();
      }
      
      public function §;!=§() : String
      {
         return §0I§.§,"a§;
      }
      
      public function §#"!§() : String
      {
         return §0I§.§["V§;
      }
      
      public function §+"-§() : String
      {
         return this.§;!=§() + "-" + this.§#"!§();
      }
   }
}
