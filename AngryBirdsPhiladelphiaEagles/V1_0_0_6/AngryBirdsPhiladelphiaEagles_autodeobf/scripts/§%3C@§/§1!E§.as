package §<@§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §1!E§ extends URLLoader
   {
       
      
      protected var §-p§:int;
      
      protected var §7p§:URLRequest;
      
      protected var §0h§:Number;
      
      protected var §;I§:Timer;
      
      protected var §+2§:Boolean = false;
      
      public function §1!E§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§-p§ = param2;
         this.§7p§ = param1;
         this.§0h§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§7X§);
      }
      
      protected function §7X§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§-p§ = 0;
            this.§+2§ = true;
            super.dispatchEvent(new §9!6§(§9!6§.§9,§));
         }
         else if(param1.status == 400)
         {
            this.§-p§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§-p§ > 0)
         {
            --this.§-p§;
            super.load(this.§7p§);
            return true;
         }
         if(!this.§+2§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§7p§ = param1;
         if(this.§0h§ > 0)
         {
            this.§;I§ = new Timer(this.§0h§);
            this.§;I§.addEventListener(TimerEvent.TIMER,this.§=5§);
            this.§;I§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §=5§(param1:TimerEvent) : void
      {
         this.§;I§.removeEventListener(TimerEvent.TIMER,this.§=5§);
         this.§;I§.reset();
         this.§;I§ = null;
         super.load(this.§7p§);
      }
   }
}
