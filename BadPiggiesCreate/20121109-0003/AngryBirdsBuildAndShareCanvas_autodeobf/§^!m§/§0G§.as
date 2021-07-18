package §^!m§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §0G§ extends URLLoader
   {
       
      
      protected var §!!l§:int;
      
      protected var §6"%§:URLRequest;
      
      protected var §"!L§:Number;
      
      protected var §%!7§:Timer;
      
      protected var §]c§:Boolean = false;
      
      protected var §`Q§:URLRequest;
      
      public function §0G§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§!!l§ = param2;
         this.§6"%§ = param1;
         this.§"!L§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§8!x§);
      }
      
      public function §[!7§(param1:URLRequest) : void
      {
         this.§`Q§ = param1;
      }
      
      public function §9!Z§() : void
      {
         if(this.§`Q§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§`Q§);
         this.§`Q§ = null;
      }
      
      protected function §8!x§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§!!l§ = 0;
            this.§]c§ = true;
            super.dispatchEvent(new §""'§(§""'§.§+!'§));
         }
         else if(param1.status == 400)
         {
            this.§!!l§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§!!l§ > 0)
         {
            --this.§!!l§;
            super.load(this.§6"%§);
            return true;
         }
         if(!this.§]c§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§6"%§ = param1;
         if(this.§"!L§ > 0)
         {
            this.§%!7§ = new Timer(this.§"!L§);
            this.§%!7§.addEventListener(TimerEvent.TIMER,this.§-u§);
            this.§%!7§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §-u§(param1:TimerEvent) : void
      {
         this.§%!7§.removeEventListener(TimerEvent.TIMER,this.§-u§);
         this.§%!7§.reset();
         this.§%!7§ = null;
         super.load(this.§6"%§);
      }
   }
}
