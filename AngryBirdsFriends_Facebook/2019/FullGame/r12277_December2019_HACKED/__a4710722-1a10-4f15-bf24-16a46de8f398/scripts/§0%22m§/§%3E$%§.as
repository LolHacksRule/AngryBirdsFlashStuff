package §0"M§
{
   import § h§.ErrorPopup;
   import §#"3§.§4!h§;
   import §%#^§.§""P§;
   import §%#^§.§1#D§;
   import §%#^§.§;!g§;
   import §+!n§.§+!p§;
   import §4#$§.§5"L§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §7"1§.§="A§;
   import §7"1§.§[#U§;
   import §;J§.§<7§;
   import §=!&§.§<$!§;
   import §>#Y§.§,#b§;
   import §?o§.§ ^§;
   import §?o§.§4#?§;
   import §]M§.§=!a§;
   import §^#?§.§?#,§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §>$%§ extends EventDispatcher implements §<7§
   {
      
      private static const §!#K§:String = "/challenge/mark";
      
      private static var §[#&§:Number = 0;
       
      
      private var §;#f§:§5"f§;
      
      private var §1!e§:§5"f§;
      
      private var §<t§:§5"f§;
      
      private var §9#`§:§5"f§;
      
      private var §;P§:§5"f§;
      
      private var §?§:§5"f§;
      
      private var §?#Y§:Array;
      
      private const §<!7§:String = "/tournament";
      
      private const §^N§:String = "/currentTournamentInfo";
      
      private const §7#u§:String = "/unconcludedTournament";
      
      private const §;! §:String = "/previousTournamentResults";
      
      private const §=#>§:String = "/claimTournamentReward";
      
      private const §;!R§:String = "/tournaments/info";
      
      private const §;w§:String = "/scores/getOwnEpisodeScores?episode=2000";
      
      private const §8#s§:String = "/scores/getTotalEpisodeScores?limit=5000&episode=2000";
      
      private const §<#&§:String = "/scores/levelScores?limit=5000&episodeName=2000&levelName={level_name}";
      
      private var §%U§:Object;
      
      private var §1![§:Object;
      
      private var §8o§:§1#D§;
      
      private var §!#N§:String;
      
      private var §["f§:§;!g§;
      
      private var §-!_§:§""P§;
      
      public function §>$%§()
      {
         this.§?#Y§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super();
      }
      
      public function §=#6§() : void
      {
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + this.§;!R§ + "?st=" + §="A§.§<!9§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§=l§();
         var _loc2_:§5"f§ = new §5"f§();
         _loc2_.addEventListener(Event.COMPLETE,this.§9"i§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§3#0§);
         _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3#0§);
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc2_.load(_loc1_);
      }
      
      protected function §9"i§(param1:Event) : void
      {
         if(!param1 || !param1.currentTarget)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Can\'t load the overlapping tournaments."));
            return;
         }
         param1.currentTarget.removeEventListener(Event.COMPLETE,this.§9"i§);
         param1.currentTarget.removeEventListener(IOErrorEvent.IO_ERROR,this.§3#0§);
         param1.currentTarget.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3#0§);
         this.§1![§ = param1.currentTarget.data;
         dispatchEvent(new §<$!§(§<$!§.§,"N§,this.§1![§));
      }
      
      public function §"$$§(param1:int = 0) : void
      {
         var _loc2_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + this.§<!7§ + this.§^N§ + "?st=" + §="A§.§<!9§);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§=l§();
         var _loc3_:§5"f§ = new §5"f§();
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc3_.addEventListener(Event.COMPLETE,this.§!!3§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      protected function §!!3§(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(Event.COMPLETE,this.§!!3§);
         param1.currentTarget.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         param1.currentTarget.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         if(param1 && param1.currentTarget)
         {
            if(!param1.currentTarget.data.id)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Tournament not found."));
               return;
            }
            if(!this.§%U§)
            {
               this.§%U§ = new Object();
            }
            this.§%U§[param1.currentTarget.data.id] = param1.currentTarget.data;
            this.§7$'§(param1.currentTarget.data.id);
         }
         else
         {
            this.§7$'§(0);
         }
      }
      
      public function §7$'§(param1:int = 0) : void
      {
         §=!a§.§3"1§.§@$§(this.§%U§[param1].eventInfo);
         dispatchEvent(new §<$!§(§<$!§.§4!<§,this.§%U§[param1]));
         if(!§?#,§.§3"1§ || !§?#,§.§3"1§.active)
         {
            this.§3=§();
         }
      }
      
      public function §!!C§(param1:int) : Object
      {
         if(this.§%U§[param1])
         {
            return this.§%U§[param1];
         }
         return null;
      }
      
      public function §3#%§() : void
      {
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + this.§<!7§ + this.§7#u§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§=l§();
         this.§1!e§ = new §5"f§();
         this.§1!e§.addEventListener(Event.COMPLETE,this.§+!$§);
         this.§1!e§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§1!e§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§1!e§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§1!e§.load(_loc1_);
      }
      
      public function §3=§() : void
      {
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + this.§<!7§ + this.§;! §);
         if(§5"L§.§3"1§.§`#p§() > 0)
         {
            _loc1_.url += "&tournamentId=" + §5"L§.§3"1§.§`#p§();
         }
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§=l§();
         this.§<t§ = new §5"f§();
         this.§<t§.addEventListener(Event.COMPLETE,this.§>!e§);
         this.§<t§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§<t§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§<t§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§<t§.load(_loc1_);
      }
      
      public function §]!N§(param1:int) : void
      {
         var _loc2_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + this.§;w§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§=l§();
         this.§9#`§ = new §5"f§();
         this.§9#`§.addEventListener(Event.COMPLETE,this.§,$#§);
         this.§9#`§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§9#`§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§9#`§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§9#`§.load(_loc2_);
      }
      
      public function §1'§(param1:int) : void
      {
         var _loc2_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + this.§8#s§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§=l§();
         this.§;P§ = new §5"f§();
         this.§;P§.addEventListener(Event.COMPLETE,this.§[a§);
         this.§;P§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§;P§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§;P§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§;P§.load(_loc2_);
      }
      
      public function §""a§() : void
      {
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + this.§<!7§ + this.§=#>§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§=l§();
         this.§?§ = new §5"f§();
         this.§?§.addEventListener(Event.COMPLETE,this.§,#1§);
         this.§?§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§?§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§?§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§?§.load(_loc1_);
      }
      
      protected function §,#1§(param1:Event) : void
      {
         §5"L§.§3"1§.§]"m§();
         dispatchEvent(new §<$!§(§<$!§.§'#n§,param1.currentTarget.data));
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Tournament loading error:" + param1.text + " id: " + param1.errorID));
      }
      
      protected function §3#0§(param1:ErrorEvent) : void
      {
         dispatchEvent(new §<$!§(§<$!§.§[p§));
         dispatchEvent(new §<$!§(§<$!§.§,"N§,null));
      }
      
      public function §&"]§(param1:String, param2:Array, param3:§4#?§) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:Object = null;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc4_:Array = [];
         if(param1.length > 0)
         {
            _loc5_ = §^"a§.§^"P§ + param1 + ".swf";
            _loc6_ = §^"a§.§5"N§ + "tournament_" + param1 + ".pak";
            if(this.§!#N§ != _loc5_)
            {
               this.§!#N§ = _loc5_;
               if(this.§-!_§)
               {
                  this.§-!_§.dispose();
                  this.§-!_§ = null;
               }
               this.§-!_§ = new §""P§();
               _loc4_.push(<pack url="{_loc6_}"/>);
               _loc4_.push(<library swf="{_loc5_}"/>);
            }
         }
         if(param3)
         {
            for each(_loc8_ in param2)
            {
               if(param3.getLevelForId(_loc8_.levelId) == null)
               {
                  if(AngryBirdsBase.DEBUG_MODE_ENABLED)
                  {
                     _loc7_ = §^"a§.§6#8§ + "Level" + _loc8_.levelId + ".lvl";
                  }
                  else
                  {
                     _loc7_ = §^"a§.§4!6§ + _loc8_.levelId.substr(0,6) + "/Level" + _loc8_.levelId + ".lvl";
                  }
                  _loc4_.push(<level url="{_loc7_}" id="{_loc8_.levelId}"/>);
               }
            }
         }
         if(_loc4_.length > 0)
         {
            this.§["f§ = new §;!g§(true);
            this.§["f§.init(§[#U§.§ 5§(),"",§^"a§.§9!h§.§4[§(),this.§-!_§,null,(§+!p§.§;"-§ as §^"a§).§#!1§());
            this.§["f§.§'!X§();
            _loc10_ = 0;
            while(_loc10_ < _loc4_.length)
            {
               _loc11_ = _loc4_[_loc10_];
               this.§["f§.§?#Q§(_loc11_);
               _loc10_++;
            }
            this.§["f§.§`#y§(this.§]#7§);
         }
         else
         {
            dispatchEvent(new §<$!§(§<$!§.§3!=§,new §""P§()));
         }
      }
      
      private function §]#7§() : void
      {
         dispatchEvent(new §<$!§(§<$!§.§3!=§,this.§-!_§));
         this.§["f§ = null;
      }
      
      protected function §+!$§(param1:Event) : void
      {
         dispatchEvent(new §<$!§(§<$!§.§0"Q§,param1.currentTarget.data));
      }
      
      protected function §>!e§(param1:Event) : void
      {
         dispatchEvent(new §<$!§(§<$!§.§,6§,param1.currentTarget.data));
      }
      
      protected function §,$#§(param1:Event) : void
      {
         if(this.§9#`§)
         {
            this.§9#`§.removeEventListener(Event.COMPLETE,this.§,$#§);
            this.§9#`§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§9#`§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§9#`§ = null;
         }
         dispatchEvent(new §<$!§(§<$!§.§?"+§,!!param1.currentTarget ? param1.currentTarget.data : §<$!§(param1).data));
      }
      
      protected function §[a§(param1:Event) : void
      {
         if(this.§;P§)
         {
            this.§;P§.removeEventListener(Event.COMPLETE,this.§[a§);
            this.§;P§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§;P§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§;P§ = null;
         }
         dispatchEvent(new §<$!§(§<$!§.§4!G§,param1.currentTarget.data));
      }
      
      private function §=l§() : String
      {
         return this.§>O§(this.§?#Y§);
      }
      
      private function §>O§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public function §3#?§(param1:Array) : void
      {
         var _loc2_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + §!#K§);
         _loc2_.data = JSON.stringify(param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         var _loc3_:§5"f§ = new §5"f§();
         _loc3_.addEventListener(Event.COMPLETE,this.§8Z§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      protected function §8Z§(param1:Event) : void
      {
         §4!h§.log("Tournament challenge sent");
      }
      
      private function §1"B§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §,#b§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - §[#&§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §5"L§.§4"z§)
         {
            return true;
         }
         §[#&§ = _loc1_;
         return false;
      }
      
      public function §1O§(param1:int) : Boolean
      {
         return this.§%U§ && this.§%U§[param1];
      }
      
      public function §+#A§(param1:int) : void
      {
         this.§]!N§(param1);
         this.§1'§(param1);
      }
   }
}
