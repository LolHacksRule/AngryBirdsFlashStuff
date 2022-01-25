package §set §
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §#X§ extends URLLoader
   {
       
      
      protected var §!i§:int;
      
      protected var §>z§:URLRequest;
      
      protected var §3!Z§:Number;
      
      protected var §?w§:Timer;
      
      protected var §3!M§:Boolean = false;
      
      public function §#X§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§!i§ = param2;
         this.§>z§ = param1;
         this.§3!Z§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§[=§);
      }
      
      protected function §[=§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§!i§ = 0;
            this.§3!M§ = true;
            super.dispatchEvent(new §#!'§(§#!'§.§ T§));
         }
         else if(param1.status == 400)
         {
            this.§!i§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§!i§ > 0)
         {
            --this.§!i§;
            super.load(this.§>z§);
            return true;
         }
         if(!this.§3!M§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§>z§ = param1;
         if(this.§3!Z§ > 0)
         {
            this.§?w§ = new Timer(this.§3!Z§);
            this.§?w§.addEventListener(TimerEvent.TIMER,this.§@z§);
            this.§?w§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §@z§(param1:TimerEvent) : void
      {
         this.§?w§.removeEventListener(TimerEvent.TIMER,this.§@z§);
         this.§?w§.reset();
         this.§?w§ = null;
         super.load(this.§>z§);
      }
   }
}
