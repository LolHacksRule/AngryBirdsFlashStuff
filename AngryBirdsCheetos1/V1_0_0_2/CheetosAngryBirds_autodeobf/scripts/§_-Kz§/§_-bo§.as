package §_-Kz§
{
   import §_-7T§.§_-yJ§;
   import §_-MP§.§_-BI§;
   import §_-MP§.§_-vz§;
   import §_-Ny§.§_-Sv§;
   
   public class §_-bo§
   {
      
      public static const §_-vn§:Number = 50;
      
      public static var § null§:Number = 0;
      
      public static const §_-IW§:Number = 0.5;
      
      public static const §_-j4§:Number = 0;
       
      
      public var §_-o7§:Number;
      
      public var §_-Ei§:Number;
      
      public var §_-BJ§:Number;
      
      public var §_-Ku§:Number;
      
      public var §_-nJ§:Number;
      
      public var §_-GF§:§_-c3§;
      
      public function §_-bo§(param1:§_-c3§, param2:§_-BI§)
      {
         var _loc3_:§_-vz§ = null;
         var _loc4_:§_-Sv§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-GF§ = param1;
         this.§_-o7§ = int.MAX_VALUE;
         this.§_-Ei§ = int.MIN_VALUE;
         for each(_loc3_ in param2.§_-nc§)
         {
            _loc6_ = 0;
            if(_loc3_.left.toString() != "NaN")
            {
               _loc6_ = (_loc3_.right - _loc3_.left) * 4;
            }
            else
            {
               _loc6_ = §_-c3§.§_-6Y§ * 4 * §_-c3§.§_-GA§;
            }
            _loc7_ = _loc3_.x - _loc6_ / 2;
            _loc8_ = _loc3_.x + _loc6_ / 2;
            if(_loc7_ < this.§_-o7§)
            {
               this.§_-o7§ = _loc7_;
            }
            if(_loc8_ > this.§_-Ei§)
            {
               this.§_-Ei§ = _loc8_;
            }
         }
         for each(_loc4_ in param2.§_-uU§)
         {
            if(_loc4_.x < this.§_-o7§)
            {
               this.§_-o7§ = _loc4_.x;
            }
            if(_loc4_.x > this.§_-Ei§)
            {
               this.§_-Ei§ = _loc4_.x;
            }
         }
         _loc5_ = 0.1 * §_-c3§.§_-6Y§ * §_-c3§.§_-GA§;
         this.§_-o7§ -= _loc5_;
         this.§_-Ei§ += _loc5_;
         this.§_-nJ§ = §_-c3§.§_-6Y§ * §_-c3§.§_-GA§ / (this.§_-Ei§ - this.§_-o7§);
         this.§_-nJ§ = Math.max(this.§_-nJ§,§_-yJ§.§_-C6§);
         this.§_-Ku§ = §_-j4§;
         this.§_-BJ§ = this.§_-Ku§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §_-Gl§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§_-BJ§ || param2 > this.§_-Ku§ + 50 || param1 < this.§_-o7§ || param1 > this.§_-Ei§)
         {
            return true;
         }
         return false;
      }
   }
}
