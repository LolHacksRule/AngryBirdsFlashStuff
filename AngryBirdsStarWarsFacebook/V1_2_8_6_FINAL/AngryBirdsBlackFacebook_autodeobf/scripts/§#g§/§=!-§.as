package §#g§
{
   public class §=!-§ extends §5!M§
   {
       
      
      protected var §2-§:String;
      
      protected var §^$§:String;
      
      protected var §7"Z§:String;
      
      protected var §`">§:String;
      
      protected var §]"b§:String;
      
      public function §=!-§(param1:Object, param2:int, param3:§!+§, param4:§^i§, param5:int, param6:Boolean = false, param7:§?B§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§2-§ = param1.spriteFreeze;
         this.§^$§ = param1.damageSound;
         this.§7"Z§ = param1.collisionSound;
         this.§]"b§ = param1.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.§^$§)
         {
            return this.§^$§;
         }
         return §+!`§;
      }
      
      override public function get collisionSound() : String
      {
         if(this.§7"Z§)
         {
            return this.§7"Z§;
         }
         return §[#%§;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.§]"b§)
         {
            return this.§]"b§;
         }
         return §9!=§;
      }
      
      public function get §9!o§() : String
      {
         return this.§`">§;
      }
   }
}
