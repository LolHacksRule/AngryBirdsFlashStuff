package §^!7§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §[!<§ extends URLLoader
   {
       
      
      [Event(name="thirdPartyCookiesDisabled",type="com.rovio.server.RetryingURLLoaderErrorEvent")]
      protected var §>O§:int;
      
      protected var §=8§:URLRequest;
      
      protected var §>!d§:Number;
      
      protected var §0!d§:Timer;
      
      protected var §0!h§:Boolean = false;
      
      public function §[!<§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§>O§ = param2;
         this.§=8§ = param1;
         this.§>!d§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§]!5§);
      }
      
      protected function §]!5§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§>O§ = 0;
            this.§0!h§ = true;
            super.dispatchEvent(new RetryingURLLoaderErrorEvent(RetryingURLLoaderErrorEvent.§6!O§));
         }
         else if(param1.status == 400)
         {
            this.§>O§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§>O§ > 0)
         {
            --this.§>O§;
            super.load(this.§=8§);
            return true;
         }
         if(!this.§0!h§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§=8§ = param1;
         if(this.§>!d§ > 0)
         {
            this.§0!d§ = new Timer(this.§>!d§);
            this.§0!d§.addEventListener(TimerEvent.TIMER,this.§3!Y§);
            this.§0!d§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §3!Y§(param1:TimerEvent) : void
      {
         this.§0!d§.removeEventListener(TimerEvent.TIMER,this.§3!Y§);
         this.§0!d§.reset();
         this.§0!d§ = null;
         super.load(this.§=8§);
      }
   }
}
