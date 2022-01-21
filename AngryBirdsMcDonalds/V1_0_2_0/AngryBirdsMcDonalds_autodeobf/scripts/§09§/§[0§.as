package §09§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §[0§ extends URLLoader
   {
       
      
      protected var §+>§:int;
      
      protected var §9t§:URLRequest;
      
      protected var §3$§:Number;
      
      protected var §,!N§:Timer;
      
      protected var §=9§:Boolean = false;
      
      protected var §8]§:URLRequest;
      
      public function §[0§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§+>§ = param2;
         this.§9t§ = param1;
         this.§3$§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§6t§);
      }
      
      public function §4!E§(param1:URLRequest) : void
      {
         this.§8]§ = param1;
      }
      
      public function §-#§() : void
      {
         if(this.§8]§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§8]§);
         this.§8]§ = null;
      }
      
      protected function §6t§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§+>§ = 0;
            this.§=9§ = true;
            super.dispatchEvent(new §6q§(§6q§.§2!]§));
         }
         else if(param1.status == 400)
         {
            this.§+>§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§+>§ > 0)
         {
            --this.§+>§;
            super.load(this.§9t§);
            return true;
         }
         if(!this.§=9§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§9t§ = param1;
         if(this.§3$§ > 0)
         {
            this.§,!N§ = new Timer(this.§3$§);
            this.§,!N§.addEventListener(TimerEvent.TIMER,this.§"!1§);
            this.§,!N§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §"!1§(param1:TimerEvent) : void
      {
         this.§,!N§.removeEventListener(TimerEvent.TIMER,this.§"!1§);
         this.§,!N§.reset();
         this.§,!N§ = null;
         super.load(this.§9t§);
      }
   }
}
