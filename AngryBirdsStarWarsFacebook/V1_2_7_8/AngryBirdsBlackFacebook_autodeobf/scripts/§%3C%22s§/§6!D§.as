package §<"s§
{
   import § #,§.§!B§;
   import § 0§.§@Y§;
   import §"!P§.§?"7§;
   import §""d§.§2"8§;
   import §#<§.§8!j§;
   import §,!$§.§=9§;
   import §0R§.§0!8§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §4m§.§5!R§;
   import §4m§.AbstractPopup;
   import §4m§.§^T§;
   import §6"e§.§+!§;
   import §;q§.§@!h§;
   import §^!`§.§%n§;
   import §^9§.§-!-§;
   import §`"8§.§-!w§;
   import §`"8§.§6`§;
   import §`"8§.§6v§;
   import §`"8§.§[F§;
   import §`F§.§3d§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §6!D§ extends AbstractPopup
   {
      
      public static const §^"3§:String = "ExclusiveSales";
      
      private static const §0?§:int = 0;
      
      private static const §[!P§:int = 1;
      
      private static const §1z§:int = 500;
      
      public static var §6!x§:Boolean = false;
       
      
      private var §"!m§:§@!h§;
      
      private var §^"@§:§3d§;
      
      private var §2!W§:§2"8§;
      
      protected var §#Q§:§=9§;
      
      protected var §use§:Timer;
      
      private var §`"J§:§6v§;
      
      private var §+#'§:§6`§;
      
      public function §6!D§(param1:int, param2:int, param3:§@!h§)
      {
         super(param1,param2,§%n§.§ set§.Popups.Popup_ExclusiveSales[0],§^"3§);
         this.§"!m§ = param3;
         this.§`"J§ = §-!w§(§;"@§.singleton.dataModel).§9"1§;
         this.§+#'§ = §-!w§(§;"@§.singleton.dataModel).§;L§;
         this.§#Q§ = new §=9§(§;"@§.SERVER_ROOT);
      }
      
      override protected function init() : void
      {
         var _loc1_:MovieClip = §,r§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §,r§.getItemByName("Container_Content").mClip;
         _loc2_.mask = _loc1_;
         this.§2!W§ = §,r§.getItemByName("Button_Buy") as §2"8§;
         _loc2_.icons.gotoAndStop(this.§"!m§.prices[0].itemID.toLowerCase());
         var _loc3_:int = this.§`"J§.§ var§(this.§"!m§.prices[0].singlePrice,this.§"!m§.prices[0]);
         _loc2_.salesOffer.text = §8-§.getLocalizedString("shop_" + this.§"!m§.prices[0].itemID.toLowerCase() + "_title");
         _loc2_.salesOffer.text += " x " + this.§`"J§.§";§(this.§"!m§.prices[0].singlePrice,this.§"!m§.prices[0]);
         _loc2_.salesOffer.text += _loc3_ == 0 ? "" : " + " + _loc3_ + " " + §8-§.getLocalizedString("starcoin_free");
         _loc2_.percentage.text = this.§`"J§.§="K§(this.§"!m§.prices[0]) + "% off";
         _loc2_.price.text = this.§"!m§.prices[0].price;
         _loc2_.normalPrice.text = this.§"!m§.prices[0].normalPrice;
         if(this.§5#5§() == §[!P§)
         {
            this.§2!W§.setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
            this.§#Q§.§&#5§(this.§ "9§);
         }
         else
         {
            this.§2!W§.setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2.toUpperCase())
         {
            case "BUY":
               if(this.§+#'§.§2!D§(this.§"!m§.prices[0].price))
               {
                  this.§+#'§.§1"F§(this.§"!m§.prices[0].price);
                  this.§`"J§.§!l§(this.§"!m§.prices[0]);
                  §0!8§.§["y§(this.§"!m§.prices[0].itemID,this.§"!m§.prices[0].price,!!§6!x§ ? 0 : -1);
                  dispatchEvent(new §8!j§(§8!j§.CLOSE,this));
               }
               else
               {
                  this.§94§();
               }
               return;
            default:
               super.onUIInteraction(param1,param2,param3);
               return;
         }
      }
      
      private function §5#5§() : int
      {
         var _loc1_:§?"7§ = §-!w§(§;"@§.singleton.dataModel).§0!;§;
         var _loc2_:int = parseInt(_loc1_.id.charAt(_loc1_.id.length - 1));
         var _loc3_:* = _loc2_ % 2 == 0;
         return !!_loc3_ ? int(§0?§) : int(§[!P§);
      }
      
      protected function §94§() : void
      {
         if(this.§5#5§() == §0?§)
         {
            this.§%1§();
         }
         else
         {
            this.§-!9§();
         }
      }
      
      private function §5g§() : void
      {
         if(this.§use§)
         {
            this.§use§.reset();
            this.§use§.removeEventListener(TimerEvent.TIMER,this.§'#"§);
         }
         this.§use§ = null;
      }
      
      private function §8"Y§() : void
      {
         this.§2!W§.setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      private function §'#"§(param1:TimerEvent) : void
      {
         var _loc2_:§[F§ = §-!w§(§;"@§.singleton.dataModel).§!#%§;
         if(_loc2_.isLoaded)
         {
            this.§8"Y§();
            this.§5g§();
         }
      }
      
      private function § "9§(param1:§3d§) : void
      {
         var _loc2_:§[F§ = null;
         if(param1)
         {
            this.§^"@§ = param1;
            _loc2_ = §-!w§(§;"@§.singleton.dataModel).§!#%§;
            if(_loc2_.isLoaded)
            {
               this.§8"Y§();
            }
            else
            {
               this.§5g§();
               this.§use§ = new Timer(§1z§,0);
               this.§use§.addEventListener(TimerEvent.TIMER,this.§'#"§);
               this.§use§.start();
            }
         }
      }
      
      protected function §-!9§() : void
      {
         §0!8§.§-"F§(this.§"!m§.prices[0].itemID,1);
         §@Y§.addCallback("purchaseComplete",this.§>"V§);
         var _loc1_:int = this.§?"D§();
         var _loc2_:§!B§ = new §!B§(§!B§.§0"z§,_loc1_,-1,"");
         §-!-§.§6!<§(_loc2_);
      }
      
      private function §?"D§() : int
      {
         var _loc5_:int = 0;
         var _loc1_:int = this.§"!m§.prices[0].price - this.§+#'§.starCoins;
         var _loc2_:int = int.MAX_VALUE;
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§^"@§.items.length)
         {
            if((_loc5_ = this.§^"@§.items[_loc4_].quantity) >= _loc1_ && _loc5_ < _loc2_)
            {
               _loc3_ = _loc5_;
               _loc2_ = _loc3_;
            }
            _loc4_++;
         }
         if(_loc3_ > this.§"!m§.prices[0].price || _loc3_ == -1)
         {
            _loc3_ = this.§"!m§.prices[0].price;
         }
         return _loc3_;
      }
      
      private function §>"V§() : void
      {
         this.§+#'§.§1"F§(this.§"!m§.prices[0].price);
         this.§`"J§.§!l§(this.§"!m§.prices[0]);
         §0!8§.§["y§(this.§"!m§.prices[0].itemID,this.§"!m§.prices[0].price,1);
         dispatchEvent(new §8!j§(§8!j§.CLOSE,this));
      }
      
      protected function §%1§() : void
      {
         §6!x§ = true;
         §0!8§.§-"F§(this.§"!m§.prices[0].itemID,0);
         var _loc1_:§5!R§ = new §+!§(§0u§.§1"J§,§^T§.TOP,§+!§.§7!W§);
         §;"@§.singleton.popupManager.openPopup(_loc1_,true,true);
      }
      
      override public function dispose() : void
      {
         this.§5g§();
         this.§#Q§.dispose();
         §@Y§.§0"<§("purchaseComplete",this.§>"V§);
         super.dispose();
      }
   }
}
