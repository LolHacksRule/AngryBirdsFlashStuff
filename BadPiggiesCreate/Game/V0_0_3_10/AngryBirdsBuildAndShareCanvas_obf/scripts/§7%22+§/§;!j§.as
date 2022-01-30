package §7"+§
{
   public class §;!j§ implements §]F§
   {
       
      
      private var §%!i§:Number;
      
      private var §!t§:Number;
      
      private var §>!e§:Number;
      
      public function §;!j§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§!t§ = param1;
         this.§%!i§ = param2;
         this.§>!e§ = param3;
      }
      
      public function §+! §(param1:Number, param2:Number) : Number
      {
         return (Math.log(this.§%!i§ / param2) / Math.log(1 - this.§!t§) + 1) * (1 / this.§>!e§);
      }
      
      public function §2!i§(param1:Number, param2:Number, param3:Number) : Number
      {
         return -param3 * Math.pow(1 - this.§!t§,param1 / (1 / this.§>!e§) - 1) + (param2 + param3);
      }
   }
}
