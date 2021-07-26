package §4S§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §@#1§ extends URLLoader
   {
       
      
      protected var §]!I§:int;
      
      protected var §9j§:URLRequest;
      
      protected var §^#p§:Number;
      
      protected var §3",§:Timer;
      
      protected var §]"9§:Boolean = false;
      
      protected var §<!+§:URLRequest;
      
      public function §@#1§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§]!I§ = param2;
         this.§9j§ = param1;
         this.§^#p§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§]#y§);
      }
      
      public function §+,§(param1:URLRequest) : void
      {
         this.§<!+§ = param1;
      }
      
      public function §1!0§() : void
      {
         if(this.§<!+§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§<!+§);
         this.§<!+§ = null;
      }
      
      protected function §]#y§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§]!I§ = 0;
            this.§]"9§ = true;
            super.dispatchEvent(new §+!p§(§+!p§.§2$9§));
         }
         else if(param1.status == 400)
         {
            this.§]!I§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§]!I§ > 0)
         {
            --this.§]!I§;
            super.load(this.§9j§);
            return true;
         }
         if(!this.§]"9§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§9j§ = param1;
         if(this.§^#p§ > 0)
         {
            this.§3",§ = new Timer(this.§^#p§);
            this.§3",§.addEventListener(TimerEvent.TIMER,this.§'i§);
            this.§3",§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §'i§(param1:TimerEvent) : void
      {
         this.§3",§.removeEventListener(TimerEvent.TIMER,this.§'i§);
         this.§3",§.reset();
         this.§3",§ = null;
         this.§^#p§ = 0;
         super.load(this.§9j§);
      }
   }
}
