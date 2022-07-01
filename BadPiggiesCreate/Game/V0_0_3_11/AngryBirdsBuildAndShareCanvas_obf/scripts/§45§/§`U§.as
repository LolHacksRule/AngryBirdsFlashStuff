package §45§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §`U§ extends URLLoader
   {
       
      
      protected var §"N§:int;
      
      protected var §="$§:URLRequest;
      
      protected var §<!F§:Number;
      
      protected var §"!_§:Timer;
      
      protected var §=8§:Boolean = false;
      
      protected var §=!U§:URLRequest;
      
      public function §`U§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§"N§ = param2;
         this.§="$§ = param1;
         this.§<!F§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§2l§);
      }
      
      public function §>!"§(param1:URLRequest) : void
      {
         this.§=!U§ = param1;
      }
      
      public function §8O§() : void
      {
         if(this.§=!U§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§=!U§);
         this.§=!U§ = null;
      }
      
      protected function §2l§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§"N§ = 0;
            this.§=8§ = true;
            super.dispatchEvent(new §6L§(§6L§.§`I§));
         }
         else if(param1.status == 400)
         {
            this.§"N§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§"N§ > 0)
         {
            --this.§"N§;
            super.load(this.§="$§);
            return true;
         }
         if(!this.§=8§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§="$§ = param1;
         if(this.§<!F§ > 0)
         {
            this.§"!_§ = new Timer(this.§<!F§);
            this.§"!_§.addEventListener(TimerEvent.TIMER,this.§[!;§);
            this.§"!_§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §[!;§(param1:TimerEvent) : void
      {
         this.§"!_§.removeEventListener(TimerEvent.TIMER,this.§[!;§);
         this.§"!_§.reset();
         this.§"!_§ = null;
         super.load(this.§="$§);
      }
   }
}
