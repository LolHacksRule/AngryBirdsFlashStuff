package §_-2r§
{
   import §_-T8§.§_-GI§;
   import §_-T8§.§_-Yr§;
   import §_-TC§.§_-uk§;
   import §_-X§.§_-PL§;
   
   public class §_-XE§
   {
      
      public static const §_-7j§:Number = 50;
      
      public static var §_-§:Number = 0;
      
      public static const §_-UT§:Number = 0.5;
      
      public static const §_-GM§:Number = 0;
       
      
      public var §_-FM§:Number;
      
      public var §_-QQ§:Number;
      
      public var §_-9p§:Number;
      
      public var §use§:Number;
      
      public var §_-aO§:Number;
      
      public var §_-5F§:§_-sn§;
      
      public function §_-XE§(param1:§_-sn§, param2:§_-GI§)
      {
         var _loc3_:§_-Yr§ = null;
         var _loc4_:§_-PL§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-5F§ = param1;
         this.§_-FM§ = int.MAX_VALUE;
         this.§_-QQ§ = int.MIN_VALUE;
         for each(_loc3_ in param2.§_-nL§)
         {
            _loc6_ = 0;
            if(_loc3_.left.toString() != "NaN")
            {
               _loc6_ = (_loc3_.right - _loc3_.left) * 4;
            }
            else
            {
               _loc6_ = §_-sn§.§_-MH§ * 4 * §_-sn§.§_-5Y§;
            }
            _loc7_ = _loc3_.x - _loc6_ / 2;
            _loc8_ = _loc3_.x + _loc6_ / 2;
            if(_loc7_ < this.§_-FM§)
            {
               this.§_-FM§ = _loc7_;
            }
            if(_loc8_ > this.§_-QQ§)
            {
               this.§_-QQ§ = _loc8_;
            }
         }
         for each(_loc4_ in param2.§_-l0§)
         {
            if(_loc4_.x < this.§_-FM§)
            {
               this.§_-FM§ = _loc4_.x;
            }
            if(_loc4_.x > this.§_-QQ§)
            {
               this.§_-QQ§ = _loc4_.x;
            }
         }
         _loc5_ = 0.1 * §_-sn§.§_-MH§ * §_-sn§.§_-5Y§;
         this.§_-FM§ -= _loc5_;
         this.§_-QQ§ += _loc5_;
         this.§_-aO§ = §_-sn§.§_-MH§ * §_-sn§.§_-5Y§ / (this.§_-QQ§ - this.§_-FM§);
         this.§_-aO§ = Math.max(this.§_-aO§,§_-uk§.§_-sM§);
         this.§use§ = §_-GM§;
         this.§_-9p§ = this.§use§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §_-Es§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§_-9p§ || param2 > this.§use§ + 50 || param1 < this.§_-FM§ || param1 > this.§_-QQ§)
         {
            return true;
         }
         return false;
      }
   }
}
