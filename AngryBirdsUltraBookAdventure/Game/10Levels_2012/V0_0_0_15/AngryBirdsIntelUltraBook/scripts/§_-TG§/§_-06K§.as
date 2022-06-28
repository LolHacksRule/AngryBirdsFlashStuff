package §_-TG§
{
   import §_-JK§.§_-S2§;
   
   public class §_-06K§
   {
       
      
      public var §_-097§:Number = 0;
      
      public var §_-01G§:Number = 0;
      
      public var §_-DA§:Number;
      
      public var §_-hy§:Number;
      
      public function §_-06K§(param1:Number, param2:Number)
      {
         this.§_-DA§ = §_-L8§.§_-0Ca§;
         this.§_-hy§ = §_-L8§.§_-ty§;
         super();
         this.§_-DA§ = param1;
         this.§_-hy§ = param2;
         this.§_-097§ = 0;
         this.§_-01G§ = 0;
      }
      
      public function §_-JO§(param1:§_-S2§, param2:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§_-097§ < §_-L8§.§_-9G§)
         {
            this.§_-097§ += param2;
            this.§_-01G§ += this.§_-DA§;
            _loc3_ = param2 / §_-L8§.§_-2j§ * this.§_-hy§ * Math.sin(Math.PI / 4 + this.§_-01G§ * 2 * Math.PI);
            _loc4_ = param2 / §_-L8§.§_-2j§ * this.§_-hy§ * Math.sin(this.§_-01G§ * 2.1 * Math.PI);
            this.§_-hy§ -= param2 * §_-L8§.§_-ty§ / §_-L8§.§_-9G§;
            this.§_-DA§ -= param2 * §_-L8§.§_-0Ca§ / §_-L8§.§_-9G§;
            param1.§_-WK§(_loc3_,_loc4_);
            param1.§_-S-§();
            return true;
         }
         return false;
      }
   }
}
