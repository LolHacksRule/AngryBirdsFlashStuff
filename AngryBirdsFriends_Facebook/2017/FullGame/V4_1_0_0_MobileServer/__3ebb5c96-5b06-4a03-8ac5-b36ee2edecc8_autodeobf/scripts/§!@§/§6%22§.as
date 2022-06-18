package §!@§
{
   import § $%§.§%§;
   import § $%§.§0#`§;
   import § $%§.§4"v§;
   import § $%§.§]e§;
   import § o§.§%"!§;
   import § o§.ErrorPopup;
   import § o§.WarningPopup;
   import §+"E§.§!!s§;
   import §7",§.§;"f§;
   import §9$6§.§5#&§;
   import §<#m§.§^#o§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §6"§ extends EventDispatcher
   {
       
      
      private var §[#x§:§0#`§;
      
      private var §62§:Vector.<§;"f§>;
      
      private var §[!P§:Object;
      
      private var § #1§:Array;
      
      public function §6"§()
      {
         super();
      }
      
      public function get §4"k§() : Vector.<§;"f§>
      {
         return this.§62§;
      }
      
      public function set §4"k§(param1:Vector.<§;"f§>) : void
      {
         this.§62§ = param1;
      }
      
      public function §!#M§() : Array
      {
         return this.§,c§(this.§4"k§);
      }
      
      public function §4!C§() : Array
      {
         return this.§ #1§;
      }
      
      private function §,c§(param1:*) : Array
      {
         var _loc3_:Object = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function §^!$§() : void
      {
         if(this.§[#x§)
         {
            return;
         }
         this.§[#x§ = new §4"v§();
         this.§[#x§.addEventListener(Event.COMPLETE,this.§`"C§);
         this.§[#x§.addEventListener(IOErrorEvent.IO_ERROR,this.§]H§);
         this.§[#x§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]H§);
         this.§[#x§.addEventListener(§]e§.§5!;§,this.§]H§);
         this.§[#x§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§[#x§.load(§%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/mobilelisting/"));
      }
      
      private function §`"C§(param1:Event) : void
      {
         this.§[#x§.removeEventListener(Event.COMPLETE,this.§`"C§);
         this.§[#x§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]H§);
         this.§[#x§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]H§);
         this.§[#x§.removeEventListener(§]e§.§5!;§,this.§]H§);
         this.§]r§(this.§[#x§.data);
         var _loc2_:§!!s§ = new §!!s§(Event.COMPLETE);
         if(this.§[#x§.data.mc)
         {
            _loc2_.§>"'§ = new §5#&§(this.§[#x§.data.mc);
         }
         if(this.§[#x§.data.pmc)
         {
            _loc2_.§!"P§ = new §5#&§(this.§[#x§.data.pmc);
         }
         dispatchEvent(_loc2_);
         this.§[#x§ = null;
      }
      
      private function §]r§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§;"f§ = null;
         var _loc4_:§;"f§ = null;
         this.§62§ = new Vector.<§;"f§>();
         for(_loc2_ in param1.prices)
         {
            _loc4_ = new §;"f§(_loc2_,param1.prices[_loc2_],param1.currency);
            this.§62§.push(_loc4_);
         }
         this.§ #1§ = [];
         for each(_loc3_ in this.§62§)
         {
            this.§ #1§.push(new §5#&§(_loc3_.§9"F§));
         }
         this.§ #1§.sortOn("name",Array.CASEINSENSITIVE);
      }
      
      private function §]H§(param1:Event) : void
      {
         this.§[#x§.removeEventListener(Event.COMPLETE,this.§`"C§);
         this.§[#x§.removeEventListener(IOErrorEvent.IO_ERROR,this.§]H§);
         this.§[#x§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]H§);
         this.§[#x§.removeEventListener(§]e§.§5!;§,this.§]H§);
         if(param1.type == §]e§.§5!;§)
         {
            this.§[#U§(ErrorPopup.§?"V§);
         }
         else
         {
            this.§=!,§();
         }
         this.§[#x§ = null;
      }
      
      protected function §[#U§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§%"!§.§4!P§,§^#o§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §=!,§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§%"!§.§4!P§,§^#o§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
   }
}
