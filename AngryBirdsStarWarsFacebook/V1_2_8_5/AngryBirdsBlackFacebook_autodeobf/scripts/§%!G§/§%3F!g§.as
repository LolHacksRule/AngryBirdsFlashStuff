package §%!G§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §?!g§ extends URLLoader
   {
       
      
      protected var §89§:int;
      
      protected var §]!C§:URLRequest;
      
      protected var §']§:Number;
      
      protected var §%T§:Timer;
      
      protected var §6#2§:Boolean = false;
      
      protected var §@>§:URLRequest;
      
      public function §?!g§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§89§ = param2;
         this.§]!C§ = param1;
         this.§']§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%!p§);
      }
      
      public function §,!@§(param1:URLRequest) : void
      {
         this.§@>§ = param1;
      }
      
      public function §7K§() : void
      {
         if(this.§@>§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§@>§);
         this.§@>§ = null;
      }
      
      protected function §%!p§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§89§ = 0;
            this.§6#2§ = true;
            super.dispatchEvent(new §5!>§(§5!>§.§>i§));
         }
         else if(param1.status == 400)
         {
            this.§89§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§89§ > 0)
         {
            --this.§89§;
            super.load(this.§]!C§);
            return true;
         }
         if(!this.§6#2§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§]!C§ = param1;
         if(this.§']§ > 0)
         {
            this.§%T§ = new Timer(this.§']§);
            this.§%T§.addEventListener(TimerEvent.TIMER,this.§=#$§);
            this.§%T§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §=#$§(param1:TimerEvent) : void
      {
         this.§%T§.removeEventListener(TimerEvent.TIMER,this.§=#$§);
         this.§%T§.reset();
         this.§%T§ = null;
         this.§']§ = 0;
         super.load(this.§]!C§);
      }
   }
}
