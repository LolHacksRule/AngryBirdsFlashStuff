package §=E§
{
   public class §"!I§ extends §="$§
   {
       
      
      protected var §%!z§:Number = -1;
      
      public function §"!I§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§0"1§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§0"1§ = null;
         var _loc1_:int = §%b§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §%b§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §%!N§ || _loc2_.y <= -this.§,!f§)
            {
               §`b§.removeChild(_loc2_);
               §%b§.splice(§%b§.indexOf(_loc2_),1);
               §7!M§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §=]§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§,!f§ && _loc3_ < §%!N§ && !§^"F§(_loc1_))
            {
               _loc4_ = §5'§();
               §`b§.addChild(_loc4_);
               _loc4_.data = §=]§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §%b§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §,!f§() : Number
      {
         var _loc1_:§0"1§ = null;
         if(this.§%!z§ == -1)
         {
            _loc1_ = §5'§();
            this.§%!z§ = _loc1_.height;
            §7!M§(_loc1_);
         }
         return this.§%!z§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §"!M§ = Math.floor(§%!N§ / (this.§,!f§ + §&i§));
      }
      
      override protected function calculateMargin() : void
      {
         §^"E§ = Math.min((§%!N§ - §`!R§ * this.§,!f§) / §`!R§,§<k§);
      }
      
      public function §>"$§(param1:Number) : void
      {
         var _loc2_:§0"1§ = null;
         §%!N§ = §`b§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §`!R§ = Math.min(§"!M§,§=]§.length);
         §^"E§ = Math.min((§%!N§ - §`!R§ * this.§,!f§) / §`!R§,§<k§);
         while(§%b§.length > §"!M§)
         {
            _loc2_ = §%b§.pop();
            §`b§.removeChild(_loc2_);
            §7!M§(_loc2_);
         }
         §61§(0);
         §'_§ = §9s§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         throw new Error("This function is for HScroller. Use setHeight() instead.");
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§^"E§ / 2 + (param1 + §'_§) * (this.§,!f§ + §^"E§));
      }
   }
}
