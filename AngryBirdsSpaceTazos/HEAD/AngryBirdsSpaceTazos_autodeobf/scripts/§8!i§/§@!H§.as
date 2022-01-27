package §8!i§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §@!H§ extends URLLoader
   {
       
      
      protected var §6"A§:int;
      
      protected var §#Y§:URLRequest;
      
      protected var §^F§:Number;
      
      protected var §[![§:Timer;
      
      protected var §<!%§:Boolean = false;
      
      protected var §7!2§:URLRequest;
      
      public function §@!H§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§6"A§ = param2;
         this.§#Y§ = param1;
         this.§^F§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§=K§);
      }
      
      public function §!G§(param1:URLRequest) : void
      {
         this.§7!2§ = param1;
      }
      
      public function §[3§() : void
      {
         if(this.§7!2§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§7!2§);
         this.§7!2§ = null;
      }
      
      protected function §=K§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§6"A§ = 0;
            this.§<!%§ = true;
            super.dispatchEvent(new §^q§(§^q§.§get §));
         }
         else if(param1.status == 400)
         {
            this.§6"A§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§6"A§ > 0)
         {
            --this.§6"A§;
            super.load(this.§#Y§);
            return true;
         }
         if(!this.§<!%§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§#Y§ = param1;
         if(this.§^F§ > 0)
         {
            this.§[![§ = new Timer(this.§^F§);
            this.§[![§.addEventListener(TimerEvent.TIMER,this.§0-§);
            this.§[![§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §0-§(param1:TimerEvent) : void
      {
         this.§[![§.removeEventListener(TimerEvent.TIMER,this.§0-§);
         this.§[![§.reset();
         this.§[![§ = null;
         this.§^F§ = 0;
         super.load(this.§#Y§);
      }
   }
}
