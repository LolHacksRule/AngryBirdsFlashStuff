package §%!k§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §=!"§ extends URLLoader
   {
       
      
      protected var §1!b§:int;
      
      protected var §%!8§:URLRequest;
      
      protected var §'!@§:Number;
      
      protected var §#S§:Timer;
      
      protected var §8! §:Boolean = false;
      
      protected var §2"5§:URLRequest;
      
      public function §=!"§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§1!b§ = param2;
         this.§%!8§ = param1;
         this.§'!@§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<!_§);
      }
      
      public function §!m§(param1:URLRequest) : void
      {
         this.§2"5§ = param1;
      }
      
      public function §"!F§() : void
      {
         if(this.§2"5§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§2"5§);
         this.§2"5§ = null;
      }
      
      protected function §<!_§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§1!b§ = 0;
            this.§8! § = true;
            super.dispatchEvent(new §8!I§(§8!I§.§9!%§));
         }
         else if(param1.status == 400)
         {
            this.§1!b§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§1!b§ > 0)
         {
            --this.§1!b§;
            super.load(this.§%!8§);
            return true;
         }
         if(!this.§8! §)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§%!8§ = param1;
         if(this.§'!@§ > 0)
         {
            this.§#S§ = new Timer(this.§'!@§);
            this.§#S§.addEventListener(TimerEvent.TIMER,this.§[B§);
            this.§#S§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §[B§(param1:TimerEvent) : void
      {
         this.§#S§.removeEventListener(TimerEvent.TIMER,this.§[B§);
         this.§#S§.reset();
         this.§#S§ = null;
         super.load(this.§%!8§);
      }
   }
}
