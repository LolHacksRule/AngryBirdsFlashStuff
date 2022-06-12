package §0x§
{
   public class §""4§ implements §?"3§
   {
       
      
      private var §2!+§:Number;
      
      private var §1K§:Number;
      
      private var §56§:Number;
      
      public function §""4§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§56§ = param1;
         this.§2!+§ = param2;
         this.§1K§ = param3;
      }
      
      public function §3!z§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 < 0 ? Number(-this.§56§) : Number(this.§56§);
         var _loc4_:Number = param2 < 0 ? Number(-this.§2!+§) : Number(this.§2!+§);
         return (-_loc3_ + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)) * (1 / this.§1K§);
      }
      
      public function §85§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param3 < 0 ? Number(-1) : Number(1);
         var _loc5_:Number = param1 / (1 / this.§1K§);
         return param2 + _loc4_ * this.§56§ * _loc5_ + _loc4_ * this.§2!+§ * _loc5_ * _loc5_ / 2;
      }
   }
}
