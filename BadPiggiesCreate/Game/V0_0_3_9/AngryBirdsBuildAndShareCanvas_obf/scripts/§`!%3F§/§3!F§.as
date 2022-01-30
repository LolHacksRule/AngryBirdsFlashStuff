package §`!?§
{
   public class §3!F§ implements §6!K§
   {
       
      
      private var §0O§:Number;
      
      private var §'!S§:Number;
      
      private var §^!p§:Number;
      
      public function §3!F§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§'!S§ = param1;
         this.§0O§ = param2;
         this.§^!p§ = param3;
      }
      
      public function §<!R§(param1:Number, param2:Number) : Number
      {
         return (Math.log(this.§0O§ / param2) / Math.log(1 - this.§'!S§) + 1) * (1 / this.§^!p§);
      }
      
      public function §<l§(param1:Number, param2:Number, param3:Number) : Number
      {
         return -param3 * Math.pow(1 - this.§'!S§,param1 / (1 / this.§^!p§) - 1) + (param2 + param3);
      }
   }
}
