package §#!'§
{
   import §!"e§.§1y§;
   import §!"e§.§`"W§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §`!o§.§2,§;
   import §`!o§.§<9§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §+!D§
   {
      
      public static const §,"e§:int = 5 * 60;
       
      
      private var §=h§:String = "";
      
      private var §']§:int = 300.0;
      
      private var §1J§:Timer;
      
      private var §+>§:§2,§;
      
      private var §%"i§:Boolean = false;
      
      private var §'"D§:Boolean = false;
      
      public function §+!D§(param1:String, param2:int = 300.0)
      {
         super();
         this.§=h§ = param1;
         this.§']§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§1J§)
         {
            this.§1J§ = new Timer(this.§']§ * 1000);
            this.§1J§.addEventListener(TimerEvent.TIMER,this.§-K§);
            this.§1J§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§1J§)
         {
            this.§1J§.stop();
            this.§1J§.removeEventListener(TimerEvent.TIMER,this.§-K§);
            this.§1J§ = null;
         }
      }
      
      public function set §""O§(param1:Boolean) : void
      {
         this.§%"i§ = param1;
         if(!this.§%"i§ && this.§'"D§)
         {
            this.§^#@§();
         }
      }
      
      public function §9O§() : void
      {
         if(!this.§+>§)
         {
            this.§+>§ = new §2,§();
            this.§+>§.addEventListener(Event.COMPLETE,this.§]!s§);
            this.§+>§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§+>§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§+>§.load(§<9§.§""I§(§4#;§.SERVER_ROOT + "/serverversion"));
         }
      }
      
      private function §-K§(param1:Event) : void
      {
         this.§9O§();
      }
      
      private function §]!s§(param1:Event) : void
      {
         var _loc2_:String = this.§+>§.data;
         if(this.§=h§ == null || this.§=h§.length == 0)
         {
            this.§=h§ = _loc2_;
         }
         this.§+>§.removeEventListener(Event.COMPLETE,this.§]!s§);
         this.§+>§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§+>§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§+>§ = null;
         if(_loc2_ != this.§=h§)
         {
            if(this.§%"i§)
            {
               this.§'"D§ = true;
            }
            else
            {
               this.§^#@§();
            }
            this.§=h§ = _loc2_;
            this.stop();
         }
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         this.§+>§.removeEventListener(Event.COMPLETE,this.§]!s§);
         this.§+>§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§+>§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§+>§ = null;
      }
      
      private function §^#@§() : void
      {
         var _loc1_:§[!j§ = new §1y§(§`"W§.ERROR,§+5§.TOP);
         §4#;§.singleton.popupManager.openPopup(_loc1_);
      }
   }
}
