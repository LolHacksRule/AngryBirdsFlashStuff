package §7"1§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §"$D§ extends URLLoader
   {
       
      
      protected var §%">§:int;
      
      protected var §1!9§:URLRequest;
      
      protected var §6"e§:Number;
      
      protected var §[!5§:Timer;
      
      protected var §?G§:Boolean = false;
      
      protected var §,#H§:URLRequest;
      
      public function §"$D§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§%">§ = param2;
         this.§1!9§ = param1;
         this.§6"e§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§^m§);
      }
      
      public function §'7§(param1:URLRequest) : void
      {
         this.§,#H§ = param1;
      }
      
      public function §=$E§() : void
      {
         if(this.§,#H§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§,#H§);
         this.§,#H§ = null;
      }
      
      protected function §^m§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§%">§ = 0;
            this.§?G§ = true;
            super.dispatchEvent(new §;" §(§;" §.§`S§));
         }
         else if(param1.status == 400)
         {
            this.§%">§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§%">§ > 0)
         {
            --this.§%">§;
            super.load(this.§1!9§);
            return true;
         }
         if(!this.§?G§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§1!9§ = param1;
         if(this.§6"e§ > 0)
         {
            this.§[!5§ = new Timer(this.§6"e§);
            this.§[!5§.addEventListener(TimerEvent.TIMER,this.§["o§);
            this.§[!5§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §["o§(param1:TimerEvent) : void
      {
         this.§[!5§.removeEventListener(TimerEvent.TIMER,this.§["o§);
         this.§[!5§.reset();
         this.§[!5§ = null;
         this.§6"e§ = 0;
         super.load(this.§1!9§);
      }
   }
}
