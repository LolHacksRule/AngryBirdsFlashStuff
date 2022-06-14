package § "C§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §0]§ extends URLLoader
   {
       
      
      protected var §-w§:int;
      
      protected var §3!8§:URLRequest;
      
      protected var §'B§:Number;
      
      protected var §8!K§:Timer;
      
      protected var §2!+§:Boolean = false;
      
      protected var §8!M§:URLRequest;
      
      public function §0]§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§-w§ = param2;
         this.§3!8§ = param1;
         this.§'B§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%'§);
      }
      
      public function §%=§(param1:URLRequest) : void
      {
         this.§8!M§ = param1;
      }
      
      public function §5s§() : void
      {
         if(this.§8!M§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§8!M§);
         this.§8!M§ = null;
      }
      
      protected function §%'§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§-w§ = 0;
            this.§2!+§ = true;
            super.dispatchEvent(new §+!D§(§+!D§.§25§));
         }
         else if(param1.status == 400)
         {
            this.§-w§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§-w§ > 0)
         {
            --this.§-w§;
            super.load(this.§3!8§);
            return true;
         }
         if(!this.§2!+§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§3!8§ = param1;
         if(this.§'B§ > 0)
         {
            this.§8!K§ = new Timer(this.§'B§);
            this.§8!K§.addEventListener(TimerEvent.TIMER,this.§%!"§);
            this.§8!K§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §%!"§(param1:TimerEvent) : void
      {
         this.§8!K§.removeEventListener(TimerEvent.TIMER,this.§%!"§);
         this.§8!K§.reset();
         this.§8!K§ = null;
         super.load(this.§3!8§);
      }
   }
}
