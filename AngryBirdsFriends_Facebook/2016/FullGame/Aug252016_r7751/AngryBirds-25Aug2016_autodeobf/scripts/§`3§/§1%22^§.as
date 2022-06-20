package §`3§
{
   import §%$!§.§+3§;
   import §4q§.§!#Q§;
   import §5"$§.§]!m§;
   import §7g§.§4!q§;
   import §8!U§.§ K§;
   import §;4§.§2!]§;
   import §<!g§.§&$1§;
   import §?"R§.ErrorPopup;
   import §?"R§.WarningPopup;
   import §?"R§.§[W§;
   import §]$9§.§5$!§;
   import §]$9§.§>#J§;
   import §]$9§.§>J§;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
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
   
   public class §1"^§ extends EventDispatcher implements § K§
   {
      
      private static const §=#L§:int = 30000;
      
      public static const §throw§:String = "/league";
      
      private static const §3,§:String = "/currentStandings";
      
      private static const §#"F§:String = "/currentLevelStandings";
      
      private static const §"`§:String = "/unconcludedLeague";
      
      private static const §#!;§:String = "/claimLeagueReward";
      
      private static const §6!z§:String = "/previousLeagueResults";
      
      private static const §-"w§:String = "/getProfile";
      
      public static const §3&§:String = "/saveProfile";
      
      private static var §!$!§:Number = 0;
       
      
      private var §%#v§:Timer;
      
      private var §1"U§:§5$!§;
      
      private var §2Q§:§5$!§;
      
      private var §""&§:§5$!§;
      
      private var §[!U§:§5$!§;
      
      private var §@"H§:§5$!§;
      
      private const §5!I§:String = "/getAllUnconcludedResults";
      
      private const §;e§:String = "/claimAllRewards";
      
      private const §`"P§:String = "/getAllPreviousResults";
      
      protected var §%"O§:Object;
      
      private var §,$<§:Boolean;
      
      public function §1"^§(param1:IEventDispatcher = null)
      {
         this.§%"O§ = {};
         super(param1);
      }
      
      public function §^"M§(param1:Boolean = false) : void
      {
         if(param1 && this.§1!!§() && §4!q§.§3!]§.§5"D§())
         {
            this.§7!C§(new §&$1§(§&$1§.§]!n§,§4!q§.§3!]§.§5"D§()));
            return;
         }
         this.§1"U§ = new §5$!§();
         this.§1"U§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§1"U§.addEventListener(Event.COMPLETE,this.§7!C§);
         this.§1"U§.addEventListener(IOErrorEvent.IO_ERROR,this.§&#[§);
         this.§1"U§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&#[§);
         this.§1"U§.addEventListener(§>#J§.§-$%§,this.§&#[§);
         var _loc2_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + §throw§ + §3,§);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§1"U§.load(_loc2_);
      }
      
      public function §"#b§() : void
      {
         this.§2Q§ = new §5$!§();
         this.§2Q§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§2Q§.addEventListener(Event.COMPLETE,this.§3"V§);
         this.§2Q§.addEventListener(IOErrorEvent.IO_ERROR,this.§&#[§);
         this.§2Q§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&#[§);
         this.§2Q§.addEventListener(§>#J§.§-$%§,this.§&#[§);
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + §throw§ + §-"w§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§2Q§.load(_loc1_);
      }
      
      public function §,#p§() : void
      {
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + §throw§ + §#!;§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§[!U§ = new §5$!§();
         this.§[!U§.addEventListener(Event.COMPLETE,this.§&!W§);
         this.§[!U§.addEventListener(IOErrorEvent.IO_ERROR,this.§#"&§);
         this.§[!U§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#"&§);
         this.§[!U§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§[!U§.load(_loc1_);
      }
      
      public function §=!<§() : void
      {
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + this.§5!I§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§""&§ = new §5$!§();
         this.§""&§.addEventListener(Event.COMPLETE,this.§ !;§);
         this.§""&§.addEventListener(IOErrorEvent.IO_ERROR,this.§&#[§);
         this.§""&§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&#[§);
         this.§""&§.addEventListener(§>#J§.§-$%§,this.§&#[§);
         this.§""&§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§""&§.load(_loc1_);
      }
      
      public function §4#@§() : void
      {
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + this.§;e§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§[!U§ = new §5$!§();
         this.§[!U§.addEventListener(Event.COMPLETE,this.§'C§);
         this.§[!U§.addEventListener(IOErrorEvent.IO_ERROR,this.§#"&§);
         this.§[!U§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#"&§);
         this.§[!U§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§[!U§.load(_loc1_);
      }
      
      public function §^"T§() : void
      {
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + this.§`"P§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§@"H§ = new §5$!§();
         this.§@"H§.addEventListener(Event.COMPLETE,this.§!"T§);
         this.§@"H§.addEventListener(IOErrorEvent.IO_ERROR,this.§&#[§);
         this.§@"H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&#[§);
         this.§@"H§.addEventListener(§>#J§.§-$%§,this.§&#[§);
         this.§@"H§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§@"H§.load(_loc1_);
      }
      
      protected function § !;§(param1:Event) : void
      {
         this.§""&§.removeEventListener(Event.COMPLETE,this.§ !;§);
         this.§""&§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&#[§);
         this.§""&§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&#[§);
         this.§""&§.removeEventListener(§>#J§.§-$%§,this.§&#[§);
         dispatchEvent(new §&$1§(§&$1§.§^"2§,param1.currentTarget.data));
      }
      
      protected function §'C§(param1:Event) : void
      {
         if(this.§[!U§)
         {
            this.§[!U§.removeEventListener(Event.COMPLETE,this.§'C§);
            this.§[!U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#"&§);
            this.§[!U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#"&§);
            this.§[!U§ = null;
         }
         dispatchEvent(new §&$1§(§&$1§.§>#t§,param1.currentTarget.data));
      }
      
      protected function §!"T§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§@"H§)
         {
            this.§@"H§.removeEventListener(Event.COMPLETE,this.§!"T§);
            this.§@"H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#"&§);
            this.§@"H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#"&§);
            this.§@"H§ = null;
            if(param1 && param1.currentTarget)
            {
               _loc2_ = param1.currentTarget.data;
            }
            dispatchEvent(new §&$1§(§&$1§.§4!9§,_loc2_));
         }
      }
      
      private function §7!C§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§1"U§)
         {
            this.§1"U§.removeEventListener(Event.COMPLETE,this.§7!C§);
            this.§1"U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&#[§);
            this.§1"U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&#[§);
            this.§1"U§.removeEventListener(§>#J§.§-$%§,this.§&#[§);
            this.§1"U§ = null;
         }
         if(param1 && param1.currentTarget)
         {
            _loc2_ = param1.currentTarget.data;
         }
         else if(param1 && §&$1§(param1) && §&$1§(param1).data)
         {
            _loc2_ = §&$1§(param1).data;
         }
         dispatchEvent(new §&$1§(§&$1§.§]!n§,_loc2_));
      }
      
      private function §%Q§(param1:TimerEvent) : void
      {
         this.§%#v§.stop();
         this.§%#v§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§%Q§);
         this.§%#v§ = null;
         this.§^"M§();
      }
      
      private function §3"V§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§2Q§)
         {
            this.§2Q§.removeEventListener(Event.COMPLETE,this.§3"V§);
            this.§2Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&#[§);
            this.§2Q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&#[§);
            this.§2Q§.removeEventListener(§>#J§.§-$%§,this.§&#[§);
            this.§2Q§ = null;
         }
         if(param1 && param1.currentTarget)
         {
            _loc2_ = param1.currentTarget.data;
         }
         dispatchEvent(new §&$1§(§&$1§.§;"H§,_loc2_));
      }
      
      protected function §&!W§(param1:Event) : void
      {
         this.§[!U§.removeEventListener(Event.COMPLETE,this.§&!W§);
         this.§[!U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#"&§);
         this.§[!U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#"&§);
         this.§[!U§ = null;
         dispatchEvent(new §&$1§(§&$1§.§7s§,param1.currentTarget.data));
      }
      
      private function §&#[§(param1:Event) : void
      {
         var _loc2_:§8!H§ = null;
         if(this.§1"U§)
         {
            this.§1"U§.removeEventListener(Event.COMPLETE,this.§7!C§);
            this.§1"U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&#[§);
            this.§1"U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§&#[§);
            this.§1"U§.removeEventListener(§>#J§.§-$%§,this.§&#[§);
            this.§1"U§ = null;
         }
         if(this.§%#v§)
         {
            this.§%#v§.stop();
            this.§%#v§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§%Q§);
            this.§%#v§ = null;
         }
         if(param1.type == §>#J§.§-$%§)
         {
            _loc2_ = new ErrorPopup(§[W§.ERROR,§<d§.TOP,ErrorPopup.§`"4§);
         }
         else
         {
            _loc2_ = new WarningPopup(§[W§.§5Z§,§<d§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §#"&§(param1:Event) : void
      {
         var _loc2_:§8!H§ = null;
         if(this.§[!U§)
         {
            this.§[!U§.removeEventListener(Event.COMPLETE,this.§'C§);
            this.§[!U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§#"&§);
            this.§[!U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#"&§);
            this.§[!U§ = null;
         }
         if(param1.type == §>#J§.§-$%§)
         {
            _loc2_ = new ErrorPopup(§[W§.ERROR,§<d§.TOP,ErrorPopup.§`"4§);
         }
         else
         {
            _loc2_ = new WarningPopup(§[W§.§5Z§,§<d§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §&"r§(param1:String, param2:Boolean = true) : §2!]§
      {
         var _loc3_:Object = null;
         if(param2 && this.§%"O§[param1] && §2!]§(this.§%"O§[param1]).§[$ §() && this.§%"O§[param1].data.length > 0)
         {
            if(§4!q§.§3!]§.§9c§() >= §4!q§.§8#<§)
            {
               this.§=-§();
               this.§%"O§[param1].data.sortOn("levelScore",Array.DESCENDING | Array.NUMERIC);
            }
            for each(_loc3_ in this.§%"O§[param1].data)
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
            return this.§%"O§[param1];
         }
         return this.§%"O§[param1] = new §2!]§((AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userName,AngryBirdsBase.SERVER_ROOT + §throw§ + §#"F§ + "?level=" + param1,false,null,true,false,true);
      }
      
      private function §=-§() : void
      {
         var _loc1_:String = null;
         if(!this.§,$<§)
         {
            this.§,$<§ = true;
            for each(_loc1_ in §]!m§.§3!]§.levelIDs)
            {
               if(this.§-"=§(_loc1_))
               {
                  this.§-"=§(_loc1_).§2"O§ = 0;
               }
            }
         }
      }
      
      public function §#"Z§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§%"O§[_loc2_])
            {
               this.§%"O§[_loc2_] = null;
            }
         }
      }
      
      public function §-"=§(param1:String) : §2!]§
      {
         return this.§%"O§[param1];
      }
      
      public function §'$;§(param1:String, param2:String) : Number
      {
         var _loc3_:§2!]§ = this.§%"O§[param1] as §2!]§;
         return _loc3_.§^$1§(param2);
      }
      
      public function §-#!§() : Boolean
      {
         return this.§1"U§ != null;
      }
      
      private function §1!!§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §+3§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - §!$!§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §]!m§.§break§)
         {
            return true;
         }
         §!$!§ = _loc1_;
         return false;
      }
   }
}
