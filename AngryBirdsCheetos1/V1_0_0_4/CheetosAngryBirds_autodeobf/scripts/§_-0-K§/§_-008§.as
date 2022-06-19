package §_-0-K§
{
   import override.§_-Eu§;
   
   public class §_-008§
   {
       
      
      public var §_-21§:Number = 0;
      
      public var §_-Qk§:Number = 0;
      
      public var §_-BW§:Number;
      
      public var §_-KC§:Number;
      
      public function §_-008§(param1:Number, param2:Number)
      {
         this.§_-BW§ = §_-Yj§.§_-WN§;
         this.§_-KC§ = §_-Yj§.§_-4p§;
         super();
         this.§_-BW§ = param1;
         this.§_-KC§ = param2;
         this.§_-21§ = 0;
         this.§_-Qk§ = 0;
      }
      
      public function §_-JT§(param1:§_-Eu§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§_-21§ < §_-Yj§.§_-0J§)
         {
            this.§_-21§ += param2;
            this.§_-Qk§ += this.§_-BW§;
            _loc3_ = param2 / §_-Yj§.§_-xm§ * this.§_-KC§ * Math.sin(Math.PI / 4 + this.§_-Qk§ * 2 * Math.PI);
            _loc4_ = param2 / §_-Yj§.§_-xm§ * this.§_-KC§ * Math.sin(this.§_-Qk§ * 2.1 * Math.PI);
            this.§_-KC§ -= param2 * §_-Yj§.§_-4p§ / §_-Yj§.§_-0J§;
            this.§_-BW§ -= param2 * §_-Yj§.§_-WN§ / §_-Yj§.§_-0J§;
            param1.§_-EC§(_loc3_,_loc4_);
            param1.§_-af§();
            return true;
         }
         return false;
      }
   }
}
