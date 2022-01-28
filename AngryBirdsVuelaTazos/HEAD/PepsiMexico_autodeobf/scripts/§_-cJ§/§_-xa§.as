package §_-cJ§
{
   public class §_-xa§
   {
       
      
      protected var §_-OY§:Number = 0.0;
      
      protected var §_-SM§:Number = 0.0;
      
      protected var §_-oZ§:Function = null;
      
      protected var §_-zh§:Boolean = true;
      
      protected var §_-yU§:Boolean = true;
      
      protected var §_-0n§:Boolean = true;
      
      public function §_-xa§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-SM§ = param1;
         if(param1 < 0)
         {
            this.§_-SM§ = 0;
         }
         this.§_-OY§ = -this.§_-SM§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function set §_-Do§(param1:Boolean) : void
      {
         this.§_-zh§ = param1;
      }
      
      public function set §_-Mi§(param1:Boolean) : void
      {
         this.§_-yU§ = param1;
      }
      
      public function get §_-Mi§() : Boolean
      {
         return this.§_-yU§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§_-oZ§ = param1;
         }
      }
      
      public function set §_-j0§(param1:Boolean) : void
      {
         this.§_-0n§ = param1;
      }
      
      public function get §_-j0§() : Boolean
      {
         return this.§_-0n§;
      }
   }
}
