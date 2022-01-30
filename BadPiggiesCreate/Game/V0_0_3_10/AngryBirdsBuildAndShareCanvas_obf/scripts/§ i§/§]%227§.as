package § i§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §]"7§ extends URLLoader
   {
       
      
      protected var §[!2§:int;
      
      protected var § g§:URLRequest;
      
      protected var §1#§:Number;
      
      protected var §>!-§:Timer;
      
      protected var §`;§:Boolean = false;
      
      protected var §#""§:URLRequest;
      
      public function §]"7§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§[!2§ = param2;
         this.§ g§ = param1;
         this.§1#§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§!F§);
      }
      
      public function §65§(param1:URLRequest) : void
      {
         this.§#""§ = param1;
      }
      
      public function §'0§() : void
      {
         if(this.§#""§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§#""§);
         this.§#""§ = null;
      }
      
      protected function §!F§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§[!2§ = 0;
            this.§`;§ = true;
            super.dispatchEvent(new §`! §(§`! §.§1""§));
         }
         else if(param1.status == 400)
         {
            this.§[!2§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§[!2§ > 0)
         {
            --this.§[!2§;
            super.load(this.§ g§);
            return true;
         }
         if(!this.§`;§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§ g§ = param1;
         if(this.§1#§ > 0)
         {
            this.§>!-§ = new Timer(this.§1#§);
            this.§>!-§.addEventListener(TimerEvent.TIMER,this.§1g§);
            this.§>!-§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §1g§(param1:TimerEvent) : void
      {
         this.§>!-§.removeEventListener(TimerEvent.TIMER,this.§1g§);
         this.§>!-§.reset();
         this.§>!-§ = null;
         super.load(this.§ g§);
      }
   }
}
