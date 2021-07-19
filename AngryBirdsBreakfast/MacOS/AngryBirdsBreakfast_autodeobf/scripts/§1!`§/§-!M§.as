package §1!`§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §-!M§ extends URLLoader
   {
       
      
      protected var §'!x§:int;
      
      protected var §8>§:URLRequest;
      
      protected var §]!6§:Number;
      
      protected var §["!§:Timer;
      
      protected var §>!c§:Boolean = false;
      
      protected var §2$§:URLRequest;
      
      public function §-!M§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§'!x§ = param2;
         this.§8>§ = param1;
         this.§]!6§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§]o§);
      }
      
      public function §+K§(param1:URLRequest) : void
      {
         this.§2$§ = param1;
      }
      
      public function §>!§() : void
      {
         if(this.§2$§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§2$§);
         this.§2$§ = null;
      }
      
      protected function §]o§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§'!x§ = 0;
            this.§>!c§ = true;
            super.dispatchEvent(new §0!_§(§0!_§.§,!4§));
         }
         else if(param1.status == 400)
         {
            this.§'!x§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§'!x§ > 0)
         {
            --this.§'!x§;
            super.load(this.§8>§);
            return true;
         }
         if(!this.§>!c§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§8>§ = param1;
         if(this.§]!6§ > 0)
         {
            this.§["!§ = new Timer(this.§]!6§);
            this.§["!§.addEventListener(TimerEvent.TIMER,this.§4!v§);
            this.§["!§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §4!v§(param1:TimerEvent) : void
      {
         this.§["!§.removeEventListener(TimerEvent.TIMER,this.§4!v§);
         this.§["!§.reset();
         this.§["!§ = null;
         this.§]!6§ = 0;
         super.load(this.§8>§);
      }
   }
}
