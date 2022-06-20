package §<l§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import §+!n§.§+!p§;
   import §+Z§.§?!T§;
   import §2$;§.§-$5§;
   import §2E§.§'@§;
   import §2E§.§'r§;
   import §2E§.§,!8§;
   import §4#l§.§8#E§;
   import §4#l§.§>"`§;
   import §4$A§.§=$5§;
   import §5"l§.§0!b§;
   import §8!G§.CoinShopPopup;
   import §9!6§.§## §;
   import §9!6§.AbstractPopup;
   import §<"I§.§#$9§;
   import §<"I§.§1!^§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §>#Y§.§!",§;
   import §>#Y§.§,#b§;
   import §@!_§.§>%§;
   import §[#A§.§&n§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class PowerupSuggestionPopup extends AbstractPopup implements §=$5§, §'r§, §;"P§
   {
       
      
      private var §;q§:§1!^§;
      
      private var §=#Q§:§8#E§;
      
      private var §[!'§:§>"`§;
      
      private var §=!h§:String;
      
      private const §6!O§:String = "Use a Power-up!";
      
      private const §,0§:String = "Get Power-ups!";
      
      private var §1"w§:Wallet;
      
      private var §!X§:Number;
      
      public function PowerupSuggestionPopup(param1:int, param2:int, param3:§1!^§, param4:String)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupPowerupSuggestion[0],"PowerupSuggestionPopup");
         this.§;q§ = param3;
         this.§=!h§ = param4;
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §'o§.setVisibility(false);
         §'o§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§-"D§);
         §'o§.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(false);
         §'o§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
         §'o§.mClip.MovieClip_PowerupSuggestion.gotoAndStop(0);
         §'o§.getItemByName("MovieClip_PowerupSuggestion").setVisibility(false);
         §'o§.getItemByName("Button_PowerupSuggestion").setVisibility(false);
         if((AngryBirdsBase.singleton.dataModel as §,#b§).§+!J§.§'"6§)
         {
            this.§2!m§(null);
         }
         else
         {
            (AngryBirdsBase.singleton.dataModel as §,#b§).§+!J§.addEventListener(Event.COMPLETE,this.§2!m§);
         }
         this.§-#y§();
         §+!p§.pause();
      }
      
      private function §-#y§() : void
      {
         this.§ "@§(new Wallet(this,true,true));
         this.§1"w§.§6""§.visible = true;
         this.§!X§ = §,#b§(§^"a§.§9!h§.dataModel).§%$;§.§5"i§;
         this.§1"w§.setCoinsAmountText(this.§!X§);
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         if(§'o§)
         {
            return §'o§.getItemByName("walletContainer").mClip;
         }
         return null;
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
      
      protected function §2!m§(param1:Event) : void
      {
         (AngryBirdsBase.singleton.dataModel as §,#b§).§+!J§.removeEventListener(Event.COMPLETE,this.§2!m§);
         var _loc2_:int = §!",§.§3"1§.§2![§(this.§;q§.§=#@§);
         var _loc3_:int = (AngryBirdsBase.singleton.dataModel as §,#b§).§%$;§.§5"i§;
         this.§=#Q§ = (AngryBirdsBase.singleton.dataModel as §,#b§).§+!J§.§&!g§(this.§;q§.§=#@§);
         this.§[!'§ = this.§=#Q§.getPricePoint(3);
         if(§'o§)
         {
            §'o§.setVisibility(true);
            §'o§.mClip.MovieClip_PowerupSuggestion.visible = true;
            §'o§.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(true);
            §'o§.getItemByName("MovieClip_Powerup_Banner").setVisibility(false);
            (§'o§.getItemByName("TextField_PowerupSuggestion_Text") as §-$5§).setText("x " + this.§[!'§.totalQuantity);
            §'o§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
            §'o§.mClip.MovieClip_PowerupSuggestion.gotoAndStop(this.§;q§.§=#@§);
            §'o§.getItemByName("MovieClip_PowerupSuggestion").setVisibility(true);
            §'o§.getItemByName("Button_PowerupSuggestion").setVisibility(true);
            §'o§.getItemByName("TextField_Use").mClip.mouseChildren = false;
            §'o§.getItemByName("TextField_Use").mClip.mouseEnabled = false;
            §'o§.getItemByName("TextField_Price").mClip.mouseChildren = false;
            §'o§.getItemByName("TextField_Price").mClip.mouseEnabled = false;
            §'o§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§0#@§);
            §'o§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§[B§);
            §'o§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§8!=§);
            §'o§.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = false;
            if(_loc2_ > 0)
            {
               (§'o§.getItemByName("TextField_PowerupSuggestion_Header") as §-$5§).setText(this.§6!O§);
               §'o§.getItemByName("TextField_Use").setVisibility(true);
               §'o§.getItemByName("TextField_Price").setVisibility(false);
               (§'o§.getItemByName("TextField_Use") as §-$5§).setText("USE");
               §'o§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§0#@§);
            }
            else
            {
               (§'o§.getItemByName("TextField_PowerupSuggestion_Header") as §-$5§).setText(this.§,0§);
               §'o§.getItemByName("MovieClip_Powerup_Banner").setVisibility(true);
               §'o§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(true);
               §'o§.getItemByName("TextField_Use").setVisibility(false);
               §'o§.getItemByName("TextField_Price").setVisibility(true);
               §'o§.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = true;
               (§'o§.getItemByName("TextField_Price") as §-$5§).setText(§,!8§.§1"h§(this.§[!'§.price).toString());
               if(_loc3_ < this.§[!'§.price)
               {
                  §'o§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§[B§);
               }
               else
               {
                  §'o§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§8!=§);
               }
            }
         }
      }
      
      private function §0#@§(param1:Event) : void
      {
         §'@§.§5!l§(this.§=!h§);
         §'o§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§0#@§);
         dispatchEvent(new §#$9§(§#$9§.§-#C§,this.§;q§.eventName));
         close();
      }
      
      private function §[B§(param1:Event) : void
      {
         §'@§.§?#K§(this.§=!h§);
         var _loc2_:CoinShopPopup = new CoinShopPopup(§-!S§.NORMAL,§## §.TOP,CoinShopPopup.§]#;§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         _loc2_.addEventListener(§?!T§.§@!9§,this.§!$@§);
         _loc2_.addEventListener(§0!b§.§9"5§,this.§7F§);
      }
      
      protected function §7F§(param1:Event) : void
      {
         this.§>!>§();
      }
      
      protected function §!$@§(param1:Event) : void
      {
         this.§>!>§();
      }
      
      private function §8!=§(param1:MouseEvent) : void
      {
         §'o§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§8!=§);
         §4$4§.playSound("Shop_Buy",§4$4§.§1#l§);
         var _loc2_:§>%§ = new §>%§(this.§=#Q§,this.§[!'§,id,§+!p§.§`?§.currentLevel.name);
         _loc2_.addEventListener(§?!T§.§@!9§,this.§;#r§);
      }
      
      protected function §;#r§(param1:§?!T§) : void
      {
         §'@§.§4"E§(this.§=!h§);
         var _loc2_:§>%§ = param1.currentTarget as §>%§;
         _loc2_.removeEventListener(§?!T§.§@!9§,this.§;#r§);
         §'@§.trackPageView(this,§'@§.§0#6§);
         §'@§.trackTransaction(_loc2_.orderId,this.§6#U§(),_loc2_.§"^§.id,_loc2_.§"^§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         this.§>!>§();
      }
      
      private function §>!>§() : void
      {
         this.§2!m§(null);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         (AngryBirdsBase.singleton.dataModel as §,#b§).§+!J§.removeEventListener(Event.COMPLETE,this.§2!m§);
         if(§'o§ && §'o§.mClip.Button_PowerupSuggestion)
         {
            §'o§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§0#@§);
            §'o§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§[B§);
            §'o§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§8!=§);
         }
      }
      
      private function §-"D§(param1:MouseEvent) : void
      {
         §'@§.§`$?§(this.§=!h§);
         close();
      }
      
      public function §2!^§() : String
      {
         return §'@§.§,#h§;
      }
      
      public function §6#U§() : String
      {
         return §'@§.§<!L§;
      }
      
      public function §9M§() : String
      {
         return this.§2!^§() + "-" + this.§6#U§();
      }
   }
}
