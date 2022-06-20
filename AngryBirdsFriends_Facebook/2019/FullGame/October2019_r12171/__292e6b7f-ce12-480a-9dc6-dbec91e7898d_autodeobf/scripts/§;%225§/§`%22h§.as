package §;"5§
{
   public class §`"h§
   {
       
      
      protected var §;C§:Number = 0.0;
      
      protected var §'!8§:Number = 0.0;
      
      private var §2!f§:Boolean = true;
      
      protected var §-!^§:Function = null;
      
      protected var §=!Q§:Function = null;
      
      protected var §7#M§:Boolean = true;
      
      protected var §'"=§:Boolean = true;
      
      protected var §-#I§:Boolean = true;
      
      public function §`"h§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§-!^§ = null;
         this.§=!Q§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§'!8§ = param1;
         if(param1 < 0)
         {
            this.§'!8§ = 0;
         }
         this.§;C§ = -this.§'!8§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§2!f§;
      }
      
      public function pause() : void
      {
         this.§2!f§ = true;
      }
      
      public function play() : void
      {
         this.§2!f§ = false;
      }
      
      public function set §!o§(param1:Boolean) : void
      {
         this.§7#M§ = param1;
      }
      
      public function set §5z§(param1:Boolean) : void
      {
         this.§'"=§ = param1;
      }
      
      public function get §5z§() : Boolean
      {
         return this.§'"=§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§-!^§ = param1;
         }
      }
      
      public function set onStart(param1:Function) : void
      {
         if(this.§;C§ <= 0)
         {
            this.§=!Q§ = param1;
         }
      }
      
      public function set §=!0§(param1:Boolean) : void
      {
         this.§-#I§ = param1;
      }
      
      public function get §=!0§() : Boolean
      {
         return this.§-#I§;
      }
      
      protected function §2#5§(param1:Number) : Boolean
      {
         if(this.§2!f§ || this.isCompleted)
         {
            return false;
         }
         this.§;C§ += param1;
         if(this.§;C§ <= 0)
         {
            return false;
         }
         if(this.§;C§ <= param1)
         {
            if(this.§=!Q§ != null)
            {
               this.§=!Q§();
               this.§=!Q§ = null;
            }
         }
         return true;
      }
   }
}
