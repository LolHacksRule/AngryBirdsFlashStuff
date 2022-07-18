package §!"e§
{
   import § "4§.§4!?§;
   import §#!'§.§6"]§;
   import §%!!§.§!!m§;
   import §+D§.§^"m§;
   import §,"N§.§""t§;
   import §,"N§.§%"[§;
   import §,"N§.§=o§;
   import §,"N§.§@#B§;
   import §1#R§.§+#[§;
   import §2!f§.§]!J§;
   import §7!$§.§&$§;
   import §7K§.§`!z§;
   import §8b§.§=#&§;
   import §;! §.§2!P§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="V§.§""v§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §[!m§.§[!j§;
   import §^"?§.§["i§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §[!'§ extends AbstractPopup
   {
      
      public static const §%!h§:String = "ExclusiveSales";
      
      private static const §0[§:int = 0;
      
      private static const §-!;§:int = 1;
      
      private static const §]m§:int = 500;
      
      public static var §-![§:Boolean = false;
       
      
      private var §+I§:§`!z§;
      
      private var §3;§:§=#&§;
      
      private var §]!h§:§^"m§;
      
      protected var §=!b§:§!!m§;
      
      protected var §1J§:Timer;
      
      private var §2"O§:§""t§;
      
      private var §@!E§:§=o§;
      
      public function §[!'§(param1:int, param2:int, param3:§`!z§)
      {
         super(param1,param2,§&$§.§@8§.Popups.Popup_ExclusiveSales[0],§%!h§);
         this.§+I§ = param3;
         this.§2"O§ = §@#B§(§4#;§.singleton.dataModel).§1!f§;
         this.§@!E§ = §@#B§(§4#;§.singleton.dataModel).§`!W§;
         this.§=!b§ = new §!!m§(§4#;§.SERVER_ROOT);
      }
      
      override protected function init() : void
      {
         var _loc1_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         _loc2_.mask = _loc1_;
         this.§]!h§ = §^c§.getItemByName("Button_Buy") as §^"m§;
         _loc2_.icons.gotoAndStop(this.§+I§.prices[0].itemID.toLowerCase());
         var _loc3_:int = this.§2"O§.§`§(this.§+I§.prices[0].singlePrice,this.§+I§.prices[0]);
         _loc2_.salesOffer.text = §^"N§.getLocalizedString("shop_" + this.§+I§.prices[0].itemID.toLowerCase() + "_title");
         _loc2_.salesOffer.text += " x " + this.§2"O§.§;C§(this.§+I§.prices[0].singlePrice,this.§+I§.prices[0]);
         _loc2_.salesOffer.text += _loc3_ == 0 ? "" : " + " + _loc3_ + " " + §^"N§.getLocalizedString("starcoin_free");
         _loc2_.percentage.text = this.§2"O§.§<# §(this.§+I§.prices[0]) + "% off";
         _loc2_.price.text = this.§+I§.prices[0].price;
         _loc2_.normalPrice.text = this.§+I§.prices[0].normalPrice;
         if(this.§;#5§() == §-!;§)
         {
            this.§]!h§.setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
            this.§=!b§.§`h§(this.§8#C§);
         }
         else
         {
            this.§]!h§.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2.toUpperCase())
         {
            case "BUY":
               if(this.§@!E§.§1#9§(this.§+I§.prices[0].price))
               {
                  this.§@!E§.§12§(this.§+I§.prices[0].price);
                  this.§2"O§.§9?§(this.§+I§.prices[0]);
                  §6"]§.§@E§(this.§+I§.prices[0].itemID,this.§+I§.prices[0].price,!!§-![§ ? 0 : -1);
                  dispatchEvent(new §+#[§(§+#[§.CLOSE,this));
               }
               else
               {
                  this.§[#T§();
               }
               return;
            default:
               super.onUIInteraction(param1,param2,param3);
               return;
         }
      }
      
      private function §;#5§() : int
      {
         var _loc1_:§4!?§ = §@#B§(§4#;§.singleton.dataModel).§9!N§;
         var _loc2_:int = parseInt(_loc1_.id.charAt(_loc1_.id.length - 1));
         var _loc3_:* = _loc2_ % 2 == 0;
         return !!_loc3_ ? int(§0[§) : int(§-!;§);
      }
      
      protected function §[#T§() : void
      {
         if(this.§;#5§() == §0[§)
         {
            this.§7"r§();
         }
         else
         {
            this.§ #F§();
         }
      }
      
      private function §2!&§() : void
      {
         if(this.§1J§)
         {
            this.§1J§.reset();
            this.§1J§.removeEventListener(TimerEvent.TIMER,this.§2!#§);
         }
         this.§1J§ = null;
      }
      
      private function §?!e§() : void
      {
         this.§]!h§.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      private function §2!#§(param1:TimerEvent) : void
      {
         var _loc2_:§%"[§ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
         if(_loc2_.isLoaded)
         {
            this.§?!e§();
            this.§2!&§();
         }
      }
      
      private function §8#C§(param1:§=#&§) : void
      {
         var _loc2_:§%"[§ = null;
         if(param1)
         {
            this.§3;§ = param1;
            _loc2_ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
            if(_loc2_.isLoaded)
            {
               this.§?!e§();
            }
            else
            {
               this.§2!&§();
               this.§1J§ = new Timer(§]m§,0);
               this.§1J§.addEventListener(TimerEvent.TIMER,this.§2!#§);
               this.§1J§.start();
            }
         }
      }
      
      protected function § #F§() : void
      {
         §6"]§.§##7§(this.§+I§.prices[0].itemID,1);
         §""v§.addCallback("purchaseComplete",this.§]"O§);
         var _loc1_:int = this.§<"1§();
         var _loc2_:§["i§ = new §["i§(§["i§.§`!f§,_loc1_,-1,"");
         §2!P§.§2"G§(_loc2_);
      }
      
      private function §<"1§() : int
      {
         var _loc5_:int = 0;
         var _loc1_:int = this.§+I§.prices[0].price - this.§@!E§.starCoins;
         var _loc2_:int = int.MAX_VALUE;
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§3;§.items.length)
         {
            if((_loc5_ = this.§3;§.items[_loc4_].quantity) >= _loc1_ && _loc5_ < _loc2_)
            {
               _loc3_ = _loc5_;
               _loc2_ = _loc3_;
            }
            _loc4_++;
         }
         if(_loc3_ > this.§+I§.prices[0].price || _loc3_ == -1)
         {
            _loc3_ = this.§+I§.prices[0].price;
         }
         return _loc3_;
      }
      
      private function §]"O§() : void
      {
         this.§@!E§.§12§(this.§+I§.prices[0].price);
         this.§2"O§.§9?§(this.§+I§.prices[0]);
         §6"]§.§@E§(this.§+I§.prices[0].itemID,this.§+I§.prices[0].price,1);
         dispatchEvent(new §+#[§(§+#[§.CLOSE,this));
      }
      
      protected function §7"r§() : void
      {
         §-![§ = true;
         §6"]§.§##7§(this.§+I§.prices[0].itemID,0);
         var _loc1_:§[!j§ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§[!v§);
         §4#;§.singleton.popupManager.openPopup(_loc1_,true,true);
      }
      
      override public function dispose() : void
      {
         this.§2!&§();
         this.§=!b§.dispose();
         §""v§.§&z§("purchaseComplete",this.§]"O§);
         super.dispose();
      }
   }
}
