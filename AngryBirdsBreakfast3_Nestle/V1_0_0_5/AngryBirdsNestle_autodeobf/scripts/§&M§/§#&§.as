package §&M§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §#&§ extends URLLoader
   {
       
      
      protected var §-!M§:int;
      
      protected var §'"3§:URLRequest;
      
      protected var §@!X§:Number;
      
      protected var §"J§:Timer;
      
      protected var § y§:Boolean = false;
      
      protected var §^G§:URLRequest;
      
      public function §#&§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§-!M§ = param2;
         this.§'"3§ = param1;
         this.§@!X§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;""§);
      }
      
      public function §`y§(param1:URLRequest) : void
      {
         this.§^G§ = param1;
      }
      
      public function §4-§() : void
      {
         if(this.§^G§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§^G§);
         this.§^G§ = null;
      }
      
      protected function §;""§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§-!M§ = 0;
            this.§ y§ = true;
            super.dispatchEvent(new §!!>§(§!!>§.§0!B§));
         }
         else if(param1.status == 400)
         {
            this.§-!M§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§-!M§ > 0)
         {
            --this.§-!M§;
            super.load(this.§'"3§);
            return true;
         }
         if(!this.§ y§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§'"3§ = param1;
         if(this.§@!X§ > 0)
         {
            this.§"J§ = new Timer(this.§@!X§);
            this.§"J§.addEventListener(TimerEvent.TIMER,this.§&!B§);
            this.§"J§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §&!B§(param1:TimerEvent) : void
      {
         this.§"J§.removeEventListener(TimerEvent.TIMER,this.§&!B§);
         this.§"J§.reset();
         this.§"J§ = null;
         this.§@!X§ = 0;
         super.load(this.§'"3§);
      }
   }
}
