package §6!P§
{
   public class §9!D§
   {
       
      
      protected var §`Q§:Number = 0.0;
      
      protected var §"9§:Number = 0.0;
      
      protected var §^Z§:Function = null;
      
      protected var §3!H§:Boolean = true;
      
      protected var §3I§:Boolean = true;
      
      protected var §7!S§:Boolean = true;
      
      public function §9!D§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§"9§ = param1;
         if(param1 < 0)
         {
            this.§"9§ = 0;
         }
         this.§`Q§ = -this.§"9§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §[!?§(param1:Boolean) : void
      {
         this.§3!H§ = param1;
      }
      
      public function set §"!$§(param1:Boolean) : void
      {
         this.§3I§ = param1;
      }
      
      public function get §"!$§() : Boolean
      {
         return this.§3I§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§^Z§ = param1;
         }
      }
      
      public function set §]H§(param1:Boolean) : void
      {
         this.§7!S§ = param1;
      }
      
      public function get §]H§() : Boolean
      {
         return this.§7!S§;
      }
   }
}
