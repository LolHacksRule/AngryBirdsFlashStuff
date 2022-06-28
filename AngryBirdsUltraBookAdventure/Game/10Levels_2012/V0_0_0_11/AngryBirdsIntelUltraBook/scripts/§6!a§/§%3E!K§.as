package §6!a§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §>!K§ extends URLLoader
   {
       
      
      [Event(name="thirdPartyCookiesDisabled",type="com.rovio.server.RetryingURLLoaderErrorEvent")]
      protected var §6U§:int;
      
      protected var §,Q§:URLRequest;
      
      protected var §&!a§:Number;
      
      protected var §3!f§:Timer;
      
      protected var §8!N§:Boolean = false;
      
      public function §>!K§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§6U§ = param2;
         this.§,Q§ = param1;
         this.§&!a§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;9§);
      }
      
      protected function §;9§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§6U§ = 0;
            this.§8!N§ = true;
            super.dispatchEvent(new RetryingURLLoaderErrorEvent(RetryingURLLoaderErrorEvent.§3Y§));
         }
         else if(param1.status == 400)
         {
            this.§6U§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§6U§ > 0)
         {
            --this.§6U§;
            super.load(this.§,Q§);
            return true;
         }
         if(!this.§8!N§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§,Q§ = param1;
         if(this.§&!a§ > 0)
         {
            this.§3!f§ = new Timer(this.§&!a§);
            this.§3!f§.addEventListener(TimerEvent.TIMER,this.§#D§);
            this.§3!f§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §#D§(param1:TimerEvent) : void
      {
         this.§3!f§.removeEventListener(TimerEvent.TIMER,this.§#D§);
         this.§3!f§.reset();
         this.§3!f§ = null;
         super.load(this.§,Q§);
      }
   }
}
