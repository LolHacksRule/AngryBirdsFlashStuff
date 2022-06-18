package §@!_§
{
   import § h§.§-!S§;
   import § h§.ErrorPopup;
   import § h§.WarningPopup;
   import §+Z§.§2!w§;
   import §4#$§.§5"L§;
   import §4#l§.§^$@§;
   import §7"1§.§!"`§;
   import §7"1§.§"$D§;
   import §7"1§.§5"f§;
   import §7"1§.§;" §;
   import §9!6§.§## §;
   import §<"8§.§ %§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §6Q§ extends EventDispatcher
   {
       
      
      private var §+!O§:§"$D§;
      
      private var §6"x§:Vector.<§^$@§>;
      
      private var §2#C§:Object;
      
      private var § !g§:Array;
      
      public function §6Q§()
      {
         super();
      }
      
      public function get §[!k§() : Vector.<§^$@§>
      {
         return this.§6"x§;
      }
      
      public function set §[!k§(param1:Vector.<§^$@§>) : void
      {
         this.§6"x§ = param1;
      }
      
      public function §!I§() : Array
      {
         return this.§!"v§(this.§[!k§);
      }
      
      public function §4?§() : Array
      {
         return this.§ !g§;
      }
      
      private function §!"v§(param1:*) : Array
      {
         var _loc3_:Object = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function §7c§() : void
      {
         if(this.§+!O§)
         {
            return;
         }
         this.§+!O§ = new §5"f§();
         this.§+!O§.addEventListener(Event.COMPLETE,this.§+$%§);
         this.§+!O§.addEventListener(IOErrorEvent.IO_ERROR,this.§-r§);
         this.§+!O§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-r§);
         this.§+!O§.addEventListener(§;" §.§`S§,this.§-r§);
         this.§+!O§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§+!O§.load(§!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/mobilelisting?" + §5"L§.§3"1§.§ !U§()));
      }
      
      private function §+$%§(param1:Event) : void
      {
         this.§+!O§.removeEventListener(Event.COMPLETE,this.§+$%§);
         this.§+!O§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-r§);
         this.§+!O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-r§);
         this.§+!O§.removeEventListener(§;" §.§`S§,this.§-r§);
         this.§0#p§(this.§+!O§.data);
         var _loc2_:§2!w§ = new §2!w§(Event.COMPLETE);
         if(this.§+!O§.data.mc)
         {
            _loc2_.§<"D§ = new § %§(this.§+!O§.data.mc);
         }
         if(this.§+!O§.data.pmc)
         {
            _loc2_.§5!h§ = new § %§(this.§+!O§.data.pmc);
         }
         dispatchEvent(_loc2_);
         this.§+!O§ = null;
      }
      
      private function §0#p§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§^$@§ = null;
         var _loc4_:§^$@§ = null;
         this.§6"x§ = new Vector.<§^$@§>();
         for(_loc2_ in param1.prices)
         {
            _loc4_ = new §^$@§(_loc2_,param1.prices[_loc2_],param1.currency);
            this.§6"x§.push(_loc4_);
         }
         this.§ !g§ = [];
         for each(_loc3_ in this.§6"x§)
         {
            this.§ !g§.push(new § %§(_loc3_.§#"d§));
         }
         this.§ !g§.sortOn("name",Array.CASEINSENSITIVE);
      }
      
      private function §-r§(param1:Event) : void
      {
         this.§+!O§.removeEventListener(Event.COMPLETE,this.§+$%§);
         this.§+!O§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-r§);
         this.§+!O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-r§);
         this.§+!O§.removeEventListener(§;" §.§`S§,this.§-r§);
         if(param1.type == §;" §.§`S§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§&_§));
         }
         else
         {
            this.§[T§();
         }
         this.§+!O§ = null;
      }
      
      protected function §[T§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§-!S§.§ !^§,§## §.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
   }
}
