package §+k§
{
   public class §2N§
   {
       
      
      protected var § H§:Number = 0.0;
      
      protected var §!!+§:Number = 0.0;
      
      protected var §9D§:Function = null;
      
      protected var §^!Y§:Boolean = true;
      
      protected var §=F§:Boolean = true;
      
      protected var §3!<§:Boolean = true;
      
      public function §2N§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§!!+§ = param1;
         if(param1 < 0)
         {
            this.§!!+§ = 0;
         }
         this.§ H§ = -this.§!!+§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §''§(param1:Boolean) : void
      {
         this.§^!Y§ = param1;
      }
      
      public function set §;U§(param1:Boolean) : void
      {
         this.§=F§ = param1;
      }
      
      public function get §;U§() : Boolean
      {
         return this.§=F§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§9D§ = param1;
         }
      }
      
      public function set §6L§(param1:Boolean) : void
      {
         this.§3!<§ = param1;
      }
      
      public function get §6L§() : Boolean
      {
         return this.§3!<§;
      }
   }
}
