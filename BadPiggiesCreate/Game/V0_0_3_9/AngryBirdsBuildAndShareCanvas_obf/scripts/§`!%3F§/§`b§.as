package §`!?§
{
   public class §`b§ implements §6!K§
   {
       
      
      private var §5z§:Number;
      
      private var §^!p§:Number;
      
      private var §-" §:Number;
      
      public function §`b§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§-" § = param1;
         this.§5z§ = param2;
         this.§^!p§ = param3;
      }
      
      public function §<!R§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 < 0 ? Number(-this.§-" §) : Number(this.§-" §);
         var _loc4_:Number = param2 < 0 ? Number(-this.§5z§) : Number(this.§5z§);
         return (-_loc3_ + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)) * (1 / this.§^!p§);
      }
      
      public function §<l§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param3 < 0 ? Number(-1) : Number(1);
         var _loc5_:Number = param1 / (1 / this.§^!p§);
         return param2 + _loc4_ * this.§-" § * _loc5_ + _loc4_ * this.§5z§ * _loc5_ * _loc5_ / 2;
      }
   }
}
