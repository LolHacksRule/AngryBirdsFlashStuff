package §,!_§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §"!c§ extends URLLoader
   {
       
      
      protected var §&y§:int;
      
      protected var §>G§:URLRequest;
      
      protected var §#n§:Number;
      
      protected var §;"m§:Timer;
      
      protected var §=#,§:Boolean = false;
      
      protected var §^"w§:URLRequest;
      
      public function §"!c§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§&y§ = param2;
         this.§>G§ = param1;
         this.§#n§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<#6§);
      }
      
      public function §+!O§(param1:URLRequest) : void
      {
         this.§^"w§ = param1;
      }
      
      public function §`"N§() : void
      {
         if(this.§^"w§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§^"w§);
         this.§^"w§ = null;
      }
      
      protected function §<#6§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§&y§ = 0;
            this.§=#,§ = true;
            super.dispatchEvent(new §,"l§(§,"l§.§18§));
         }
         else if(param1.status == 400)
         {
            this.§&y§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§&y§ > 0)
         {
            --this.§&y§;
            super.load(this.§>G§);
            return true;
         }
         if(!this.§=#,§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§>G§ = param1;
         if(this.§#n§ > 0)
         {
            this.§;"m§ = new Timer(this.§#n§);
            this.§;"m§.addEventListener(TimerEvent.TIMER,this.§+"&§);
            this.§;"m§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §+"&§(param1:TimerEvent) : void
      {
         this.§;"m§.removeEventListener(TimerEvent.TIMER,this.§+"&§);
         this.§;"m§.reset();
         this.§;"m§ = null;
         this.§#n§ = 0;
         super.load(this.§>G§);
      }
   }
}
