package §7X§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §7^§ extends URLLoader
   {
       
      
      protected var §var§:int;
      
      protected var §6g§:URLRequest;
      
      protected var §?k§:Number;
      
      protected var §7!]§:Timer;
      
      protected var §%!c§:Boolean = false;
      
      public function §7^§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§var§ = param2;
         this.§6g§ = param1;
         this.§?k§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§,#§);
      }
      
      protected function §,#§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§var§ = 0;
            this.§%!c§ = true;
            super.dispatchEvent(new §!!5§(§!!5§.§[!§));
         }
         else if(param1.status == 400)
         {
            this.§var§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§var§ > 0)
         {
            --this.§var§;
            super.load(this.§6g§);
            return true;
         }
         if(!this.§%!c§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§6g§ = param1;
         if(this.§?k§ > 0)
         {
            this.§7!]§ = new Timer(this.§?k§);
            this.§7!]§.addEventListener(TimerEvent.TIMER,this.§4!<§);
            this.§7!]§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §4!<§(param1:TimerEvent) : void
      {
         this.§7!]§.removeEventListener(TimerEvent.TIMER,this.§4!<§);
         this.§7!]§.reset();
         this.§7!]§ = null;
         super.load(this.§6g§);
      }
   }
}
