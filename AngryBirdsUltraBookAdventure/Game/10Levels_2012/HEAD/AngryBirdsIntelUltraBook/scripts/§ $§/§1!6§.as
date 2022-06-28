package § $§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §1!6§ extends URLLoader
   {
       
      
      [Event(name="thirdPartyCookiesDisabled",type="com.rovio.server.RetryingURLLoaderErrorEvent")]
      protected var § !1§:int;
      
      protected var §1!M§:URLRequest;
      
      protected var §+!S§:Number;
      
      protected var §8g§:Timer;
      
      protected var §1x§:Boolean = false;
      
      public function §1!6§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§ !1§ = param2;
         this.§1!M§ = param1;
         this.§+!S§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&S§);
      }
      
      protected function §&S§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§ !1§ = 0;
            this.§1x§ = true;
            super.dispatchEvent(new RetryingURLLoaderErrorEvent(RetryingURLLoaderErrorEvent.§9#§));
         }
         else if(param1.status == 400)
         {
            this.§ !1§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§ !1§ > 0)
         {
            --this.§ !1§;
            super.load(this.§1!M§);
            return true;
         }
         if(!this.§1x§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§1!M§ = param1;
         if(this.§+!S§ > 0)
         {
            this.§8g§ = new Timer(this.§+!S§);
            this.§8g§.addEventListener(TimerEvent.TIMER,this.§7u§);
            this.§8g§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §7u§(param1:TimerEvent) : void
      {
         this.§8g§.removeEventListener(TimerEvent.TIMER,this.§7u§);
         this.§8g§.reset();
         this.§8g§ = null;
         super.load(this.§1!M§);
      }
   }
}
