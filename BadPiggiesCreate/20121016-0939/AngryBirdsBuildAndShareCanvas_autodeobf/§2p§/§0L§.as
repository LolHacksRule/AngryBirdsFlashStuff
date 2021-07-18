package §2p§
{
   public class §0L§ implements §1>§
   {
       
      
      private var §!!0§:Number;
      
      private var §#p§:Number;
      
      private var §=e§:Number;
      
      public function §0L§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§#p§ = param1;
         this.§!!0§ = param2;
         this.§=e§ = param3;
      }
      
      public function §0G§(param1:Number, param2:Number) : Number
      {
         return (Math.log(this.§!!0§ / param2) / Math.log(1 - this.§#p§) + 1) * (1 / this.§=e§);
      }
      
      public function §6^§(param1:Number, param2:Number, param3:Number) : Number
      {
         return -param3 * Math.pow(1 - this.§#p§,param1 / (1 / this.§=e§) - 1) + (param2 + param3);
      }
   }
}
