package §9!n§
{
   public class §0e§
   {
       
      
      protected var §8!N§:Number = 0.0;
      
      protected var § V§:Number = 0.0;
      
      protected var §2S§:Function = null;
      
      protected var §4!V§:Boolean = true;
      
      protected var §,R§:Boolean = true;
      
      protected var §,!]§:Boolean = true;
      
      public function §0e§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§ V§ = param1;
         if(param1 < 0)
         {
            this.§ V§ = 0;
         }
         this.§8!N§ = -this.§ V§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function set §;@§(param1:Boolean) : void
      {
         this.§4!V§ = param1;
      }
      
      public function set §0! §(param1:Boolean) : void
      {
         this.§,R§ = param1;
      }
      
      public function get §0! §() : Boolean
      {
         return this.§,R§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§2S§ = param1;
         }
      }
      
      public function set §@!d§(param1:Boolean) : void
      {
         this.§,!]§ = param1;
      }
      
      public function get §@!d§() : Boolean
      {
         return this.§,!]§;
      }
   }
}
