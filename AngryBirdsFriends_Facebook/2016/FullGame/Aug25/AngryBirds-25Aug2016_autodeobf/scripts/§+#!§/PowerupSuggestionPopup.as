package §+#!§
{
   import §"!U§.§6!J§;
   import §"!U§.§=#V§;
   import §#!s§.§@J§;
   import §#!s§.Wallet;
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §'"-§.§ !_§;
   import §'"-§.§'§;
   import §1"0§.§4$#§;
   import §4#%§.§@#@§;
   import §6"r§.§]$!§;
   import §8§.§#$+§;
   import §;!H§.§%"K§;
   import §<!O§.§@#`§;
   import §>!#§.§ 1§;
   import §>!#§.§,"W§;
   import §>!#§.§9#a§;
   import §>q§.CoinShopPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import §^$4§.§>"T§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class PowerupSuggestionPopup extends AbstractPopup implements §@#@§, § 1§, §@J§
   {
       
      
      private var §'!x§:§'#3§;
      
      private var §""Q§:§=#V§;
      
      private var §3!@§:§6!J§;
      
      private var §0#L§:String;
      
      private const §[<§:String = "Use a Power-up!";
      
      private const §[#U§:String = "Get Power-ups!";
      
      private var §^m§:Wallet;
      
      private var §`#n§:Number;
      
      public function PowerupSuggestionPopup(param1:int, param2:int, param3:§'#3§, param4:String)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupPowerupSuggestion[0],"PowerupSuggestionPopup");
         this.§'!x§ = param3;
         this.§0#L§ = param4;
      }
      
      protected static function get dataModel() : §+3§
      {
         return AngryBirdsBase.singleton.dataModel as §+3§;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §7!j§.setVisibility(false);
         §7!j§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="R§);
         §7!j§.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(false);
         §7!j§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
         §7!j§.mClip.MovieClip_PowerupSuggestion.gotoAndStop(0);
         §7!j§.getItemByName("MovieClip_PowerupSuggestion").setVisibility(false);
         §7!j§.getItemByName("Button_PowerupSuggestion").setVisibility(false);
         if((AngryBirdsBase.singleton.dataModel as §+3§).§ ,§.§!!,§)
         {
            this.§<L§(null);
         }
         else
         {
            (AngryBirdsBase.singleton.dataModel as §+3§).§ ,§.addEventListener(Event.COMPLETE,this.§<L§);
         }
         this.§<n§();
         §>"$§.pause();
      }
      
      private function §<n§() : void
      {
         this.§%#,§(new Wallet(this,true,true));
         this.§^m§.§<c§.visible = true;
         this.§`#n§ = §+3§(§8G§.§%#S§.dataModel).§<$&§.§[#u§;
         this.§^m§.§9"'§(this.§`#n§);
      }
      
      public function §%#,§(param1:Wallet) : void
      {
         this.§^m§ = param1;
      }
      
      public function get walletContainer() : Sprite
      {
         return §7!j§.getItemByName("walletContainer").mClip;
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
      
      protected function §<L§(param1:Event) : void
      {
         §7!j§.setVisibility(true);
         (AngryBirdsBase.singleton.dataModel as §+3§).§ ,§.removeEventListener(Event.COMPLETE,this.§<L§);
         var _loc2_:int = §%h§.§3!]§.§7#S§(this.§'!x§.§"!E§);
         var _loc3_:int = (AngryBirdsBase.singleton.dataModel as §+3§).§<$&§.§[#u§;
         this.§""Q§ = (AngryBirdsBase.singleton.dataModel as §+3§).§ ,§.§#!@§(this.§'!x§.§"!E§);
         this.§3!@§ = this.§""Q§.getPricePoint(3);
         if(§7!j§)
         {
            §7!j§.mClip.MovieClip_PowerupSuggestion.visible = true;
            §7!j§.getItemByName("TextField_PowerupSuggestion_Header").setVisibility(true);
            §7!j§.getItemByName("MovieClip_Powerup_Banner").setVisibility(false);
            (§7!j§.getItemByName("TextField_PowerupSuggestion_Text") as §]$!§).setText("x " + this.§3!@§.totalQuantity);
            §7!j§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(false);
            §7!j§.mClip.MovieClip_PowerupSuggestion.gotoAndStop(this.§'!x§.§"!E§);
            §7!j§.getItemByName("MovieClip_PowerupSuggestion").setVisibility(true);
            §7!j§.getItemByName("Button_PowerupSuggestion").setVisibility(true);
            §7!j§.getItemByName("TextField_Use").mClip.mouseChildren = false;
            §7!j§.getItemByName("TextField_Use").mClip.mouseEnabled = false;
            §7!j§.getItemByName("TextField_Price").mClip.mouseChildren = false;
            §7!j§.getItemByName("TextField_Price").mClip.mouseEnabled = false;
            §7!j§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§ !O§);
            §7!j§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§0#S§);
            §7!j§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§[!D§);
            §7!j§.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = false;
            if(_loc2_ > 0)
            {
               (§7!j§.getItemByName("TextField_PowerupSuggestion_Header") as §]$!§).setText(this.§[<§);
               §7!j§.getItemByName("TextField_Use").setVisibility(true);
               §7!j§.getItemByName("TextField_Price").setVisibility(false);
               (§7!j§.getItemByName("TextField_Use") as §]$!§).setText("USE");
               §7!j§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§ !O§);
            }
            else
            {
               (§7!j§.getItemByName("TextField_PowerupSuggestion_Header") as §]$!§).setText(this.§[#U§);
               §7!j§.getItemByName("MovieClip_Powerup_Banner").setVisibility(true);
               §7!j§.getItemByName("TextField_PowerupSuggestion_Text").setVisibility(true);
               §7!j§.getItemByName("TextField_Use").setVisibility(false);
               §7!j§.getItemByName("TextField_Price").setVisibility(true);
               §7!j§.mClip.Button_PowerupSuggestion.MovieClip_BirdCoin.visible = true;
               (§7!j§.getItemByName("TextField_Price") as §]$!§).setText(§9#a§.§^#&§(this.§3!@§.price).toString());
               if(_loc3_ < this.§3!@§.price)
               {
                  §7!j§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§0#S§);
               }
               else
               {
                  §7!j§.mClip.Button_PowerupSuggestion.addEventListener(MouseEvent.CLICK,this.§[!D§);
               }
            }
         }
      }
      
      private function § !O§(param1:Event) : void
      {
         §,"W§.§[#2§(this.§0#L§);
         §7!j§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§ !O§);
         dispatchEvent(new § !_§(§ !_§.§?=§,this.§'!x§.eventName));
         close();
      }
      
      private function §0#S§(param1:Event) : void
      {
         §,"W§.§7#,§(this.§0#L§);
         var _loc2_:CoinShopPopup = new CoinShopPopup(§[W§.NORMAL,§<d§.TOP,CoinShopPopup.§#!Y§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         _loc2_.addEventListener(§>"T§.§>"d§,this.§7"]§);
         _loc2_.addEventListener(§4$#§.§%#l§,this.§`H§);
      }
      
      protected function §`H§(param1:Event) : void
      {
         this.§6"0§();
      }
      
      protected function §7"]§(param1:Event) : void
      {
         this.§6"0§();
      }
      
      private function §[!D§(param1:MouseEvent) : void
      {
         §7!j§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§[!D§);
         §#$+§.playSound("Shop_Buy",§#$+§.§'!o§);
         var _loc2_:§%"K§ = new §%"K§(this.§""Q§,this.§3!@§,id,§>"$§.§3#'§.currentLevel.name);
         _loc2_.addEventListener(§>"T§.§>"d§,this.§[![§);
      }
      
      protected function §[![§(param1:§>"T§) : void
      {
         §,"W§.§<$-§(this.§0#L§);
         var _loc2_:§%"K§ = param1.currentTarget as §%"K§;
         _loc2_.removeEventListener(§>"T§.§>"d§,this.§[![§);
         §,"W§.trackPageView(this,§,"W§.§=!b§);
         §,"W§.trackTransaction(_loc2_.orderId,this.§7">§(),_loc2_.§^$2§.id,_loc2_.§^$2§.id,_loc2_.pricePoint.totalQuantity + " x",0,1,0);
         this.§6"0§();
      }
      
      private function §6"0§() : void
      {
         this.§<L§(null);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
         (AngryBirdsBase.singleton.dataModel as §+3§).§ ,§.removeEventListener(Event.COMPLETE,this.§<L§);
         if(§7!j§ && §7!j§.mClip.Button_PowerupSuggestion)
         {
            §7!j§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§ !O§);
            §7!j§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§0#S§);
            §7!j§.mClip.Button_PowerupSuggestion.removeEventListener(MouseEvent.CLICK,this.§[!D§);
         }
      }
      
      private function §="R§(param1:MouseEvent) : void
      {
         §,"W§.§0!7§(this.§0#L§);
         close();
      }
      
      public function §9"v§() : String
      {
         return §,"W§.§ "8§;
      }
      
      public function §7">§() : String
      {
         return §,"W§.§7"§;
      }
      
      public function §<$#§() : String
      {
         return this.§9"v§() + "-" + this.§7">§();
      }
   }
}
