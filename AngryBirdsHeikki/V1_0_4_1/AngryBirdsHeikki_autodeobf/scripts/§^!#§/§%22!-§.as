package §^!#§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §"!-§ extends URLLoader
   {
       
      
      protected var §%M§:int;
      
      protected var § 7§:URLRequest;
      
      protected var §=n§:Number;
      
      protected var §0!"§:Timer;
      
      protected var §>4§:Boolean = false;
      
      public function §"!-§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§%M§ = param2;
         this.§ 7§ = param1;
         this.§=n§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§"R§);
      }
      
      protected function §"R§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§%M§ = 0;
            this.§>4§ = true;
            super.dispatchEvent(new §6!^§(§6!^§.§'<§));
         }
         else if(param1.status == 400)
         {
            this.§%M§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§%M§ > 0)
         {
            --this.§%M§;
            super.load(this.§ 7§);
            return true;
         }
         if(!this.§>4§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§ 7§ = param1;
         if(this.§=n§ > 0)
         {
            this.§0!"§ = new Timer(this.§=n§);
            this.§0!"§.addEventListener(TimerEvent.TIMER,this.§]!§);
            this.§0!"§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §]!§(param1:TimerEvent) : void
      {
         this.§0!"§.removeEventListener(TimerEvent.TIMER,this.§]!§);
         this.§0!"§.reset();
         this.§0!"§ = null;
         super.load(this.§ 7§);
      }
   }
}
