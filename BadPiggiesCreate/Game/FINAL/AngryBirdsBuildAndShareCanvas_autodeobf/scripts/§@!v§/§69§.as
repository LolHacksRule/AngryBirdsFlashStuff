package §@!v§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §69§ extends URLLoader
   {
       
      
      protected var §5!-§:int;
      
      protected var §[!=§:URLRequest;
      
      protected var §7!b§:Number;
      
      protected var §'j§:Timer;
      
      protected var §,"-§:Boolean = false;
      
      protected var §!!K§:URLRequest;
      
      public function §69§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§5!-§ = param2;
         this.§[!=§ = param1;
         this.§7!b§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<D§);
      }
      
      public function §1" §(param1:URLRequest) : void
      {
         this.§!!K§ = param1;
      }
      
      public function § D§() : void
      {
         if(this.§!!K§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§!!K§);
         this.§!!K§ = null;
      }
      
      protected function §<D§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§5!-§ = 0;
            this.§,"-§ = true;
            super.dispatchEvent(new §-;§(§-;§.§5"!§));
         }
         else if(param1.status == 400)
         {
            this.§5!-§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§5!-§ > 0)
         {
            --this.§5!-§;
            super.load(this.§[!=§);
            return true;
         }
         if(!this.§,"-§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§[!=§ = param1;
         if(this.§7!b§ > 0)
         {
            this.§'j§ = new Timer(this.§7!b§);
            this.§'j§.addEventListener(TimerEvent.TIMER,this.§'!4§);
            this.§'j§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §'!4§(param1:TimerEvent) : void
      {
         this.§'j§.removeEventListener(TimerEvent.TIMER,this.§'!4§);
         this.§'j§.reset();
         this.§'j§ = null;
         super.load(this.§[!=§);
      }
   }
}
