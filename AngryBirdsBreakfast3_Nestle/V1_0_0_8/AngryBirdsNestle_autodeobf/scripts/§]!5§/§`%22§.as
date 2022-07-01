package §]!5§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §`"§ extends URLLoader
   {
       
      
      protected var §;"&§:int;
      
      protected var §!!G§:URLRequest;
      
      protected var § d§:Number;
      
      protected var §7!O§:Timer;
      
      protected var §'$§:Boolean = false;
      
      protected var §0!r§:URLRequest;
      
      public function §`"§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§;"&§ = param2;
         this.§!!G§ = param1;
         this.§ d§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§8B§);
      }
      
      public function §%T§(param1:URLRequest) : void
      {
         this.§0!r§ = param1;
      }
      
      public function §@t§() : void
      {
         if(this.§0!r§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§0!r§);
         this.§0!r§ = null;
      }
      
      protected function §8B§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§;"&§ = 0;
            this.§'$§ = true;
            super.dispatchEvent(new §-!0§(§-!0§.§>C§));
         }
         else if(param1.status == 400)
         {
            this.§;"&§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§;"&§ > 0)
         {
            --this.§;"&§;
            super.load(this.§!!G§);
            return true;
         }
         if(!this.§'$§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§!!G§ = param1;
         if(this.§ d§ > 0)
         {
            this.§7!O§ = new Timer(this.§ d§);
            this.§7!O§.addEventListener(TimerEvent.TIMER,this.§#n§);
            this.§7!O§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §#n§(param1:TimerEvent) : void
      {
         this.§7!O§.removeEventListener(TimerEvent.TIMER,this.§#n§);
         this.§7!O§.reset();
         this.§7!O§ = null;
         this.§ d§ = 0;
         super.load(this.§!!G§);
      }
   }
}
