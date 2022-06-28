package §2=§
{
   public class §=N§
   {
       
      
      protected var §2+§:Number = 0.0;
      
      protected var §'r§:Number = 0.0;
      
      protected var §>!@§:Function = null;
      
      protected var §+j§:Boolean = true;
      
      protected var §+D§:Boolean = true;
      
      protected var §""§:Boolean = true;
      
      public function §=N§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§'r§ = param1;
         if(param1 < 0)
         {
            this.§'r§ = 0;
         }
         this.§2+§ = -this.§'r§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §8!,§(param1:Boolean) : void
      {
         this.§+j§ = param1;
      }
      
      public function set §2!_§(param1:Boolean) : void
      {
         this.§+D§ = param1;
      }
      
      public function get §2!_§() : Boolean
      {
         return this.§+D§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§>!@§ = param1;
         }
      }
      
      public function set §-b§(param1:Boolean) : void
      {
         this.§""§ = param1;
      }
      
      public function get §-b§() : Boolean
      {
         return this.§""§;
      }
   }
}
