package §4!H§
{
   public class §5!V§ implements §05§
   {
       
      
      private var §-!f§:Number;
      
      private var §"">§:Number;
      
      private var §]!t§:Number;
      
      public function §5!V§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§"">§ = param1;
         this.§-!f§ = param2;
         this.§]!t§ = param3;
      }
      
      public function §2!j§(param1:Number, param2:Number) : Number
      {
         return (Math.log(this.§-!f§ / param2) / Math.log(1 - this.§"">§) + 1) * (1 / this.§]!t§);
      }
      
      public function §6r§(param1:Number, param2:Number, param3:Number) : Number
      {
         return -param3 * Math.pow(1 - this.§"">§,param1 / (1 / this.§]!t§) - 1) + (param2 + param3);
      }
   }
}
