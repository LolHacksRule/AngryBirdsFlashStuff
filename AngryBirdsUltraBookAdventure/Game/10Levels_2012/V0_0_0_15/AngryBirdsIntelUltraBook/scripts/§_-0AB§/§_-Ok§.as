package §_-0AB§
{
   public class §_-Ok§
   {
       
      
      protected var §_-063§:Number = 0.0;
      
      protected var §_-kv§:Number = 0.0;
      
      protected var §_-9L§:Function = null;
      
      protected var §_-i-§:Boolean = true;
      
      protected var §_-ht§:Boolean = true;
      
      protected var §_-W2§:Boolean = true;
      
      public function §_-Ok§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-kv§ = param1;
         if(param1 < 0)
         {
            this.§_-kv§ = 0;
         }
         this.§_-063§ = -this.§_-kv§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §_-JH§(param1:Boolean) : void
      {
         this.§_-i-§ = param1;
      }
      
      public function set §_-04E§(param1:Boolean) : void
      {
         this.§_-ht§ = param1;
      }
      
      public function get §_-04E§() : Boolean
      {
         return this.§_-ht§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§_-9L§ = param1;
         }
      }
      
      public function set §_-l0§(param1:Boolean) : void
      {
         this.§_-W2§ = param1;
      }
      
      public function get §_-l0§() : Boolean
      {
         return this.§_-W2§;
      }
   }
}
