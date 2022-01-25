package §2!&§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §;"%§ extends URLLoader
   {
       
      
      protected var §`l§:int;
      
      protected var §^E§:URLRequest;
      
      protected var §,y§:Number;
      
      protected var §5m§:Timer;
      
      protected var § ",§:Boolean = false;
      
      protected var §4N§:URLRequest;
      
      public function §;"%§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§`l§ = param2;
         this.§^E§ = param1;
         this.§,y§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§`L§);
      }
      
      public function § m§(param1:URLRequest) : void
      {
         this.§4N§ = param1;
      }
      
      public function §<!#§() : void
      {
         if(this.§4N§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§4N§);
         this.§4N§ = null;
      }
      
      protected function §`L§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§`l§ = 0;
            this.§ ",§ = true;
            super.dispatchEvent(new §#4§(§#4§.§75§));
         }
         else if(param1.status == 400)
         {
            this.§`l§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§`l§ > 0)
         {
            --this.§`l§;
            super.load(this.§^E§);
            return true;
         }
         if(!this.§ ",§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§^E§ = param1;
         if(this.§,y§ > 0)
         {
            this.§5m§ = new Timer(this.§,y§);
            this.§5m§.addEventListener(TimerEvent.TIMER,this.§;!>§);
            this.§5m§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §;!>§(param1:TimerEvent) : void
      {
         this.§5m§.removeEventListener(TimerEvent.TIMER,this.§;!>§);
         this.§5m§.reset();
         this.§5m§ = null;
         this.§,y§ = 0;
         super.load(this.§^E§);
      }
   }
}
