package §+!h§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §]"1§ extends URLLoader
   {
       
      
      protected var §+!B§:int;
      
      protected var §`e§:URLRequest;
      
      protected var §["§:Number;
      
      protected var § !O§:Timer;
      
      protected var §9&§:Boolean = false;
      
      protected var §&!6§:URLRequest;
      
      public function §]"1§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§+!B§ = param2;
         this.§`e§ = param1;
         this.§["§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§7a§);
      }
      
      public function §,z§(param1:URLRequest) : void
      {
         this.§&!6§ = param1;
      }
      
      public function §<!_§() : void
      {
         if(this.§&!6§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§&!6§);
         this.§&!6§ = null;
      }
      
      protected function §7a§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§+!B§ = 0;
            this.§9&§ = true;
            super.dispatchEvent(new §`!O§(§`!O§.§4B§));
         }
         else if(param1.status == 400)
         {
            this.§+!B§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§+!B§ > 0)
         {
            --this.§+!B§;
            super.load(this.§`e§);
            return true;
         }
         if(!this.§9&§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§`e§ = param1;
         if(this.§["§ > 0)
         {
            this.§ !O§ = new Timer(this.§["§);
            this.§ !O§.addEventListener(TimerEvent.TIMER,this.§!! §);
            this.§ !O§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §!! §(param1:TimerEvent) : void
      {
         this.§ !O§.removeEventListener(TimerEvent.TIMER,this.§!! §);
         this.§ !O§.reset();
         this.§ !O§ = null;
         super.load(this.§`e§);
      }
   }
}
