package §_-hx§
{
   public class §_-v1§
   {
       
      
      protected var §_-pE§:Number = 0.0;
      
      protected var §_-9K§:Number = 0.0;
      
      protected var §_-8H§:Function = null;
      
      protected var §_-Y2§:Boolean = true;
      
      protected var §_-D2§:Boolean = true;
      
      protected var §_-G8§:Boolean = true;
      
      public function §_-v1§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-9K§ = param1;
         if(param1 < 0)
         {
            this.§_-9K§ = 0;
         }
         this.§_-pE§ = -this.§_-9K§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function set §_-KZ§(param1:Boolean) : void
      {
         this.§_-Y2§ = param1;
      }
      
      public function set §_-b3§(param1:Boolean) : void
      {
         this.§_-D2§ = param1;
      }
      
      public function get §_-b3§() : Boolean
      {
         return this.§_-D2§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§_-8H§ = param1;
         }
      }
      
      public function set §_-ow§(param1:Boolean) : void
      {
         this.§_-G8§ = param1;
      }
      
      public function get §_-ow§() : Boolean
      {
         return this.§_-G8§;
      }
   }
}
