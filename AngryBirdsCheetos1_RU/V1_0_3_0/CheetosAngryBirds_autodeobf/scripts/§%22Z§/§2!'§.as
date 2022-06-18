package §"Z§
{
   public class §2!'§
   {
       
      
      protected var §;c§:Number = 0.0;
      
      protected var §4!%§:Number = 0.0;
      
      protected var §=6§:Function = null;
      
      protected var §?q§:Boolean = true;
      
      protected var §@J§:Boolean = true;
      
      protected var §3m§:Boolean = true;
      
      public function §2!'§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§4!%§ = param1;
         if(param1 < 0)
         {
            this.§4!%§ = 0;
         }
         this.§;c§ = -this.§4!%§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §+!,§(param1:Boolean) : void
      {
         this.§?q§ = param1;
      }
      
      public function set § else§(param1:Boolean) : void
      {
         this.§@J§ = param1;
      }
      
      public function get § else§() : Boolean
      {
         return this.§@J§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§=6§ = param1;
         }
      }
      
      public function set §!!N§(param1:Boolean) : void
      {
         this.§3m§ = param1;
      }
      
      public function get §!!N§() : Boolean
      {
         return this.§3m§;
      }
   }
}
