package §8#K§
{
   public class §;"[§ extends § !=§
   {
       
      
      protected var §["X§:String;
      
      protected var §=#w§:String;
      
      protected var §-"M§:String;
      
      protected var §?!Z§:String;
      
      protected var §-#4§:String;
      
      public function §;"[§(param1:Object, param2:int, param3:§+#y§, param4:§8$-§, param5:int, param6:Boolean = false, param7:§ !q§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§["X§ = param1.spriteFreeze;
         this.§=#w§ = param1.damageSound;
         this.§-"M§ = param1.collisionSound;
         this.§-#4§ = param1.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.§=#w§)
         {
            return this.§=#w§;
         }
         return materialDamageSound;
      }
      
      override public function get collisionSound() : String
      {
         if(this.§-"M§)
         {
            return this.§-"M§;
         }
         return materialCollisionSound;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.§-#4§)
         {
            return this.§-#4§;
         }
         return materialDestroyedSound;
      }
      
      public function get §4#,§() : String
      {
         return this.§?!Z§;
      }
   }
}
