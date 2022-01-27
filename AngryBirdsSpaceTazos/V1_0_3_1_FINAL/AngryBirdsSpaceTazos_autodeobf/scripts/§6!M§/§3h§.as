package §6!M§
{
   public class §3h§ extends §;!4§
   {
       
      
      protected var §"!q§:String;
      
      protected var §-S§:String;
      
      protected var §@j§:String;
      
      protected var §=c§:String;
      
      protected var §<^§:String;
      
      public function §3h§(param1:Object, param2:int, param3:§8!]§, param4:§=!P§, param5:int, param6:Boolean = false, param7:§=!T§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§"!q§ = param1.spriteFreeze;
         this.§-S§ = param1.damageSound;
         this.§@j§ = param1.collisionSound;
         this.§<^§ = param1.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.§-S§)
         {
            return this.§-S§;
         }
         return §<@§;
      }
      
      override public function get collisionSound() : String
      {
         if(this.§@j§)
         {
            return this.§@j§;
         }
         return §""7§;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.§<^§)
         {
            return this.§<^§;
         }
         return § !^§;
      }
      
      public function get §6d§() : String
      {
         return this.§=c§;
      }
   }
}
