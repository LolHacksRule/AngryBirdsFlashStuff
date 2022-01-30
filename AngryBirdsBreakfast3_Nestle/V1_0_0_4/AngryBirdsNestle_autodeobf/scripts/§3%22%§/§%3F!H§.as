package §3"%§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §?!H§ extends URLLoader
   {
       
      
      protected var §7!V§:int;
      
      protected var §,X§:URLRequest;
      
      protected var §!" §:Number;
      
      protected var §>O§:Timer;
      
      protected var §4!G§:Boolean = false;
      
      protected var §>§:URLRequest;
      
      public function §?!H§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§7!V§ = param2;
         this.§,X§ = param1;
         this.§!" § = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§8!2§);
      }
      
      public function §[a§(param1:URLRequest) : void
      {
         this.§>§ = param1;
      }
      
      public function §,Z§() : void
      {
         if(this.§>§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§>§);
         this.§>§ = null;
      }
      
      protected function §8!2§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§7!V§ = 0;
            this.§4!G§ = true;
            super.dispatchEvent(new §[7§(§[7§.§2!<§));
         }
         else if(param1.status == 400)
         {
            this.§7!V§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§7!V§ > 0)
         {
            --this.§7!V§;
            super.load(this.§,X§);
            return true;
         }
         if(!this.§4!G§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§,X§ = param1;
         if(this.§!" § > 0)
         {
            this.§>O§ = new Timer(this.§!" §);
            this.§>O§.addEventListener(TimerEvent.TIMER,this.§-g§);
            this.§>O§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §-g§(param1:TimerEvent) : void
      {
         this.§>O§.removeEventListener(TimerEvent.TIMER,this.§-g§);
         this.§>O§.reset();
         this.§>O§ = null;
         this.§!" § = 0;
         super.load(this.§,X§);
      }
   }
}
