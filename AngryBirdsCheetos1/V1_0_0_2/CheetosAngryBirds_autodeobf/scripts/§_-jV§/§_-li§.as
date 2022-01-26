package §_-jV§
{
   public class §_-li§
   {
       
      
      protected var §_-RE§:Number = 0.0;
      
      protected var §_-FM§:Number = 0.0;
      
      protected var §_-lq§:Function = null;
      
      protected var §_-SE§:Boolean = true;
      
      protected var §_-rN§:Boolean = true;
      
      protected var §_-NU§:Boolean = true;
      
      public function §_-li§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-FM§ = param1;
         if(param1 < 0)
         {
            this.§_-FM§ = 0;
         }
         this.§_-RE§ = -this.§_-FM§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function set §_-of§(param1:Boolean) : void
      {
         this.§_-SE§ = param1;
      }
      
      public function set §_-V-§(param1:Boolean) : void
      {
         this.§_-rN§ = param1;
      }
      
      public function get §_-V-§() : Boolean
      {
         return this.§_-rN§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§_-lq§ = param1;
         }
      }
      
      public function set §_-Xg§(param1:Boolean) : void
      {
         this.§_-NU§ = param1;
      }
      
      public function get §_-Xg§() : Boolean
      {
         return this.§_-NU§;
      }
   }
}
