package §_-rp§
{
   import §_-Su§.§_-Bk§;
   import §_-Su§.§_-Xk§;
   import §_-wa§.§_-Zg§;
   
   public class §_-lD§
   {
      
      public static const §_-q0§:Number = 50;
      
      public static var §_-V3§:Number = 0;
      
      public static const §_-bc§:Number = 0.5;
      
      public static const §_-UJ§:Number = 0;
       
      
      public var §_-M1§:Number;
      
      public var §_-Kt§:Number;
      
      public var §_-RO§:Number;
      
      public var §_-JX§:Number;
      
      public var §_-0O§:Number;
      
      public var §_-fE§:§_-c5§;
      
      public function §_-lD§(param1:§_-c5§, param2:§_-Xk§)
      {
         var _loc3_:§_-Bk§ = null;
         var _loc4_:§_-Zg§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-fE§ = param1;
         this.§_-M1§ = int.MAX_VALUE;
         this.§_-Kt§ = int.MIN_VALUE;
         for each(_loc3_ in param2.§_-0y§)
         {
            _loc6_ = 0;
            if(_loc3_.left.toString() != "NaN")
            {
               _loc6_ = (_loc3_.right - _loc3_.left) * 4;
            }
            else
            {
               _loc6_ = §_-c5§.§_-Vc§ * 4 * §_-c5§.§_-Wa§;
            }
            _loc7_ = _loc3_.x - _loc6_ / 2;
            _loc8_ = _loc3_.x + _loc6_ / 2;
            if(_loc7_ < this.§_-M1§)
            {
               this.§_-M1§ = _loc7_;
            }
            if(_loc8_ > this.§_-Kt§)
            {
               this.§_-Kt§ = _loc8_;
            }
         }
         for each(_loc4_ in param2.§_-X5§)
         {
            if(_loc4_.x < this.§_-M1§)
            {
               this.§_-M1§ = _loc4_.x;
            }
            if(_loc4_.x > this.§_-Kt§)
            {
               this.§_-Kt§ = _loc4_.x;
            }
         }
         _loc5_ = 0.1 * §_-c5§.§_-Vc§ * §_-c5§.§_-Wa§;
         this.§_-M1§ -= _loc5_;
         this.§_-Kt§ += _loc5_;
         this.§_-0O§ = §_-c5§.§_-Vc§ * §_-c5§.§_-Wa§ / (this.§_-Kt§ - this.§_-M1§);
         this.§_-0O§ = Math.max(this.§_-0O§,§_-Hz§.§_-DI§);
         this.§_-JX§ = §_-UJ§;
         this.§_-RO§ = this.§_-JX§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §_-sx§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§_-RO§ || param2 > this.§_-JX§ + 50 || param1 < this.§_-M1§ || param1 > this.§_-Kt§)
         {
            return true;
         }
         return false;
      }
   }
}
