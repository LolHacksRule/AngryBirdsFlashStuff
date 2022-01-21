package §]!A§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §`3§ extends URLLoader
   {
       
      
      protected var §2!<§:int;
      
      protected var §]j§:URLRequest;
      
      protected var §-O§:Number;
      
      protected var §!-§:Timer;
      
      protected var §&5§:Boolean = false;
      
      protected var §,!l§:URLRequest;
      
      public function §`3§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§2!<§ = param2;
         this.§]j§ = param1;
         this.§-O§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§`!o§);
      }
      
      public function § `§(param1:URLRequest) : void
      {
         this.§,!l§ = param1;
      }
      
      public function §-]§() : void
      {
         if(this.§,!l§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§,!l§);
         this.§,!l§ = null;
      }
      
      protected function §`!o§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§2!<§ = 0;
            this.§&5§ = true;
            super.dispatchEvent(new §[t§(§[t§.§7!F§));
         }
         else if(param1.status == 400)
         {
            this.§2!<§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§2!<§ > 0)
         {
            --this.§2!<§;
            super.load(this.§]j§);
            return true;
         }
         if(!this.§&5§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§]j§ = param1;
         if(this.§-O§ > 0)
         {
            this.§!-§ = new Timer(this.§-O§);
            this.§!-§.addEventListener(TimerEvent.TIMER,this.§%5§);
            this.§!-§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §%5§(param1:TimerEvent) : void
      {
         this.§!-§.removeEventListener(TimerEvent.TIMER,this.§%5§);
         this.§!-§.reset();
         this.§!-§ = null;
         super.load(this.§]j§);
      }
   }
}
