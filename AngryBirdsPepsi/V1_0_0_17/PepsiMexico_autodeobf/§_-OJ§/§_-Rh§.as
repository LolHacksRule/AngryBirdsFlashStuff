package §_-OJ§
{
   public class §_-Rh§
   {
       
      
      public var §_-qY§:Number = 0;
      
      public var §_-0j§:Number = 0;
      
      public var §_-1t§:Number;
      
      public var §_-2o§:Number;
      
      public function §_-Rh§(param1:Number, param2:Number)
      {
         this.§_-1t§ = §_-EQ§.§_-uy§;
         this.§_-2o§ = §_-EQ§.§_-AC§;
         super();
         this.§_-1t§ = param1;
         this.§_-2o§ = param2;
         this.§_-qY§ = 0;
         this.§_-0j§ = 0;
      }
      
      public function §_-Nq§(param1:§_-LW§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§_-qY§ < §_-EQ§.§_-et§)
         {
            this.§_-qY§ += param2;
            this.§_-0j§ += this.§_-1t§;
            _loc3_ = param2 / §_-EQ§.§_-v0§ * this.§_-2o§ * Math.sin(Math.PI / 4 + this.§_-0j§ * 2 * Math.PI);
            _loc4_ = param2 / §_-EQ§.§_-v0§ * this.§_-2o§ * Math.sin(this.§_-0j§ * 2.1 * Math.PI);
            this.§_-2o§ -= param2 * §_-EQ§.§_-AC§ / §_-EQ§.§_-et§;
            this.§_-1t§ -= param2 * §_-EQ§.§_-uy§ / §_-EQ§.§_-et§;
            param1.§_-dU§(_loc3_,_loc4_);
            param1.§_-Lp§();
            return true;
         }
         return false;
      }
   }
}
