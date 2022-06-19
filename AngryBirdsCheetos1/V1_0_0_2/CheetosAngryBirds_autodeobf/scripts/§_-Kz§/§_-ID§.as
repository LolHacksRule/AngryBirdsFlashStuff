package §_-Kz§
{
   import §_-7T§.§_-yJ§;
   
   public class §_-ID§
   {
       
      
      public var §_-nv§:Number = 0;
      
      public var §_-KC§:Number = 0;
      
      public var §_-38§:Number;
      
      public var §_-6e§:Number;
      
      public function §_-ID§(param1:Number, param2:Number)
      {
         this.§_-38§ = §_-kK§.§_-U0§;
         this.§_-6e§ = §_-kK§.§_-XR§;
         super();
         this.§_-38§ = param1;
         this.§_-6e§ = param2;
         this.§_-nv§ = 0;
         this.§_-KC§ = 0;
      }
      
      public function §_-T4§(param1:§_-yJ§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§_-nv§ < §_-kK§.§_-rx§)
         {
            this.§_-nv§ += param2;
            this.§_-KC§ += this.§_-38§;
            _loc3_ = param2 / §_-kK§.§_-O2§ * this.§_-6e§ * Math.sin(Math.PI / 4 + this.§_-KC§ * 2 * Math.PI);
            _loc4_ = param2 / §_-kK§.§_-O2§ * this.§_-6e§ * Math.sin(this.§_-KC§ * 2.1 * Math.PI);
            this.§_-6e§ -= param2 * §_-kK§.§_-XR§ / §_-kK§.§_-rx§;
            this.§_-38§ -= param2 * §_-kK§.§_-U0§ / §_-kK§.§_-rx§;
            param1.§_-ye§(_loc3_,_loc4_);
            param1.§_-Ja§();
            return true;
         }
         return false;
      }
   }
}
