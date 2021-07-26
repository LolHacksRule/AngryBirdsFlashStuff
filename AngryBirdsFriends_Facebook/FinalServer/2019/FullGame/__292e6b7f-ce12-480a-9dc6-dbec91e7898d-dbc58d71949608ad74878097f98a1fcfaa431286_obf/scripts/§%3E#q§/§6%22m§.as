package §>#q§
{
   import § $0§.§5R§;
   import §4S§.§+!p§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §4S§.§@§;
   import §?Q§.§@#D§;
   import §?Q§.ErrorPopup;
   import §?Q§.WarningPopup;
   import §[#C§.§^$2§;
   import §[#V§.§^"x§;
   import §`,§.§7!$§;
   import §`D§.§[<§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §6"m§ extends EventDispatcher
   {
       
      
      private var §-1§:§@#1§;
      
      private var §8j§:Vector.<§[<§>;
      
      private var §,a§:Object;
      
      private var §"+§:Array;
      
      public function §6"m§()
      {
         super();
      }
      
      public function get §6"Y§() : Vector.<§[<§>
      {
         return this.§8j§;
      }
      
      public function set §6"Y§(param1:Vector.<§[<§>) : void
      {
         this.§8j§ = param1;
      }
      
      public function §^"U§() : Array
      {
         return this.§;!S§(this.§6"Y§);
      }
      
      public function §"#0§() : Array
      {
         return this.§"+§;
      }
      
      private function §;!S§(param1:*) : Array
      {
         var _loc3_:Object = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function §?d§() : void
      {
         if(this.§-1§)
         {
            return;
         }
         this.§-1§ = new §-$C§();
         this.§-1§.addEventListener(Event.COMPLETE,this.§`A§);
         this.§-1§.addEventListener(IOErrorEvent.IO_ERROR,this.§!"D§);
         this.§-1§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!"D§);
         this.§-1§.addEventListener(§+!p§.§2$9§,this.§!"D§);
         this.§-1§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§-1§.load(§?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/mobilelisting?" + §7!$§.§+!,§.§]!>§()));
      }
      
      private function §`A§(param1:Event) : void
      {
         this.§-1§.removeEventListener(Event.COMPLETE,this.§`A§);
         this.§-1§.removeEventListener(IOErrorEvent.IO_ERROR,this.§!"D§);
         this.§-1§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!"D§);
         this.§-1§.removeEventListener(§+!p§.§2$9§,this.§!"D§);
         this.§,$%§(this.§-1§.data);
         var _loc2_:§^"x§ = new §^"x§(Event.COMPLETE);
         if(this.§-1§.data.mc)
         {
            _loc2_.§%"m§ = new §^$2§(this.§-1§.data.mc);
         }
         if(this.§-1§.data.pmc)
         {
            _loc2_.§9!C§ = new §^$2§(this.§-1§.data.pmc);
         }
         dispatchEvent(_loc2_);
         this.§-1§ = null;
      }
      
      private function §,$%§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§[<§ = null;
         var _loc4_:§[<§ = null;
         this.§8j§ = new Vector.<§[<§>();
         for(_loc2_ in param1.prices)
         {
            _loc4_ = new §[<§(_loc2_,param1.prices[_loc2_],param1.currency);
            this.§8j§.push(_loc4_);
         }
         this.§"+§ = [];
         for each(_loc3_ in this.§8j§)
         {
            this.§"+§.push(new §^$2§(_loc3_.§"`§));
         }
         this.§"+§.sortOn("name",Array.CASEINSENSITIVE);
      }
      
      private function §!"D§(param1:Event) : void
      {
         this.§-1§.removeEventListener(Event.COMPLETE,this.§`A§);
         this.§-1§.removeEventListener(IOErrorEvent.IO_ERROR,this.§!"D§);
         this.§-1§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!"D§);
         this.§-1§.removeEventListener(§+!p§.§2$9§,this.§!"D§);
         if(param1.type == §+!p§.§2$9§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§-#d§));
         }
         else
         {
            this.§4!0§();
         }
         this.§-1§ = null;
      }
      
      protected function §4!0§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§@#D§.§,"4§,§5R§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
   }
}
