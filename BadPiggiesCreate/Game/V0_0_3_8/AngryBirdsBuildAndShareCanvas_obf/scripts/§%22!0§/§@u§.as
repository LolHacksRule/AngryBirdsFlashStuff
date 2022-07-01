package §"!0§
{
   public class §@u§
   {
       
      
      protected var §<h§:Number = 0.0;
      
      protected var §"Y§:Number = 0.0;
      
      protected var § C§:Function = null;
      
      protected var §!=§:Boolean = true;
      
      protected var §"=§:Boolean = true;
      
      protected var §3"3§:Boolean = true;
      
      public function §@u§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§"Y§ = param1;
         if(param1 < 0)
         {
            this.§"Y§ = 0;
         }
         this.§<h§ = -this.§"Y§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §9P§(param1:Boolean) : void
      {
         this.§!=§ = param1;
      }
      
      public function set §0!k§(param1:Boolean) : void
      {
         this.§"=§ = param1;
      }
      
      public function get §0!k§() : Boolean
      {
         return this.§"=§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§ C§ = param1;
         }
      }
      
      public function set §+K§(param1:Boolean) : void
      {
         this.§3"3§ = param1;
      }
      
      public function get §+K§() : Boolean
      {
         return this.§3"3§;
      }
   }
}
