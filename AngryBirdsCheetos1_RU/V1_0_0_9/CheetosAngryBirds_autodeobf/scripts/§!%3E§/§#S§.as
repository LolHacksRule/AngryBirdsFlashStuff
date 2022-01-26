package §!>§
{
   public class §#S§
   {
       
      
      protected var §5+§:Number = 0.0;
      
      protected var §!T§:Number = 0.0;
      
      protected var §?!%§:Function = null;
      
      protected var § !;§:Boolean = true;
      
      protected var §?U§:Boolean = true;
      
      protected var §%o§:Boolean = true;
      
      public function §#S§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§!T§ = param1;
         if(param1 < 0)
         {
            this.§!T§ = 0;
         }
         this.§5+§ = -this.§!T§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §9a§(param1:Boolean) : void
      {
         this.§ !;§ = param1;
      }
      
      public function set §-!$§(param1:Boolean) : void
      {
         this.§?U§ = param1;
      }
      
      public function get §-!$§() : Boolean
      {
         return this.§?U§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§?!%§ = param1;
         }
      }
      
      public function set § "§(param1:Boolean) : void
      {
         this.§%o§ = param1;
      }
      
      public function get § "§() : Boolean
      {
         return this.§%o§;
      }
   }
}
