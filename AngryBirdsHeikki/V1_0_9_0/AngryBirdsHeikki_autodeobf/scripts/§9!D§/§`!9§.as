package §9!D§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §`!9§ extends URLLoader
   {
       
      
      protected var §3,§:int;
      
      protected var §?!G§:URLRequest;
      
      protected var §?-§:Number;
      
      protected var §<_§:Timer;
      
      protected var §-!d§:Boolean = false;
      
      protected var §%]§:URLRequest;
      
      public function §`!9§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§3,§ = param2;
         this.§?!G§ = param1;
         this.§?-§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§^!§);
      }
      
      public function §'h§(param1:URLRequest) : void
      {
         this.§%]§ = param1;
      }
      
      public function §,k§() : void
      {
         if(this.§%]§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§%]§);
         this.§%]§ = null;
      }
      
      protected function §^!§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§3,§ = 0;
            this.§-!d§ = true;
            super.dispatchEvent(new §'!1§(§'!1§.§4#§));
         }
         else if(param1.status == 400)
         {
            this.§3,§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§3,§ > 0)
         {
            --this.§3,§;
            super.load(this.§?!G§);
            return true;
         }
         if(!this.§-!d§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§?!G§ = param1;
         if(this.§?-§ > 0)
         {
            this.§<_§ = new Timer(this.§?-§);
            this.§<_§.addEventListener(TimerEvent.TIMER,this.§5!X§);
            this.§<_§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §5!X§(param1:TimerEvent) : void
      {
         this.§<_§.removeEventListener(TimerEvent.TIMER,this.§5!X§);
         this.§<_§.reset();
         this.§<_§ = null;
         super.load(this.§?!G§);
      }
   }
}
