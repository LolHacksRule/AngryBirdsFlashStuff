package §>!J§
{
   public class §+!b§
   {
       
      
      protected var §7!n§:Number = 0.0;
      
      protected var §4!$§:Number = 0.0;
      
      protected var §%!g§:Function = null;
      
      protected var §@!I§:Boolean = true;
      
      protected var §>B§:Boolean = true;
      
      protected var §%@§:Boolean = true;
      
      public function §+!b§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§4!$§ = param1;
         if(param1 < 0)
         {
            this.§4!$§ = 0;
         }
         this.§7!n§ = -this.§4!$§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §-2§(param1:Boolean) : void
      {
         this.§@!I§ = param1;
      }
      
      public function set §;!O§(param1:Boolean) : void
      {
         this.§>B§ = param1;
      }
      
      public function get §;!O§() : Boolean
      {
         return this.§>B§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§%!g§ = param1;
         }
      }
      
      public function set §7Z§(param1:Boolean) : void
      {
         this.§%@§ = param1;
      }
      
      public function get §7Z§() : Boolean
      {
         return this.§%@§;
      }
   }
}
