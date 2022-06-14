package §-!+§
{
   public class §5!!§ extends §<i§
   {
       
      
      protected var §@"5§:Number = -1;
      
      public function §5!!§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§;!B§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§;!B§ = null;
         var _loc1_:int = §%!G§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §%!G§[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= §`X§ || _loc2_.y <= -this.§36§)
            {
               §3^§.removeChild(_loc2_);
               §%!G§.splice(§%!G§.indexOf(_loc2_),1);
               §>!^§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §>">§.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.§36§ && _loc3_ < §`X§ && !§-m§(_loc1_))
            {
               _loc4_ = §17§();
               §3^§.addChild(_loc4_);
               _loc4_.data = §>">§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               §%!G§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get §36§() : Number
      {
         var _loc1_:§;!B§ = null;
         if(this.§@"5§ == -1)
         {
            _loc1_ = §17§();
            this.§@"5§ = _loc1_.height;
            §>!^§(_loc1_);
         }
         return this.§@"5§;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         §9`§ = Math.floor(§`X§ / (this.§36§ + §<"@§));
      }
      
      override protected function calculateMargin() : void
      {
         §[!8§ = Math.min((§`X§ - §`!N§ * this.§36§) / §`!N§,§'!$§);
      }
      
      public function §7!Y§(param1:Number) : void
      {
         var _loc2_:§;!B§ = null;
         §`X§ = §3^§.mask.height = param1;
         this.calculateMaxItemsVisible();
         §`!N§ = Math.min(§9`§,§>">§.length);
         §[!8§ = Math.min((§`X§ - §`!N§ * this.§36§) / §`!N§,§'!$§);
         while(§%!G§.length > §9`§)
         {
            _loc2_ = §%!G§.pop();
            §3^§.removeChild(_loc2_);
            §>!^§(_loc2_);
         }
         §0[§(0);
         §>!X§ = §7x§;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         throw new Error("This function is for HScroller. Use setHeight() instead.");
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(§[!8§ / 2 + (param1 + §>!X§) * (this.§36§ + §[!8§));
      }
   }
}
