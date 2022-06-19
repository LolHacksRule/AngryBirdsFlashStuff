package §_-9s§
{
   public class §_-vP§
   {
       
      
      protected var §_-zI§:Number = 0.0;
      
      protected var §_-yS§:Number = 0.0;
      
      protected var §_-PU§:Function = null;
      
      protected var §_-WR§:Boolean = true;
      
      protected var §_-Jz§:Boolean = true;
      
      protected var §_-9E§:Boolean = true;
      
      public function §_-vP§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-yS§ = param1;
         if(param1 < 0)
         {
            this.§_-yS§ = 0;
         }
         this.§_-zI§ = -this.§_-yS§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function set §_-7I§(param1:Boolean) : void
      {
         this.§_-WR§ = param1;
      }
      
      public function set §_-6M§(param1:Boolean) : void
      {
         this.§_-Jz§ = param1;
      }
      
      public function get §_-6M§() : Boolean
      {
         return this.§_-Jz§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§_-PU§ = param1;
         }
      }
      
      public function set §_-mk§(param1:Boolean) : void
      {
         this.§_-9E§ = param1;
      }
      
      public function get §_-mk§() : Boolean
      {
         return this.§_-9E§;
      }
   }
}
