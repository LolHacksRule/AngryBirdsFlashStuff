package §6!C§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §<!R§ extends URLLoader
   {
       
      
      protected var § !'§:int;
      
      protected var §[!6§:URLRequest;
      
      protected var § !1§:Number;
      
      protected var §+Q§:Timer;
      
      protected var §5"1§:Boolean = false;
      
      protected var §8!^§:URLRequest;
      
      public function §<!R§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§ !'§ = param2;
         this.§[!6§ = param1;
         this.§ !1§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9t§);
      }
      
      public function §!9§(param1:URLRequest) : void
      {
         this.§8!^§ = param1;
      }
      
      public function §,!,§() : void
      {
         if(this.§8!^§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§8!^§);
         this.§8!^§ = null;
      }
      
      protected function §9t§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§ !'§ = 0;
            this.§5"1§ = true;
            super.dispatchEvent(new §'!%§(§'!%§.§<",§));
         }
         else if(param1.status == 400)
         {
            this.§ !'§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§ !'§ > 0)
         {
            --this.§ !'§;
            super.load(this.§[!6§);
            return true;
         }
         if(!this.§5"1§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§[!6§ = param1;
         if(this.§ !1§ > 0)
         {
            this.§+Q§ = new Timer(this.§ !1§);
            this.§+Q§.addEventListener(TimerEvent.TIMER,this.§[! §);
            this.§+Q§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §[! §(param1:TimerEvent) : void
      {
         this.§+Q§.removeEventListener(TimerEvent.TIMER,this.§[! §);
         this.§+Q§.reset();
         this.§+Q§ = null;
         this.§ !1§ = 0;
         super.load(this.§[!6§);
      }
   }
}
