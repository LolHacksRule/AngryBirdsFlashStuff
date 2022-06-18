package § $%§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §0#`§ extends URLLoader
   {
       
      
      protected var §4#l§:int;
      
      protected var §'d§:URLRequest;
      
      protected var §;;§:Number;
      
      protected var §-$+§:Timer;
      
      protected var §;#@§:Boolean = false;
      
      protected var §#!$§:URLRequest;
      
      public function §0#`§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§4#l§ = param2;
         this.§'d§ = param1;
         this.§;;§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%!'§);
      }
      
      public function §1h§(param1:URLRequest) : void
      {
         this.§#!$§ = param1;
      }
      
      public function §9#5§() : void
      {
         if(this.§#!$§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§#!$§);
         this.§#!$§ = null;
      }
      
      protected function §%!'§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§4#l§ = 0;
            this.§;#@§ = true;
            super.dispatchEvent(new §]e§(§]e§.§5!;§));
         }
         else if(param1.status == 400)
         {
            this.§4#l§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§4#l§ > 0)
         {
            --this.§4#l§;
            super.load(this.§'d§);
            return true;
         }
         if(!this.§;#@§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§'d§ = param1;
         if(this.§;;§ > 0)
         {
            this.§-$+§ = new Timer(this.§;;§);
            this.§-$+§.addEventListener(TimerEvent.TIMER,this.§8$1§);
            this.§-$+§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §8$1§(param1:TimerEvent) : void
      {
         this.§-$+§.removeEventListener(TimerEvent.TIMER,this.§8$1§);
         this.§-$+§.reset();
         this.§-$+§ = null;
         this.§;;§ = 0;
         super.load(this.§'d§);
      }
   }
}
