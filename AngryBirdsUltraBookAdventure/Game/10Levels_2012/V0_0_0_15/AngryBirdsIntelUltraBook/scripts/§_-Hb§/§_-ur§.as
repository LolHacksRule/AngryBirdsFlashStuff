package §_-Hb§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §_-ur§ extends URLLoader
   {
       
      
      protected var §_-GO§:int;
      
      protected var §_-No§:URLRequest;
      
      protected var §_-9B§:Number;
      
      protected var §_-X9§:Timer;
      
      protected var §_-hp§:Boolean = false;
      
      public function §_-ur§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§_-GO§ = param2;
         this.§_-No§ = param1;
         this.§_-9B§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-6I§);
      }
      
      protected function §_-6I§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§_-GO§ = 0;
            this.§_-hp§ = true;
            super.dispatchEvent(new §_-a5§(§_-a5§.§_-Gy§));
         }
         else if(param1.status == 400)
         {
            this.§_-GO§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§_-GO§ > 0)
         {
            --this.§_-GO§;
            super.load(this.§_-No§);
            return true;
         }
         if(!this.§_-hp§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§_-No§ = param1;
         if(this.§_-9B§ > 0)
         {
            this.§_-X9§ = new Timer(this.§_-9B§);
            this.§_-X9§.addEventListener(TimerEvent.TIMER,this.§_-Sq§);
            this.§_-X9§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §_-Sq§(param1:TimerEvent) : void
      {
         this.§_-X9§.removeEventListener(TimerEvent.TIMER,this.§_-Sq§);
         this.§_-X9§.reset();
         this.§_-X9§ = null;
         super.load(this.§_-No§);
      }
   }
}
