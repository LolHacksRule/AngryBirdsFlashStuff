package §_-Di§
{
   import §_-ym§.§_-7s§;
   
   public class §_-Pm§
   {
       
      
      public var §_-A6§:Number = 0;
      
      public var §_-o8§:Number = 0;
      
      public var §_-6y§:Number;
      
      public var §_-Ag§:Number;
      
      public function §_-Pm§(param1:Number, param2:Number)
      {
         this.§_-6y§ = §_-nT§.§_-GJ§;
         this.§_-Ag§ = §_-nT§.§_-GZ§;
         super();
         this.§_-6y§ = param1;
         this.§_-Ag§ = param2;
         this.§_-A6§ = 0;
         this.§_-o8§ = 0;
      }
      
      public function §_-S-§(param1:§_-7s§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§_-A6§ < §_-nT§.§_-Ss§)
         {
            this.§_-A6§ += param2;
            this.§_-o8§ += this.§_-6y§;
            _loc3_ = param2 / §_-nT§.§_-cx§ * this.§_-Ag§ * Math.sin(Math.PI / 4 + this.§_-o8§ * 2 * Math.PI);
            _loc4_ = param2 / §_-nT§.§_-cx§ * this.§_-Ag§ * Math.sin(this.§_-o8§ * 2.1 * Math.PI);
            this.§_-Ag§ -= param2 * §_-nT§.§_-GZ§ / §_-nT§.§_-Ss§;
            this.§_-6y§ -= param2 * §_-nT§.§_-GJ§ / §_-nT§.§_-Ss§;
            param1.§_-dX§(_loc3_,_loc4_);
            param1.§_-Dh§();
            return true;
         }
         return false;
      }
   }
}
