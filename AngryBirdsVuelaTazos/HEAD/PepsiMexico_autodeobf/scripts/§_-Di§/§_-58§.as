package §_-Di§
{
   import §_-7x§.§_-oH§;
   import §_-7x§.§_-yE§;
   import §_-bu§.§_-Yc§;
   import §_-ym§.§_-7s§;
   
   public class §_-58§
   {
      
      public static const §_-F§:Number = 50;
      
      public static var §_-IJ§:Number = 0;
      
      public static const §_-IM§:Number = 0.5;
      
      public static const §_-pt§:Number = 0;
       
      
      public var §_-fJ§:Number;
      
      public var §_-3Q§:Number;
      
      public var §_-RO§:Number;
      
      public var §_-p7§:Number;
      
      public var §_-I4§:Number;
      
      public var §_-JH§:§_-ix§;
      
      public function §_-58§(param1:§_-ix§, param2:§_-yE§)
      {
         var _loc3_:§_-oH§ = null;
         var _loc4_:§_-Yc§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-JH§ = param1;
         this.§_-fJ§ = int.MAX_VALUE;
         this.§_-3Q§ = int.MIN_VALUE;
         for each(_loc3_ in param2.§_-o9§)
         {
            _loc6_ = 0;
            if(_loc3_.left.toString() != "NaN")
            {
               _loc6_ = (_loc3_.right - _loc3_.left) * 4;
            }
            else
            {
               _loc6_ = §_-ix§.§_-md§ * 4 * §_-ix§.§_-z8§;
            }
            _loc7_ = _loc3_.x - _loc6_ / 2;
            _loc8_ = _loc3_.x + _loc6_ / 2;
            if(_loc7_ < this.§_-fJ§)
            {
               this.§_-fJ§ = _loc7_;
            }
            if(_loc8_ > this.§_-3Q§)
            {
               this.§_-3Q§ = _loc8_;
            }
         }
         for each(_loc4_ in param2.§_-dD§)
         {
            if(_loc4_.x < this.§_-fJ§)
            {
               this.§_-fJ§ = _loc4_.x;
            }
            if(_loc4_.x > this.§_-3Q§)
            {
               this.§_-3Q§ = _loc4_.x;
            }
         }
         _loc5_ = 0.1 * §_-ix§.§_-md§ * §_-ix§.§_-z8§;
         this.§_-fJ§ -= _loc5_;
         this.§_-3Q§ += _loc5_;
         this.§_-I4§ = §_-ix§.§_-md§ * §_-ix§.§_-z8§ / (this.§_-3Q§ - this.§_-fJ§);
         this.§_-I4§ = Math.max(this.§_-I4§,§_-7s§.§_-k6§);
         this.§_-p7§ = §_-pt§;
         this.§_-RO§ = this.§_-p7§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §_-xU§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§_-RO§ || param2 > this.§_-p7§ + 50 || param1 < this.§_-fJ§ || param1 > this.§_-3Q§)
         {
            return true;
         }
         return false;
      }
   }
}
