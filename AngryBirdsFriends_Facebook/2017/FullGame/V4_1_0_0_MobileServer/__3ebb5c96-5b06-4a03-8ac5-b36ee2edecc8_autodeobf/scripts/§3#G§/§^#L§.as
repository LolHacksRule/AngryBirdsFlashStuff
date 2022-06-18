package §3#G§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import § $%§.§]e§;
   import § o§.§%"!§;
   import § o§.ErrorPopup;
   import § o§.WarningPopup;
   import §&"J§.§`]§;
   import §5"?§.§4"-§;
   import §9"1§.§+!x§;
   import §<#m§.§!"<§;
   import §<#m§.§^#o§;
   import §[#&§.§6#E§;
   import §[0§.§;$-§;
   import §[G§.§4!0§;
   import §];§.§-!t§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §^#L§ extends EventDispatcher implements §6#E§
   {
      
      private static const §!z§:int = 30000;
      
      public static const §@#3§:String = "/league";
      
      private static const §`#y§:String = "/currentStandings";
      
      private static const §?#I§:String = "/currentLevelStandings";
      
      private static const §&!y§:String = "/unconcludedLeague";
      
      private static const §]C§:String = "/claimLeagueReward";
      
      private static const §9"@§:String = "/previousLeagueResults";
      
      private static const §9#X§:String = "/getProfile";
      
      public static const §&!z§:String = "/saveProfile";
      
      private static var § #i§:Number = 0;
       
      
      private var §@"]§:Timer;
      
      private var §-!b§:§4"v§;
      
      private var §2"<§:§4"v§;
      
      private var §;g§:§4"v§;
      
      private var §`!W§:§4"v§;
      
      private var §!"p§:§4"v§;
      
      private const § "d§:String = "/getAllUnconcludedResults";
      
      private const §=q§:String = "/claimAllRewards";
      
      private const §5"4§:String = "/getAllPreviousResults";
      
      protected var §19§:Object;
      
      private var §<#F§:Boolean;
      
      public function §^#L§(param1:IEventDispatcher = null)
      {
         this.§19§ = {};
         super(param1);
      }
      
      public function §<"d§(param1:Boolean = false) : void
      {
         if(param1 && this.§!!4§() && §;$-§.§ "D§.§]!Z§())
         {
            this.§0#_§(new §+!x§(§+!x§.§#!r§,§;$-§.§ "D§.§]!Z§()));
            return;
         }
         this.§-!b§ = new §4"v§();
         this.§-!b§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§-!b§.addEventListener(Event.COMPLETE,this.§0#_§);
         this.§-!b§.addEventListener(IOErrorEvent.IO_ERROR,this.§7U§);
         this.§-!b§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7U§);
         this.§-!b§.addEventListener(§]e§.§5!;§,this.§7U§);
         var _loc2_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + §@#3§ + §`#y§);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§-!b§.load(_loc2_);
      }
      
      public function §2!5§() : void
      {
         this.§2"<§ = new §4"v§();
         this.§2"<§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§2"<§.addEventListener(Event.COMPLETE,this.§2#5§);
         this.§2"<§.addEventListener(IOErrorEvent.IO_ERROR,this.§7U§);
         this.§2"<§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7U§);
         this.§2"<§.addEventListener(§]e§.§5!;§,this.§7U§);
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + §@#3§ + §9#X§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§2"<§.load(_loc1_);
      }
      
      public function §^=§() : void
      {
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + §@#3§ + §]C§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§`!W§ = new §4"v§();
         this.§`!W§.addEventListener(Event.COMPLETE,this.§3!9§);
         this.§`!W§.addEventListener(IOErrorEvent.IO_ERROR,this.§0!T§);
         this.§`!W§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!T§);
         this.§`!W§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§`!W§.load(_loc1_);
      }
      
      public function §=!S§() : void
      {
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + this.§ "d§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§;g§ = new §4"v§();
         this.§;g§.addEventListener(Event.COMPLETE,this.§ !>§);
         this.§;g§.addEventListener(IOErrorEvent.IO_ERROR,this.§7U§);
         this.§;g§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7U§);
         this.§;g§.addEventListener(§]e§.§5!;§,this.§7U§);
         this.§;g§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§;g§.load(_loc1_);
      }
      
      public function §2"6§() : void
      {
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + this.§=q§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§`!W§ = new §4"v§();
         this.§`!W§.addEventListener(Event.COMPLETE,this.§&!R§);
         this.§`!W§.addEventListener(IOErrorEvent.IO_ERROR,this.§0!T§);
         this.§`!W§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!T§);
         this.§`!W§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§`!W§.load(_loc1_);
      }
      
      public function §8!R§() : void
      {
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + this.§5"4§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§!"p§ = new §4"v§();
         this.§!"p§.addEventListener(Event.COMPLETE,this.§<"&§);
         this.§!"p§.addEventListener(IOErrorEvent.IO_ERROR,this.§7U§);
         this.§!"p§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7U§);
         this.§!"p§.addEventListener(§]e§.§5!;§,this.§7U§);
         this.§!"p§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§!"p§.load(_loc1_);
      }
      
      protected function § !>§(param1:Event) : void
      {
         this.§;g§.removeEventListener(Event.COMPLETE,this.§ !>§);
         this.§;g§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7U§);
         this.§;g§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7U§);
         this.§;g§.removeEventListener(§]e§.§5!;§,this.§7U§);
         dispatchEvent(new §+!x§(§+!x§.§^#u§,param1.currentTarget.data));
      }
      
      protected function §&!R§(param1:Event) : void
      {
         if(this.§`!W§)
         {
            this.§`!W§.removeEventListener(Event.COMPLETE,this.§&!R§);
            this.§`!W§.removeEventListener(IOErrorEvent.IO_ERROR,this.§0!T§);
            this.§`!W§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!T§);
            this.§`!W§ = null;
         }
         dispatchEvent(new §+!x§(§+!x§.§0!m§,param1.currentTarget.data));
      }
      
      protected function §<"&§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§!"p§)
         {
            this.§!"p§.removeEventListener(Event.COMPLETE,this.§<"&§);
            this.§!"p§.removeEventListener(IOErrorEvent.IO_ERROR,this.§0!T§);
            this.§!"p§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!T§);
            this.§!"p§ = null;
            if(param1 && param1.currentTarget)
            {
               _loc2_ = param1.currentTarget.data;
            }
            dispatchEvent(new §+!x§(§+!x§.§""k§,_loc2_));
         }
      }
      
      private function §0#_§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§-!b§)
         {
            this.§-!b§.removeEventListener(Event.COMPLETE,this.§0#_§);
            this.§-!b§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7U§);
            this.§-!b§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7U§);
            this.§-!b§.removeEventListener(§]e§.§5!;§,this.§7U§);
            this.§-!b§ = null;
         }
         if(param1 && param1.currentTarget)
         {
            _loc2_ = param1.currentTarget.data;
         }
         else if(param1 && §+!x§(param1) && §+!x§(param1).data)
         {
            _loc2_ = §+!x§(param1).data;
         }
         dispatchEvent(new §+!x§(§+!x§.§#!r§,_loc2_));
      }
      
      private function §9!"§(param1:TimerEvent) : void
      {
         this.§@"]§.stop();
         this.§@"]§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§9!"§);
         this.§@"]§ = null;
         this.§<"d§();
      }
      
      private function §2#5§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§2"<§)
         {
            this.§2"<§.removeEventListener(Event.COMPLETE,this.§2#5§);
            this.§2"<§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7U§);
            this.§2"<§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7U§);
            this.§2"<§.removeEventListener(§]e§.§5!;§,this.§7U§);
            this.§2"<§ = null;
         }
         if(param1 && param1.currentTarget)
         {
            _loc2_ = param1.currentTarget.data;
         }
         dispatchEvent(new §+!x§(§+!x§.§;a§,_loc2_));
      }
      
      protected function §3!9§(param1:Event) : void
      {
         this.§`!W§.removeEventListener(Event.COMPLETE,this.§3!9§);
         this.§`!W§.removeEventListener(IOErrorEvent.IO_ERROR,this.§0!T§);
         this.§`!W§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!T§);
         this.§`!W§ = null;
         dispatchEvent(new §+!x§(§+!x§.§3$"§,param1.currentTarget.data));
      }
      
      private function §7U§(param1:Event) : void
      {
         var _loc2_:§!"<§ = null;
         if(this.§-!b§)
         {
            this.§-!b§.removeEventListener(Event.COMPLETE,this.§0#_§);
            this.§-!b§.removeEventListener(IOErrorEvent.IO_ERROR,this.§7U§);
            this.§-!b§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7U§);
            this.§-!b§.removeEventListener(§]e§.§5!;§,this.§7U§);
            this.§-!b§ = null;
         }
         if(this.§@"]§)
         {
            this.§@"]§.stop();
            this.§@"]§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§9!"§);
            this.§@"]§ = null;
         }
         if(param1.type == §]e§.§5!;§)
         {
            _loc2_ = new ErrorPopup(§%"!§.ERROR,§^#o§.TOP,ErrorPopup.§?"V§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%"!§.§4!P§,§^#o§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §0!T§(param1:Event) : void
      {
         var _loc2_:§!"<§ = null;
         if(this.§`!W§)
         {
            this.§`!W§.removeEventListener(Event.COMPLETE,this.§&!R§);
            this.§`!W§.removeEventListener(IOErrorEvent.IO_ERROR,this.§0!T§);
            this.§`!W§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!T§);
            this.§`!W§ = null;
         }
         if(param1.type == §]e§.§5!;§)
         {
            _loc2_ = new ErrorPopup(§%"!§.ERROR,§^#o§.TOP,ErrorPopup.§?"V§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%"!§.§4!P§,§^#o§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §#"h§(param1:String, param2:Boolean = true) : §4!0§
      {
         var _loc3_:Object = null;
         if(param2 && this.§19§[param1] && §4!0§(this.§19§[param1]).§73§() && this.§19§[param1].data.length > 0)
         {
            if(§;$-§.§ "D§.§1"x§() >= §;$-§.§8#b§)
            {
               this.§1"k§();
               this.§19§[param1].data.sortOn("levelScore",Array.DESCENDING | Array.NUMERIC);
            }
            for each(_loc3_ in this.§19§[param1].data)
            {
               if(_loc3_.targetOffset)
               {
                  _loc3_.targetOffset = 0;
               }
               if(_loc3_.offset)
               {
                  _loc3_.offset = 0;
               }
            }
            return this.§19§[param1];
         }
         return this.§19§[param1] = new §4!0§((AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userName,AngryBirdsBase.SERVER_ROOT + §@#3§ + §?#I§ + "?level=" + param1,false,null,true,false,true);
      }
      
      private function §1"k§() : void
      {
         var _loc1_:String = null;
         if(!this.§<#F§)
         {
            this.§<#F§ = true;
            for each(_loc1_ in §-!t§.§ "D§.levelIDs)
            {
               if(this.§6#X§(_loc1_))
               {
                  this.§6#X§(_loc1_).§<!j§ = 0;
               }
            }
         }
      }
      
      public function §'!%§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§19§[_loc2_])
            {
               this.§19§[_loc2_] = null;
            }
         }
      }
      
      public function §6#X§(param1:String) : §4!0§
      {
         return this.§19§[param1];
      }
      
      public function §"#4§(param1:String, param2:String) : Number
      {
         var _loc3_:§4!0§ = this.§19§[param1] as §4!0§;
         return _loc3_.§>#>§(param2);
      }
      
      public function §"$1§() : Boolean
      {
         return this.§-!b§ != null;
      }
      
      private function §!!4§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §`]§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - § #i§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §-!t§.§<N§)
         {
            return true;
         }
         § #i§ = _loc1_;
         return false;
      }
   }
}
