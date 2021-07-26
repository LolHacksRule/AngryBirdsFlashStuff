package §7"G§
{
   import §!#C§.§4!Q§;
   import §##Z§.§<$2§;
   import §,"v§.§7!J§;
   import §,"v§.§;"n§;
   import §-u§.§&#+§;
   import §-u§.§0"E§;
   import §-u§.§2k§;
   import §1#v§.§;!Y§;
   import §1L§.§!!o§;
   import §1L§.§0#=§;
   import §1L§.§;#&§;
   import §1L§.§;u§;
   import §2J§.§]#@§;
   import §9$2§.§7"L§;
   import §<!r§.§'##§;
   import §>"x§.§,#F§;
   import §>z§.ErrorPopup;
   import §`#@§.§7n§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §8$?§ extends EventDispatcher implements §,#F§
   {
      
      private static const §1#8§:String = "/challenge/mark";
      
      private static var §-!r§:Number = 0;
       
      
      private var §0<§:§!!o§;
      
      private var §"!%§:§!!o§;
      
      private var § 8§:§!!o§;
      
      private var §#!C§:§!!o§;
      
      private var §&q§:§!!o§;
      
      private var §@"p§:§!!o§;
      
      private var §"#'§:Array;
      
      private const §[U§:String = "/tournament";
      
      private const §=#O§:String = "/currentTournamentInfo";
      
      private const §<!w§:String = "/unconcludedTournament";
      
      private const §4S§:String = "/previousTournamentResults";
      
      private const §-M§:String = "/claimTournamentReward";
      
      private const §^#q§:String = "/tournaments/info";
      
      private const §`"l§:String = "/scores/getOwnEpisodeScores?episode=2000";
      
      private const §&#I§:String = "/scores/getTotalEpisodeScores?limit=5000&episode=2000";
      
      private const §#$;§:String = "/scores/levelScores?limit=5000&episodeName=2000&levelName={level_name}";
      
      private var §-b§:Object;
      
      private var §^#k§:Object;
      
      private var §7!o§:§2k§;
      
      private var §use §:String;
      
      private var §5"x§:§&#+§;
      
      private var §9!o§:§0"E§;
      
      public function §8$?§()
      {
         this.§"#'§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super();
      }
      
      public function §2!j§() : void
      {
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + this.§^#q§ + "?st=" + §0#=§.§+#!§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§1+§();
         var _loc2_:§!!o§ = new §!!o§();
         _loc2_.addEventListener(Event.COMPLETE,this.§9$6§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§4"1§);
         _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"1§);
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc2_.load(_loc1_);
      }
      
      protected function §9$6§(param1:Event) : void
      {
         if(!param1 || !param1.currentTarget)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Can\'t load the overlapping tournaments."));
            return;
         }
         param1.currentTarget.removeEventListener(Event.COMPLETE,this.§9$6§);
         param1.currentTarget.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"1§);
         param1.currentTarget.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"1§);
         this.§^#k§ = param1.currentTarget.data;
         dispatchEvent(new §]#@§(§]#@§.§]<§,this.§^#k§));
      }
      
      public function §<#>§(param1:int = 0) : void
      {
         var _loc2_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + this.§[U§ + this.§=#O§ + "?st=" + §0#=§.§+#!§);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§1+§();
         var _loc3_:§!!o§ = new §!!o§();
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc3_.addEventListener(Event.COMPLETE,this.§^"&§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      protected function §^"&§(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(Event.COMPLETE,this.§^"&§);
         param1.currentTarget.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         param1.currentTarget.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         if(param1 && param1.currentTarget)
         {
            if(!param1.currentTarget.data.id)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Tournament not found."));
               return;
            }
            if(!this.§-b§)
            {
               this.§-b§ = new Object();
            }
            this.§-b§[param1.currentTarget.data.id] = param1.currentTarget.data;
            this.§#"§(param1.currentTarget.data.id);
         }
         else
         {
            this.§#"§(0);
         }
      }
      
      public function §#"§(param1:int = 0) : void
      {
         §7"L§.§`"H§.§`#[§(this.§-b§[param1].eventInfo);
         dispatchEvent(new §]#@§(§]#@§.§,!N§,this.§-b§[param1]));
         if(!§<$2§.§`"H§ || !§<$2§.§`"H§.active)
         {
            this.§,!4§();
         }
      }
      
      public function §%$$§(param1:int) : Object
      {
         if(this.§-b§[param1])
         {
            return this.§-b§[param1];
         }
         return null;
      }
      
      public function §2<§() : void
      {
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + this.§[U§ + this.§<!w§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§1+§();
         this.§"!%§ = new §!!o§();
         this.§"!%§.addEventListener(Event.COMPLETE,this.§0$+§);
         this.§"!%§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§"!%§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§"!%§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§"!%§.load(_loc1_);
      }
      
      public function §,!4§() : void
      {
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + this.§[U§ + this.§4S§);
         if(§'##§.§`"H§.§4"e§() > 0)
         {
            _loc1_.url += "&tournamentId=" + §'##§.§`"H§.§4"e§();
         }
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§1+§();
         this.§ 8§ = new §!!o§();
         this.§ 8§.addEventListener(Event.COMPLETE,this.§@!6§);
         this.§ 8§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ 8§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§ 8§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§ 8§.load(_loc1_);
      }
      
      public function §'!A§(param1:int) : void
      {
         var _loc2_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + this.§`"l§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§1+§();
         this.§#!C§ = new §!!o§();
         this.§#!C§.addEventListener(Event.COMPLETE,this.§`@§);
         this.§#!C§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§#!C§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§#!C§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§#!C§.load(_loc2_);
      }
      
      public function §6W§(param1:int) : void
      {
         var _loc2_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + this.§&#I§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§1+§();
         this.§&q§ = new §!!o§();
         this.§&q§.addEventListener(Event.COMPLETE,this.§`"d§);
         this.§&q§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&q§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&q§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§&q§.load(_loc2_);
      }
      
      public function §@M§() : void
      {
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + this.§[U§ + this.§-M§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§1+§();
         this.§@"p§ = new §!!o§();
         this.§@"p§.addEventListener(Event.COMPLETE,this.§<#m§);
         this.§@"p§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§@"p§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§@"p§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§@"p§.load(_loc1_);
      }
      
      protected function §<#m§(param1:Event) : void
      {
         §'##§.§`"H§.§4"]§();
         dispatchEvent(new §]#@§(§]#@§.§%!+§,param1.currentTarget.data));
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Tournament loading error:" + param1.text + " id: " + param1.errorID));
      }
      
      protected function §4"1§(param1:ErrorEvent) : void
      {
         dispatchEvent(new §]#@§(§]#@§.§6$7§));
         dispatchEvent(new §]#@§(§]#@§.§]<§,null));
      }
      
      public function §&!K§(param1:String, param2:Array, param3:§;"n§) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:Object = null;
         var _loc9_:§7!J§ = null;
         var _loc10_:int = 0;
         var _loc11_:XML = null;
         var _loc4_:Array = [];
         if(param1.length > 0)
         {
            _loc5_ = § #v§.§;"M§ + param1 + ".swf";
            _loc6_ = § #v§.§`!`§ + "tournament_" + param1 + ".pak";
            if(this.§use § != _loc5_)
            {
               this.§use § = _loc5_;
               if(this.§9!o§)
               {
                  this.§9!o§.dispose();
                  this.§9!o§ = null;
               }
               this.§9!o§ = new §0"E§();
               _loc4_.push(<pack url="{_loc6_}"/>);
               _loc4_.push(<library swf="{_loc5_}"/>);
            }
         }
         if(param3)
         {
            for each(_loc8_ in param2)
            {
               if((_loc9_ = param3.getLevelForId(_loc8_.levelId)) == null)
               {
                  if(AngryBirdsBase.DEBUG_MODE_ENABLED)
                  {
                     _loc7_ = § #v§.§?"n§ + "Level" + _loc8_.levelId + ".lvl";
                  }
                  else
                  {
                     _loc7_ = § #v§.§8@§ + _loc8_.levelId.substr(0,6) + "/Level" + _loc8_.levelId + ".lvl";
                  }
                  _loc4_.push(<level url="{_loc7_}" id="{_loc8_.levelId}"/>);
               }
            }
         }
         if(_loc4_.length > 0)
         {
            this.§5"x§ = new §&#+§(true);
            this.§5"x§.init(§;u§.§2!,§(),"",§ #v§.§1!!§.§^!X§(),this.§9!o§,null,(§7n§.§-$<§ as § #v§).§]"v§());
            this.§5"x§.§[$6§();
            _loc10_ = 0;
            while(_loc10_ < _loc4_.length)
            {
               _loc11_ = _loc4_[_loc10_];
               this.§5"x§.§?"'§(_loc11_);
               _loc10_++;
            }
            this.§5"x§.§ #!§(this.§;![§);
         }
         else
         {
            dispatchEvent(new §]#@§(§]#@§.§["X§,new §0"E§()));
         }
      }
      
      private function §;![§() : void
      {
         dispatchEvent(new §]#@§(§]#@§.§["X§,this.§9!o§));
         this.§5"x§ = null;
      }
      
      protected function §0$+§(param1:Event) : void
      {
         dispatchEvent(new §]#@§(§]#@§.§#t§,param1.currentTarget.data));
      }
      
      protected function §@!6§(param1:Event) : void
      {
         dispatchEvent(new §]#@§(§]#@§.§ ">§,param1.currentTarget.data));
      }
      
      protected function §`@§(param1:Event) : void
      {
         if(this.§#!C§)
         {
            this.§#!C§.removeEventListener(Event.COMPLETE,this.§`@§);
            this.§#!C§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§#!C§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§#!C§ = null;
         }
         dispatchEvent(new §]#@§(§]#@§.§4#p§,!!param1.currentTarget ? param1.currentTarget.data : §]#@§(param1).data));
      }
      
      protected function §`"d§(param1:Event) : void
      {
         if(this.§&q§)
         {
            this.§&q§.removeEventListener(Event.COMPLETE,this.§`"d§);
            this.§&q§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§&q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§&q§ = null;
         }
         dispatchEvent(new §]#@§(§]#@§.§,X§,param1.currentTarget.data));
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
      
      public function §2#x§(param1:Array) : void
      {
         var _loc2_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + §1#8§);
         _loc2_.data = JSON.stringify(param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         var _loc3_:§!!o§ = new §!!o§();
         _loc3_.addEventListener(Event.COMPLETE,this.§?9§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      protected function §?9§(param1:Event) : void
      {
         §;!Y§.log("Tournament challenge sent");
      }
      
      private function §6"c§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §4!Q§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - §-!r§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §'##§.§7#%§)
         {
            return true;
         }
         §-!r§ = _loc1_;
         return false;
      }
      
      public function §8b§(param1:int) : Boolean
      {
         return this.§-b§ && this.§-b§[param1];
      }
      
      public function §;$!§(param1:int) : void
      {
         this.§'!A§(param1);
         this.§6W§(param1);
      }
   }
}
