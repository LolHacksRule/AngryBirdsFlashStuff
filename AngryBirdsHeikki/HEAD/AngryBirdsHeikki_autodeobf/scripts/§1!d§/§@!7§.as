package §1!d§
{
   public class §@!7§
   {
       
      
      protected var §2!N§:Number = 0.0;
      
      protected var § F§:Number = 0.0;
      
      protected var §=a§:Function = null;
      
      protected var §!!%§:Boolean = true;
      
      protected var §6!a§:Boolean = true;
      
      protected var § !W§:Boolean = true;
      
      public function §@!7§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§ F§ = param1;
         if(param1 < 0)
         {
            this.§ F§ = 0;
         }
         this.§2!N§ = -this.§ F§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §`!X§(param1:Boolean) : void
      {
         this.§!!%§ = param1;
      }
      
      public function set §92§(param1:Boolean) : void
      {
         this.§6!a§ = param1;
      }
      
      public function get §92§() : Boolean
      {
         return this.§6!a§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§=a§ = param1;
         }
      }
      
      public function set §"A§(param1:Boolean) : void
      {
         this.§ !W§ = param1;
      }
      
      public function get §"A§() : Boolean
      {
         return this.§ !W§;
      }
   }
}
