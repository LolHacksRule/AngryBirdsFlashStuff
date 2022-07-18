package §`!o§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §2,§ extends URLLoader
   {
       
      
      protected var §`"m§:int;
      
      protected var §^!y§:URLRequest;
      
      protected var §7!+§:Number;
      
      protected var §&"c§:Timer;
      
      protected var §?""§:Boolean = false;
      
      protected var §5#2§:URLRequest;
      
      public function §2,§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§`"m§ = param2;
         this.§^!y§ = param1;
         this.§7!+§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§-!c§);
      }
      
      public function §;#<§(param1:URLRequest) : void
      {
         this.§5#2§ = param1;
      }
      
      public function §="I§() : void
      {
         if(this.§5#2§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§5#2§);
         this.§5#2§ = null;
      }
      
      protected function §-!c§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§`"m§ = 0;
            this.§?""§ = true;
            super.dispatchEvent(new §##[§(§##[§.§>g§));
         }
         else if(param1.status == 400)
         {
            this.§`"m§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§`"m§ > 0)
         {
            --this.§`"m§;
            super.load(this.§^!y§);
            return true;
         }
         if(!this.§?""§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§^!y§ = param1;
         if(this.§7!+§ > 0)
         {
            this.§&"c§ = new Timer(this.§7!+§);
            this.§&"c§.addEventListener(TimerEvent.TIMER,this.§+#D§);
            this.§&"c§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §+#D§(param1:TimerEvent) : void
      {
         this.§&"c§.removeEventListener(TimerEvent.TIMER,this.§+#D§);
         this.§&"c§.reset();
         this.§&"c§ = null;
         this.§7!+§ = 0;
         super.load(this.§^!y§);
      }
   }
}
