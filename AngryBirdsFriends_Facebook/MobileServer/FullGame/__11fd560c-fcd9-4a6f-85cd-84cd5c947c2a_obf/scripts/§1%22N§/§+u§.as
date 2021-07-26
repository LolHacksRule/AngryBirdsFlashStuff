package §1"N§
{
   import §&"`§.§2i§;
   import §00§.§9$'§;
   import §1!=§.§^"U§;
   import §2"5§.§7,§;
   import §8#!§.§5`§;
   import §?P§.ErrorPopup;
   import §?P§.WarningPopup;
   import §?P§.§]"$§;
   import §@V§.§1"V§;
   import §@V§.§6"§;
   import §@V§.§;m§;
   import §@V§.§["0§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §+u§ extends EventDispatcher
   {
       
      
      private var § #!§:§6"§;
      
      private var §>#K§:Vector.<§2i§>;
      
      private var §9#4§:Object;
      
      private var §6$$§:Array;
      
      public function §+u§()
      {
         super();
      }
      
      public function get §`#n§() : Vector.<§2i§>
      {
         return this.§>#K§;
      }
      
      public function set §`#n§(param1:Vector.<§2i§>) : void
      {
         this.§>#K§ = param1;
      }
      
      public function §!#9§() : Array
      {
         return this.§4#x§(this.§`#n§);
      }
      
      public function §7N§() : Array
      {
         return this.§6$$§;
      }
      
      private function §4#x§(param1:*) : Array
      {
         var _loc3_:Object = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function §%#D§() : void
      {
         if(this.§ #!§)
         {
            return;
         }
         this.§ #!§ = new §1"V§();
         this.§ #!§.addEventListener(Event.COMPLETE,this.§'"b§);
         this.§ #!§.addEventListener(IOErrorEvent.IO_ERROR,this.§]E§);
         this.§ #!§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]E§);
         this.§ #!§.addEventListener(§;m§.§!$5§,this.§]E§);
         this.§ #!§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§ #!§.load(§["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/mobilelisting?" + §5`§.§6!§.§7j§()));
      }
      
      private function §'"b§(param1:Event) : void
      {
         this.§ #!§.removeEventListener(Event.COMPLETE,this.§'"b§);
         this.§ #!§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]E§);
         this.§ #!§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]E§);
         this.§ #!§.removeEventListener(§;m§.§!$5§,this.§]E§);
         this.§7#!§(this.§ #!§.data);
         var _loc2_:§7,§ = new §7,§(Event.COMPLETE);
         if(this.§ #!§.data.mc)
         {
            _loc2_.§9>§ = new §9$'§(this.§ #!§.data.mc);
         }
         if(this.§ #!§.data.pmc)
         {
            _loc2_.§6!s§ = new §9$'§(this.§ #!§.data.pmc);
         }
         dispatchEvent(_loc2_);
         this.§ #!§ = null;
      }
      
      private function §7#!§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§2i§ = null;
         var _loc4_:§2i§ = null;
         this.§>#K§ = new Vector.<§2i§>();
         for(_loc2_ in param1.prices)
         {
            _loc4_ = new §2i§(_loc2_,param1.prices[_loc2_],param1.currency);
            this.§>#K§.push(_loc4_);
         }
         this.§6$$§ = [];
         for each(_loc3_ in this.§>#K§)
         {
            this.§6$$§.push(new §9$'§(_loc3_.§@-§));
         }
         this.§6$$§.sortOn("name",Array.CASEINSENSITIVE);
      }
      
      private function §]E§(param1:Event) : void
      {
         this.§ #!§.removeEventListener(Event.COMPLETE,this.§'"b§);
         this.§ #!§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]E§);
         this.§ #!§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]E§);
         this.§ #!§.removeEventListener(§;m§.§!$5§,this.§]E§);
         if(param1.type == §;m§.§!$5§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§=!%§));
         }
         else
         {
            this.§<#Y§();
         }
         this.§ #!§ = null;
      }
      
      protected function §<#Y§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
   }
}
