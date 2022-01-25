package §#%§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §@-§ extends URLLoader
   {
       
      
      protected var §%4§:int;
      
      protected var §<I§:URLRequest;
      
      protected var §2Z§:Number;
      
      protected var §8!a§:Timer;
      
      protected var §-!J§:Boolean = false;
      
      public function §@-§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§%4§ = param2;
         this.§<I§ = param1;
         this.§2Z§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§,M§);
      }
      
      protected function §,M§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§%4§ = 0;
            this.§-!J§ = true;
            super.dispatchEvent(new §9!F§(§9!F§.§?n§));
         }
         else if(param1.status == 400)
         {
            this.§%4§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§%4§ > 0)
         {
            --this.§%4§;
            super.load(this.§<I§);
            return true;
         }
         if(!this.§-!J§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§<I§ = param1;
         if(this.§2Z§ > 0)
         {
            this.§8!a§ = new Timer(this.§2Z§);
            this.§8!a§.addEventListener(TimerEvent.TIMER,this.§,!;§);
            this.§8!a§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §,!;§(param1:TimerEvent) : void
      {
         this.§8!a§.removeEventListener(TimerEvent.TIMER,this.§,!;§);
         this.§8!a§.reset();
         this.§8!a§ = null;
         super.load(this.§<I§);
      }
   }
}
