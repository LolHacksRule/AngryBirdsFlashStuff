package §[8§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §2a§ extends URLLoader
   {
       
      
      protected var §^O§:int;
      
      protected var §5!%§:URLRequest;
      
      protected var §]X§:Number;
      
      protected var § !i§:Timer;
      
      protected var §case§:Boolean = false;
      
      protected var §,!#§:URLRequest;
      
      public function §2a§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§^O§ = param2;
         this.§5!%§ = param1;
         this.§]X§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§^"1§);
      }
      
      public function §7!^§(param1:URLRequest) : void
      {
         this.§,!#§ = param1;
      }
      
      public function §,=§() : void
      {
         if(this.§,!#§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§,!#§);
         this.§,!#§ = null;
      }
      
      protected function §^"1§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§^O§ = 0;
            this.§case§ = true;
            super.dispatchEvent(new §'!B§(§'!B§.§7O§));
         }
         else if(param1.status == 400)
         {
            this.§^O§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§^O§ > 0)
         {
            --this.§^O§;
            super.load(this.§5!%§);
            return true;
         }
         if(!this.§case§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§5!%§ = param1;
         if(this.§]X§ > 0)
         {
            this.§ !i§ = new Timer(this.§]X§);
            this.§ !i§.addEventListener(TimerEvent.TIMER,this.§'F§);
            this.§ !i§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §'F§(param1:TimerEvent) : void
      {
         this.§ !i§.removeEventListener(TimerEvent.TIMER,this.§'F§);
         this.§ !i§.reset();
         this.§ !i§ = null;
         super.load(this.§5!%§);
      }
   }
}
