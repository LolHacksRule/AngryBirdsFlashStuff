package § §#4
{
   import §0!s§.§]"Y§;
   import §1L§.§!!o§;
   import §1L§.§9#f§;
   import §1L§.§;#&§;
   import §1L§.§>5§;
   import §5" §.§<F§;
   import §6t§.§5#R§;
   import §<!r§.§'##§;
   import §=!f§.§8q§;
   import §>z§.§#"l§;
   import §>z§.ErrorPopup;
   import §>z§.WarningPopup;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §!!U§ extends EventDispatcher
   {
       
      
      private var §5!_§:§9#f§;
      
      private var §`#P§:Vector.<§<F§>;
      
      private var §%"@§:Object;
      
      private var §7#V§:Array;
      
      public function §!!U§()
      {
         super();
      }
      
      public function get § -§() : Vector.<§<F§>
      {
         return this.§`#P§;
      }
      
      public function set § -§(param1:Vector.<§<F§>) : void
      {
         this.§`#P§ = param1;
      }
      
      public function §=p§() : Array
      {
         return this.§,#B§(this.§ -§);
      }
      
      public function §`$9§() : Array
      {
         return this.§7#V§;
      }
      
      private function §,#B§(param1:*) : Array
      {
         var _loc3_:Object = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function §]!_§() : void
      {
         if(this.§5!_§)
         {
            return;
         }
         this.§5!_§ = new §!!o§();
         this.§5!_§.addEventListener(Event.COMPLETE,this.§%"1§);
         this.§5!_§.addEventListener(IOErrorEvent.IO_ERROR,this.§+`§);
         this.§5!_§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+`§);
         this.§5!_§.addEventListener(§>5§.§@!@§,this.§+`§);
         this.§5!_§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§5!_§.load(§;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/mobilelisting?" + §'##§.§`"H§.§'"H§()));
      }
      
      private function §%"1§(param1:Event) : void
      {
         this.§5!_§.removeEventListener(Event.COMPLETE,this.§%"1§);
         this.§5!_§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+`§);
         this.§5!_§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+`§);
         this.§5!_§.removeEventListener(§>5§.§@!@§,this.§+`§);
         this.§7@§(this.§5!_§.data);
         var _loc2_:§5#R§ = new §5#R§(Event.COMPLETE);
         if(this.§5!_§.data.mc)
         {
            _loc2_.§0#>§ = new §8q§(this.§5!_§.data.mc);
         }
         if(this.§5!_§.data.pmc)
         {
            _loc2_.§%#K§ = new §8q§(this.§5!_§.data.pmc);
         }
         dispatchEvent(_loc2_);
         this.§5!_§ = null;
      }
      
      private function §7@§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§<F§ = null;
         var _loc4_:§<F§ = null;
         this.§`#P§ = new Vector.<§<F§>();
         for(_loc2_ in param1.prices)
         {
            _loc4_ = new §<F§(_loc2_,param1.prices[_loc2_],param1.currency);
            this.§`#P§.push(_loc4_);
         }
         this.§7#V§ = [];
         for each(_loc3_ in this.§`#P§)
         {
            this.§7#V§.push(new §8q§(_loc3_.§>!Z§));
         }
         this.§7#V§.sortOn("name",Array.CASEINSENSITIVE);
      }
      
      private function §+`§(param1:Event) : void
      {
         this.§5!_§.removeEventListener(Event.COMPLETE,this.§%"1§);
         this.§5!_§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+`§);
         this.§5!_§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+`§);
         this.§5!_§.removeEventListener(§>5§.§@!@§,this.§+`§);
         if(param1.type == §>5§.§@!@§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $@§));
         }
         else
         {
            this.§;%§();
         }
         this.§5!_§ = null;
      }
      
      protected function §;%§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
   }
}
