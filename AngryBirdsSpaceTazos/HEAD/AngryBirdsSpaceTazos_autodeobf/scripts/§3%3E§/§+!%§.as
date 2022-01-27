package §3>§
{
   public class §+!%§ extends §-f§
   {
       
      
      protected var §,Y§:String;
      
      protected var §7B§:String;
      
      protected var §=V§:String;
      
      protected var §-!m§:String;
      
      protected var §9&§:String;
      
      public function §+!%§(param1:Object, param2:int, param3:§!4§, param4:§=!Z§, param5:int, param6:Boolean = false, param7:§%5§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§,Y§ = param1.spriteFreeze;
         this.§7B§ = param1.damageSound;
         this.§=V§ = param1.collisionSound;
         this.§9&§ = param1.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.§7B§)
         {
            return this.§7B§;
         }
         return §>B§;
      }
      
      override public function get collisionSound() : String
      {
         if(this.§=V§)
         {
            return this.§=V§;
         }
         return §!@§;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.§9&§)
         {
            return this.§9&§;
         }
         return §0$§;
      }
      
      public function get §&";§() : String
      {
         return this.§-!m§;
      }
   }
}
