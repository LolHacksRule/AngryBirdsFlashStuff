package §_-Wa§
{
   public class §_-gz§ implements §_-8X§
   {
       
      
      private var §_-Rs§:Number;
      
      private var §_-Hq§:Number;
      
      private var §_-8T§:Number;
      
      public function §_-gz§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-8T§ = param1;
         this.§_-Rs§ = param2;
         this.§_-Hq§ = param3;
      }
      
      public function §_-6-§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 < 0 ? Number(-this.§_-8T§) : Number(this.§_-8T§);
         var _loc4_:Number = param2 < 0 ? Number(-this.§_-Rs§) : Number(this.§_-Rs§);
         return (-_loc3_ + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)) * (1 / this.§_-Hq§);
      }
      
      public function §_-eV§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param3 < 0 ? Number(-1) : Number(1);
         var _loc5_:Number = param1 / (1 / this.§_-Hq§);
         return param2 + _loc4_ * this.§_-8T§ * _loc5_ + _loc4_ * this.§_-Rs§ * _loc5_ * _loc5_ / 2;
      }
   }
}
