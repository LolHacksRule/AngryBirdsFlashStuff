package §5!8§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §0u§ extends URLLoader
   {
       
      
      protected var §#h§:int;
      
      protected var § !$§:URLRequest;
      
      protected var §5!X§:Number;
      
      protected var §+!+§:Timer;
      
      protected var §5q§:Boolean = false;
      
      protected var §#Q§:URLRequest;
      
      public function §0u§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§#h§ = param2;
         this.§ !$§ = param1;
         this.§5!X§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§^,§);
      }
      
      public function §>6§(param1:URLRequest) : void
      {
         this.§#Q§ = param1;
      }
      
      public function §5p§() : void
      {
         if(this.§#Q§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§#Q§);
         this.§#Q§ = null;
      }
      
      protected function §^,§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§#h§ = 0;
            this.§5q§ = true;
            super.dispatchEvent(new §,t§(§,t§.§2!f§));
         }
         else if(param1.status == 400)
         {
            this.§#h§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§#h§ > 0)
         {
            --this.§#h§;
            super.load(this.§ !$§);
            return true;
         }
         if(!this.§5q§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§ !$§ = param1;
         if(this.§5!X§ > 0)
         {
            this.§+!+§ = new Timer(this.§5!X§);
            this.§+!+§.addEventListener(TimerEvent.TIMER,this.§0S§);
            this.§+!+§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §0S§(param1:TimerEvent) : void
      {
         this.§+!+§.removeEventListener(TimerEvent.TIMER,this.§0S§);
         this.§+!+§.reset();
         this.§+!+§ = null;
         super.load(this.§ !$§);
      }
   }
}
