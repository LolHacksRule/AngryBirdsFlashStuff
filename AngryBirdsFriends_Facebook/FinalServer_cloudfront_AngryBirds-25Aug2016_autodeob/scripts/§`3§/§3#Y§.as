package §`3§
{
   import §!!G§.§0§;
   import §!x§.§4"d§;
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §%$!§.§+3§;
   import §-#z§.§ #S§;
   import §-#z§.§0"R§;
   import §-#z§.§0#p§;
   import §5"$§.§]!m§;
   import §7g§.§4!q§;
   import §8!U§.§4s§;
   import §?§.§>"$§;
   import §]$9§.§-!5§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §3#Y§ extends EventDispatcher implements §4s§
   {
      
      private static const §&!%§:String = "/challenge/mark";
      
      private static var §!$!§:Number = 0;
       
      
      private var §implements§:§5$!§;
      
      private var §%#6§:§5$!§;
      
      private var §#!5§:§5$!§;
      
      private var §4#!§:§5$!§;
      
      private var §=#@§:§5$!§;
      
      private var §,@§:§5$!§;
      
      private var §7!§:Array;
      
      private const §,!h§:String = "/tournament";
      
      private const §8$;§:String = "/currentTournamentInfo";
      
      private const §?8§:String = "/unconcludedTournament";
      
      private const §8#B§:String = "/previousTournamentResults";
      
      private const §-F§:String = "/claimTournamentReward";
      
      private const §;!l§:String = "/scores/getOwnEpisodeScores?episode=2000";
      
      private const §5! §:String = "/scores/getTotalEpisodeScores?limit=5000&episode=2000";
      
      private const §4!l§:String = "/scores/levelScores?limit=5000&episodeName=2000&levelName={level_name}";
      
      private var §2#9§:Object;
      
      private var §4"+§:§ #S§;
      
      private var §!""§:String;
      
      private var §+!^§:§0"R§;
      
      private var §?s§:§0#p§;
      
      public function §3#Y§()
      {
         this.§7!§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super();
      }
      
      public function §=$3§() : void
      {
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + this.§,!h§ + this.§8$;§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§;#;§();
         this.§implements§ = new §5$!§();
         this.§implements§.addEventListener(Event.COMPLETE,this.§ ]§);
         this.§implements§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§implements§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§implements§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§implements§.load(_loc1_);
      }
      
      public function §"!z§() : void
      {
         this.§ ]§(null);
      }
      
      public function §+"5§() : void
      {
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + this.§,!h§ + this.§?8§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§;#;§();
         this.§%#6§ = new §5$!§();
         this.§%#6§.addEventListener(Event.COMPLETE,this.§;#B§);
         this.§%#6§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§%#6§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§%#6§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§%#6§.load(_loc1_);
      }
      
      public function §1!d§() : void
      {
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + this.§,!h§ + this.§8#B§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§;#;§();
         this.§#!5§ = new §5$!§();
         this.§#!5§.addEventListener(Event.COMPLETE,this.§'#r§);
         this.§#!5§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§#!5§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§#!5§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§#!5§.load(_loc1_);
      }
      
      public function §?"B§(param1:Boolean = false) : void
      {
         if(param1)
         {
            this.§@!r§(new §0#3§(§0#3§.§^"B§,§]!m§.§3!]§.§7!,§));
            return;
         }
         var _loc2_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + this.§;!l§);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§;#;§();
         this.§4#!§ = new §5$!§();
         this.§4#!§.addEventListener(Event.COMPLETE,this.§@!r§);
         this.§4#!§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§4#!§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§4#!§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§4#!§.load(_loc2_);
      }
      
      public function §54§() : void
      {
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + this.§5! §);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§;#;§();
         this.§=#@§ = new §5$!§();
         this.§=#@§.addEventListener(Event.COMPLETE,this.§4!b§);
         this.§=#@§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§=#@§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§=#@§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§=#@§.load(_loc1_);
      }
      
      public function §7#T§() : void
      {
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + this.§,!h§ + this.§-F§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = this.§;#;§();
         this.§,@§ = new §5$!§();
         this.§,@§.addEventListener(Event.COMPLETE,this.§5#P§);
         this.§,@§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§,@§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§,@§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§,@§.load(_loc1_);
      }
      
      protected function §5#P§(param1:Event) : void
      {
         §]!m§.§3!]§.§-!"§();
         dispatchEvent(new §0#3§(§0#3§.§2!U§,param1.currentTarget.data));
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         throw new Error("Tournament error:" + param1.text + " id: " + param1.errorID);
      }
      
      protected function § ]§(param1:Event) : void
      {
         if(param1 && param1.currentTarget)
         {
            this.§2#9§ = param1.currentTarget.data;
         }
         dispatchEvent(new §0#3§(§0#3§.§;"=§,this.§2#9§));
         if(!§4!q§.§3!]§ || !§4!q§.§3!]§.active)
         {
            this.§1!d§();
         }
         if(param1 == null && this.§1!!§() && §]!m§.§3!]§.§7!A§)
         {
            dispatchEvent(new §0#3§(§0#3§.§]!I§,§]!m§.§3!]§.§7!A§));
            return;
         }
         this.§54§();
      }
      
      public function §8#u§(param1:String, param2:Array, param3:§#!?§) : void
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
            _loc5_ = §8G§.§7"7§ + param1 + ".swf";
            _loc6_ = §8G§.§0!A§ + "tournament_" + param1 + ".pak";
            if(this.§!""§ != _loc5_)
            {
               this.§!""§ = _loc5_;
               if(this.§?s§)
               {
                  this.§?s§.dispose();
                  this.§?s§ = null;
               }
               this.§?s§ = new §0#p§();
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
                  _loc7_ = §8G§.§=#c§ + "Level" + _loc8_.levelId + ".lvl";
                  _loc4_.push(<level url="{_loc7_}" id="{_loc8_.levelId}"/>);
               }
            }
         }
         if(_loc4_.length > 0)
         {
            this.§+!^§ = new §0"R§(true);
            this.§+!^§.init(§-!5§.§1# §(),"",§8G§.§%#S§.§'"G§(),this.§?s§,null,(§>"$§.§<_§ as §8G§).§]i§());
            this.§+!^§.§]"R§();
            _loc10_ = 0;
            while(_loc10_ < _loc4_.length)
            {
               _loc11_ = _loc4_[_loc10_];
               this.§+!^§.§@!6§(_loc11_);
               _loc10_++;
            }
            this.§+!^§.§,"o§(this.§1"P§);
         }
         else
         {
            dispatchEvent(new §0#3§(§0#3§.§'"8§));
         }
      }
      
      private function §1"P§() : void
      {
         dispatchEvent(new §0#3§(§0#3§.§'"8§,this.§?s§));
         this.§+!^§ = null;
      }
      
      protected function §;#B§(param1:Event) : void
      {
         dispatchEvent(new §0#3§(§0#3§.§6#U§,param1.currentTarget.data));
      }
      
      protected function §'#r§(param1:Event) : void
      {
         dispatchEvent(new §0#3§(§0#3§.§?"<§,param1.currentTarget.data));
      }
      
      protected function §@!r§(param1:Event) : void
      {
         if(this.§4#!§)
         {
            this.§4#!§.removeEventListener(Event.COMPLETE,this.§@!r§);
            this.§4#!§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§4#!§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§4#!§ = null;
         }
         dispatchEvent(new §0#3§(§0#3§.§^"B§,!!param1.currentTarget ? param1.currentTarget.data : §0#3§(param1).data));
      }
      
      protected function §4!b§(param1:Event) : void
      {
         if(this.§=#@§)
         {
            this.§=#@§.removeEventListener(Event.COMPLETE,this.§4!b§);
            this.§=#@§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§=#@§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§=#@§ = null;
         }
         dispatchEvent(new §0#3§(§0#3§.§]!I§,param1.currentTarget.data));
      }
      
      private function §;#;§() : String
      {
         return this.§7$!§(this.§7!§);
      }
      
      private function §7$!§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public function §"#c§(param1:Array) : void
      {
         var _loc2_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + §&!%§);
         _loc2_.data = JSON.stringify(param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         var _loc3_:§5$!§ = new §5$!§();
         _loc3_.addEventListener(Event.COMPLETE,this.§6"o§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      protected function §6"o§(param1:Event) : void
      {
         §4"d§.log("Tournament challenge sent");
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
