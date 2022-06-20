package §9"%§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §,!S§ extends URLLoader
   {
       
      
      protected var §@L§:int;
      
      protected var §-!q§:URLRequest;
      
      protected var §-!B§:Number;
      
      protected var §[!s§:Timer;
      
      protected var §9!G§:Boolean = false;
      
      protected var §#D§:URLRequest;
      
      public function §,!S§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§@L§ = param2;
         this.§-!q§ = param1;
         this.§-!B§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<!^§);
      }
      
      public function §'?§(param1:URLRequest) : void
      {
         this.§#D§ = param1;
      }
      
      public function §,!u§() : void
      {
         if(this.§#D§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§#D§);
         this.§#D§ = null;
      }
      
      protected function §<!^§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§@L§ = 0;
            this.§9!G§ = true;
            super.dispatchEvent(new §"!n§(§"!n§.§"+§));
         }
         else if(param1.status == 400)
         {
            this.§@L§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§@L§ > 0)
         {
            --this.§@L§;
            super.load(this.§-!q§);
            return true;
         }
         if(!this.§9!G§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§-!q§ = param1;
         if(this.§-!B§ > 0)
         {
            this.§[!s§ = new Timer(this.§-!B§);
            this.§[!s§.addEventListener(TimerEvent.TIMER,this.§7!B§);
            this.§[!s§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §7!B§(param1:TimerEvent) : void
      {
         this.§[!s§.removeEventListener(TimerEvent.TIMER,this.§7!B§);
         this.§[!s§.reset();
         this.§[!s§ = null;
         super.load(this.§-!q§);
      }
   }
}
