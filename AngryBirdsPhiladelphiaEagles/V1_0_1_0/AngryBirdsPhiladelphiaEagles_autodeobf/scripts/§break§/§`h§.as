package §break§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §`h§ extends URLLoader
   {
       
      
      protected var §<!<§:int;
      
      protected var §]&§:URLRequest;
      
      protected var §[2§:Number;
      
      protected var §6!%§:Timer;
      
      protected var §4!-§:Boolean = false;
      
      public function §`h§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§<!<§ = param2;
         this.§]&§ = param1;
         this.§[2§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§@2§);
      }
      
      protected function §@2§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§<!<§ = 0;
            this.§4!-§ = true;
            super.dispatchEvent(new §@9§(§@9§.§ -§));
         }
         else if(param1.status == 400)
         {
            this.§<!<§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§<!<§ > 0)
         {
            --this.§<!<§;
            super.load(this.§]&§);
            return true;
         }
         if(!this.§4!-§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§]&§ = param1;
         if(this.§[2§ > 0)
         {
            this.§6!%§ = new Timer(this.§[2§);
            this.§6!%§.addEventListener(TimerEvent.TIMER,this.§1w§);
            this.§6!%§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §1w§(param1:TimerEvent) : void
      {
         this.§6!%§.removeEventListener(TimerEvent.TIMER,this.§1w§);
         this.§6!%§.reset();
         this.§6!%§ = null;
         super.load(this.§]&§);
      }
   }
}
