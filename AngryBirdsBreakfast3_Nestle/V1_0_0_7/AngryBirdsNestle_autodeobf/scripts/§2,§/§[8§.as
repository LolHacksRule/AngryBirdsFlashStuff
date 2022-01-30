package §2,§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §[8§ extends URLLoader
   {
       
      
      protected var §5!;§:int;
      
      protected var §@"$§:URLRequest;
      
      protected var §>"!§:Number;
      
      protected var §2!K§:Timer;
      
      protected var §5'§:Boolean = false;
      
      protected var §0!A§:URLRequest;
      
      public function §[8§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§5!;§ = param2;
         this.§@"$§ = param1;
         this.§>"!§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#b§);
      }
      
      public function §@!+§(param1:URLRequest) : void
      {
         this.§0!A§ = param1;
      }
      
      public function §6!e§() : void
      {
         if(this.§0!A§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§0!A§);
         this.§0!A§ = null;
      }
      
      protected function §#b§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§5!;§ = 0;
            this.§5'§ = true;
            super.dispatchEvent(new §#3§(§#3§.§62§));
         }
         else if(param1.status == 400)
         {
            this.§5!;§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§5!;§ > 0)
         {
            --this.§5!;§;
            super.load(this.§@"$§);
            return true;
         }
         if(!this.§5'§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§@"$§ = param1;
         if(this.§>"!§ > 0)
         {
            this.§2!K§ = new Timer(this.§>"!§);
            this.§2!K§.addEventListener(TimerEvent.TIMER,this.§@!_§);
            this.§2!K§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §@!_§(param1:TimerEvent) : void
      {
         this.§2!K§.removeEventListener(TimerEvent.TIMER,this.§@!_§);
         this.§2!K§.reset();
         this.§2!K§ = null;
         this.§>"!§ = 0;
         super.load(this.§@"$§);
      }
   }
}
