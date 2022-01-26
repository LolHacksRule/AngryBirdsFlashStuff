package §_-5Y§
{
   public class §_-RW§
   {
       
      
      public var §_-2H§:Number = 0;
      
      public var §_-uF§:Number = 0;
      
      public var §_-Hz§:Number;
      
      public var §_-z1§:Number;
      
      public function §_-RW§(param1:Number, param2:Number)
      {
         this.§_-Hz§ = §_-Lm§.§_-2d§;
         this.§_-z1§ = §_-Lm§.§_-JY§;
         super();
         this.§_-Hz§ = param1;
         this.§_-z1§ = param2;
         this.§_-2H§ = 0;
         this.§_-uF§ = 0;
      }
      
      public function §_-C6§(param1:§_-vn§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§_-2H§ < §_-Lm§.§_-tz§)
         {
            this.§_-2H§ += param2;
            this.§_-uF§ += this.§_-Hz§;
            _loc3_ = param2 / §_-Lm§.§_-IK§ * this.§_-z1§ * Math.sin(Math.PI / 4 + this.§_-uF§ * 2 * Math.PI);
            _loc4_ = param2 / §_-Lm§.§_-IK§ * this.§_-z1§ * Math.sin(this.§_-uF§ * 2.1 * Math.PI);
            this.§_-z1§ -= param2 * §_-Lm§.§_-JY§ / §_-Lm§.§_-tz§;
            this.§_-Hz§ -= param2 * §_-Lm§.§_-2d§ / §_-Lm§.§_-tz§;
            param1.§_-OH§(_loc3_,_loc4_);
            param1.§_-2s§();
            return true;
         }
         return false;
      }
   }
}
