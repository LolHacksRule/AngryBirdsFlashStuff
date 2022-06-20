package §?§#3
{
   public class §[!^§ extends §7E§
   {
       
      
      protected var § !T§:String;
      
      protected var §6"Y§:String;
      
      protected var §^!w§:String;
      
      protected var §'$8§:String;
      
      protected var §0#x§:String;
      
      public function §[!^§(param1:Object, param2:int, param3:§7!$§, param4:§4I§, param5:int, param6:Boolean = false, param7:§`"N§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§ !T§ = param1.spriteFreeze;
         this.§6"Y§ = param1.damageSound;
         this.§^!w§ = param1.collisionSound;
         this.§0#x§ = param1.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.§6"Y§)
         {
            return this.§6"Y§;
         }
         return materialDamageSound;
      }
      
      override public function get collisionSound() : String
      {
         if(this.§^!w§)
         {
            return this.§^!w§;
         }
         return materialCollisionSound;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.§0#x§)
         {
            return this.§0#x§;
         }
         return materialDestroyedSound;
      }
      
      public function get §9"Z§() : String
      {
         return this.§'$8§;
      }
   }
}
