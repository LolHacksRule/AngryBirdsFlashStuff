package §7"&§
{
   public class §[S§ extends §2p§
   {
       
      
      protected var §8!!§:String;
      
      protected var §2$7§:String;
      
      protected var §<!A§:String;
      
      protected var §4$!§:String;
      
      protected var §=$%§:String;
      
      public function §[S§(param1:Object, param2:int, param3:§^"Q§, param4:§>"f§, param5:int, param6:Boolean = false, param7:§8"G§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§8!!§ = param1.spriteFreeze;
         this.§2$7§ = param1.damageSound;
         this.§<!A§ = param1.collisionSound;
         this.§=$%§ = param1.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.§2$7§)
         {
            return this.§2$7§;
         }
         return §4"1§;
      }
      
      override public function get collisionSound() : String
      {
         if(this.§<!A§)
         {
            return this.§<!A§;
         }
         return §&!a§;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.§=$%§)
         {
            return this.§=$%§;
         }
         return §9!+§;
      }
      
      public function get §=$$§() : String
      {
         return this.§4$!§;
      }
   }
}
