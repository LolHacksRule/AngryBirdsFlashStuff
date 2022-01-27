package §-Y§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §]!Q§ extends URLLoader
   {
       
      
      protected var §?E§:int;
      
      protected var §`n§:URLRequest;
      
      protected var §;3§:Number;
      
      protected var §4y§:Timer;
      
      protected var §4U§:Boolean = false;
      
      protected var §1"§:URLRequest;
      
      public function §]!Q§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§?E§ = param2;
         this.§`n§ = param1;
         this.§;3§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§3k§);
      }
      
      public function §,g§(param1:URLRequest) : void
      {
         this.§1"§ = param1;
      }
      
      public function §7T§() : void
      {
         if(this.§1"§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§1"§);
         this.§1"§ = null;
      }
      
      protected function §3k§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§?E§ = 0;
            this.§4U§ = true;
            super.dispatchEvent(new §7%§(§7%§.§]k§));
         }
         else if(param1.status == 400)
         {
            this.§?E§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§?E§ > 0)
         {
            --this.§?E§;
            super.load(this.§`n§);
            return true;
         }
         if(!this.§4U§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§`n§ = param1;
         if(this.§;3§ > 0)
         {
            this.§4y§ = new Timer(this.§;3§);
            this.§4y§.addEventListener(TimerEvent.TIMER,this.§4@§);
            this.§4y§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §4@§(param1:TimerEvent) : void
      {
         this.§4y§.removeEventListener(TimerEvent.TIMER,this.§4@§);
         this.§4y§.reset();
         this.§4y§ = null;
         super.load(this.§`n§);
      }
   }
}
