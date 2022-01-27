package §""=§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §#R§ extends URLLoader
   {
       
      
      protected var §1"+§:int;
      
      protected var §="B§:URLRequest;
      
      protected var §9"'§:Number;
      
      protected var §=!B§:Timer;
      
      protected var §=!n§:Boolean = false;
      
      protected var §2!s§:URLRequest;
      
      public function §#R§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§1"+§ = param2;
         this.§="B§ = param1;
         this.§9"'§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§7'§);
      }
      
      public function §?B§(param1:URLRequest) : void
      {
         this.§2!s§ = param1;
      }
      
      public function §>0§() : void
      {
         if(this.§2!s§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§2!s§);
         this.§2!s§ = null;
      }
      
      protected function §7'§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§1"+§ = 0;
            this.§=!n§ = true;
            super.dispatchEvent(new §9N§(§9N§.§#!6§));
         }
         else if(param1.status == 400)
         {
            this.§1"+§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§1"+§ > 0)
         {
            --this.§1"+§;
            super.load(this.§="B§);
            return true;
         }
         if(!this.§=!n§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§="B§ = param1;
         if(this.§9"'§ > 0)
         {
            this.§=!B§ = new Timer(this.§9"'§);
            this.§=!B§.addEventListener(TimerEvent.TIMER,this.§31§);
            this.§=!B§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §31§(param1:TimerEvent) : void
      {
         this.§=!B§.removeEventListener(TimerEvent.TIMER,this.§31§);
         this.§=!B§.reset();
         this.§=!B§ = null;
         this.§9"'§ = 0;
         super.load(this.§="B§);
      }
   }
}
