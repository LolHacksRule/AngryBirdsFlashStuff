package §'#g§
{
   import §!!?§.§]!d§;
   import §+"u§.§^"C§;
   import §1";§.§^a§;
   import §5"c§.§^c§;
   import §;$5§.§9§;
   import §>"Q§.§"!;§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §>"Q§.§7"2§;
   import §?!N§.§%#§;
   import §?!N§.ErrorPopup;
   import §?!N§.WarningPopup;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §6$?§ extends EventDispatcher
   {
       
      
      private var §%"u§:§7"2§;
      
      private var §%d§:Vector.<§]!d§>;
      
      private var §+"Y§:Object;
      
      private var §8#4§:Array;
      
      public function §6$?§()
      {
         super();
      }
      
      public function get §'K§() : Vector.<§]!d§>
      {
         return this.§%d§;
      }
      
      public function set §'K§(param1:Vector.<§]!d§>) : void
      {
         this.§%d§ = param1;
      }
      
      public function §@Q§() : Array
      {
         return this.§5"!§(this.§'K§);
      }
      
      public function §1!d§() : Array
      {
         return this.§8#4§;
      }
      
      private function §5"!§(param1:*) : Array
      {
         var _loc3_:Object = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function §8e§() : void
      {
         if(this.§%"u§)
         {
            return;
         }
         this.§%"u§ = new §'!n§();
         this.§%"u§.addEventListener(Event.COMPLETE,this.§%"m§);
         this.§%"u§.addEventListener(IOErrorEvent.IO_ERROR,this.§<'§);
         this.§%"u§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<'§);
         this.§%"u§.addEventListener(§"!;§.§ #x§,this.§<'§);
         this.§%"u§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§%"u§.load(§2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/mobilelisting?" + §^"C§.§?q§.§;$&§()));
      }
      
      private function §%"m§(param1:Event) : void
      {
         this.§%"u§.removeEventListener(Event.COMPLETE,this.§%"m§);
         this.§%"u§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<'§);
         this.§%"u§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<'§);
         this.§%"u§.removeEventListener(§"!;§.§ #x§,this.§<'§);
         this.§"#h§(this.§%"u§.data);
         var _loc2_:§^c§ = new §^c§(Event.COMPLETE);
         if(this.§%"u§.data.mc)
         {
            _loc2_.§>#X§ = new §^a§(this.§%"u§.data.mc);
         }
         if(this.§%"u§.data.pmc)
         {
            _loc2_.§'4§ = new §^a§(this.§%"u§.data.pmc);
         }
         dispatchEvent(_loc2_);
         this.§%"u§ = null;
      }
      
      private function §"#h§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§]!d§ = null;
         var _loc4_:§]!d§ = null;
         this.§%d§ = new Vector.<§]!d§>();
         for(_loc2_ in param1.prices)
         {
            _loc4_ = new §]!d§(_loc2_,param1.prices[_loc2_],param1.currency);
            this.§%d§.push(_loc4_);
         }
         this.§8#4§ = [];
         for each(_loc3_ in this.§%d§)
         {
            this.§8#4§.push(new §^a§(_loc3_.§ "[§));
         }
         this.§8#4§.sortOn("name",Array.CASEINSENSITIVE);
      }
      
      private function §<'§(param1:Event) : void
      {
         this.§%"u§.removeEventListener(Event.COMPLETE,this.§%"m§);
         this.§%"u§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<'§);
         this.§%"u§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<'§);
         this.§%"u§.removeEventListener(§"!;§.§ #x§,this.§<'§);
         if(param1.type == §"!;§.§ #x§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§]"d§));
         }
         else
         {
            this.§^!c§();
         }
         this.§%"u§ = null;
      }
      
      protected function §^!c§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§%#§.§3t§,§9#5§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
   }
}
