package § !Z§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class § t§ extends URLLoader
   {
       
      
      protected var §`!Z§:int;
      
      protected var §>!R§:URLRequest;
      
      protected var §`^§:Number;
      
      protected var §@J§:Timer;
      
      protected var §%i§:Boolean = false;
      
      protected var §^!I§:URLRequest;
      
      public function § t§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§`!Z§ = param2;
         this.§>!R§ = param1;
         this.§`^§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§ C§);
      }
      
      public function §[!2§(param1:URLRequest) : void
      {
         this.§^!I§ = param1;
      }
      
      public function §<!X§() : void
      {
         if(this.§^!I§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§^!I§);
         this.§^!I§ = null;
      }
      
      protected function § C§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§`!Z§ = 0;
            this.§%i§ = true;
            super.dispatchEvent(new §^M§(§^M§.§-§));
         }
         else if(param1.status == 400)
         {
            this.§`!Z§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§`!Z§ > 0)
         {
            --this.§`!Z§;
            super.load(this.§>!R§);
            return true;
         }
         if(!this.§%i§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§>!R§ = param1;
         if(this.§`^§ > 0)
         {
            this.§@J§ = new Timer(this.§`^§);
            this.§@J§.addEventListener(TimerEvent.TIMER,this.§>E§);
            this.§@J§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §>E§(param1:TimerEvent) : void
      {
         this.§@J§.removeEventListener(TimerEvent.TIMER,this.§>E§);
         this.§@J§.reset();
         this.§@J§ = null;
         super.load(this.§>!R§);
      }
   }
}
