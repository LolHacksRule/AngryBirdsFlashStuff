package §;$§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §]!T§ extends URLLoader
   {
       
      
      protected var §@![§:int;
      
      protected var §!S§:URLRequest;
      
      protected var §>!5§:Number;
      
      protected var §0!D§:Timer;
      
      protected var §@$§:Boolean = false;
      
      protected var §'!#§:URLRequest;
      
      public function §]!T§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         this.§@![§ = param2;
         this.§!S§ = param1;
         this.§>!5§ = param3;
         super(param1);
         addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§>c§);
      }
      
      public function §@0§(param1:URLRequest) : void
      {
         this.§'!#§ = param1;
      }
      
      public function §=$§() : void
      {
         if(this.§'!#§ == null)
         {
            throw new Error("Pending request is null.");
         }
         this.load(this.§'!#§);
         this.§'!#§ = null;
      }
      
      protected function §>c§(param1:HTTPStatusEvent) : void
      {
         if(param1.status == 403)
         {
            this.§@![§ = 0;
            this.§@$§ = true;
            super.dispatchEvent(new §^!%§(§^!%§.§6?§));
         }
         else if(param1.status == 400)
         {
            this.§@![§ = 0;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if((param1.type == IOErrorEvent.IO_ERROR || param1.type == SecurityErrorEvent.SECURITY_ERROR) && this.§@![§ > 0)
         {
            --this.§@![§;
            super.load(this.§!S§);
            return true;
         }
         if(!this.§@$§)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this.§!S§ = param1;
         if(this.§>!5§ > 0)
         {
            this.§0!D§ = new Timer(this.§>!5§);
            this.§0!D§.addEventListener(TimerEvent.TIMER,this.§9!@§);
            this.§0!D§.start();
         }
         else
         {
            super.load(param1);
         }
      }
      
      protected function §9!@§(param1:TimerEvent) : void
      {
         this.§0!D§.removeEventListener(TimerEvent.TIMER,this.§9!@§);
         this.§0!D§.reset();
         this.§0!D§ = null;
         super.load(this.§!S§);
      }
   }
}
