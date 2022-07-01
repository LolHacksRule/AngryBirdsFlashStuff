package §4"4§
{
   public class §[!Q§ implements §-!G§
   {
       
      
      private var §?@§:Number;
      
      private var §>!<§:Number;
      
      private var §=",§:Number;
      
      public function §[!Q§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§=",§ = param1;
         this.§?@§ = param2;
         this.§>!<§ = param3;
      }
      
      public function §'"!§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 < 0 ? Number(-this.§=",§) : Number(this.§=",§);
         var _loc4_:Number = param2 < 0 ? Number(-this.§?@§) : Number(this.§?@§);
         return (-_loc3_ + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)) * (1 / this.§>!<§);
      }
      
      public function §&w§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param3 < 0 ? Number(-1) : Number(1);
         var _loc5_:Number = param1 / (1 / this.§>!<§);
         return param2 + _loc4_ * this.§=",§ * _loc5_ + _loc4_ * this.§?@§ * _loc5_ * _loc5_ / 2;
      }
   }
}
