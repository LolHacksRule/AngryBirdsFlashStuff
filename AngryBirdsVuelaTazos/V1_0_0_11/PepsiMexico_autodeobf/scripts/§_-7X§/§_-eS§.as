package §_-7X§
{
   public class §_-eS§ implements §_-R-§
   {
       
      
      private var §_-qn§:Number;
      
      private var §_-Pl§:Number;
      
      private var §_-tW§:Number;
      
      public function §_-eS§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-tW§ = param1;
         this.§_-qn§ = param2;
         this.§_-Pl§ = param3;
      }
      
      public function §_-bj§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 < 0 ? Number(-this.§_-tW§) : Number(this.§_-tW§);
         var _loc4_:Number = param2 < 0 ? Number(-this.§_-qn§) : Number(this.§_-qn§);
         return (-_loc3_ + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)) * (1 / this.§_-Pl§);
      }
      
      public function §_-OY§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param3 < 0 ? Number(-1) : Number(1);
         var _loc5_:Number = param1 / (1 / this.§_-Pl§);
         return param2 + _loc4_ * this.§_-tW§ * _loc5_ + _loc4_ * this.§_-qn§ * _loc5_ * _loc5_ / 2;
      }
   }
}
