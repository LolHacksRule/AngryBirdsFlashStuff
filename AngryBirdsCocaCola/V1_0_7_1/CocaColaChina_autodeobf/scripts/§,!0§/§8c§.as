package §,!0§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §8c§ extends URLLoader
   {
       
      
      protected var §6Y§:int;
      
      protected var §'!O§:URLRequest;
      
      protected var §[z§:Number;
      
      protected var §"!$§:Timer;
      
      protected var § >§:Boolean = false;
      
      public function §8c§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§6Y§ = param2;
         this.§'!O§ = param1;
         this.§[z§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'W§);
      }
      
      protected function §'W§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§6Y§ = 0;
            this.§ >§ = true;
            super.dispatchEvent(new §8!a§(§8!a§.§-!J§));
         }
         else if(param1.status == 400)
         {
            this.§6Y§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§6Y§ > 0)
         {
            --this.§6Y§;
            super.load(this.§'!O§);
            return true;
         }
         if(!this.§ >§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§'!O§ = param1;
         if(this.§[z§ > 0)
         {
            this.§"!$§ = new Timer(this.§[z§);
            this.§"!$§.addEventListener(TimerEvent.TIMER,this.§+%§);
            this.§"!$§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §+%§(param1:TimerEvent) : void
      {
         this.§"!$§.removeEventListener(TimerEvent.TIMER,this.§+%§);
         this.§"!$§.reset();
         this.§"!$§ = null;
         super.load(this.§'!O§);
      }
   }
}
