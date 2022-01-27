package §+"Y§
{
   import §!b§.§]!s§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §+"x§.AbstractPopup;
   import §1!G§.§9"b§;
   import §4!-§.§3!8§;
   import §4"m§.§[!D§;
   import §5"Q§.§5"s§;
   import §6"-§.§^!Q§;
   import §7!n§.§>"H§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §9"U§.§,N§;
   import §9"U§.§0!2§;
   import §9"U§.§7"1§;
   import §9"U§.§;"[§;
   import §98§.§2§;
   import §=Z§.§;g§;
   import §@C§.§[C§;
   import §[!H§.§^x§;
   import §`"n§.§2J§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §-#$§ extends AbstractPopup
   {
      
      public static const §-"§:String = "ExclusiveSales";
      
      private static const §"!5§:int = 0;
      
      private static const §+R§:int = 1;
      
      private static const §!"N§:int = 500;
      
      public static var §7"M§:Boolean = false;
       
      
      private var §6!0§:§2#5§;
      
      private var §+!I§:§[C§;
      
      private var §%>§:§;g§;
      
      protected var §8&§:§3!8§;
      
      protected var §1"p§:Timer;
      
      private var §]"1§:§;"[§;
      
      private var §5!G§:§0!2§;
      
      public function §-#$§(param1:int, param2:int, param3:§2#5§)
      {
         super(param1,param2,§^x§.§ '§.Popups.Popup_ExclusiveSales[0],§-"§);
         this.§6!0§ = param3;
         this.§]"1§ = §7"1§(§4"#§.singleton.dataModel).§,!6§;
         this.§5!G§ = §7"1§(§4"#§.singleton.dataModel).§&!w§;
         this.§8&§ = new §3!8§(§4"#§.SERVER_ROOT);
      }
      
      override protected function init() : void
      {
         var _loc1_:MovieClip = §[#,§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §[#,§.getItemByName("Container_Content").mClip;
         _loc2_.mask = _loc1_;
         this.§%>§ = §[#,§.getItemByName("Button_Buy") as §;g§;
         _loc2_.icons.gotoAndStop(this.§6!0§.prices[0].itemID.toLowerCase());
         var _loc3_:int = this.§]"1§.§#!I§(this.§6!0§.prices[0].singlePrice,this.§6!0§.prices[0]);
         _loc2_.salesOffer.text = §-1§.getLocalizedString("shop_" + this.§6!0§.prices[0].itemID.toLowerCase() + "_title");
         _loc2_.salesOffer.text += " x " + this.§]"1§.§=U§(this.§6!0§.prices[0].singlePrice,this.§6!0§.prices[0]);
         _loc2_.salesOffer.text += _loc3_ == 0 ? "" : " + " + _loc3_ + " " + §-1§.getLocalizedString("starcoin_free");
         _loc2_.percentage.text = this.§]"1§.§!!g§(this.§6!0§.prices[0]) + "% off";
         _loc2_.price.text = this.§6!0§.prices[0].price;
         _loc2_.normalPrice.text = this.§6!0§.prices[0].normalPrice;
         if(this.§0!W§() == §+R§)
         {
            this.§%>§.setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
            this.§8&§.§4Q§(this.§2"L§);
         }
         else
         {
            this.§%>§.setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2.toUpperCase())
         {
            case "BUY":
               if(this.§5!G§.§8!J§(this.§6!0§.prices[0].price))
               {
                  this.§5!G§.§&"-§(this.§6!0§.prices[0].price);
                  this.§]"1§.§&!Q§(this.§6!0§.prices[0]);
                  §]!s§.§=""§(this.§6!0§.prices[0].itemID,this.§6!0§.prices[0].price,!!§7"M§ ? 0 : -1);
                  dispatchEvent(new §>"H§(§>"H§.CLOSE,this));
               }
               else
               {
                  this.§8`§();
               }
               return;
            default:
               super.onUIInteraction(param1,param2,param3);
               return;
         }
      }
      
      private function §0!W§() : int
      {
         var _loc1_:§2J§ = §7"1§(§4"#§.singleton.dataModel).§#"_§;
         var _loc2_:int = parseInt(_loc1_.id.charAt(_loc1_.id.length - 1));
         var _loc3_:* = _loc2_ % 2 == 0;
         return !!_loc3_ ? int(§"!5§) : int(§+R§);
      }
      
      protected function §8`§() : void
      {
         if(this.§0!W§() == §"!5§)
         {
            this.§2"2§();
         }
         else
         {
            this.§5a§();
         }
      }
      
      private function §&# §() : void
      {
         if(this.§1"p§)
         {
            this.§1"p§.reset();
            this.§1"p§.removeEventListener(TimerEvent.TIMER,this.§8#0§);
         }
         this.§1"p§ = null;
      }
      
      private function §9"R§() : void
      {
         this.§%>§.setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      private function §8#0§(param1:TimerEvent) : void
      {
         var _loc2_:§,N§ = §7"1§(§4"#§.singleton.dataModel).§=#1§;
         if(_loc2_.isLoaded)
         {
            this.§9"R§();
            this.§&# §();
         }
      }
      
      private function §2"L§(param1:§[C§) : void
      {
         var _loc2_:§,N§ = null;
         if(param1)
         {
            this.§+!I§ = param1;
            _loc2_ = §7"1§(§4"#§.singleton.dataModel).§=#1§;
            if(_loc2_.isLoaded)
            {
               this.§9"R§();
            }
            else
            {
               this.§&# §();
               this.§1"p§ = new Timer(§!"N§,0);
               this.§1"p§.addEventListener(TimerEvent.TIMER,this.§8#0§);
               this.§1"p§.start();
            }
         }
      }
      
      protected function §5a§() : void
      {
         §]!s§.§-"x§(this.§6!0§.prices[0].itemID,1);
         §5"s§.addCallback("purchaseComplete",this.§8"5§);
         var _loc1_:int = this.§3#7§();
         var _loc2_:§9"b§ = new §9"b§(§9"b§.§ w§,_loc1_,-1,"");
         §[!D§.§=##§(_loc2_);
      }
      
      private function §3#7§() : int
      {
         var _loc5_:int = 0;
         var _loc1_:int = this.§6!0§.prices[0].price - this.§5!G§.starCoins;
         var _loc2_:int = int.MAX_VALUE;
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§+!I§.items.length)
         {
            if((_loc5_ = this.§+!I§.items[_loc4_].quantity) >= _loc1_ && _loc5_ < _loc2_)
            {
               _loc3_ = _loc5_;
               _loc2_ = _loc3_;
            }
            _loc4_++;
         }
         if(_loc3_ > this.§6!0§.prices[0].price || _loc3_ == -1)
         {
            _loc3_ = this.§6!0§.prices[0].price;
         }
         return _loc3_;
      }
      
      private function §8"5§() : void
      {
         this.§5!G§.§&"-§(this.§6!0§.prices[0].price);
         this.§]"1§.§&!Q§(this.§6!0§.prices[0]);
         §]!s§.§=""§(this.§6!0§.prices[0].itemID,this.§6!0§.prices[0].price,1);
         dispatchEvent(new §>"H§(§>"H§.CLOSE,this));
      }
      
      protected function §2"2§() : void
      {
         §7"M§ = true;
         §]!s§.§-"x§(this.§6!0§.prices[0].itemID,0);
         var _loc1_:§3!§ = §^!Q§.§>"[§(§^!S§.§'"c§,§2!s§.TOP,§^!Q§.§5!5§);
         §4"#§.singleton.popupManager.openPopup(_loc1_,true,true);
      }
      
      override public function dispose() : void
      {
         this.§&# §();
         this.§8&§.dispose();
         §5"s§.§@"-§("purchaseComplete",this.§8"5§);
         super.dispose();
      }
   }
}
