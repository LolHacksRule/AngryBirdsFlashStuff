package §#P§
{
   public class §1!?§
   {
       
      
      protected var §^f§:Number = 0.0;
      
      protected var §40§:Number = 0.0;
      
      protected var §7!%§:Function = null;
      
      protected var §=!?§:Boolean = true;
      
      protected var §8[§:Boolean = true;
      
      protected var §<!D§:Boolean = true;
      
      public function §1!?§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§40§ = param1;
         if(param1 < 0)
         {
            this.§40§ = 0;
         }
         this.§^f§ = -this.§40§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §;y§(param1:Boolean) : void
      {
         this.§=!?§ = param1;
      }
      
      public function set §'%§(param1:Boolean) : void
      {
         this.§8[§ = param1;
      }
      
      public function get §'%§() : Boolean
      {
         return this.§8[§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§7!%§ = param1;
         }
      }
      
      public function set §'p§(param1:Boolean) : void
      {
         this.§<!D§ = param1;
      }
      
      public function get §'p§() : Boolean
      {
         return this.§<!D§;
      }
   }
}
