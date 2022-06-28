package §-^§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §45§ extends URLLoader
   {
       
      
      protected var §#s§:int;
      
      protected var §[%§:URLRequest;
      
      protected var §01§:Number;
      
      protected var §1E§:Timer;
      
      protected var §"P§:Boolean = false;
      
      protected var §?e§:URLRequest;
      
      public function §45§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§#s§ = param2;
         this.§[%§ = param1;
         this.§01§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#1§);
      }
      
      public function §3@§(param1:URLRequest) : void
      {
         this.§?e§ = param1;
      }
      
      public function §3!d§() : void
      {
         if(this.§?e§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§?e§);
         this.§?e§ = null;
      }
      
      protected function §#1§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§#s§ = 0;
            this.§"P§ = true;
            super.dispatchEvent(new §4-§(§4-§.§4!m§));
         }
         else if(param1.status == 400)
         {
            this.§#s§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§#s§ > 0)
         {
            --this.§#s§;
            super.load(this.§[%§);
            return true;
         }
         if(!this.§"P§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§[%§ = param1;
         if(this.§01§ > 0)
         {
            this.§1E§ = new Timer(this.§01§);
            this.§1E§.addEventListener(TimerEvent.TIMER,this.§1w§);
            this.§1E§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §1w§(param1:TimerEvent) : void
      {
         this.§1E§.removeEventListener(TimerEvent.TIMER,this.§1w§);
         this.§1E§.reset();
         this.§1E§ = null;
         super.load(this.§[%§);
      }
   }
}
