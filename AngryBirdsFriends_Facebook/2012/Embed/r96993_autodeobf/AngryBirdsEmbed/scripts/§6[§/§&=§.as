package §6[§
{
   public class §&=§
   {
       
      
      protected var §8]§:Number = 0.0;
      
      protected var §?,§:Number = 0.0;
      
      protected var §[@§:Function = null;
      
      protected var §<! §:Boolean = true;
      
      protected var §=G§:Boolean = true;
      
      protected var § a§:Boolean = true;
      
      public function §&=§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§?,§ = param1;
         if(param1 < 0)
         {
            this.§?,§ = 0;
         }
         this.§8]§ = -this.§?,§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §%h§(param1:Boolean) : void
      {
         this.§<! § = param1;
      }
      
      public function set §]!&§(param1:Boolean) : void
      {
         this.§=G§ = param1;
      }
      
      public function get §]!&§() : Boolean
      {
         return this.§=G§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§[@§ = param1;
         }
      }
      
      public function set §6B§(param1:Boolean) : void
      {
         this.§ a§ = param1;
      }
      
      public function get §6B§() : Boolean
      {
         return this.§ a§;
      }
   }
}
