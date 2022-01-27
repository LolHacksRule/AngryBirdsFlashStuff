package §8"'§
{
   import §!b§.§]!s§;
   import §+"Y§.§-#$§;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §9"U§.§;"[§;
   import §98§.§2§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §8#2§
   {
       
      
      protected var §="L§:MovieClip;
      
      protected var §]"1§:§;"[§;
      
      protected var §6!0§:§2#5§;
      
      public function §8#2§(param1:MovieClip, param2:§;"[§)
      {
         super();
         this.§="L§ = param1;
         this.§]"1§ = param2;
         this.init();
      }
      
      private function init() : void
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<§2#5§> = this.§@_§(this.§]"1§);
         if(this.§]"1§.§"y§ && _loc1_.length >= 1)
         {
            this.§6!0§ = _loc1_[0];
            _loc2_ = "-" + this.§]"1§.§!!g§(this.§6!0§.prices[0]) + "%";
            MovieClip(this.§="L§.MovieClip_OfferSign).offerTexts.percentage.txtLabel.text = _loc2_;
            this.§="L§.visible = true;
            this.§="L§.itemIcon.gotoAndStop(this.§6!0§.prices[0].itemID.toLowerCase());
            MovieClip(this.§="L§._hitArea).buttonMode = true;
            MovieClip(this.§="L§._hitArea).addEventListener(MouseEvent.CLICK,this.§ "=§);
         }
         else
         {
            this.§="L§.visible = false;
         }
      }
      
      public function dispose() : void
      {
         MovieClip(this.§="L§._hitArea).removeEventListener(MouseEvent.CLICK,this.§ "=§);
      }
      
      protected function §@_§(param1:§;"[§) : Vector.<§2#5§>
      {
         var _loc4_:Dictionary = null;
         var _loc5_:* = null;
         var _loc6_:§2#5§ = null;
         var _loc2_:Vector.<§2#5§> = new Vector.<§2#5§>(0);
         if(param1.§"y§)
         {
            _loc4_ = param1.§"y§.discounts;
            for(_loc5_ in _loc4_)
            {
               _loc6_ = §2#5§(_loc4_[_loc5_]);
               _loc2_.push(_loc6_);
               if(_loc2_.length >= 1)
               {
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      private function § "=§(param1:MouseEvent) : void
      {
         §]!s§.§9!w§(this.§6!0§.prices[0].itemID);
         §-#$§.§7"M§ = false;
         var _loc2_:§3!§ = new §-#$§(§^!S§.§'"c§,§2!s§.TOP,this.§6!0§);
         §4"#§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
   }
}
