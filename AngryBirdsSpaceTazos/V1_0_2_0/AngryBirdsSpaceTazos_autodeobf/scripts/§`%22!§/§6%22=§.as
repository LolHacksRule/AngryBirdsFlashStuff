package §`"!§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §6"=§ extends URLLoader
   {
       
      
      protected var §?@§:int;
      
      protected var §2!v§:URLRequest;
      
      protected var §0y§:Number;
      
      protected var §0C§:Timer;
      
      protected var §7"!§:Boolean = false;
      
      protected var §%K§:URLRequest;
      
      public function §6"=§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§?@§ = param2;
         this.§2!v§ = param1;
         this.§0y§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§[k§);
      }
      
      public function §=!U§(param1:URLRequest) : void
      {
         this.§%K§ = param1;
      }
      
      public function §97§() : void
      {
         if(this.§%K§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§%K§);
         this.§%K§ = null;
      }
      
      protected function §[k§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§?@§ = 0;
            this.§7"!§ = true;
            super.dispatchEvent(new §'9§(§'9§.§'!S§));
         }
         else if(param1.status == 400)
         {
            this.§?@§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§?@§ > 0)
         {
            --this.§?@§;
            super.load(this.§2!v§);
            return true;
         }
         if(!this.§7"!§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§2!v§ = param1;
         if(this.§0y§ > 0)
         {
            this.§0C§ = new Timer(this.§0y§);
            this.§0C§.addEventListener(TimerEvent.TIMER,this.§false§);
            this.§0C§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §false§(param1:TimerEvent) : void
      {
         this.§0C§.removeEventListener(TimerEvent.TIMER,this.§false§);
         this.§0C§.reset();
         this.§0C§ = null;
         super.load(this.§2!v§);
      }
   }
}
