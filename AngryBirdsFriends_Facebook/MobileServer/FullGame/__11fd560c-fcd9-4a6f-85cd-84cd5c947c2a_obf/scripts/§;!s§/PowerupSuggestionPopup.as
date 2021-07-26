package §;!s§
{
   import § %§.§1Q§;
   import §!$;§.§8#F§;
   import §&"`§.§"#x§;
   import §&"`§.§##P§;
   import §&$!§.§##a§;
   import §&$!§.§^!&§;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §0#m§.§8#§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §1"N§.§""X§;
   import §2"5§.§1"?§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §4#V§.CoinShopPopup;
   import §;#D§.§3#U§;
   import §<h§.§%M§;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §`7§.§!"b§;
   import §`7§.§7E§;
   import §`7§.§`"x§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class PowerupSuggestionPopup extends AbstractPopup implements §8#§, §7E§, §9#a§
   {
       
      
      private var §3+§:§##a§;
      
      private var §!!b§:§"#x§;
      
      private var §+$'§:§##P§;
      
      private var §<4§:String;
      
      private const §;!v§:String = "Use a Power-up!";
      
      private const §@"A§:String = "Get Power-ups!";
      
      private var §&"K§:Wallet;
      
      private var §@$ §:Number;
      
      public function PowerupSuggestionPopup(param1:int, param2:int, param3:§##a§, param4:String)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupPowerupSuggestion[0],"PowerupSuggestionPopup");
         this.§3+§ = param3;
         this.§<4§ = param4;
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §,#2§.setVisibility(false);
         §,#2§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§-"F§);
         §,#2§.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(false);
         §,#2§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
         §,#2§.mClip.MovieClip_PowerupSuggestion.gotoAndStop(0);
         §,#2§.getItemByName("MovieClip_PowerupSuggestion").setVisibility(false);
         §,#2§.getItemByName("Button_PowerupSuggestion").setVisibility(false);
         if((AngryBirdsBase.singleton.dataModel as §#"8§).§-!h§.§#!a§)
         {
            this.§8"B§(null);
         }
         else
         {
            (AngryBirdsBase.singleton.dataModel as §#"8§).§-!h§.addEventListener(Event.COMPLETE,this.§8"B§);
         }
         this.§`!J§();
         §3#U§.pause();
      }
      
      private function §`!J§() : void
      {
         this.§[?§(new Wallet(this,true,true));
         this.§&"K§.§=#-§.visible = true;
         this.§@$ § = §#"8§(§,A§.§2#O§.dataModel).§""[§.§##!§;
         this.§&"K§.setCoinsAmountText(this.§@$ §);
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         if(§,#2§)
         {
            return §,#2§.getItemByName("walletContainer").mClip;
         }
         return null;
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
      
      protected function §8"B§(param1:Event) : void
      {
         (AngryBirdsBase.singleton.dataModel as §#"8§).§-!h§.removeEventListener(Event.COMPLETE,this.§8"B§);
         var _loc2_:int = §-#+§.§6!§.§=b§(this.§3+§.§5"g§);
         var _loc3_:int = (AngryBirdsBase.singleton.dataModel as §#"8§).§""[§.§##!§;
         this.§!!b§ = (AngryBirdsBase.singleton.dataModel as §#"8§).§-!h§.§&B§(this.§3+§.§5"g§);
         this.§+$'§ = this.§!!b§.getPricePoint(3);
         if(§,#2§)
         {
            §,#2§.setVisibility(true);
            §,#2§.mClip.MovieClip_PowerupSuggestion.visible = true;
            §,#2§.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(true);
            §,#2§.getItemByName("MovieClip_Powerup_Banner").setVisibility(false);
            (§,#2§.getItemByName("TextField_PowerupSuggestion_Text") as §%M§).setText("x " + this.§+$'§.totalQuantity);
            §,#2§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
            §,#2§.mClip.MovieClip_PowerupSuggestion.gotoAndStop(this.§3+§.§5"g§);
            §,#2§.getItemByName("MovieClip_PowerupSuggestion").setVisibility(true);
            §,#2§.getItemByName("Button_PowerupSuggestion").setVisibility(true);
            §,#2§.getItemByName("TextField_Use").mClip.mouseChildren = false;
            §,#2§.getItemByName("TextField_Use").mClip.mouseEnabled = false;
            §,#2§.getItemByName("TextField_Price").mClip.mouseChildren = false;
            §,#2§.getItemByName("TextField_Price").mClip.mouseEnabled = false;
            §,#2§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§`#f§);
            §,#2§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§!$$§);
            §,#2§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§@j§);
            §,#2§.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = false;
            if(_loc2_ > 0)
            {
               (§,#2§.getItemByName("TextField_PowerupSuggestion_Header") as §%M§).setText(this.§;!v§);
               §,#2§.getItemByName("TextField_Use").setVisibility(true);
               §,#2§.getItemByName("TextField_Price").setVisibility(false);
               (§,#2§.getItemByName("TextField_Use") as §%M§).setText("USE");
               §,#2§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§`#f§);
            }
            else
            {
               (§,#2§.getItemByName("TextField_PowerupSuggestion_Header") as §%M§).setText(this.§@"A§);
               §,#2§.getItemByName("MovieClip_Powerup_Banner").setVisibility(true);
               §,#2§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(true);
               §,#2§.getItemByName("TextField_Use").setVisibility(false);
               §,#2§.getItemByName("TextField_Price").setVisibility(true);
               §,#2§.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = true;
               (§,#2§.getItemByName("TextField_Price") as §%M§).setText(§!"b§.§@]§(this.§+$'§.price).toString());
               if(_loc3_ < this.§+$'§.price)
               {
                  §,#2§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§!$$§);
               }
               else
               {
                  §,#2§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§@j§);
               }
            }
         }
      }
      
      private function §`#f§(param1:Event) : void
      {
         §`"x§.§0"a§(this.§<4§);
         §,#2§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§`#f§);
         dispatchEvent(new §^!&§(§^!&§.§8o§,this.§3+§.eventName));
         close();
      }
      
      private function §!$$§(param1:Event) : void
      {
         §`"x§.§0"5§(this.§<4§);
         var _loc2_:CoinShopPopup = new CoinShopPopup(§]"$§.NORMAL,§^"U§.TOP,CoinShopPopup.§'$7§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         _loc2_.addEventListener(§1"?§.§=#j§,this.§+"6§);
         _loc2_.addEventListener(§8#F§.§^$4§,this.§3"D§);
      }
      
      protected function §3"D§(param1:Event) : void
      {
         this.§;"q§();
      }
      
      protected function §+"6§(param1:Event) : void
      {
         this.§;"q§();
      }
      
      private function §@j§(param1:MouseEvent) : void
      {
         §,#2§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§@j§);
         §!"p§.playSound("Shop_Buy",§!"p§.§+!;§);
         var _loc2_:§""X§ = new §""X§(this.§!!b§,this.§+$'§,id,§3#U§.§#$4§.currentLevel.name);
         _loc2_.addEventListener(§1"?§.§=#j§,this.§@!J§);
      }
      
      protected function §@!J§(param1:§1"?§) : void
      {
         §`"x§.§##n§(this.§<4§);
         var _loc2_:§""X§ = param1.currentTarget as §""X§;
         _loc2_.removeEventListener(§1"?§.§=#j§,this.§@!J§);
         §`"x§.trackPageView(this,§`"x§.§1!B§);
         §`"x§.trackTransaction(_loc2_.orderId,this.§0'§(),_loc2_.§2"X§.id,_loc2_.§2"X§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         this.§;"q§();
      }
      
      private function §;"q§() : void
      {
         this.§8"B§(null);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         (AngryBirdsBase.singleton.dataModel as §#"8§).§-!h§.removeEventListener(Event.COMPLETE,this.§8"B§);
         if(§,#2§ && §,#2§.mClip.Button_PowerupSuggestion)
         {
            §,#2§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§`#f§);
            §,#2§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§!$$§);
            §,#2§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§@j§);
         }
      }
      
      private function §-"F§(param1:MouseEvent) : void
      {
         §`"x§.§@!x§(this.§<4§);
         close();
      }
      
      public function §!3§() : String
      {
         return §`"x§.§,"U§;
      }
      
      public function §0'§() : String
      {
         return §`"x§.§8P§;
      }
      
      public function §+#k§() : String
      {
         return this.§!3§() + "-" + this.§0'§();
      }
   }
}
