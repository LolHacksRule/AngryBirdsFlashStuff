package §4!x§
{
   public class §0]§ implements §7"?§
   {
       
      
      private var §39§:Number;
      
      private var §`t§:Number;
      
      private var §"%§:Number;
      
      public function §0]§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§"%§ = param1;
         this.§39§ = param2;
         this.§`t§ = param3;
      }
      
      public function §3w§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 < 0 ? Number(-this.§"%§) : Number(this.§"%§);
         var _loc4_:Number = param2 < 0 ? Number(-this.§39§) : Number(this.§39§);
         return (-_loc3_ + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)) * (1 / this.§`t§);
      }
      
      public function §%!"§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param3 < 0 ? Number(-1) : Number(1);
         var _loc5_:Number = param1 / (1 / this.§`t§);
         return param2 + _loc4_ * this.§"%§ * _loc5_ + _loc4_ * this.§39§ * _loc5_ * _loc5_ / 2;
      }
   }
}
