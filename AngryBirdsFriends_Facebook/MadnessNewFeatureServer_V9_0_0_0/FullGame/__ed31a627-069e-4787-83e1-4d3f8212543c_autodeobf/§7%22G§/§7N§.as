package §7"G§
{
   import §!#C§.§4!Q§;
   import §"",§.§4#Q§;
   import §##Z§.§<$2§;
   import §0!s§.§5!-§;
   import §0!s§.§]"Y§;
   import §0"B§.§##G§;
   import §1L§.§!!o§;
   import §1L§.§0#=§;
   import §1L§.§;#&§;
   import §1L§.§>5§;
   import §7R§.§ #`§;
   import §<!r§.§'##§;
   import §>"x§.§+"f§;
   import §>z§.§#"l§;
   import §>z§.ErrorPopup;
   import §>z§.WarningPopup;
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
   
   public class §7N§ extends EventDispatcher implements §+"f§
   {
      
      private static const §;"N§:int = 30000;
      
      public static const §'!y§:String = "/league";
      
      private static const §9$=§:String = "/currentStandings";
      
      private static const §,#?§:String = "/currentLevelStandings";
      
      private static const §6!§:String = "/claimLeagueReward";
      
      private static const §+§:String = "/getProfile";
      
      public static const §@"l§:String = "/saveProfile";
      
      private static var §-!r§:Number = 0;
      
      private static var §`L§:int;
       
      
      private var §8!4§:Timer;
      
      private var § !b§:§!!o§;
      
      private var §[,§:§!!o§;
      
      private var §]"j§:§!!o§;
      
      private var §;9§:§!!o§;
      
      private var §]w§:§!!o§;
      
      private var §"#'§:Array;
      
      private const §1P§:String = "/getAllUnconcludedResults";
      
      private const §#c§:String = "/claimAllRewards";
      
      private const §#R§:String = "/getAllPreviousResults";
      
      protected var §="$§:Object;
      
      private var §,!o§:Boolean;
      
      public function §7N§(param1:IEventDispatcher = null)
      {
         this.§"#'§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§="$§ = {};
         super(param1);
      }
      
      public function § W§(param1:int) : void
      {
         if(this.§6"c§() && §<$2§.§`"H§.§3$#§() && param1 == §`L§)
         {
            this.§#"a§(new §4#Q§(§4#Q§.§#"Z§,§<$2§.§`"H§.§3$#§()));
            return;
         }
         this.§ !b§ = new §!!o§();
         this.§ !b§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§ !b§.addEventListener(Event.COMPLETE,this.§#"a§);
         this.§ !b§.addEventListener(IOErrorEvent.IO_ERROR,this.§+V§);
         this.§ !b§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+V§);
         this.§ !b§.addEventListener(§>5§.§@!@§,this.§+V§);
         var _loc2_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + §'!y§ + §9$=§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§ !b§.load(_loc2_);
         §`L§ = param1;
      }
      
      public function §]%§(param1:int) : void
      {
         this.§[,§ = new §!!o§();
         this.§[,§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§[,§.addEventListener(Event.COMPLETE,this.§"#n§);
         this.§[,§.addEventListener(IOErrorEvent.IO_ERROR,this.§+V§);
         this.§[,§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+V§);
         this.§[,§.addEventListener(§>5§.§@!@§,this.§+V§);
         var _loc2_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + §'!y§ + §+§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§[,§.load(_loc2_);
      }
      
      public function §1"q§() : void
      {
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + §'!y§ + §6!§);
         if(§'##§.§`"H§.§4"e§() > 0)
         {
            _loc1_.url += "&tournamentId=" + §'##§.§`"H§.§4"e§();
         }
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§;9§ = new §!!o§();
         this.§;9§.addEventListener(Event.COMPLETE,this.§4#f§);
         this.§;9§.addEventListener(IOErrorEvent.IO_ERROR,this.§9!v§);
         this.§;9§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!v§);
         this.§;9§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§;9§.load(_loc1_);
      }
      
      public function §5#§(param1:int) : void
      {
         var _loc2_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + this.§1P§ + "?st=" + §0#=§.§+#!§);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§1+§();
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         this.§]"j§ = new §!!o§();
         this.§]"j§.addEventListener(Event.COMPLETE,this.§"#V§);
         this.§]"j§.addEventListener(IOErrorEvent.IO_ERROR,this.§+V§);
         this.§]"j§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+V§);
         this.§]"j§.addEventListener(§>5§.§@!@§,this.§+V§);
         this.§]"j§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§]"j§.load(_loc2_);
      }
      
      public function §'O§(param1:int) : void
      {
         var _loc2_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + this.§#c§ + "?st=" + §0#=§.§+#!§);
         if(param1 <= 0)
         {
            _loc2_.url += "&tournamentId=" + §'##§.§`"H§.§4"e§();
         }
         else
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§;9§ = new §!!o§();
         this.§;9§.addEventListener(Event.COMPLETE,this.§7"E§);
         this.§;9§.addEventListener(IOErrorEvent.IO_ERROR,this.§9!v§);
         this.§;9§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!v§);
         this.§;9§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§;9§.load(_loc2_);
      }
      
      public function §-#3§() : void
      {
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + this.§#R§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§]w§ = new §!!o§();
         this.§]w§.addEventListener(Event.COMPLETE,this.§]#O§);
         this.§]w§.addEventListener(IOErrorEvent.IO_ERROR,this.§+V§);
         this.§]w§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+V§);
         this.§]w§.addEventListener(§>5§.§@!@§,this.§+V§);
         this.§]w§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§]w§.load(_loc1_);
      }
      
      protected function §"#V§(param1:Event) : void
      {
         this.§]"j§.removeEventListener(Event.COMPLETE,this.§"#V§);
         this.§]"j§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+V§);
         this.§]"j§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+V§);
         this.§]"j§.removeEventListener(§>5§.§@!@§,this.§+V§);
         dispatchEvent(new §4#Q§(§4#Q§.§"R§,param1.currentTarget.data));
      }
      
      protected function §7"E§(param1:Event) : void
      {
         if(this.§;9§)
         {
            this.§;9§.removeEventListener(Event.COMPLETE,this.§7"E§);
            this.§;9§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!v§);
            this.§;9§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!v§);
            this.§;9§ = null;
         }
         dispatchEvent(new §4#Q§(§4#Q§.§"#0§,param1.currentTarget.data));
      }
      
      protected function §]#O§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§]w§)
         {
            this.§]w§.removeEventListener(Event.COMPLETE,this.§]#O§);
            this.§]w§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!v§);
            this.§]w§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!v§);
            this.§]w§ = null;
            if(param1 && param1.currentTarget)
            {
               _loc2_ = param1.currentTarget.data;
            }
            dispatchEvent(new §4#Q§(§4#Q§.§]#T§,_loc2_));
         }
      }
      
      private function §#"a§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§ !b§)
         {
            this.§ !b§.removeEventListener(Event.COMPLETE,this.§#"a§);
            this.§ !b§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+V§);
            this.§ !b§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+V§);
            this.§ !b§.removeEventListener(§>5§.§@!@§,this.§+V§);
            this.§ !b§ = null;
         }
         if(param1 && param1.currentTarget)
         {
            _loc2_ = param1.currentTarget.data;
         }
         else if(param1 && §4#Q§(param1) && §4#Q§(param1).data)
         {
            _loc2_ = §4#Q§(param1).data;
         }
         dispatchEvent(new §4#Q§(§4#Q§.§#"Z§,_loc2_));
      }
      
      private function §9A§(param1:TimerEvent) : void
      {
         this.§8!4§.stop();
         this.§8!4§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§9A§);
         this.§8!4§ = null;
         this.§ W§(§'##§.§`"H§.§4"e§());
      }
      
      private function §"#n§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§[,§)
         {
            this.§[,§.removeEventListener(Event.COMPLETE,this.§"#n§);
            this.§[,§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+V§);
            this.§[,§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+V§);
            this.§[,§.removeEventListener(§>5§.§@!@§,this.§+V§);
            this.§[,§ = null;
         }
         if(param1 && param1.currentTarget)
         {
            _loc2_ = param1.currentTarget.data;
         }
         dispatchEvent(new §4#Q§(§4#Q§.§+3§,_loc2_));
      }
      
      protected function §4#f§(param1:Event) : void
      {
         this.§;9§.removeEventListener(Event.COMPLETE,this.§4#f§);
         this.§;9§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!v§);
         this.§;9§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!v§);
         this.§;9§ = null;
         dispatchEvent(new §4#Q§(§4#Q§.§]"8§,param1.currentTarget.data));
      }
      
      private function §+V§(param1:Event) : void
      {
         var _loc2_:§5!-§ = null;
         if(this.§ !b§)
         {
            this.§ !b§.removeEventListener(Event.COMPLETE,this.§#"a§);
            this.§ !b§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+V§);
            this.§ !b§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+V§);
            this.§ !b§.removeEventListener(§>5§.§@!@§,this.§+V§);
            this.§ !b§ = null;
         }
         if(this.§8!4§)
         {
            this.§8!4§.stop();
            this.§8!4§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§9A§);
            this.§8!4§ = null;
         }
         if(param1.type == §>5§.§@!@§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§ $@§);
         }
         else
         {
            _loc2_ = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §9!v§(param1:Event) : void
      {
         var _loc2_:§5!-§ = null;
         if(this.§;9§)
         {
            this.§;9§.removeEventListener(Event.COMPLETE,this.§7"E§);
            this.§;9§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!v§);
            this.§;9§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!v§);
            this.§;9§ = null;
         }
         if(param1.type == §>5§.§@!@§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§ $@§);
         }
         else
         {
            _loc2_ = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §3"Z§(param1:String, param2:Boolean = true) : §##G§
      {
         var _loc3_:Object = null;
         if(param2 && this.§="$§[param1] && §##G§(this.§="$§[param1]).§8"F§() && this.§="$§[param1].data.length > 0)
         {
            if(§<$2§.§`"H§.§?"E§() >= §<$2§.§+#^§)
            {
               this.§&$9§();
               this.§="$§[param1].data.sortOn("rank",Array.NUMERIC);
            }
            for each(_loc3_ in this.§="$§[param1].data)
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
            return this.§="$§[param1];
         }
         return this.§="$§[param1] = new §##G§((AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userName,AngryBirdsBase.SERVER_ROOT + §'!y§ + §,#?§ + "?level=" + param1 + "&" + §'##§.§`"H§.§'"H§(),false,null,true,false,true);
      }
      
      private function §&$9§() : void
      {
         var _loc1_:String = null;
         if(!this.§,!o§)
         {
            this.§,!o§ = true;
            for each(_loc1_ in §'##§.§`"H§.levelIDs)
            {
               if(this.§`!c§(_loc1_))
               {
                  this.§`!c§(_loc1_).§%$&§ = 0;
               }
            }
         }
      }
      
      public function §-"K§() : void
      {
         this.§="$§ = {};
      }
      
      public function §`!c§(param1:String) : §##G§
      {
         return this.§="$§[param1];
      }
      
      public function §5!0§(param1:String, param2:String) : Number
      {
         var _loc3_:§##G§ = this.§="$§[param1] as §##G§;
         return _loc3_.§ #P§(param2);
      }
      
      public function §6#J§() : Boolean
      {
         return this.§ !b§ != null;
      }
      
      private function §6"c§() : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = §'##§.§`"H§.§'"^§();
         if(_loc1_ < §'##§.§7#%§)
         {
            return false;
         }
         _loc2_ = (AngryBirdsBase.singleton.dataModel as §4!Q§).serverSynchronizedTime.synchronizedTimeStamp;
         _loc1_ = (_loc2_ - §-!r§) / 1000;
         _loc1_ = Math.max(0,_loc1_);
         if(_loc1_ < §'##§.§7#%§)
         {
            return true;
         }
         §-!r§ = _loc2_;
         return false;
      }
      
      public function §4#A§() : void
      {
         §`L§ = -1;
      }
      
      private function §1+§() : String
      {
         return this.§3$>§(this.§"#'§);
      }
      
      private function §3$>§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
   }
}
