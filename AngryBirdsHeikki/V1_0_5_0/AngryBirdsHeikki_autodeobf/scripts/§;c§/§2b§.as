package §;c§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §2b§ extends URLLoader
   {
       
      
      protected var §=7§:int;
      
      protected var §7!N§:URLRequest;
      
      protected var §=Q§:Number;
      
      protected var §1! §:Timer;
      
      protected var §<v§:Boolean = false;
      
      public function §2b§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§=7§ = param2;
         this.§7!N§ = param1;
         this.§=Q§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§,!N§);
      }
      
      protected function §,!N§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§=7§ = 0;
            this.§<v§ = true;
            super.dispatchEvent(new §0o§(§0o§.§3D§));
         }
         else if(param1.status == 400)
         {
            this.§=7§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§=7§ > 0)
         {
            --this.§=7§;
            super.load(this.§7!N§);
            return true;
         }
         if(!this.§<v§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§7!N§ = param1;
         if(this.§=Q§ > 0)
         {
            this.§1! § = new Timer(this.§=Q§);
            this.§1! §.addEventListener(TimerEvent.TIMER,this.§[!M§);
            this.§1! §.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §[!M§(param1:TimerEvent) : void
      {
         this.§1! §.removeEventListener(TimerEvent.TIMER,this.§[!M§);
         this.§1! §.reset();
         this.§1! § = null;
         super.load(this.§7!N§);
      }
   }
}
