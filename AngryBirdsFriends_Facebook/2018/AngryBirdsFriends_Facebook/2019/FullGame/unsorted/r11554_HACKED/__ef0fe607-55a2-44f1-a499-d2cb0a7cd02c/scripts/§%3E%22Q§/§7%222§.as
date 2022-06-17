package §>"Q§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §7"2§ extends URLLoader
   {
       
      
      protected var §=P§:int;
      
      protected var §use§:URLRequest;
      
      protected var §>""§:Number;
      
      protected var §="S§:Timer;
      
      protected var §4!"§:Boolean = false;
      
      protected var §8@§:URLRequest;
      
      public function §7"2§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§=P§ = param2;
         this.§use§ = param1;
         this.§>""§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§?"§);
      }
      
      public function §=_§(param1:URLRequest) : void
      {
         this.§8@§ = param1;
      }
      
      public function §]#C§() : void
      {
         if(this.§8@§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§8@§);
         this.§8@§ = null;
      }
      
      protected function §?"§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§=P§ = 0;
            this.§4!"§ = true;
            super.dispatchEvent(new §"!;§(§"!;§.§ #x§));
         }
         else if(param1.status == 400)
         {
            this.§=P§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§=P§ > 0)
         {
            --this.§=P§;
            super.load(this.§use§);
            return true;
         }
         if(!this.§4!"§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§use§ = param1;
         if(this.§>""§ > 0)
         {
            this.§="S§ = new Timer(this.§>""§);
            this.§="S§.addEventListener(TimerEvent.TIMER,this.§9o§);
            this.§="S§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §9o§(param1:TimerEvent) : void
      {
         this.§="S§.removeEventListener(TimerEvent.TIMER,this.§9o§);
         this.§="S§.reset();
         this.§="S§ = null;
         this.§>""§ = 0;
         super.load(this.§use§);
      }
   }
}
