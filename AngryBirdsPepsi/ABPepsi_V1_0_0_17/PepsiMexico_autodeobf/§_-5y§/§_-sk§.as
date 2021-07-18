package §_-5y§
{
   public class §_-sk§ implements §_-Bf§
   {
       
      
      private var §_-yF§:Number;
      
      private var §_-s-§:Number;
      
      private var §_-iP§:Number;
      
      public function §_-sk§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-iP§ = param1;
         this.§_-yF§ = param2;
         this.§_-s-§ = param3;
      }
      
      public function §_-up§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 < 0 ? Number(-this.§_-iP§) : Number(this.§_-iP§);
         var _loc4_:Number = param2 < 0 ? Number(-this.§_-yF§) : Number(this.§_-yF§);
         return (-_loc3_ + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)) * (1 / this.§_-s-§);
      }
      
      public function §_-3u§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param3 < 0 ? Number(-1) : Number(1);
         var _loc5_:Number = param1 / (1 / this.§_-s-§);
         return param2 + _loc4_ * this.§_-iP§ * _loc5_ + _loc4_ * this.§_-yF§ * _loc5_ * _loc5_ / 2;
      }
   }
}
