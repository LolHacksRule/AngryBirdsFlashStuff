package §9&§
{
   import §!!T§.§1"9§;
   import §"$=§.§'![§;
   import §"$=§.§=$&§;
   import §+"u§.§^"C§;
   import §,!L§.§`#S§;
   import §3!5§.§0#r§;
   import §6!'§.§@#c§;
   import §9#K§.§=#f§;
   import §9#o§.§,#t§;
   import §9#o§.§5@§;
   import §9#o§.§]"&§;
   import §=!2§.§%"T§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §>"Q§.§>!d§;
   import §>"Q§.§]Q§;
   import §?!N§.ErrorPopup;
   import §]"'§.§@"%§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §+"j§ extends EventDispatcher implements §`#S§
   {
      
      private static const §?!,§:String = "/challenge/mark";
      
      private static var §[p§:Number = 0;
       
      
      private var §,^§:§'!n§;
      
      private var §8#7§:§'!n§;
      
      private var §]$B§:§'!n§;
      
      private var §&!e§:§'!n§;
      
      private var §?l§:§'!n§;
      
      private var §1#l§:§'!n§;
      
      private var §,"<§:Array;
      
      private const §,F§:String = "/tournament";
      
      private const §0">§:String = "/currentTournamentInfo";
      
      private const §7!q§:String = "/unconcludedTournament";
      
      private const §6"5§:String = "/previousTournamentResults";
      
      private const §>]§:String = "/claimTournamentReward";
      
      private const §0!9§:String = "/tournaments/info";
      
      private const §4F§:String = "/scores/getOwnEpisodeScores?episode=2000";
      
      private const §<$9§:String = "/scores/getTotalEpisodeScores?limit=5000&episode=2000";
      
      private const §3$?§:String = "/scores/levelScores?limit=5000&episodeName=2000&levelName={level_name}";
      
      private var §+'§:Object;
      
      private var §^!A§:Object;
      
      private var §#"k§:§]"&§;
      
      private var §^"H§:String;
      
      private var §;#_§:§,#t§;
      
      private var §`"z§:§5@§;
      
      public function §+"j§()
      {
         this.§,"<§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super();
      }
      
      public function §6"T§() : void
      {
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + this.§0!9§ + "?st=" + §]Q§.§="3§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§3#Q§();
         var _loc2_:§'!n§ = new §'!n§();
         _loc2_.addEventListener(Event.COMPLETE,this.§;$"§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§^]§);
         _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^]§);
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc2_.load(_loc1_);
      }
      
      protected function §;$"§(param1:Event) : void
      {
         if(!param1 || !param1.currentTarget)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Can\'t load the overlapping tournaments."));
            return;
         }
         param1.currentTarget.removeEventListener(Event.COMPLETE,this.§;$"§);
         param1.currentTarget.removeEventListener(IOErrorEvent.IO_ERROR,this.§^]§);
         param1.currentTarget.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^]§);
         this.§^!A§ = param1.currentTarget.data;
         dispatchEvent(new §0#r§(§0#r§.§,B§,this.§^!A§));
      }
      
      public function §`#;§(param1:int = 0) : void
      {
         var _loc2_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + this.§,F§ + this.§0">§ + "?st=" + §]Q§.§="3§);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§3#Q§();
         var _loc3_:§'!n§ = new §'!n§();
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc3_.addEventListener(Event.COMPLETE,this.§4w§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      protected function §4w§(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(Event.COMPLETE,this.§4w§);
         param1.currentTarget.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         param1.currentTarget.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         if(param1 && param1.currentTarget)
         {
            if(!param1.currentTarget.data.id)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Tournament not found."));
               return;
            }
            if(!this.§+'§)
            {
               this.§+'§ = new Object();
            }
            this.§+'§[param1.currentTarget.data.id] = param1.currentTarget.data;
            this.§!"G§(param1.currentTarget.data.id);
         }
         else
         {
            this.§!"G§(0);
         }
      }
      
      public function §!"G§(param1:int = 0) : void
      {
         §1"9§.§?q§.§%6§(this.§+'§[param1].eventInfo);
         dispatchEvent(new §0#r§(§0#r§.§=!z§,this.§+'§[param1]));
         if(!§@#c§.§?q§ || !§@#c§.§?q§.active)
         {
            this.§=!U§();
         }
      }
      
      public function §,!B§(param1:int) : Object
      {
         if(this.§+'§[param1])
         {
            return this.§+'§[param1];
         }
         return null;
      }
      
      public function §&r§() : void
      {
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + this.§,F§ + this.§7!q§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§3#Q§();
         this.§8#7§ = new §'!n§();
         this.§8#7§.addEventListener(Event.COMPLETE,this.§=f§);
         this.§8#7§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§8#7§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§8#7§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§8#7§.load(_loc1_);
      }
      
      public function §=!U§() : void
      {
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + this.§,F§ + this.§6"5§);
         if(§^"C§.§?q§.§5!W§() > 0)
         {
            _loc1_.url += "&tournamentId=" + §^"C§.§?q§.§5!W§();
         }
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§3#Q§();
         this.§]$B§ = new §'!n§();
         this.§]$B§.addEventListener(Event.COMPLETE,this.§##+§);
         this.§]$B§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]$B§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]$B§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§]$B§.load(_loc1_);
      }
      
      public function §-&§(param1:int) : void
      {
         var _loc2_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + this.§4F§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§3#Q§();
         this.§&!e§ = new §'!n§();
         this.§&!e§.addEventListener(Event.COMPLETE,this.§4"O§);
         this.§&!e§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&!e§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&!e§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§&!e§.load(_loc2_);
      }
      
      public function §-!g§(param1:int) : void
      {
         var _loc2_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + this.§<$9§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§3#Q§();
         this.§?l§ = new §'!n§();
         this.§?l§.addEventListener(Event.COMPLETE,this.§-#K§);
         this.§?l§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§?l§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§?l§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§?l§.load(_loc2_);
      }
      
      public function §=#j§() : void
      {
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + this.§,F§ + this.§>]§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§3#Q§();
         this.§1#l§ = new §'!n§();
         this.§1#l§.addEventListener(Event.COMPLETE,this.§71§);
         this.§1#l§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§1#l§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§1#l§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§1#l§.load(_loc1_);
      }
      
      protected function §71§(param1:Event) : void
      {
         §^"C§.§?q§.§%"E§();
         dispatchEvent(new §0#r§(§0#r§.§@o§,param1.currentTarget.data));
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Tournament loading error:" + param1.text + " id: " + param1.errorID));
      }
      
      protected function §^]§(param1:ErrorEvent) : void
      {
         dispatchEvent(new §0#r§(§0#r§.§7!m§));
         dispatchEvent(new §0#r§(§0#r§.§,B§,null));
      }
      
      public function §,"2§(param1:String, param2:Array, param3:§'![§) : void
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
            _loc5_ = §'"a§.§="w§ + param1 + ".swf";
            _loc6_ = §'"a§.§1#U§ + "tournament_" + param1 + ".pak";
            if(this.§^"H§ != _loc5_)
            {
               this.§^"H§ = _loc5_;
               if(this.§`"z§)
               {
                  this.§`"z§.dispose();
                  this.§`"z§ = null;
               }
               this.§`"z§ = new §5@§();
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
                     _loc7_ = §'"a§.§&"8§ + "Level" + _loc8_.levelId + ".lvl";
                  }
                  else
                  {
                     _loc7_ = §'"a§.§6"n§ + _loc8_.levelId.substr(0,6) + "/Level" + _loc8_.levelId + ".lvl";
                  }
                  _loc4_.push(<level url="{_loc7_}" id="{_loc8_.levelId}"/>);
               }
            }
         }
         if(_loc4_.length > 0)
         {
            this.§;#_§ = new §,#t§(true);
            this.§;#_§.init(§>!d§.§5!9§(),"",§'"a§.§!!8§.§@!q§(),this.§`"z§,null,(§%"T§.§>$<§ as §'"a§).§,![§());
            this.§;#_§.§"a§();
            _loc10_ = 0;
            while(_loc10_ < _loc4_.length)
            {
               _loc11_ = _loc4_[_loc10_];
               this.§;#_§.§=!D§(_loc11_);
               _loc10_++;
            }
            this.§;#_§.§!#c§(this.§!$B§);
         }
         else
         {
            dispatchEvent(new §0#r§(§0#r§.§;![§,new §5@§()));
         }
      }
      
      private function §!$B§() : void
      {
         dispatchEvent(new §0#r§(§0#r§.§;![§,this.§`"z§));
         this.§;#_§ = null;
      }
      
      protected function §=f§(param1:Event) : void
      {
         dispatchEvent(new §0#r§(§0#r§.§3#C§,param1.currentTarget.data));
      }
      
      protected function §##+§(param1:Event) : void
      {
         dispatchEvent(new §0#r§(§0#r§.§[#t§,param1.currentTarget.data));
      }
      
      protected function §4"O§(param1:Event) : void
      {
         if(this.§&!e§)
         {
            this.§&!e§.removeEventListener(Event.COMPLETE,this.§4"O§);
            this.§&!e§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§&!e§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§&!e§ = null;
         }
         dispatchEvent(new §0#r§(§0#r§.§'$>§,!!param1.currentTarget ? param1.currentTarget.data : §0#r§(param1).data));
      }
      
      protected function §-#K§(param1:Event) : void
      {
         if(this.§?l§)
         {
            this.§?l§.removeEventListener(Event.COMPLETE,this.§-#K§);
            this.§?l§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§?l§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§?l§ = null;
         }
         dispatchEvent(new §0#r§(§0#r§.§]E§,param1.currentTarget.data));
      }
      
      private function §3#Q§() : String
      {
         return this.§0!m§(this.§,"<§);
      }
      
      private function §0!m§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public function §4!7§(param1:Array) : void
      {
         var _loc2_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + §?!,§);
         _loc2_.data = JSON.stringify(param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         var _loc3_:§'!n§ = new §'!n§();
         _loc3_.addEventListener(Event.COMPLETE,this.§,W§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      protected function §,W§(param1:Event) : void
      {
         §=#f§.log("Tournament challenge sent");
      }
      
      private function §7!G§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §@"%§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - §[p§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §^"C§.§,";§)
         {
            return true;
         }
         §[p§ = _loc1_;
         return false;
      }
      
      public function §["5§(param1:int) : Boolean
      {
         return this.§+'§ && this.§+'§[param1];
      }
      
      public function § #7§(param1:int) : void
      {
         this.§-&§(param1);
         this.§-!g§(param1);
      }
   }
}
