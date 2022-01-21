package §%!B§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §=!C§ extends URLLoader
   {
       
      
      protected var §-!!§:int;
      
      protected var §import§:URLRequest;
      
      protected var §-"§:Number;
      
      protected var §3k§:Timer;
      
      protected var §0x§:Boolean = false;
      
      protected var §'j§:URLRequest;
      
      public function §=!C§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§-!!§ = param2;
         this.§import§ = param1;
         this.§-"§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<T§);
      }
      
      public function §2j§(param1:URLRequest) : void
      {
         this.§'j§ = param1;
      }
      
      public function § !V§() : void
      {
         if(this.§'j§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§'j§);
         this.§'j§ = null;
      }
      
      protected function §<T§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§-!!§ = 0;
            this.§0x§ = true;
            super.dispatchEvent(new §,!X§(§,!X§.§^]§));
         }
         else if(param1.status == 400)
         {
            this.§-!!§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§-!!§ > 0)
         {
            --this.§-!!§;
            super.load(this.§import§);
            return true;
         }
         if(!this.§0x§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§import§ = param1;
         if(this.§-"§ > 0)
         {
            this.§3k§ = new Timer(this.§-"§);
            this.§3k§.addEventListener(TimerEvent.TIMER,this.§8c§);
            this.§3k§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §8c§(param1:TimerEvent) : void
      {
         this.§3k§.removeEventListener(TimerEvent.TIMER,this.§8c§);
         this.§3k§.reset();
         this.§3k§ = null;
         super.load(this.§import§);
      }
   }
}
