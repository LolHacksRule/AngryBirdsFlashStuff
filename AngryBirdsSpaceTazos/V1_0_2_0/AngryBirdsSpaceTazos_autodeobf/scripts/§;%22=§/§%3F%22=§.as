package §;"=§
{
   public class §?"=§ extends §!!O§
   {
       
      
      protected var §&"F§:String;
      
      protected var §^I§:String;
      
      protected var §;"§:String;
      
      protected var §-"4§:String;
      
      protected var §+m§:String;
      
      public function §?"=§(param1:Object, param2:int, param3:§"!=§, param4:§"!Y§, param5:int, param6:Boolean = false, param7:§-_§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§&"F§ = param1.spriteFreeze;
         this.§^I§ = param1.damageSound;
         this.§;"§ = param1.collisionSound;
         this.§+m§ = param1.frozenKilledSound;
      }
      
      override public function get damageSound() : String
      {
         if(this.§^I§)
         {
            return this.§^I§;
         }
         return §?!_§;
      }
      
      override public function get collisionSound() : String
      {
         if(this.§;"§)
         {
            return this.§;"§;
         }
         return §+%§;
      }
      
      public function get frozenKilledSound() : String
      {
         if(this.§+m§)
         {
            return this.§+m§;
         }
         return §?!r§;
      }
      
      public function get §]b§() : String
      {
         return this.§-"4§;
      }
   }
}
