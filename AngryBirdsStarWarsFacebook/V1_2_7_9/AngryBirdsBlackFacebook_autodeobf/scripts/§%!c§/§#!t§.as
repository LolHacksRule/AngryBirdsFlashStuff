package §%!c§
{
   import §0R§.§0!8§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §;q§.§@!h§;
   import §<"s§.§0u§;
   import §<"s§.§6!D§;
   import §`"8§.§6v§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §#!t§
   {
       
      
      protected var §"#7§:MovieClip;
      
      protected var §`"J§:§6v§;
      
      protected var §"!m§:§@!h§;
      
      public function §#!t§(param1:MovieClip, param2:§6v§)
      {
         super();
         this.§"#7§ = param1;
         this.§`"J§ = param2;
         this.init();
      }
      
      private function init() : void
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<§@!h§> = this.§@!>§(this.§`"J§);
         if(this.§`"J§.§@!&§ && _loc1_.length >= 1)
         {
            this.§"!m§ = _loc1_[0];
            _loc2_ = "-" + this.§`"J§.§="K§(this.§"!m§.prices[0]) + "%";
            MovieClip(this.§"#7§.MovieClip_OfferSign).offerTexts.percentage.txtLabel.text = _loc2_;
            this.§"#7§.visible = true;
            this.§"#7§.itemIcon.gotoAndStop(this.§"!m§.prices[0].itemID.toLowerCase());
            MovieClip(this.§"#7§._hitArea).buttonMode = true;
            MovieClip(this.§"#7§._hitArea).addEventListener(MouseEvent.CLICK,this.§@!`§);
         }
         else
         {
            this.§"#7§.visible = false;
         }
      }
      
      public function dispose() : void
      {
         MovieClip(this.§"#7§._hitArea).removeEventListener(MouseEvent.CLICK,this.§@!`§);
      }
      
      protected function §@!>§(param1:§6v§) : Vector.<§@!h§>
      {
         var _loc4_:Dictionary = null;
         var _loc5_:* = null;
         var _loc6_:§@!h§ = null;
         var _loc2_:Vector.<§@!h§> = new Vector.<§@!h§>(0);
         if(param1.§@!&§)
         {
            _loc4_ = param1.§@!&§.discounts;
            for(_loc5_ in _loc4_)
            {
               _loc6_ = §@!h§(_loc4_[_loc5_]);
               _loc2_.push(_loc6_);
               if(_loc2_.length >= 1)
               {
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      private function §@!`§(param1:MouseEvent) : void
      {
         §0!8§.§"!o§(this.§"!m§.prices[0].itemID);
         §6!D§.§6!x§ = false;
         var _loc2_:§5!R§ = new §6!D§(§0u§.§1"J§,§^T§.TOP,this.§"!m§);
         §;"@§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
   }
}
