package §_-ez§
{
   import §_-Y-§.§_-Wl§;
   import §_-Y-§.§_-ZB§;
   import §_-th§.§_-WF§;
   
   public class §_-H1§
   {
      
      public static const §_-SS§:Number = 50;
      
      public static var §_-pf§:Number = 0;
      
      public static const §_-v8§:Number = 0.5;
      
      public static const §_-ek§:Number = 0;
       
      
      public var §_-hh§:Number;
      
      public var §_-vX§:Number;
      
      public var §_-dH§:Number;
      
      public var §_-4p§:Number;
      
      public var §_-G3§:Number;
      
      public var §_-9N§:§_-Ay§;
      
      public function §_-H1§(param1:§_-Ay§, param2:§_-Wl§)
      {
         var _loc3_:§_-ZB§ = null;
         var _loc4_:§_-WF§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-9N§ = param1;
         this.§_-hh§ = int.MAX_VALUE;
         this.§_-vX§ = int.MIN_VALUE;
         for each(_loc3_ in param2.§_-Jc§)
         {
            _loc6_ = 0;
            if(_loc3_.left.toString() != "NaN")
            {
               _loc6_ = (_loc3_.right - _loc3_.left) * 4;
            }
            else
            {
               _loc6_ = §_-Ay§.§_-vr§ * 4 * §_-Ay§.§_-G0§;
            }
            _loc7_ = _loc3_.x - _loc6_ / 2;
            _loc8_ = _loc3_.x + _loc6_ / 2;
            if(_loc7_ < this.§_-hh§)
            {
               this.§_-hh§ = _loc7_;
            }
            if(_loc8_ > this.§_-vX§)
            {
               this.§_-vX§ = _loc8_;
            }
         }
         for each(_loc4_ in param2.§_-rp§)
         {
            if(_loc4_.x < this.§_-hh§)
            {
               this.§_-hh§ = _loc4_.x;
            }
            if(_loc4_.x > this.§_-vX§)
            {
               this.§_-vX§ = _loc4_.x;
            }
         }
         _loc5_ = 0.1 * §_-Ay§.§_-vr§ * §_-Ay§.§_-G0§;
         this.§_-hh§ -= _loc5_;
         this.§_-vX§ += _loc5_;
         this.§_-G3§ = §_-Ay§.§_-vr§ * §_-Ay§.§_-G0§ / (this.§_-vX§ - this.§_-hh§);
         this.§_-G3§ = Math.max(this.§_-G3§,§_-8g§.§_-0u§);
         this.§_-4p§ = §_-ek§;
         this.§_-dH§ = this.§_-4p§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §_-1r§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§_-dH§ || param2 > this.§_-4p§ + 50 || param1 < this.§_-hh§ || param1 > this.§_-vX§)
         {
            return true;
         }
         return false;
      }
   }
}
