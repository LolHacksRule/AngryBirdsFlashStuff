package §_-0-K§
{
   import §_-5b§.§_-Vj§;
   import §_-5b§.§_-z2§;
   import §_-yz§.§_-zJ§;
   import override.§_-Eu§;
   
   public class §_-Fx§
   {
      
      public static const §_-QY§:Number = 50;
      
      public static var §_-4Z§:Number = 0;
      
      public static const §_-k4§:Number = 0.5;
      
      public static const §_-WJ§:Number = 0;
       
      
      public var §_-7Y§:Number;
      
      public var §_-KL§:Number;
      
      public var §_-Qz§:Number;
      
      public var §_-gM§:Number;
      
      public var §_-zx§:Number;
      
      public var §_-mC§:§_-FL§;
      
      public function §_-Fx§(param1:§_-FL§, param2:§_-Vj§)
      {
         var _loc3_:§_-z2§ = null;
         var _loc4_:§_-zJ§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-mC§ = param1;
         this.§_-7Y§ = int.MAX_VALUE;
         this.§_-KL§ = int.MIN_VALUE;
         for each(_loc3_ in param2.§_-K3§)
         {
            _loc6_ = 0;
            if(_loc3_.left.toString() != "NaN")
            {
               _loc6_ = (_loc3_.right - _loc3_.left) * 4;
            }
            else
            {
               _loc6_ = §_-FL§.§_-DA§ * 4 * §_-FL§.§_-NU§;
            }
            _loc7_ = _loc3_.x - _loc6_ / 2;
            _loc8_ = _loc3_.x + _loc6_ / 2;
            if(_loc7_ < this.§_-7Y§)
            {
               this.§_-7Y§ = _loc7_;
            }
            if(_loc8_ > this.§_-KL§)
            {
               this.§_-KL§ = _loc8_;
            }
         }
         for each(_loc4_ in param2.§_-3P§)
         {
            if(_loc4_.x < this.§_-7Y§)
            {
               this.§_-7Y§ = _loc4_.x;
            }
            if(_loc4_.x > this.§_-KL§)
            {
               this.§_-KL§ = _loc4_.x;
            }
         }
         _loc5_ = 0.1 * §_-FL§.§_-DA§ * §_-FL§.§_-NU§;
         this.§_-7Y§ -= _loc5_;
         this.§_-KL§ += _loc5_;
         this.§_-zx§ = §_-FL§.§_-DA§ * §_-FL§.§_-NU§ / (this.§_-KL§ - this.§_-7Y§);
         this.§_-zx§ = Math.max(this.§_-zx§,§_-Eu§.§_-00-§);
         this.§_-gM§ = §_-WJ§;
         this.§_-Qz§ = this.§_-gM§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §_-05§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§_-Qz§ || param2 > this.§_-gM§ + 50 || param1 < this.§_-7Y§ || param1 > this.§_-KL§)
         {
            return true;
         }
         return false;
      }
   }
}
