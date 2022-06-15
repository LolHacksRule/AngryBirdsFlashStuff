package §1L§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §9#f§ extends URLLoader
   {
       
      
      protected var §%[§:int;
      
      protected var §4#m§:URLRequest;
      
      protected var §?#m§:Number;
      
      protected var §@q§:Timer;
      
      protected var §`!U§:Boolean = false;
      
      protected var §`K§:URLRequest;
      
      public function §9#f§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§%[§ = param2;
         this.§4#m§ = param1;
         this.§?#m§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§`!0§);
      }
      
      public function §=#1§(param1:URLRequest) : void
      {
         this.§`K§ = param1;
      }
      
      public function §#§() : void
      {
         if(this.§`K§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§`K§);
         this.§`K§ = null;
      }
      
      protected function §`!0§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§%[§ = 0;
            this.§`!U§ = true;
            super.dispatchEvent(new §>5§(§>5§.§@!@§));
         }
         else if(param1.status == 400)
         {
            this.§%[§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§%[§ > 0)
         {
            --this.§%[§;
            super.load(this.§4#m§);
            return true;
         }
         if(!this.§`!U§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§4#m§ = param1;
         if(this.§?#m§ > 0)
         {
            this.§@q§ = new Timer(this.§?#m§);
            this.§@q§.addEventListener(TimerEvent.TIMER,this.§8"<§);
            this.§@q§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §8"<§(param1:TimerEvent) : void
      {
         this.§@q§.removeEventListener(TimerEvent.TIMER,this.§8"<§);
         this.§@q§.reset();
         this.§@q§ = null;
         this.§?#m§ = 0;
         super.load(this.§4#m§);
      }
   }
}
