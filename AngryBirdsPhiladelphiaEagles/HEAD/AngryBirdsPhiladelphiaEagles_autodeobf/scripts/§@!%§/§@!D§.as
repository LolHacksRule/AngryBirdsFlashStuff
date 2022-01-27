package §@!%§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §@!D§ extends URLLoader
   {
       
      
      protected var §5,§:int;
      
      protected var §6!"§:URLRequest;
      
      protected var §#j§:Number;
      
      protected var §"!C§:Timer;
      
      protected var §!7§:Boolean = false;
      
      public function §@!D§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§5,§ = param2;
         this.§6!"§ = param1;
         this.§#j§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§1-§);
      }
      
      protected function §1-§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§5,§ = 0;
            this.§!7§ = true;
            super.dispatchEvent(new §<R§(§<R§.§^!>§));
         }
         else if(param1.status == 400)
         {
            this.§5,§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§5,§ > 0)
         {
            --this.§5,§;
            super.load(this.§6!"§);
            return true;
         }
         if(!this.§!7§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§6!"§ = param1;
         if(this.§#j§ > 0)
         {
            this.§"!C§ = new Timer(this.§#j§);
            this.§"!C§.addEventListener(TimerEvent.TIMER,this.§9!C§);
            this.§"!C§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §9!C§(param1:TimerEvent) : void
      {
         this.§"!C§.removeEventListener(TimerEvent.TIMER,this.§9!C§);
         this.§"!C§.reset();
         this.§"!C§ = null;
         super.load(this.§6!"§);
      }
   }
}
