package §4!C§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §"!m§ extends URLLoader
   {
       
      
      protected var §!!K§:int;
      
      protected var §&!u§:URLRequest;
      
      protected var §3!g§:Number;
      
      protected var §"!4§:Timer;
      
      protected var §?W§:Boolean = false;
      
      public function §"!m§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§!!K§ = param2;
         this.§&!u§ = param1;
         this.§3!g§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<G§);
      }
      
      protected function §<G§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§!!K§ = 0;
            this.§?W§ = true;
            super.dispatchEvent(new §^!g§(§^!g§.§]P§));
         }
         else if(param1.status == 400)
         {
            this.§!!K§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§!!K§ > 0)
         {
            --this.§!!K§;
            super.load(this.§&!u§);
            return true;
         }
         if(!this.§?W§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§&!u§ = param1;
         if(this.§3!g§ > 0)
         {
            this.§"!4§ = new Timer(this.§3!g§);
            this.§"!4§.addEventListener(TimerEvent.TIMER,this.§%!+§);
            this.§"!4§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §%!+§(param1:TimerEvent) : void
      {
         this.§"!4§.removeEventListener(TimerEvent.TIMER,this.§%!+§);
         this.§"!4§.reset();
         this.§"!4§ = null;
         super.load(this.§&!u§);
      }
   }
}
