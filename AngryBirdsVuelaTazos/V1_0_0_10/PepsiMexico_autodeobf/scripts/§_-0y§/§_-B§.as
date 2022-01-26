package §_-0y§
{
   import §_-3P§.§_-Ln§;
   import §_-3P§.§_-ry§;
   import §_-hT§.§_-rE§;
   
   public class §_-B§
   {
      
      public static const §_-5O§:Number = 50;
      
      public static var §_-sY§:Number = 0;
      
      public static const §_-op§:Number = 0.5;
      
      public static const §_-Zf§:Number = 0;
       
      
      public var §_-4J§:Number;
      
      public var §_-ge§:Number;
      
      public var §_-pj§:Number;
      
      public var §_-Ab§:Number;
      
      public var §_-gc§:Number;
      
      public var §_-Ia§:§_-B3§;
      
      public function §_-B§(param1:§_-B3§, param2:§_-ry§)
      {
         var _loc3_:§_-Ln§ = null;
         var _loc4_:§_-rE§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-Ia§ = param1;
         this.§_-4J§ = int.MAX_VALUE;
         this.§_-ge§ = int.MIN_VALUE;
         for each(_loc3_ in param2.§_-wo§)
         {
            _loc6_ = 0;
            if(_loc3_.left.toString() != "NaN")
            {
               _loc6_ = (_loc3_.right - _loc3_.left) * 4;
            }
            else
            {
               _loc6_ = §_-B3§.§_-64§ * 4 * §_-B3§.§_-s8§;
            }
            _loc7_ = _loc3_.x - _loc6_ / 2;
            _loc8_ = _loc3_.x + _loc6_ / 2;
            if(_loc7_ < this.§_-4J§)
            {
               this.§_-4J§ = _loc7_;
            }
            if(_loc8_ > this.§_-ge§)
            {
               this.§_-ge§ = _loc8_;
            }
         }
         for each(_loc4_ in param2.§_-Oe§)
         {
            if(_loc4_.x < this.§_-4J§)
            {
               this.§_-4J§ = _loc4_.x;
            }
            if(_loc4_.x > this.§_-ge§)
            {
               this.§_-ge§ = _loc4_.x;
            }
         }
         _loc5_ = 0.1 * §_-B3§.§_-64§ * §_-B3§.§_-s8§;
         this.§_-4J§ -= _loc5_;
         this.§_-ge§ += _loc5_;
         this.§_-gc§ = §_-B3§.§_-64§ * §_-B3§.§_-s8§ / (this.§_-ge§ - this.§_-4J§);
         this.§_-gc§ = Math.max(this.§_-gc§,§_-Y4§.§_-0O§);
         this.§_-Ab§ = §_-Zf§;
         this.§_-pj§ = this.§_-Ab§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §_-GD§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§_-pj§ || param2 > this.§_-Ab§ + 50 || param1 < this.§_-4J§ || param1 > this.§_-ge§)
         {
            return true;
         }
         return false;
      }
   }
}
