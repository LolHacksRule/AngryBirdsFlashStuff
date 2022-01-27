package §'! §
{
   public class § "#§
   {
       
      
      protected var §;5§:Number = 0.0;
      
      protected var §]"y§:Number = 0.0;
      
      private var §>!=§:Boolean = true;
      
      protected var §6-§:Function = null;
      
      protected var §3!^§:Function = null;
      
      protected var §4"!§:Boolean = true;
      
      protected var §-1§:Boolean = true;
      
      protected var §=!w§:Boolean = true;
      
      public function § "#§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§6-§ = null;
         this.§3!^§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§]"y§ = param1;
         if(param1 < 0)
         {
            this.§]"y§ = 0;
         }
         this.§;5§ = -this.§]"y§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§>!=§;
      }
      
      public function pause() : void
      {
         this.§>!=§ = true;
      }
      
      public function play() : void
      {
         this.§>!=§ = false;
      }
      
      public function set §86§(param1:Boolean) : void
      {
         this.§4"!§ = param1;
      }
      
      public function set §7!b§(param1:Boolean) : void
      {
         this.§-1§ = param1;
      }
      
      public function get §7!b§() : Boolean
      {
         return this.§-1§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§6-§ = param1;
         }
      }
      
      public function set §<"?§(param1:Function) : void
      {
         if(this.§;5§ <= 0)
         {
            this.§3!^§ = param1;
         }
      }
      
      public function set §=T§(param1:Boolean) : void
      {
         this.§=!w§ = param1;
      }
      
      public function get §=T§() : Boolean
      {
         return this.§=!w§;
      }
      
      protected function §%!A§(param1:Number) : Boolean
      {
         if(this.§>!=§ || this.isCompleted)
         {
            return false;
         }
         this.§;5§ += param1;
         if(this.§;5§ <= 0)
         {
            return false;
         }
         if(this.§;5§ <= param1)
         {
            if(this.§3!^§ != null)
            {
               this.§3!^§();
               this.§3!^§ = null;
            }
         }
         return true;
      }
   }
}
