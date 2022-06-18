package §-!j§
{
   public class §^`§ extends §>!8§
   {
       
      
      protected var §?A§:String;
      
      protected var §-#t§:String;
      
      protected var §-!b§:String;
      
      protected var §'!i§:String;
      
      protected var §@#S§:String;
      
      public function §^`§(param1:Object, param2:int, param3:§5!,§, param4:§&!@§, param5:int, param6:Boolean = false, param7:§4"-§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§?A§ = param1.spriteFreeze;
         this.§-#t§ = param1.damageSound;
         this.§-!b§ = param1.collisionSound;
         this.§@#S§ = param1.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.§-#t§)
         {
            return this.§-#t§;
         }
         return materialDamageSound;
      }
      
      override public function get collisionSound() : String
      {
         if(this.§-!b§)
         {
            return this.§-!b§;
         }
         return materialCollisionSound;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.§@#S§)
         {
            return this.§@#S§;
         }
         return materialDestroyedSound;
      }
      
      public function get §2#o§() : String
      {
         return this.§'!i§;
      }
   }
}
