package §6!M§
{
   public class §?"H§ extends §9`§
   {
       
      
      private var §<!>§:Number;
      
      private var §-!y§:Number;
      
      public function §?"H§(param1:Object, param2:int, param3:§8!]§, param4:§=!P§, param5:int, param6:Boolean = false, param7:§=!T§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§<!>§ = param1.spawnedObjectSpeed;
         this.§-!y§ = param1.specialActivationDelay;
      }
      
      public function get spawnedObjectSpeed() : Number
      {
         return this.§<!>§;
      }
      
      public function get specialActivationDelay() : Number
      {
         return this.§-!y§;
      }
   }
}
