package §2"'§
{
   public class § "%§
   {
       
      
      protected var §"!M§:Number = 0.0;
      
      protected var §!"U§:Number = 0.0;
      
      protected var §[!r§:Function = null;
      
      protected var §-$§:Boolean = true;
      
      protected var §4!%§:Boolean = true;
      
      protected var §1!>§:Boolean = true;
      
      public function § "%§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§!"U§ = param1;
         if(param1 < 0)
         {
            this.§!"U§ = 0;
         }
         this.§"!M§ = -this.§!"U§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §3!S§(param1:Boolean) : void
      {
         this.§-$§ = param1;
      }
      
      public function set §="6§(param1:Boolean) : void
      {
         this.§4!%§ = param1;
      }
      
      public function get §="6§() : Boolean
      {
         return this.§4!%§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§[!r§ = param1;
         }
      }
      
      public function set §%!j§(param1:Boolean) : void
      {
         this.§1!>§ = param1;
      }
      
      public function get §%!j§() : Boolean
      {
         return this.§1!>§;
      }
   }
}
