package §4!r§
{
   public class §;s§ implements §[!m§
   {
       
      
      private var §8!o§:Number;
      
      private var §"!]§:Number;
      
      private var §9T§:Number;
      
      public function §;s§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§"!]§ = param1;
         this.§8!o§ = param2;
         this.§9T§ = param3;
      }
      
      public function §2!R§(param1:Number, param2:Number) : Number
      {
         return (Math.log(this.§8!o§ / param2) / Math.log(1 - this.§"!]§) + 1) * (1 / this.§9T§);
      }
      
      public function §-1§(param1:Number, param2:Number, param3:Number) : Number
      {
         return -param3 * Math.pow(1 - this.§"!]§,param1 / (1 / this.§9T§) - 1) + (param2 + param3);
      }
   }
}
