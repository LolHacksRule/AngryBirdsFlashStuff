package §4!r§
{
   public class §>!9§ implements §[!m§
   {
       
      
      private var §-!o§:Number;
      
      private var §9T§:Number;
      
      private var §>!W§:Number;
      
      public function §>!9§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§>!W§ = param1;
         this.§-!o§ = param2;
         this.§9T§ = param3;
      }
      
      public function §2!R§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 < 0 ? Number(-this.§>!W§) : Number(this.§>!W§);
         var _loc4_:Number = param2 < 0 ? Number(-this.§-!o§) : Number(this.§-!o§);
         return (-_loc3_ + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)) * (1 / this.§9T§);
      }
      
      public function §-1§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param3 < 0 ? Number(-1) : Number(1);
         var _loc5_:Number = param1 / (1 / this.§9T§);
         return param2 + _loc4_ * this.§>!W§ * _loc5_ + _loc4_ * this.§-!o§ * _loc5_ * _loc5_ / 2;
      }
   }
}
