package §;f§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §&!$§ extends URLLoader
   {
       
      
      protected var §2!-§:int;
      
      protected var §[!L§:URLRequest;
      
      protected var §^!&§:Number;
      
      protected var §;0§:Timer;
      
      protected var §8W§:Boolean = false;
      
      public function §&!$§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§2!-§ = param2;
         this.§[!L§ = param1;
         this.§^!&§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<! §);
      }
      
      protected function §<! §(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§2!-§ = 0;
            this.§8W§ = true;
            super.dispatchEvent(new §3X§(§3X§.§7k§));
         }
         else if(param1.status == 400)
         {
            this.§2!-§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§2!-§ > 0)
         {
            --this.§2!-§;
            super.load(this.§[!L§);
            return true;
         }
         if(!this.§8W§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§[!L§ = param1;
         if(this.§^!&§ > 0)
         {
            this.§;0§ = new Timer(this.§^!&§);
            this.§;0§.addEventListener(TimerEvent.TIMER,this.§?1§);
            this.§;0§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §?1§(param1:TimerEvent) : void
      {
         this.§;0§.removeEventListener(TimerEvent.TIMER,this.§?1§);
         this.§;0§.reset();
         this.§;0§ = null;
         super.load(this.§[!L§);
      }
   }
}
