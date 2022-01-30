package §9g§
{
   public class §<!O§ implements §-f§
   {
       
      
      private var §5F§:Number;
      
      private var §9!`§:Number;
      
      private var §[!f§:Number;
      
      public function §<!O§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§9!`§ = param1;
         this.§5F§ = param2;
         this.§[!f§ = param3;
      }
      
      public function §5!I§(param1:Number, param2:Number) : Number
      {
         return (Math.log(this.§5F§ / param2) / Math.log(1 - this.§9!`§) + 1) * (1 / this.§[!f§);
      }
      
      public function §<!"§(param1:Number, param2:Number, param3:Number) : Number
      {
         return -param3 * Math.pow(1 - this.§9!`§,param1 / (1 / this.§[!f§) - 1) + (param2 + param3);
      }
   }
}
