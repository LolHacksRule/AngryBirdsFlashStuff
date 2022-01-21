package §^m§
{
   public class §"!_§
   {
       
      
      protected var §&! §:Number = 0.0;
      
      protected var §+L§:Number = 0.0;
      
      protected var §%S§:Function = null;
      
      protected var §8!<§:Boolean = true;
      
      protected var §8!=§:Boolean = true;
      
      protected var §%!m§:Boolean = true;
      
      public function §"!_§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§+L§ = param1;
         if(param1 < 0)
         {
            this.§+L§ = 0;
         }
         this.§&! § = -this.§+L§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §@p§(param1:Boolean) : void
      {
         this.§8!<§ = param1;
      }
      
      public function set §2!^§(param1:Boolean) : void
      {
         this.§8!=§ = param1;
      }
      
      public function get §2!^§() : Boolean
      {
         return this.§8!=§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§%S§ = param1;
         }
      }
      
      public function set § !R§(param1:Boolean) : void
      {
         this.§%!m§ = param1;
      }
      
      public function get § !R§() : Boolean
      {
         return this.§%!m§;
      }
   }
}
