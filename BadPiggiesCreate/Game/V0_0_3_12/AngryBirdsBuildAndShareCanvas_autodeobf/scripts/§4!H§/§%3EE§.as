package §4!H§
{
   public class §>E§ implements §05§
   {
       
      
      private var §[X§:Number;
      
      private var §]!t§:Number;
      
      private var §2K§:Number;
      
      public function §>E§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§2K§ = param1;
         this.§[X§ = param2;
         this.§]!t§ = param3;
      }
      
      public function §2!j§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 < 0 ? Number(-this.§2K§) : Number(this.§2K§);
         var _loc4_:Number = param2 < 0 ? Number(-this.§[X§) : Number(this.§[X§);
         return (-_loc3_ + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)) * (1 / this.§]!t§);
      }
      
      public function §6r§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param3 < 0 ? Number(-1) : Number(1);
         var _loc5_:Number = param1 / (1 / this.§]!t§);
         return param2 + _loc4_ * this.§2K§ * _loc5_ + _loc4_ * this.§[X§ * _loc5_ * _loc5_ / 2;
      }
   }
}
