package §-!;§
{
   public class §4!?§
   {
       
      
      protected var §7!,§:Number = 0.0;
      
      protected var §0!]§:Number = 0.0;
      
      protected var §5^§:Function = null;
      
      protected var §<P§:Boolean = true;
      
      protected var §`!R§:Boolean = true;
      
      protected var §>t§:Boolean = true;
      
      public function §4!?§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§0!]§ = param1;
         if(param1 < 0)
         {
            this.§0!]§ = 0;
         }
         this.§7!,§ = -this.§0!]§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §2P§(param1:Boolean) : void
      {
         this.§<P§ = param1;
      }
      
      public function set §?v§(param1:Boolean) : void
      {
         this.§`!R§ = param1;
      }
      
      public function get §?v§() : Boolean
      {
         return this.§`!R§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§5^§ = param1;
         }
      }
      
      public function set §,!N§(param1:Boolean) : void
      {
         this.§>t§ = param1;
      }
      
      public function get §,!N§() : Boolean
      {
         return this.§>t§;
      }
   }
}
