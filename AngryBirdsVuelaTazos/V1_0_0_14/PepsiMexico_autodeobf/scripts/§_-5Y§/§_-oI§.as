package §_-5Y§
{
   import §_-BQ§.§_-dO§;
   import §_-uh§.§_-US§;
   import §_-uh§.§_-YW§;
   
   public class §_-oI§
   {
      
      public static const §_-Ks§:Number = 50;
      
      public static var §_-VO§:Number = 0;
      
      public static const §_-Ob§:Number = 0.5;
      
      public static const §_-oa§:Number = 0;
       
      
      public var §_-OL§:Number;
      
      public var §_-QL§:Number;
      
      public var §_-Ky§:Number;
      
      public var §_-8B§:Number;
      
      public var §_-pY§:Number;
      
      public var §_-Fx§:§_-yw§;
      
      public function §_-oI§(param1:§_-yw§, param2:§_-US§)
      {
         var _loc3_:§_-YW§ = null;
         var _loc4_:§_-dO§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-Fx§ = param1;
         this.§_-OL§ = int.MAX_VALUE;
         this.§_-QL§ = int.MIN_VALUE;
         for each(_loc3_ in param2.§_-Ha§)
         {
            _loc6_ = 0;
            if(_loc3_.left.toString() != "NaN")
            {
               _loc6_ = (_loc3_.right - _loc3_.left) * 4;
            }
            else
            {
               _loc6_ = §_-yw§.§_-C7§ * 4 * §_-yw§.§_-rO§;
            }
            _loc7_ = _loc3_.x - _loc6_ / 2;
            _loc8_ = _loc3_.x + _loc6_ / 2;
            if(_loc7_ < this.§_-OL§)
            {
               this.§_-OL§ = _loc7_;
            }
            if(_loc8_ > this.§_-QL§)
            {
               this.§_-QL§ = _loc8_;
            }
         }
         for each(_loc4_ in param2.§_-pf§)
         {
            if(_loc4_.x < this.§_-OL§)
            {
               this.§_-OL§ = _loc4_.x;
            }
            if(_loc4_.x > this.§_-QL§)
            {
               this.§_-QL§ = _loc4_.x;
            }
         }
         _loc5_ = 0.1 * §_-yw§.§_-C7§ * §_-yw§.§_-rO§;
         this.§_-OL§ -= _loc5_;
         this.§_-QL§ += _loc5_;
         this.§_-pY§ = §_-yw§.§_-C7§ * §_-yw§.§_-rO§ / (this.§_-QL§ - this.§_-OL§);
         this.§_-pY§ = Math.max(this.§_-pY§,§_-vn§.§_-Al§);
         this.§_-8B§ = §_-oa§;
         this.§_-Ky§ = this.§_-8B§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §_-Uc§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§_-Ky§ || param2 > this.§_-8B§ + 50 || param1 < this.§_-OL§ || param1 > this.§_-QL§)
         {
            return true;
         }
         return false;
      }
   }
}
