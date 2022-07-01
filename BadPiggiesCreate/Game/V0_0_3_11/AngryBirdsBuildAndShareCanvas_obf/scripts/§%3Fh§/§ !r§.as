package §?h§
{
   public class § !r§
   {
       
      
      protected var §]!p§:Number = 0.0;
      
      protected var §%[§:Number = 0.0;
      
      protected var §^!M§:Function = null;
      
      protected var §7"4§:Boolean = true;
      
      protected var §@"4§:Boolean = true;
      
      protected var §"w§:Boolean = true;
      
      public function § !r§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§%[§ = param1;
         if(param1 < 0)
         {
            this.§%[§ = 0;
         }
         this.§]!p§ = -this.§%[§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §finally§(param1:Boolean) : void
      {
         this.§7"4§ = param1;
      }
      
      public function set §>"0§(param1:Boolean) : void
      {
         this.§@"4§ = param1;
      }
      
      public function get §>"0§() : Boolean
      {
         return this.§@"4§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§^!M§ = param1;
         }
      }
      
      public function set §6o§(param1:Boolean) : void
      {
         this.§"w§ = param1;
      }
      
      public function get §6o§() : Boolean
      {
         return this.§"w§;
      }
   }
}
