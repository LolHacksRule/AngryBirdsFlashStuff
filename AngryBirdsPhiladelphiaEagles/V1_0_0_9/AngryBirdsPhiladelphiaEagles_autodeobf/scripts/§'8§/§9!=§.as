package §'8§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §9!=§ extends URLLoader
   {
       
      
      protected var §+v§:int;
      
      protected var §;?§:URLRequest;
      
      protected var §9O§:Number;
      
      protected var § e§:Timer;
      
      protected var §4!"§:Boolean = false;
      
      public function §9!=§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§+v§ = param2;
         this.§;?§ = param1;
         this.§9O§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'_§);
      }
      
      protected function §'_§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§+v§ = 0;
            this.§4!"§ = true;
            super.dispatchEvent(new §%[§(§%[§.§23§));
         }
         else if(param1.status == 400)
         {
            this.§+v§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§+v§ > 0)
         {
            --this.§+v§;
            super.load(this.§;?§);
            return true;
         }
         if(!this.§4!"§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§;?§ = param1;
         if(this.§9O§ > 0)
         {
            this.§ e§ = new Timer(this.§9O§);
            this.§ e§.addEventListener(TimerEvent.TIMER,this.§1!L§);
            this.§ e§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §1!L§(param1:TimerEvent) : void
      {
         this.§ e§.removeEventListener(TimerEvent.TIMER,this.§1!L§);
         this.§ e§.reset();
         this.§ e§ = null;
         super.load(this.§;?§);
      }
   }
}
