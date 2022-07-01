package §=j§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §?<§ extends URLLoader
   {
       
      
      protected var §7]§:int;
      
      protected var §2!E§:URLRequest;
      
      protected var §9!E§:Number;
      
      protected var §>L§:Timer;
      
      protected var §0!Y§:Boolean = false;
      
      protected var §!!!§:URLRequest;
      
      public function §?<§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§7]§ = param2;
         this.§2!E§ = param1;
         this.§9!E§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9!]§);
      }
      
      public function §`9§(param1:URLRequest) : void
      {
         this.§!!!§ = param1;
      }
      
      public function §;!C§() : void
      {
         if(this.§!!!§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§!!!§);
         this.§!!!§ = null;
      }
      
      protected function §9!]§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§7]§ = 0;
            this.§0!Y§ = true;
            super.dispatchEvent(new §50§(§50§.§2"1§));
         }
         else if(param1.status == 400)
         {
            this.§7]§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§7]§ > 0)
         {
            --this.§7]§;
            super.load(this.§2!E§);
            return true;
         }
         if(!this.§0!Y§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§2!E§ = param1;
         if(this.§9!E§ > 0)
         {
            this.§>L§ = new Timer(this.§9!E§);
            this.§>L§.addEventListener(TimerEvent.TIMER,this.§`_§);
            this.§>L§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §`_§(param1:TimerEvent) : void
      {
         this.§>L§.removeEventListener(TimerEvent.TIMER,this.§`_§);
         this.§>L§.reset();
         this.§>L§ = null;
         this.§9!E§ = 0;
         super.load(this.§2!E§);
      }
   }
}
