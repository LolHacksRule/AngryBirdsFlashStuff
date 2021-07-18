package §2<§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §3d§ extends URLLoader
   {
       
      
      protected var §>Z§:int;
      
      protected var §#",§:URLRequest;
      
      protected var §48§:Number;
      
      protected var §!"Z§:Timer;
      
      protected var §#x§:Boolean = false;
      
      protected var §2"1§:URLRequest;
      
      public function §3d§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§>Z§ = param2;
         this.§#",§ = param1;
         this.§48§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§`c§);
      }
      
      public function §[&§(param1:URLRequest) : void
      {
         this.§2"1§ = param1;
      }
      
      public function §9^§() : void
      {
         if(this.§2"1§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§2"1§);
         this.§2"1§ = null;
      }
      
      protected function §`c§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§>Z§ = 0;
            this.§#x§ = true;
            super.dispatchEvent(new §9G§(§9G§.§33§));
         }
         else if(param1.status == 400)
         {
            this.§>Z§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§>Z§ > 0)
         {
            --this.§>Z§;
            super.load(this.§#",§);
            return true;
         }
         if(!this.§#x§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§#",§ = param1;
         if(this.§48§ > 0)
         {
            this.§!"Z§ = new Timer(this.§48§);
            this.§!"Z§.addEventListener(TimerEvent.TIMER,this.§^!4§);
            this.§!"Z§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §^!4§(param1:TimerEvent) : void
      {
         this.§!"Z§.removeEventListener(TimerEvent.TIMER,this.§^!4§);
         this.§!"Z§.reset();
         this.§!"Z§ = null;
         super.load(this.§#",§);
      }
   }
}
