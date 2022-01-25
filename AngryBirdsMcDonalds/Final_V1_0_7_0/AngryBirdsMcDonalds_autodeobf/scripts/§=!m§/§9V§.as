package §=!m§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §9V§ extends URLLoader
   {
       
      
      protected var §^!U§:int;
      
      protected var §8W§:URLRequest;
      
      protected var §-c§:Number;
      
      protected var §!@§:Timer;
      
      protected var §4C§:Boolean = false;
      
      protected var §8-§:URLRequest;
      
      public function §9V§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§^!U§ = param2;
         this.§8W§ = param1;
         this.§-c§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§,!0§);
      }
      
      public function §`!l§(param1:URLRequest) : void
      {
         this.§8-§ = param1;
      }
      
      public function §8!@§() : void
      {
         if(this.§8-§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§8-§);
         this.§8-§ = null;
      }
      
      protected function §,!0§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§^!U§ = 0;
            this.§4C§ = true;
            super.dispatchEvent(new §9!'§(§9!'§.§4i§));
         }
         else if(param1.status == 400)
         {
            this.§^!U§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§^!U§ > 0)
         {
            --this.§^!U§;
            super.load(this.§8W§);
            return true;
         }
         if(!this.§4C§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§8W§ = param1;
         if(this.§-c§ > 0)
         {
            this.§!@§ = new Timer(this.§-c§);
            this.§!@§.addEventListener(TimerEvent.TIMER,this.§0b§);
            this.§!@§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §0b§(param1:TimerEvent) : void
      {
         this.§!@§.removeEventListener(TimerEvent.TIMER,this.§0b§);
         this.§!@§.reset();
         this.§!@§ = null;
         super.load(this.§8W§);
      }
   }
}
