package §^V§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §4S§ extends URLLoader
   {
       
      
      protected var §,!-§:int;
      
      protected var §[n§:URLRequest;
      
      protected var §2!e§:Number;
      
      protected var §+s§:Timer;
      
      protected var §-5§:Boolean = false;
      
      protected var §9[§:URLRequest;
      
      public function §4S§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§,!-§ = param2;
         this.§[n§ = param1;
         this.§2!e§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9`§);
      }
      
      public function §2!Z§(param1:URLRequest) : void
      {
         this.§9[§ = param1;
      }
      
      public function §>?§() : void
      {
         if(this.§9[§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§9[§);
         this.§9[§ = null;
      }
      
      protected function §9`§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§,!-§ = 0;
            this.§-5§ = true;
            super.dispatchEvent(new §;e§(§;e§.§<4§));
         }
         else if(param1.status == 400)
         {
            this.§,!-§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§,!-§ > 0)
         {
            --this.§,!-§;
            super.load(this.§[n§);
            return true;
         }
         if(!this.§-5§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§[n§ = param1;
         if(this.§2!e§ > 0)
         {
            this.§+s§ = new Timer(this.§2!e§);
            this.§+s§.addEventListener(TimerEvent.TIMER,this.§;!Z§);
            this.§+s§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §;!Z§(param1:TimerEvent) : void
      {
         this.§+s§.removeEventListener(TimerEvent.TIMER,this.§;!Z§);
         this.§+s§.reset();
         this.§+s§ = null;
         super.load(this.§[n§);
      }
   }
}
