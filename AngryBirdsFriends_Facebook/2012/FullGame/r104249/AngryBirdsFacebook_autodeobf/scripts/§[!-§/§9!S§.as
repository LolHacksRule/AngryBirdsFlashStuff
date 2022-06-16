package §[!-§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §9!S§ extends URLLoader
   {
       
      
      protected var §"!&§:int;
      
      protected var §&Q§:URLRequest;
      
      protected var § y§:Number;
      
      protected var § "!§:Timer;
      
      protected var §3"!§:Boolean = false;
      
      protected var §4A§:URLRequest;
      
      public function §9!S§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§"!&§ = param2;
         this.§&Q§ = param1;
         this.§ y§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§=A§);
      }
      
      public function §1!E§(param1:URLRequest) : void
      {
         this.§4A§ = param1;
      }
      
      public function §%! §() : void
      {
         if(this.§4A§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§4A§);
         this.§4A§ = null;
      }
      
      protected function §=A§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§"!&§ = 0;
            this.§3"!§ = true;
            super.dispatchEvent(new §="B§(§="B§.§2"B§));
         }
         else if(param1.status == 400)
         {
            this.§"!&§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§"!&§ > 0)
         {
            --this.§"!&§;
            super.load(this.§&Q§);
            return true;
         }
         if(!this.§3"!§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§&Q§ = param1;
         if(this.§ y§ > 0)
         {
            this.§ "!§ = new Timer(this.§ y§);
            this.§ "!§.addEventListener(TimerEvent.TIMER,this.§4&§);
            this.§ "!§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §4&§(param1:TimerEvent) : void
      {
         this.§ "!§.removeEventListener(TimerEvent.TIMER,this.§4&§);
         this.§ "!§.reset();
         this.§ "!§ = null;
         super.load(this.§&Q§);
      }
   }
}
