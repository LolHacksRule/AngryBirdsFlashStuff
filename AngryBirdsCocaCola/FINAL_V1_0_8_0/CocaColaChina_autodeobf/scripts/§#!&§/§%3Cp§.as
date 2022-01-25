package §#!&§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §<p§ extends URLLoader
   {
       
      
      protected var §5g§:int;
      
      protected var §%5§:URLRequest;
      
      protected var §#$§:Number;
      
      protected var §>!T§:Timer;
      
      protected var §<!P§:Boolean = false;
      
      public function §<p§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§5g§ = param2;
         this.§%5§ = param1;
         this.§#$§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§5!d§);
      }
      
      protected function §5!d§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§5g§ = 0;
            this.§<!P§ = true;
            super.dispatchEvent(new §"!L§(§"!L§.§,U§));
         }
         else if(param1.status == 400)
         {
            this.§5g§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§5g§ > 0)
         {
            --this.§5g§;
            super.load(this.§%5§);
            return true;
         }
         if(!this.§<!P§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§%5§ = param1;
         if(this.§#$§ > 0)
         {
            this.§>!T§ = new Timer(this.§#$§);
            this.§>!T§.addEventListener(TimerEvent.TIMER,this.§=!_§);
            this.§>!T§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §=!_§(param1:TimerEvent) : void
      {
         this.§>!T§.removeEventListener(TimerEvent.TIMER,this.§=!_§);
         this.§>!T§.reset();
         this.§>!T§ = null;
         super.load(this.§%5§);
      }
   }
}
