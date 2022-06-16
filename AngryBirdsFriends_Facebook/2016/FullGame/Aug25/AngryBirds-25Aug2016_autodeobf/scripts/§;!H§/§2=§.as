package §;!H§
{
   import §"!U§.§<Z§;
   import §?!_§.§,$!§;
   import §?"R§.ErrorPopup;
   import §?"R§.WarningPopup;
   import §?"R§.§[W§;
   import §]$9§.§5$!§;
   import §]$9§.§5$5§;
   import §]$9§.§>#J§;
   import §]$9§.§>J§;
   import §^!,§.§<d§;
   import §^$4§.§3""§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §2=§ extends EventDispatcher
   {
       
      
      private var §9#j§:§5$5§;
      
      private var §-H§:Vector.<§<Z§>;
      
      private var §1n§:Object;
      
      private var § U§:Array;
      
      public function §2=§()
      {
         super();
      }
      
      public function get §<!E§() : Vector.<§<Z§>
      {
         return this.§-H§;
      }
      
      public function set §<!E§(param1:Vector.<§<Z§>) : void
      {
         this.§-H§ = param1;
      }
      
      public function §%#0§() : Array
      {
         return this.§%@§(this.§<!E§);
      }
      
      public function §1$4§() : Array
      {
         return this.§ U§;
      }
      
      private function §%@§(param1:*) : Array
      {
         var _loc3_:Object = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function §`!m§() : void
      {
         if(this.§9#j§)
         {
            return;
         }
         this.§9#j§ = new §5$!§();
         this.§9#j§.addEventListener(Event.COMPLETE,this.§;!$§);
         this.§9#j§.addEventListener(IOErrorEvent.IO_ERROR,this.§7!V§);
         this.§9#j§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7!V§);
         this.§9#j§.addEventListener(§>#J§.§-$%§,this.§7!V§);
         this.§9#j§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§9#j§.load(§>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/mobilelisting/"));
      }
      
      private function §;!$§(param1:Event) : void
      {
         this.§9#j§.removeEventListener(Event.COMPLETE,this.§;!$§);
         this.§9#j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7!V§);
         this.§9#j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7!V§);
         this.§9#j§.removeEventListener(§>#J§.§-$%§,this.§7!V§);
         this.§,#]§(this.§9#j§.data);
         var _loc2_:§3""§ = new §3""§(Event.COMPLETE);
         if(this.§9#j§.data.mc)
         {
            _loc2_.§""0§ = new §,$!§(this.§9#j§.data.mc);
         }
         if(this.§9#j§.data.pmc)
         {
            _loc2_.§0"J§ = new §,$!§(this.§9#j§.data.pmc);
         }
         dispatchEvent(_loc2_);
         this.§9#j§ = null;
      }
      
      private function §,#]§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§<Z§ = null;
         var _loc4_:§<Z§ = null;
         this.§-H§ = new Vector.<§<Z§>();
         for(_loc2_ in param1.prices)
         {
            _loc4_ = new §<Z§(_loc2_,param1.prices[_loc2_],param1.currency);
            this.§-H§.push(_loc4_);
         }
         this.§ U§ = [];
         for each(_loc3_ in this.§-H§)
         {
            this.§ U§.push(new §,$!§(_loc3_.§?#Q§));
         }
         this.§ U§.sortOn("name",Array.CASEINSENSITIVE);
      }
      
      private function §7!V§(param1:Event) : void
      {
         this.§9#j§.removeEventListener(Event.COMPLETE,this.§;!$§);
         this.§9#j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7!V§);
         this.§9#j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7!V§);
         this.§9#j§.removeEventListener(§>#J§.§-$%§,this.§7!V§);
         if(param1.type == §>#J§.§-$%§)
         {
            this.§@!w§(ErrorPopup.§`"4§);
         }
         else
         {
            this.§=#r§();
         }
         this.§9#j§ = null;
      }
      
      protected function §@!w§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§[W§.§5Z§,§<d§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §=#r§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§[W§.§5Z§,§<d§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
   }
}
