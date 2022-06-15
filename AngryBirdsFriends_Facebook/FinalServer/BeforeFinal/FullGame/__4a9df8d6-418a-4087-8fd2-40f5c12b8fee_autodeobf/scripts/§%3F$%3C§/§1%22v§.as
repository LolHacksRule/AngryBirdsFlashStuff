package §?$<§
{
   public class §1"v§ extends §<#x§
   {
       
      
      protected var §'x§:String;
      
      protected var § "2§:String;
      
      protected var §+!>§:String;
      
      protected var §%$<§:String;
      
      protected var § !M§:String;
      
      public function §1"v§(param1:Object, param2:int, param3:§;<§, param4:§9!V§, param5:int, param6:Boolean = false, param7:§^#1§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§'x§ = param1.spriteFreeze;
         this.§ "2§ = param1.damageSound;
         this.§+!>§ = param1.collisionSound;
         this.§ !M§ = param1.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.§ "2§)
         {
            return this.§ "2§;
         }
         return materialDamageSound;
      }
      
      override public function get collisionSound() : String
      {
         if(this.§+!>§)
         {
            return this.§+!>§;
         }
         return materialCollisionSound;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.§ !M§)
         {
            return this.§ !M§;
         }
         return materialDestroyedSound;
      }
      
      public function get §&!R§() : String
      {
         return this.§%$<§;
      }
   }
}
