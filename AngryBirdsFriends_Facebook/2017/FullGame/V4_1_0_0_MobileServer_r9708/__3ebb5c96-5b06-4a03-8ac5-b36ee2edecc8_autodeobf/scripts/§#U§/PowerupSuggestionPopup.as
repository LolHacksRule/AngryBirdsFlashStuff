package §#U§
{
   import § o§.§%"!§;
   import §!@§.§&$#§;
   import §%#A§.§^!4§;
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&"J§.§4"W§;
   import §&"J§.§`]§;
   import §+"E§.§9"z§;
   import §1#W§.§!#&§;
   import §4$<§.§?§;
   import §6"r§.§!#A§;
   import §6V§.§7#M§;
   import §6V§.§^">§;
   import §6V§.§`"5§;
   import §7",§.§!#q§;
   import §7",§.§2#i§;
   import §8#D§.§=>§;
   import §9"0§.CoinShopPopup;
   import §;P§.§%!]§;
   import §;P§.§-#b§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §[§.§]"w§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class PowerupSuggestionPopup extends AbstractPopup implements §]"w§, §7#M§, §8[§
   {
       
      
      private var § !F§:§-#b§;
      
      private var §]#+§:§2#i§;
      
      private var §9#A§:§!#q§;
      
      private var §1#p§:String;
      
      private const §?P§:String = "Use a Power-up!";
      
      private const §-#S§:String = "Get Power-ups!";
      
      private var §3!B§:Wallet;
      
      private var §7!X§:Number;
      
      public function PowerupSuggestionPopup(param1:int, param2:int, param3:§-#b§, param4:String)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupPowerupSuggestion[0],"PowerupSuggestionPopup");
         this.§ !F§ = param3;
         this.§1#p§ = param4;
      }
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §1"6§.setVisibility(false);
         §1"6§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§]2§);
         §1"6§.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(false);
         §1"6§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
         §1"6§.mClip.MovieClip_PowerupSuggestion.gotoAndStop(0);
         §1"6§.getItemByName("MovieClip_PowerupSuggestion").setVisibility(false);
         §1"6§.getItemByName("Button_PowerupSuggestion").setVisibility(false);
         if((AngryBirdsBase.singleton.dataModel as §`]§).§#"r§.§ #q§)
         {
            this.§1!9§(null);
         }
         else
         {
            (AngryBirdsBase.singleton.dataModel as §`]§).§#"r§.addEventListener(Event.COMPLETE,this.§1!9§);
         }
         this.§`#§();
         §!#A§.pause();
      }
      
      private function §`#§() : void
      {
         this.§##Y§(new Wallet(this,true,true));
         this.§3!B§.§[!R§.visible = true;
         this.§7!X§ = §`]§(§-#+§.§;!$§.dataModel).§>p§.§5##§;
         this.§3!B§.setCoinsAmountText(this.§7!X§);
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         if(§1"6§)
         {
            return §1"6§.getItemByName("walletContainer").mClip;
         }
         return null;
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
      
      protected function §1!9§(param1:Event) : void
      {
         (AngryBirdsBase.singleton.dataModel as §`]§).§#"r§.removeEventListener(Event.COMPLETE,this.§1!9§);
         var _loc2_:int = §4"W§.§ "D§.§04§(this.§ !F§.§?"9§);
         var _loc3_:int = (AngryBirdsBase.singleton.dataModel as §`]§).§>p§.§5##§;
         this.§]#+§ = (AngryBirdsBase.singleton.dataModel as §`]§).§#"r§.§#X§(this.§ !F§.§?"9§);
         this.§9#A§ = this.§]#+§.getPricePoint(3);
         if(§1"6§)
         {
            §1"6§.setVisibility(true);
            §1"6§.mClip.MovieClip_PowerupSuggestion.visible = true;
            §1"6§.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(true);
            §1"6§.getItemByName("MovieClip_Powerup_Banner").setVisibility(false);
            (§1"6§.getItemByName("TextField_PowerupSuggestion_Text") as §^!4§).setText("x " + this.§9#A§.totalQuantity);
            §1"6§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
            §1"6§.mClip.MovieClip_PowerupSuggestion.gotoAndStop(this.§ !F§.§?"9§);
            §1"6§.getItemByName("MovieClip_PowerupSuggestion").setVisibility(true);
            §1"6§.getItemByName("Button_PowerupSuggestion").setVisibility(true);
            §1"6§.getItemByName("TextField_Use").mClip.mouseChildren = false;
            §1"6§.getItemByName("TextField_Use").mClip.mouseEnabled = false;
            §1"6§.getItemByName("TextField_Price").mClip.mouseChildren = false;
            §1"6§.getItemByName("TextField_Price").mClip.mouseEnabled = false;
            §1"6§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§,s§);
            §1"6§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§?!o§);
            §1"6§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§>"^§);
            §1"6§.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = false;
            if(_loc2_ > 0)
            {
               (§1"6§.getItemByName("TextField_PowerupSuggestion_Header") as §^!4§).setText(this.§?P§);
               §1"6§.getItemByName("TextField_Use").setVisibility(true);
               §1"6§.getItemByName("TextField_Price").setVisibility(false);
               (§1"6§.getItemByName("TextField_Use") as §^!4§).setText("USE");
               §1"6§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§,s§);
            }
            else
            {
               (§1"6§.getItemByName("TextField_PowerupSuggestion_Header") as §^!4§).setText(this.§-#S§);
               §1"6§.getItemByName("MovieClip_Powerup_Banner").setVisibility(true);
               §1"6§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(true);
               §1"6§.getItemByName("TextField_Use").setVisibility(false);
               §1"6§.getItemByName("TextField_Price").setVisibility(true);
               §1"6§.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = true;
               (§1"6§.getItemByName("TextField_Price") as §^!4§).setText(§^">§.§?"Y§(this.§9#A§.price).toString());
               if(_loc3_ < this.§9#A§.price)
               {
                  §1"6§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§?!o§);
               }
               else
               {
                  §1"6§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§>"^§);
               }
            }
         }
      }
      
      private function §,s§(param1:Event) : void
      {
         §`"5§.§&E§(this.§1#p§);
         §1"6§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§,s§);
         dispatchEvent(new §%!]§(§%!]§.§3#%§,this.§ !F§.eventName));
         close();
      }
      
      private function §?!o§(param1:Event) : void
      {
         §`"5§.§!4§(this.§1#p§);
         var _loc2_:CoinShopPopup = new CoinShopPopup(§%"!§.NORMAL,§^#o§.TOP,CoinShopPopup.§%#=§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         _loc2_.addEventListener(§9"z§.§9$>§,this.§]!L§);
         _loc2_.addEventListener(§?#7§.§7#o§,this.§7"t§);
      }
      
      protected function §7"t§(param1:Event) : void
      {
         this.§<#@§();
      }
      
      protected function §]!L§(param1:Event) : void
      {
         this.§<#@§();
      }
      
      private function §>"^§(param1:MouseEvent) : void
      {
         §1"6§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§>"^§);
         §!#&§.playSound("Shop_Buy",§!#&§.§6#h§);
         var _loc2_:§&$#§ = new §&$#§(this.§]#+§,this.§9#A§,id,§!#A§.§#F§.currentLevel.name);
         _loc2_.addEventListener(§9"z§.§9$>§,this.§66§);
      }
      
      protected function §66§(param1:§9"z§) : void
      {
         §`"5§.§&h§(this.§1#p§);
         var _loc2_:§&$#§ = param1.currentTarget as §&$#§;
         _loc2_.removeEventListener(§9"z§.§9$>§,this.§66§);
         §`"5§.trackPageView(this,§`"5§.§9>§);
         §`"5§.trackTransaction(_loc2_.orderId,this.§>"-§(),_loc2_.§in§.id,_loc2_.§in§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         this.§<#@§();
      }
      
      private function §<#@§() : void
      {
         this.§1!9§(null);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         (AngryBirdsBase.singleton.dataModel as §`]§).§#"r§.removeEventListener(Event.COMPLETE,this.§1!9§);
         if(§1"6§ && §1"6§.mClip.Button_PowerupSuggestion)
         {
            §1"6§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§,s§);
            §1"6§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§?!o§);
            §1"6§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§>"^§);
         }
      }
      
      private function §]2§(param1:MouseEvent) : void
      {
         §`"5§.§=?§(this.§1#p§);
         close();
      }
      
      public function §<"b§() : String
      {
         return §`"5§.§@"I§;
      }
      
      public function §>"-§() : String
      {
         return §`"5§.§?3§;
      }
      
      public function §-"K§() : String
      {
         return this.§<"b§() + "-" + this.§>"-§();
      }
   }
}
