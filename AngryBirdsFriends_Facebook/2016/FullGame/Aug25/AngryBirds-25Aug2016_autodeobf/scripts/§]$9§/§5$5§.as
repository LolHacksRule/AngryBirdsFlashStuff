package §]$9§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §5$5§ extends URLLoader
   {
       
      
      protected var §3#y§:int;
      
      protected var §6#y§:URLRequest;
      
      protected var §3#Q§:Number;
      
      protected var §26§:Timer;
      
      protected var §`#§:Boolean = false;
      
      protected var §5!0§:URLRequest;
      
      public function §5$5§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§3#y§ = param2;
         this.§6#y§ = param1;
         this.§3#Q§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§-!$§);
      }
      
      public function §6#a§(param1:URLRequest) : void
      {
         this.§5!0§ = param1;
      }
      
      public function §9!G§() : void
      {
         if(this.§5!0§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§5!0§);
         this.§5!0§ = null;
      }
      
      protected function §-!$§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§3#y§ = 0;
            this.§`#§ = true;
            super.dispatchEvent(new §>#J§(§>#J§.§-$%§));
         }
         else if(param1.status == 400)
         {
            this.§3#y§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§3#y§ > 0)
         {
            --this.§3#y§;
            super.load(this.§6#y§);
            return true;
         }
         if(!this.§`#§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§6#y§ = param1;
         if(this.§3#Q§ > 0)
         {
            this.§26§ = new Timer(this.§3#Q§);
            this.§26§.addEventListener(TimerEvent.TIMER,this.§&"j§);
            this.§26§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §&"j§(param1:TimerEvent) : void
      {
         this.§26§.removeEventListener(TimerEvent.TIMER,this.§&"j§);
         this.§26§.reset();
         this.§26§ = null;
         this.§3#Q§ = 0;
         super.load(this.§6#y§);
      }
   }
}
