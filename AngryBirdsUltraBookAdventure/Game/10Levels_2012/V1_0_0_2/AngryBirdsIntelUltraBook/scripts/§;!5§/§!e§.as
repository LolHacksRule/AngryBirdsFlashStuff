package §;!5§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §!e§ extends URLLoader
   {
       
      
      protected var §<s§:int;
      
      protected var §3!1§:URLRequest;
      
      protected var §^P§:Number;
      
      protected var §^<§:Timer;
      
      protected var §2!7§:Boolean = false;
      
      public function §!e§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§<s§ = param2;
         this.§3!1§ = param1;
         this.§^P§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§1!x§);
      }
      
      protected function §1!x§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§<s§ = 0;
            this.§2!7§ = true;
            super.dispatchEvent(new §3!^§(§3!^§.§2_§));
         }
         else if(param1.status == 400)
         {
            this.§<s§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§<s§ > 0)
         {
            --this.§<s§;
            super.load(this.§3!1§);
            return true;
         }
         if(!this.§2!7§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§3!1§ = param1;
         if(this.§^P§ > 0)
         {
            this.§^<§ = new Timer(this.§^P§);
            this.§^<§.addEventListener(TimerEvent.TIMER,this.§]1§);
            this.§^<§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §]1§(param1:TimerEvent) : void
      {
         this.§^<§.removeEventListener(TimerEvent.TIMER,this.§]1§);
         this.§^<§.reset();
         this.§^<§ = null;
         super.load(this.§3!1§);
      }
   }
}
