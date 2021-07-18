package §2p§
{
   public class §'!B§ implements §1>§
   {
       
      
      private var §[<§:Number;
      
      private var §=e§:Number;
      
      private var § 5§:Number;
      
      public function §'!B§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§ 5§ = param1;
         this.§[<§ = param2;
         this.§=e§ = param3;
      }
      
      public function §0G§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 < 0 ? Number(-this.§ 5§) : Number(this.§ 5§);
         var _loc4_:Number = param2 < 0 ? Number(-this.§[<§) : Number(this.§[<§);
         return (-_loc3_ + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)) * (1 / this.§=e§);
      }
      
      public function §6^§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param3 < 0 ? Number(-1) : Number(1);
         var _loc5_:Number = param1 / (1 / this.§=e§);
         return param2 + _loc4_ * this.§ 5§ * _loc5_ + _loc4_ * this.§[<§ * _loc5_ * _loc5_ / 2;
      }
   }
}
