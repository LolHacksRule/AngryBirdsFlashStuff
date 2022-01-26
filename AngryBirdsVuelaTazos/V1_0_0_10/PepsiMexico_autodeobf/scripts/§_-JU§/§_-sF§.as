package §_-JU§
{
   public class §_-sF§ implements §_-Is§
   {
       
      
      private var §_-1t§:Number;
      
      private var §_-Pn§:Number;
      
      private var §_-lq§:Number;
      
      public function §_-sF§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-lq§ = param1;
         this.§_-1t§ = param2;
         this.§_-Pn§ = param3;
      }
      
      public function §_-Fn§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 < 0 ? Number(-this.§_-lq§) : Number(this.§_-lq§);
         var _loc4_:Number = param2 < 0 ? Number(-this.§_-1t§) : Number(this.§_-1t§);
         return (-_loc3_ + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)) * (1 / this.§_-Pn§);
      }
      
      public function §_-WA§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param3 < 0 ? Number(-1) : Number(1);
         var _loc5_:Number = param1 / (1 / this.§_-Pn§);
         return param2 + _loc4_ * this.§_-lq§ * _loc5_ + _loc4_ * this.§_-1t§ * _loc5_ * _loc5_ / 2;
      }
   }
}
