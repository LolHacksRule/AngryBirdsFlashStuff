package §]8§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §8!5§ extends URLLoader
   {
       
      
      protected var §,6§:int;
      
      protected var § 8§:URLRequest;
      
      protected var §1!L§:Number;
      
      protected var §4!-§:Timer;
      
      protected var §2!P§:Boolean = false;
      
      public function §8!5§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§,6§ = param2;
         this.§ 8§ = param1;
         this.§1!L§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§+!=§);
      }
      
      protected function §+!=§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§,6§ = 0;
            this.§2!P§ = true;
            super.dispatchEvent(new §]#§(§]#§.§8`§));
         }
         else if(param1.status == 400)
         {
            this.§,6§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§,6§ > 0)
         {
            --this.§,6§;
            super.load(this.§ 8§);
            return true;
         }
         if(!this.§2!P§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§ 8§ = param1;
         if(this.§1!L§ > 0)
         {
            this.§4!-§ = new Timer(this.§1!L§);
            this.§4!-§.addEventListener(TimerEvent.TIMER,this.§6!9§);
            this.§4!-§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §6!9§(param1:TimerEvent) : void
      {
         this.§4!-§.removeEventListener(TimerEvent.TIMER,this.§6!9§);
         this.§4!-§.reset();
         this.§4!-§ = null;
         super.load(this.§ 8§);
      }
   }
}
