package §6!M§
{
   public class §6!7§ extends §[]§
   {
       
      
      private var §8"1§:Number;
      
      private var §?!@§:Number;
      
      private var §,V§:Number;
      
      private var §#!"§:Number;
      
      public function §6!7§(param1:Object, param2:int, param3:§8!]§, param4:§=!P§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§8"1§ = param1.sparkleRotationRadius;
         this.§?!@§ = param1.sparkleRotationSpeed;
         this.§,V§ = param1.sparkleRotationTimeBombSpeed;
         this.§#!"§ = param1.sparkleRotationSlingShotSpeed;
      }
      
      public function get sparkleRotationRadius() : Number
      {
         return this.§8"1§;
      }
      
      public function get sparkleRotationSpeed() : Number
      {
         return this.§?!@§;
      }
      
      public function get sparkleRotationTimeBombSpeed() : Number
      {
         return this.§,V§;
      }
      
      public function get sparkleRotationSlingShotSpeed() : Number
      {
         return this.§#!"§;
      }
   }
}
