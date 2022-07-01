package §4"4§
{
   public class §&<§ implements §-!G§
   {
       
      
      private var §5R§:Number;
      
      private var §3!A§:Number;
      
      private var §>!<§:Number;
      
      public function §&<§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§3!A§ = param1;
         this.§5R§ = param2;
         this.§>!<§ = param3;
      }
      
      public function §'"!§(param1:Number, param2:Number) : Number
      {
         return (Math.log(this.§5R§ / param2) / Math.log(1 - this.§3!A§) + 1) * (1 / this.§>!<§);
      }
      
      public function §&w§(param1:Number, param2:Number, param3:Number) : Number
      {
         return -param3 * Math.pow(1 - this.§3!A§,param1 / (1 / this.§>!<§) - 1) + (param2 + param3);
      }
   }
}
