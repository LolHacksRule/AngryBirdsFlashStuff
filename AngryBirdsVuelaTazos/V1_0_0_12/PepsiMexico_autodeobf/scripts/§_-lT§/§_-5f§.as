package §_-lT§
{
   public class §_-5f§ implements §_-g7§
   {
       
      
      private var §_-qa§:Number;
      
      private var §_-qz§:Number;
      
      private var §_-Ag§:Number;
      
      public function §_-5f§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-Ag§ = param1;
         this.§_-qa§ = param2;
         this.§_-qz§ = param3;
      }
      
      public function §_-EE§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 < 0 ? Number(-this.§_-Ag§) : Number(this.§_-Ag§);
         var _loc4_:Number = param2 < 0 ? Number(-this.§_-qa§) : Number(this.§_-qa§);
         return (-_loc3_ + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)) * (1 / this.§_-qz§);
      }
      
      public function §_-YJ§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param3 < 0 ? Number(-1) : Number(1);
         var _loc5_:Number = param1 / (1 / this.§_-qz§);
         return param2 + _loc4_ * this.§_-Ag§ * _loc5_ + _loc4_ * this.§_-qa§ * _loc5_ * _loc5_ / 2;
      }
   }
}
