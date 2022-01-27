package §]$§
{
   public class §&4§
   {
       
      
      protected var §%i§:Number = 0.0;
      
      protected var §0v§:Number = 0.0;
      
      protected var §"!4§:Function = null;
      
      protected var §6!"§:Boolean = true;
      
      protected var §06§:Boolean = true;
      
      protected var §-!0§:Boolean = true;
      
      public function §&4§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§0v§ = param1;
         if(param1 < 0)
         {
            this.§0v§ = 0;
         }
         this.§%i§ = -this.§0v§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §9-§(param1:Boolean) : void
      {
         this.§6!"§ = param1;
      }
      
      public function set §;!8§(param1:Boolean) : void
      {
         this.§06§ = param1;
      }
      
      public function get §;!8§() : Boolean
      {
         return this.§06§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§"!4§ = param1;
         }
      }
      
      public function set §3!L§(param1:Boolean) : void
      {
         this.§-!0§ = param1;
      }
      
      public function get §3!L§() : Boolean
      {
         return this.§-!0§;
      }
   }
}
