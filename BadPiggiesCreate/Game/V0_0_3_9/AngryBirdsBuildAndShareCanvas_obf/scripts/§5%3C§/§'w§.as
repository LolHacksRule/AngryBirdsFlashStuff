package §5<§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §'w§ extends URLLoader
   {
       
      
      protected var §5!e§:int;
      
      protected var §>!P§:URLRequest;
      
      protected var § &§:Number;
      
      protected var §>6§:Timer;
      
      protected var §2,§:Boolean = false;
      
      protected var §7"#§:URLRequest;
      
      public function §'w§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§5!e§ = param2;
         this.§>!P§ = param1;
         this.§ &§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§91§);
      }
      
      public function §8!r§(param1:URLRequest) : void
      {
         this.§7"#§ = param1;
      }
      
      public function §+!F§() : void
      {
         if(this.§7"#§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§7"#§);
         this.§7"#§ = null;
      }
      
      protected function §91§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§5!e§ = 0;
            this.§2,§ = true;
            super.dispatchEvent(new §?j§(§?j§.§+!-§));
         }
         else if(param1.status == 400)
         {
            this.§5!e§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§5!e§ > 0)
         {
            --this.§5!e§;
            super.load(this.§>!P§);
            return true;
         }
         if(!this.§2,§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§>!P§ = param1;
         if(this.§ &§ > 0)
         {
            this.§>6§ = new Timer(this.§ &§);
            this.§>6§.addEventListener(TimerEvent.TIMER,this.§@p§);
            this.§>6§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §@p§(param1:TimerEvent) : void
      {
         this.§>6§.removeEventListener(TimerEvent.TIMER,this.§@p§);
         this.§>6§.reset();
         this.§>6§ = null;
         super.load(this.§>!P§);
      }
   }
}
