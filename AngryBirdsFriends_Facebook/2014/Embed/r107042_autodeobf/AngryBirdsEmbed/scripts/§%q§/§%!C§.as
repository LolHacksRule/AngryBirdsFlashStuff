package §%q§
{
   public class §%!C§
   {
       
      
      protected var §%A§:Number = 0.0;
      
      protected var §[D§:Number = 0.0;
      
      protected var §&S§:Function = null;
      
      protected var §-R§:Boolean = true;
      
      protected var §&m§:Boolean = true;
      
      protected var §&q§:Boolean = true;
      
      public function §%!C§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§[D§ = param1;
         if(param1 < 0)
         {
            this.§[D§ = 0;
         }
         this.§%A§ = -this.§[D§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §<"§(param1:Boolean) : void
      {
         this.§-R§ = param1;
      }
      
      public function set §8n§(param1:Boolean) : void
      {
         this.§&m§ = param1;
      }
      
      public function get §8n§() : Boolean
      {
         return this.§&m§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§&S§ = param1;
         }
      }
      
      public function set §4!O§(param1:Boolean) : void
      {
         this.§&q§ = param1;
      }
      
      public function get §4!O§() : Boolean
      {
         return this.§&q§;
      }
   }
}
