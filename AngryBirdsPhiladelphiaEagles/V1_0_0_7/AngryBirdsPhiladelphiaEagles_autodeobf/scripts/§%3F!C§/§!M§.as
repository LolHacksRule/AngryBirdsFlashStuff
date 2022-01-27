package §?!C§
{
   public class §!M§
   {
       
      
      protected var §!p§:Number = 0.0;
      
      protected var §#!N§:Number = 0.0;
      
      protected var §&m§:Function = null;
      
      protected var §@E§:Boolean = true;
      
      protected var §'I§:Boolean = true;
      
      protected var § !0§:Boolean = true;
      
      public function §!M§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§#!N§ = param1;
         if(param1 < 0)
         {
            this.§#!N§ = 0;
         }
         this.§!p§ = -this.§#!N§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §4!"§(param1:Boolean) : void
      {
         this.§@E§ = param1;
      }
      
      public function set §!D§(param1:Boolean) : void
      {
         this.§'I§ = param1;
      }
      
      public function get §!D§() : Boolean
      {
         return this.§'I§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§&m§ = param1;
         }
      }
      
      public function set §^D§(param1:Boolean) : void
      {
         this.§ !0§ = param1;
      }
      
      public function get §^D§() : Boolean
      {
         return this.§ !0§;
      }
   }
}
