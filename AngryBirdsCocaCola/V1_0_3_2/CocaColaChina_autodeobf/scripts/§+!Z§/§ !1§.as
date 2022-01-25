package §+!Z§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class § !1§ extends URLLoader
   {
       
      
      protected var §]B§:int;
      
      protected var §&!V§:URLRequest;
      
      protected var §%V§:Number;
      
      protected var §=L§:Timer;
      
      protected var §#!P§:Boolean = false;
      
      public function § !1§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§]B§ = param2;
         this.§&!V§ = param1;
         this.§%V§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§0T§);
      }
      
      protected function §0T§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§]B§ = 0;
            this.§#!P§ = true;
            super.dispatchEvent(new §%!1§(§%!1§.§2!]§));
         }
         else if(param1.status == 400)
         {
            this.§]B§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§]B§ > 0)
         {
            --this.§]B§;
            super.load(this.§&!V§);
            return true;
         }
         if(!this.§#!P§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§&!V§ = param1;
         if(this.§%V§ > 0)
         {
            this.§=L§ = new Timer(this.§%V§);
            this.§=L§.addEventListener(TimerEvent.TIMER,this.§#!1§);
            this.§=L§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §#!1§(param1:TimerEvent) : void
      {
         this.§=L§.removeEventListener(TimerEvent.TIMER,this.§#!1§);
         this.§=L§.reset();
         this.§=L§ = null;
         super.load(this.§&!V§);
      }
   }
}
