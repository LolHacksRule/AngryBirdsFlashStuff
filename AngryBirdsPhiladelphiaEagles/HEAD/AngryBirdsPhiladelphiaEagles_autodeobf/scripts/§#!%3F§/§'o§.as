package §#!?§
{
   public class §'o§
   {
       
      
      protected var §'z§:Number = 0.0;
      
      protected var §+D§:Number = 0.0;
      
      protected var §;"§:Function = null;
      
      protected var §-+§:Boolean = true;
      
      protected var §@,§:Boolean = true;
      
      protected var §7!7§:Boolean = true;
      
      public function §'o§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§+D§ = param1;
         if(param1 < 0)
         {
            this.§+D§ = 0;
         }
         this.§'z§ = -this.§+D§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §8r§(param1:Boolean) : void
      {
         this.§-+§ = param1;
      }
      
      public function set §`J§(param1:Boolean) : void
      {
         this.§@,§ = param1;
      }
      
      public function get §`J§() : Boolean
      {
         return this.§@,§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§;"§ = param1;
         }
      }
      
      public function set §0t§(param1:Boolean) : void
      {
         this.§7!7§ = param1;
      }
      
      public function get §0t§() : Boolean
      {
         return this.§7!7§;
      }
   }
}
