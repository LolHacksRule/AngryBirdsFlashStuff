package §!7§
{
   public class §>K§
   {
       
      
      protected var §5!&§:Number = 0.0;
      
      protected var §>_§:Number = 0.0;
      
      protected var §<!-§:Function = null;
      
      protected var §;C§:Boolean = true;
      
      protected var §^!K§:Boolean = true;
      
      protected var §7!D§:Boolean = true;
      
      public function §>K§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§>_§ = param1;
         if(param1 < 0)
         {
            this.§>_§ = 0;
         }
         this.§5!&§ = -this.§>_§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §1!!§(param1:Boolean) : void
      {
         this.§;C§ = param1;
      }
      
      public function set §^E§(param1:Boolean) : void
      {
         this.§^!K§ = param1;
      }
      
      public function get §^E§() : Boolean
      {
         return this.§^!K§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§<!-§ = param1;
         }
      }
      
      public function set §+!R§(param1:Boolean) : void
      {
         this.§7!D§ = param1;
      }
      
      public function get §+!R§() : Boolean
      {
         return this.§7!D§;
      }
   }
}
