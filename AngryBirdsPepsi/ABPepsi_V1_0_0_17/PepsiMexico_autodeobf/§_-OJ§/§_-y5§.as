package §_-OJ§
{
   import §_-IG§.§_-1E§;
   import §_-Qx§.§_-7x§;
   import §_-Qx§.§_-Wv§;
   
   public class §_-y5§
   {
      
      public static const §_-cS§:Number = 50;
      
      public static var §_-Rl§:Number = 0;
      
      public static const §_-f4§:Number = 0.5;
      
      public static const §_-pH§:Number = 0;
       
      
      public var §_-0x§:Number;
      
      public var §_-ec§:Number;
      
      public var §class§:Number;
      
      public var §_-IL§:Number;
      
      public var §_-Vg§:Number;
      
      public var §_-Ag§:§_-tL§;
      
      public function §_-y5§(param1:§_-tL§, param2:§_-Wv§)
      {
         var _loc3_:§_-7x§ = null;
         var _loc4_:§_-1E§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-Ag§ = param1;
         this.§_-0x§ = int.MAX_VALUE;
         this.§_-ec§ = int.MIN_VALUE;
         for each(_loc3_ in param2.§_-Pg§)
         {
            _loc6_ = 0;
            if(_loc3_.left.toString() != "NaN")
            {
               _loc6_ = (_loc3_.right - _loc3_.left) * 4;
            }
            else
            {
               _loc6_ = §_-tL§.§_-il§ * 4 * §_-tL§.§_-7m§;
            }
            _loc7_ = _loc3_.x - _loc6_ / 2;
            _loc8_ = _loc3_.x + _loc6_ / 2;
            if(_loc7_ < this.§_-0x§)
            {
               this.§_-0x§ = _loc7_;
            }
            if(_loc8_ > this.§_-ec§)
            {
               this.§_-ec§ = _loc8_;
            }
         }
         for each(_loc4_ in param2.§_-yZ§)
         {
            if(_loc4_.x < this.§_-0x§)
            {
               this.§_-0x§ = _loc4_.x;
            }
            if(_loc4_.x > this.§_-ec§)
            {
               this.§_-ec§ = _loc4_.x;
            }
         }
         _loc5_ = 0.1 * §_-tL§.§_-il§ * §_-tL§.§_-7m§;
         this.§_-0x§ -= _loc5_;
         this.§_-ec§ += _loc5_;
         this.§_-Vg§ = §_-tL§.§_-il§ * §_-tL§.§_-7m§ / (this.§_-ec§ - this.§_-0x§);
         this.§_-Vg§ = Math.max(this.§_-Vg§,§_-LW§.§_-KT§);
         this.§_-IL§ = §_-pH§;
         this.§class§ = this.§_-IL§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §_-Kr§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§class§ || param2 > this.§_-IL§ + 50 || param1 < this.§_-0x§ || param1 > this.§_-ec§)
         {
            return true;
         }
         return false;
      }
   }
}
