package §6-§
{
   public class §^6§
   {
       
      
      protected var §-9§:Number = 0.0;
      
      protected var §>+§:Number = 0.0;
      
      protected var §0s§:Function = null;
      
      protected var §@!#§:Boolean = true;
      
      protected var §;!'§:Boolean = true;
      
      protected var §3Q§:Boolean = true;
      
      public function §^6§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§>+§ = param1;
         if(param1 < 0)
         {
            this.§>+§ = 0;
         }
         this.§-9§ = -this.§>+§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §7!Y§(param1:Boolean) : void
      {
         this.§@!#§ = param1;
      }
      
      public function set §1v§(param1:Boolean) : void
      {
         this.§;!'§ = param1;
      }
      
      public function get §1v§() : Boolean
      {
         return this.§;!'§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§0s§ = param1;
         }
      }
      
      public function set §0N§(param1:Boolean) : void
      {
         this.§3Q§ = param1;
      }
      
      public function get §0N§() : Boolean
      {
         return this.§3Q§;
      }
   }
}
