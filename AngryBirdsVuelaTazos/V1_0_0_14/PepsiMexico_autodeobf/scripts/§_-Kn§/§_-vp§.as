package §_-kn§
{
   public class §_-vp§ implements §_-kA§
   {
       
      
      private var §_-jl§:Number;
      
      private var §_-Nt§:Number;
      
      private var §_-3x§:Number;
      
      public function §_-vp§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§_-3x§ = param1;
         this.§_-jl§ = param2;
         this.§_-Nt§ = param3;
      }
      
      public function §_-dt§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 < 0 ? Number(-this.§_-3x§) : Number(this.§_-3x§);
         var _loc4_:Number = param2 < 0 ? Number(-this.§_-jl§) : Number(this.§_-jl§);
         return (-_loc3_ + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)) * (1 / this.§_-Nt§);
      }
      
      public function §_-Bq§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param3 < 0 ? Number(-1) : Number(1);
         var _loc5_:Number = param1 / (1 / this.§_-Nt§);
         return param2 + _loc4_ * this.§_-3x§ * _loc5_ + _loc4_ * this.§_-jl§ * _loc5_ * _loc5_ / 2;
      }
   }
}
