package §_-2r§
{
   import §_-TC§.§_-uk§;
   
   public class §_-z-§
   {
       
      
      public var §_-kG§:Number = 0;
      
      public var §_-Gv§:Number = 0;
      
      public var §_-7L§:Number;
      
      public var §_-sj§:Number;
      
      public function §_-z-§(param1:Number, param2:Number)
      {
         this.§_-7L§ = §_-nb§.§_-wL§;
         this.§_-sj§ = §_-nb§.§_-EF§;
         super();
         this.§_-7L§ = param1;
         this.§_-sj§ = param2;
         this.§_-kG§ = 0;
         this.§_-Gv§ = 0;
      }
      
      public function §_-hn§(param1:§_-uk§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§_-kG§ < §_-nb§.§_-P1§)
         {
            this.§_-kG§ += param2;
            this.§_-Gv§ += this.§_-7L§;
            _loc3_ = param2 / §_-nb§.§_-xV§ * this.§_-sj§ * Math.sin(Math.PI / 4 + this.§_-Gv§ * 2 * Math.PI);
            _loc4_ = param2 / §_-nb§.§_-xV§ * this.§_-sj§ * Math.sin(this.§_-Gv§ * 2.1 * Math.PI);
            this.§_-sj§ -= param2 * §_-nb§.§_-EF§ / §_-nb§.§_-P1§;
            this.§_-7L§ -= param2 * §_-nb§.§_-wL§ / §_-nb§.§_-P1§;
            param1.§_-Mc§(_loc3_,_loc4_);
            param1.§_-xw§();
            return true;
         }
         return false;
      }
   }
}
