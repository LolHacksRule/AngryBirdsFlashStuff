package §9g§
{
   public class §[!$§ implements §-f§
   {
       
      
      private var §7_§:Number;
      
      private var §[!f§:Number;
      
      private var §1" §:Number;
      
      public function §[!$§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§1" § = param1;
         this.§7_§ = param2;
         this.§[!f§ = param3;
      }
      
      public function §5!I§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 < 0 ? Number(-this.§1" §) : Number(this.§1" §);
         var _loc4_:Number = param2 < 0 ? Number(-this.§7_§) : Number(this.§7_§);
         return (-_loc3_ + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)) * (1 / this.§[!f§);
      }
      
      public function §<!"§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param3 < 0 ? Number(-1) : Number(1);
         var _loc5_:Number = param1 / (1 / this.§[!f§);
         return param2 + _loc4_ * this.§1" § * _loc5_ + _loc4_ * this.§7_§ * _loc5_ * _loc5_ / 2;
      }
   }
}
