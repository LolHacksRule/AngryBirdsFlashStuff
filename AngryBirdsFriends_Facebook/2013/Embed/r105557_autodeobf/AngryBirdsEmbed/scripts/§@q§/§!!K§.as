package §@q§
{
   public class §!!K§
   {
       
      
      protected var § in§:Number = 0.0;
      
      protected var §3!5§:Number = 0.0;
      
      protected var §>u§:Function = null;
      
      protected var §%"§:Boolean = true;
      
      protected var §;u§:Boolean = true;
      
      protected var §&2§:Boolean = true;
      
      public function §!!K§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§3!5§ = param1;
         if(param1 < 0)
         {
            this.§3!5§ = 0;
         }
         this.§ in§ = -this.§3!5§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §#!2§(param1:Boolean) : void
      {
         this.§%"§ = param1;
      }
      
      public function set §]!9§(param1:Boolean) : void
      {
         this.§;u§ = param1;
      }
      
      public function get §]!9§() : Boolean
      {
         return this.§;u§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§>u§ = param1;
         }
      }
      
      public function set §6f§(param1:Boolean) : void
      {
         this.§&2§ = param1;
      }
      
      public function get §6f§() : Boolean
      {
         return this.§&2§;
      }
   }
}
