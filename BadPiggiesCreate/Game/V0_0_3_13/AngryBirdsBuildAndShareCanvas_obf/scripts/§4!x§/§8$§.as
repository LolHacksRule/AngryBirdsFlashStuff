package §4!x§
{
   public class §8$§ implements §7"?§
   {
       
      
      private var §["$§:Number;
      
      private var §7!M§:Number;
      
      private var §`t§:Number;
      
      public function §8$§(param1:Number, param2:Number, param3:Number)
      {
         super();
         this.§7!M§ = param1;
         this.§["$§ = param2;
         this.§`t§ = param3;
      }
      
      public function §3w§(param1:Number, param2:Number) : Number
      {
         return (Math.log(this.§["$§ / param2) / Math.log(1 - this.§7!M§) + 1) * (1 / this.§`t§);
      }
      
      public function §%!"§(param1:Number, param2:Number, param3:Number) : Number
      {
         return -param3 * Math.pow(1 - this.§7!M§,param1 / (1 / this.§`t§) - 1) + (param2 + param3);
      }
   }
}
