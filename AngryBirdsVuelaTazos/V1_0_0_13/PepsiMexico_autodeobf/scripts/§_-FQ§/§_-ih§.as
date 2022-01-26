package §_-FQ§
{
   import §_-Jm§.§_-GP§;
   import §_-PS§.§_-sq§;
   import §_-PS§.§_-zG§;
   
   public class §_-ih§
   {
      
      public static const §_-DS§:Number = 50;
      
      public static var §_-ea§:Number = 0;
      
      public static const §_-R0§:Number = 0.5;
      
      public static const §_-yX§:Number = 0;
       
      
      public var §_-GZ§:Number;
      
      public var §_-u-§:Number;
      
      public var §_-bq§:Number;
      
      public var §_-X1§:Number;
      
      public var §_-dr§:Number;
      
      public var §_-6q§:§_-7W§;
      
      public function §_-ih§(param1:§_-7W§, param2:§_-sq§)
      {
         var _loc3_:§_-zG§ = null;
         var _loc4_:§_-GP§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-6q§ = param1;
         this.§_-GZ§ = int.MAX_VALUE;
         this.§_-u-§ = int.MIN_VALUE;
         for each(_loc3_ in param2.§_-PR§)
         {
            _loc6_ = 0;
            if(_loc3_.left.toString() != "NaN")
            {
               _loc6_ = (_loc3_.right - _loc3_.left) * 4;
            }
            else
            {
               _loc6_ = §_-7W§.§_-8G§ * 4 * §_-7W§.§_-hT§;
            }
            _loc7_ = _loc3_.x - _loc6_ / 2;
            _loc8_ = _loc3_.x + _loc6_ / 2;
            if(_loc7_ < this.§_-GZ§)
            {
               this.§_-GZ§ = _loc7_;
            }
            if(_loc8_ > this.§_-u-§)
            {
               this.§_-u-§ = _loc8_;
            }
         }
         for each(_loc4_ in param2.§_-7u§)
         {
            if(_loc4_.x < this.§_-GZ§)
            {
               this.§_-GZ§ = _loc4_.x;
            }
            if(_loc4_.x > this.§_-u-§)
            {
               this.§_-u-§ = _loc4_.x;
            }
         }
         _loc5_ = 0.1 * §_-7W§.§_-8G§ * §_-7W§.§_-hT§;
         this.§_-GZ§ -= _loc5_;
         this.§_-u-§ += _loc5_;
         this.§_-dr§ = §_-7W§.§_-8G§ * §_-7W§.§_-hT§ / (this.§_-u-§ - this.§_-GZ§);
         this.§_-dr§ = Math.max(this.§_-dr§,§_-if§.§_-Dv§);
         this.§_-X1§ = §_-yX§;
         this.§_-bq§ = this.§_-X1§ - 200;
      }
      
      public function clear() : void
      {
      }
      
      public function §_-h9§(param1:Number, param2:Number) : Boolean
      {
         if(param2 < this.§_-bq§ || param2 > this.§_-X1§ + 50 || param1 < this.§_-GZ§ || param1 > this.§_-u-§)
         {
            return true;
         }
         return false;
      }
   }
}
