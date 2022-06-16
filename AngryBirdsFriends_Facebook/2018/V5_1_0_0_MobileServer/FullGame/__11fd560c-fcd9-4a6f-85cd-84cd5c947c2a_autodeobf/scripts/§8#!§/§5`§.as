package §8#!§
{
   import §"!@§.§>"c§;
   import §"!@§.§false§;
   import §%#w§.§2#s§;
   import §&"`§.§"#x§;
   import §-!S§.§##>§;
   import §-#e§.§6#P§;
   import §-#e§.§[#a§;
   import §0"A§.§2"w§;
   import §1!=§.§^"U§;
   import §1"N§.§""X§;
   import §2"5§.§1"?§;
   import §2G§.§ #$§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §3"I§.§?#N§;
   import §4#a§.§9A§;
   import §7"§.§`#@§;
   import §9"r§.§1#e§;
   import §9#B§.§+y§;
   import §9#B§.§0"h§;
   import §9#B§.§1#h§;
   import §9#B§.§3#t§;
   import §9#B§.§=!L§;
   import §9#B§.§=!V§;
   import §9#B§.StateLastWeeksTournamentResults;
   import §;#D§.§3#U§;
   import §;$3§.§"m§;
   import §;$3§.§8=§;
   import §="h§.§`"O§;
   import §>#G§.§%6§;
   import §>#G§.§="§;
   import §?P§.TournamentEndedPopup;
   import §?P§.TournamentNotFoundPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §[#[§.§=#Q§;
   import §`7§.§0t§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §5`§ extends EventDispatcher
   {
      
      public static const §5"4§:String = "STANDARD";
      
      public static const §8A§:String = "BRANDED";
      
      public static const §%n§:String = "Angry Birds Tournament";
      
      public static const §"#@§:String = "HALLOWEEN_2014";
      
      public static const §1!G§:String = "XMAS_2014";
      
      public static const §#!3§:String = "BACKGROUND_FB_";
      
      public static const §9w§:String = "tournament_";
      
      public static const §0#c§:String = "InterruptedQualifierBundle";
      
      public static const § "C§:int = 100000;
      
      private static var §&#2§:int = 0;
      
      private static var §!c§:§5`§;
      
      private static const §<!^§:String = "Angry Birds Tournament";
      
      public static var §-"x§:Boolean;
      
      public static var §9"I§:int = 2 * 60;
      
      public static const §?$A§:String = "CachePlayerCurrentTournament";
       
      
      private var §,#z§:Boolean = false;
      
      private var §,"r§:Boolean = false;
      
      private var §["$§:Object;
      
      private var §8L§:Object;
      
      private var § !]§:Object;
      
      private var §5!i§:Object;
      
      private var §2#7§:Object;
      
      private var §-!V§:§-"Z§;
      
      private var §,M§:§0t§;
      
      private var §^!m§:String = "STANDARD";
      
      private var §5"O§:Number;
      
      private var §6!?§:Object;
      
      private var §^!]§:§""X§;
      
      private var §-"d§:Boolean = false;
      
      private var §!"k§:§9A§;
      
      private var §2p§:Array;
      
      private var §0"9§:Dictionary;
      
      private var §7!N§:§6#P§;
      
      private var §&!E§:Array;
      
      private var mLevelManager:§8=§;
      
      public var §=m§:int = 0;
      
      private var §4"s§:Boolean = false;
      
      private var §0",§:Object;
      
      public function §5`§()
      {
         this.§0"9§ = new Dictionary();
         super();
         this.§7$'§();
         this.§&!E§ = new Array(5);
         this.§!"k§ = new §9A§();
         this.§!"k§.addEventListener(§1#e§.§=;§,this.§5$#§);
         this.§!"k§.addEventListener(§1#e§.§]!<§,this.§+C§);
         this.§!"k§.addEventListener(§1#e§.§<$;§,this.§-!3§);
         this.§!"k§.addEventListener(§1#e§.§=r§,this.§3!j§);
         this.§!"k§.addEventListener(§1#e§.§<"Y§,this.§<#B§);
         this.§!"k§.addEventListener(§1#e§.§>"d§,this.§3!D§);
         this.§!"k§.addEventListener(§1#e§.§&t§,this.§!#_§);
         this.§2p§ = new Array();
         this.§0"9§[§?$A§] = §9"I§;
      }
      
      public static function get §6!§() : §5`§
      {
         if(§!c§ == null)
         {
            §!c§ = new §5`§();
         }
         return §!c§;
      }
      
      public static function §`$,§(param1:Number) : String
      {
         var _loc2_:int = param1 / 60;
         var _loc3_:* = "";
         var _loc4_:int = Math.round(_loc2_ / 1440);
         var _loc5_:int;
         if((_loc5_ = Math.round(_loc2_ / 60)) < 24)
         {
            if(_loc5_ < 2 && _loc2_ >= 60)
            {
               _loc3_ = _loc5_ + " Hour";
            }
            else if(_loc5_ >= 2)
            {
               _loc3_ = Math.max(0,_loc5_) + " Hours";
            }
            else if(param1 >= 60)
            {
               _loc3_ = _loc2_ + " " + (_loc2_ == 1 ? "Minute" : "Minutes");
            }
            else
            {
               _loc3_ = param1 + " Seconds";
            }
         }
         else if(_loc4_ == 1)
         {
            _loc3_ = _loc4_ + " Day";
         }
         else
         {
            _loc3_ = _loc4_ + " Days";
         }
         return _loc3_;
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      protected static function get userProgress() : §##>§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §##>§;
      }
      
      public static function §&"C§() : void
      {
         §-"x§ = true;
      }
      
      public function set §'$<§(param1:int) : void
      {
         this.§=m§ = param1;
      }
      
      public function get §'$<§() : int
      {
         return this.§=m§;
      }
      
      public function get §4!Y§() : Boolean
      {
         return this.§=m§ != 0;
      }
      
      public function §`"K§() : Boolean
      {
         return this.§4"s§;
      }
      
      public function §7"T§(param1:Boolean) : void
      {
         this.§4"s§ = param1;
      }
      
      public function §2! §(param1:§8=§) : void
      {
         this.mLevelManager = param1;
      }
      
      protected function §!#_§(param1:Event) : void
      {
         dispatchEvent(new §1#e§(§1#e§.§&t§));
      }
      
      public function §9E§() : void
      {
         if(§-"x§ || this.§"!^§ == null || this.§"!^§ && this.§]#M§() <= 60 * 5)
         {
            this.§!"k§.§8>§();
            §-"x§ = false;
         }
         else
         {
            this.§!"k§.§15§();
         }
         if(!§2#s§.§6!§.active)
         {
            this.§!"k§.§]#u§();
         }
      }
      
      public function §^b§() : void
      {
         this.§!"k§.§^"r§();
      }
      
      protected function §<#B§(param1:§1#e§) : void
      {
         if(param1.data)
         {
            if(this.§["$§ && param1.data.levelScores)
            {
               this.§["$§.levelScores = param1.data.levelScores;
               (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§@"e§(this.§["$§.levelScores);
               dispatchEvent(new §1#e§(§1#e§.§<"Y§));
            }
         }
      }
      
      protected function §3!j§(param1:§1#e§) : void
      {
         if(param1.data != null && (!this.§8L§ || this.§8L§.toString() != param1.data.toString()))
         {
            this.§8L§ = param1.data;
            if(param1.data.players)
            {
               this.§ !]§ = param1.data;
            }
         }
         dispatchEvent(new §1#e§(§1#e§.§<##§));
      }
      
      protected function §-!3§(param1:§1#e§) : void
      {
         if(this.§8L§ && this.§ !]§)
         {
            dispatchEvent(new §1#e§(§1#e§.§4"d§));
         }
         else if(param1.data != null && (!this.§ !]§ || this.§ !]§.toString() != param1.data.toString()))
         {
            this.§ !]§ = param1.data;
            dispatchEvent(new §1#e§(§1#e§.§4"d§));
         }
      }
      
      public function §""§(param1:String) : Number
      {
         return this.§0"9§[param1];
      }
      
      private function §["O§(param1:String) : Boolean
      {
         var _loc2_:Number = (AngryBirdsBase.singleton.dataModel as §#"8§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = (_loc2_ - this.§0"9§[param1]) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ < §9"I§)
         {
            return true;
         }
         this.§0"9§[param1] = _loc2_;
         return false;
      }
      
      protected function §5$#§(param1:§1#e§) : void
      {
         var _loc2_:§"m§ = null;
         var _loc3_:Object = null;
         if(param1.data)
         {
            this.§["$§ = param1.data;
            this.§!"k§.§"#u§(this.brandedTournamentAssetId,this.§["$§.levels,this.mLevelManager);
            if(this.mLevelManager)
            {
               _loc2_ = this.mLevelManager.getEpisodeByName(§false§.§;#i§);
               for each(_loc3_ in this.§["$§.levels)
               {
                  _loc2_.§>m§(_loc3_.levelId);
               }
            }
         }
         dispatchEvent(new §1#e§(§1#e§.§=;§));
      }
      
      private function §+C§(param1:§1#e§) : void
      {
         var _loc2_:§="§ = §="§(param1.data);
         if(_loc2_)
         {
            dispatchEvent(new §1#e§(§1#e§.§]!<§,{
               "packLoader":_loc2_,
               "cb":this.§7"z§
            }));
         }
         else
         {
            dispatchEvent(new §1#e§(§1#e§.§]!<§,{"bluePrintPackLoader":new §%6§()}));
            this.§+"G§();
         }
      }
      
      private function §7"z§() : void
      {
         this.§+"G§();
      }
      
      public function §+"G§() : void
      {
         if(this.§["$§)
         {
            this.injectData();
            if(!this.§["$§)
            {
               dispatchEvent(new §1#e§(§1#e§.§9"S§));
            }
         }
         this.§!"k§.§@W§(false);
         dispatchEvent(new §1#e§(§1#e§.§7+§));
      }
      
      public function §,§() : void
      {
         var _loc1_:* = null;
         this.§["$§ = null;
         this.§8L§ = null;
         this.§ !]§ = null;
         this.§5!i§ = null;
         this.§2#7§ = null;
         for(_loc1_ in this.§0"9§)
         {
            this.§0"9§[_loc1_] = 0;
         }
         if(this.§7!N§)
         {
            this.§7!N§.§ "P§();
         }
         this.§&!E§ = new Array(5);
      }
      
      public function §<!J§() : void
      {
         this.§8L§ = null;
      }
      
      protected function §3!D§(param1:§1#e§) : void
      {
         if(param1.data)
         {
            this.§2#7§ = param1.data;
            this.§2#7§ = § #$§.§3>§(this.§2#7§,"players");
            dispatchEvent(new §1#e§(§1#e§.§>"d§));
         }
      }
      
      public function get §'!d§() : Object
      {
         return this.§6!?§;
      }
      
      public function §'#3§(param1:Object) : void
      {
         var _loc2_:§"#x§ = null;
         if(this.§6!?§ != param1)
         {
            this.§6!?§ = param1;
            _loc2_ = §#"8§(AngryBirdsBase.singleton.dataModel).§-!h§.§+#G§[0];
            this.§^!]§ = new §""X§(_loc2_,_loc2_.getPricePoint(0));
            this.§^!]§.addEventListener(§1"?§.§=#j§,this.§!#y§);
         }
      }
      
      private function §!#y§(param1:§1"?§) : void
      {
         if(this.§^!]§)
         {
            this.§^!]§.removeEventListener(§1"?§.§=#j§,this.§!#y§);
         }
         if(this.§6!?§)
         {
            delete this.§6!?§.unlockTime;
         }
         this.§6!?§ = null;
      }
      
      public function §#!4§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.levelObjects)
         {
            if(_loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §7$'§() : void
      {
         this.§,M§ = new §0t§();
         this.§,M§[§5"4§] = this.§3"#§(§5"4§);
         this.§,M§[§8A§] = this.§3"#§(§8A§,null,"","",false,"",§2"w§);
      }
      
      private function §3"#§(param1:String, param2:Class = null, param3:String = "", param4:String = "", param5:Boolean = false, param6:String = "", param7:Class = null, param8:Class = null, param9:Class = null, param10:Class = null, param11:Class = null, param12:Class = null, param13:Class = null) : §-"Z§
      {
         var _loc14_:§-"Z§;
         (_loc14_ = new §-"Z§(param1,param2,param3,param4,param5,param6)).§;!^§(§=!L§.STATE_NAME,param7 || §=!L§);
         _loc14_.§;!^§(§+y§.STATE_NAME,param8 || §+y§);
         _loc14_.§;!^§(§0"h§.STATE_NAME,param9 || §0"h§);
         _loc14_.§;!^§(StateLastWeeksTournamentResults.STATE_NAME,param10 || StateLastWeeksTournamentResults);
         _loc14_.§;!^§(§1#h§.STATE_NAME,param11 || §1#h§);
         _loc14_.§;!^§(§=!V§.STATE_NAME,param12 || §=!V§);
         _loc14_.§;!^§(§3#t§.STATE_NAME,param13 || §3#t§);
         return _loc14_;
      }
      
      private function onEnterFrame(param1:§?#N§) : void
      {
         var _loc2_:int = 0;
         if(!this.§,#z§)
         {
            _loc2_ = this.§]#M§();
            if(_loc2_ == 0)
            {
               this.§,#z§ = true;
               this.§^!o§();
            }
            else if(_loc2_ > 0 && this.§-"d§)
            {
               this.§-"d§ = false;
            }
            if(_loc2_ <= 5 && _loc2_ > 0)
            {
               if(!this.§&!E§[_loc2_ - 1])
               {
                  if(§3#U§.§9#^§.§ Y§() == §=!L§.STATE_NAME || §3#U§.§9#^§.§ Y§() == §>"c§.STATE_NAME)
                  {
                     §!"p§.playSound("ui_countdown_" + _loc2_,§!"p§.§+!;§);
                  }
                  this.§&!E§[_loc2_ - 1] = true;
               }
            }
         }
      }
      
      private function §9$>§() : void
      {
         AngryBirdsBase.singleton.popupManager.§0!<§();
         var _loc1_:TournamentEndedPopup = new TournamentEndedPopup(§]"$§.NORMAL,§^"U§.TOP);
         _loc1_.addEventListener(§1#e§.§&"[§,this.§5"F§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §5"F§(param1:Event) : void
      {
         (param1.currentTarget as TournamentEndedPopup).removeEventListener(§1#e§.§&"[§,this.§5"F§);
         dispatchEvent(new §1#e§(§1#e§.§&"[§));
      }
      
      protected function §]!t§() : void
      {
         var _loc1_:TournamentNotFoundPopup = new TournamentNotFoundPopup(§]"$§.NORMAL,§^"U§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function injectData() : void
      {
         var _loc1_:Object = null;
         if(!§3#U§.§9#^§.hasEventListener(§?#N§.§1!I§))
         {
            §3#U§.§9#^§.addEventListener(§?#N§.§1!I§,this.onEnterFrame);
         }
         this.§,#z§ = false;
         this.§,"r§ = false;
         if(this.§["$§ && this.§["$§.levelScores)
         {
            _loc1_ = this.§["$§.levelScores;
         }
         this.§["$§.levelScores = _loc1_;
         if(this.§["$§)
         {
            this.§5"O§ = this.§"!^§.endTime;
         }
         if(this.§"!^§.brandedTournament != null)
         {
            this.§-!V§ = this.§,M§[§8A§];
            this.§-!V§.§8s§ = this.§"!^§.brandedTournament;
            this.§-!V§.§5#-§ = this.§"!^§.tn;
            this.§-!V§.§7"4§ = this.brandedTournamentAssetId;
            this.§-!V§.§`$5§ = §9w§ + this.brandedTournamentAssetId;
            if(this.§-!V§.§5!d§)
            {
               this.§-!V§.background = §#!3§ + this.brandedTournamentAssetId;
            }
            this.§-!V§.§-m§ = this.brandedTournamentAssetId;
         }
         else
         {
            this.§-!V§ = this.§,M§[§5"4§];
         }
         if(AngryBirdsBase.singleton.§?#E§)
         {
            this.§3t§();
         }
      }
      
      private function §3t§() : void
      {
         var _loc2_:§`#@§ = null;
         var _loc1_:Boolean = false;
         if(this.§8s§ != "" && this.§^!m§ != this.§8s§ && this.§-!V§)
         {
            this.§-!V§.§]"t§();
            this.§^!m§ = this.§8s§;
            _loc1_ = true;
         }
         else if(this.§^!m§ != §5"4§ && this.§8s§ == "")
         {
            this.§-!V§.§]"t§();
            this.§^!m§ = §5"4§;
            _loc1_ = true;
         }
         if(_loc1_)
         {
            _loc2_ = §3#U§.§9#^§.§=!&§();
            if(_loc2_ != null)
            {
               if(_loc2_.§=q§ == §=!L§.STATE_NAME)
               {
                  AngryBirdsBase.singleton.§1"h§(§=!L§.STATE_NAME);
               }
            }
         }
      }
      
      public function §]"J§(param1:String) : §-"Z§
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§,M§)
         {
            if(_loc2_ == param1.toUpperCase())
            {
               return this.§,M§[_loc2_];
            }
         }
         return null;
      }
      
      public function get §"!^§() : Object
      {
         if(this.§["$§)
         {
            return this.§["$§;
         }
         return null;
      }
      
      public function §7j§() : String
      {
         if(this.§"!^§)
         {
            return "tournamentId=" + this.§["$§.id;
         }
         return "tournamentId=-1";
      }
      
      public function §3#u§() : Boolean
      {
         if(this.§["$§)
         {
            return this.§["$§.overlappingTournamentsEnabled;
         }
         return false;
      }
      
      public function get §]!Q§() : Object
      {
         return this.§"!^§.enteredDraw;
      }
      
      public function get tournamentRules() : §-"Z§
      {
         return this.§-!V§;
      }
      
      public function get §8s§() : String
      {
         if(this.§-!V§)
         {
            return this.§-!V§.§8s§;
         }
         return "";
      }
      
      public function get brandedTournamentAssetId() : String
      {
         if(this.§"!^§ != null && this.§"!^§.brandedTournamentAssetId != null)
         {
            if((this.§"!^§.brandedTournamentAssetId as String).toUpperCase() == "HALLOWEEN_2013")
            {
               return §5`§.§"#@§;
            }
            if((this.§"!^§.brandedTournamentAssetId as String).toUpperCase().indexOf(§1!G§) != -1)
            {
               return §1!G§;
            }
            return (this.§"!^§.brandedTournamentAssetId as String).toUpperCase();
         }
         return "";
      }
      
      public function get §5#-§() : String
      {
         if(this.§-!V§ && this.§-!V§.§5#-§)
         {
            return this.§-!V§.§5#-§;
         }
         return §%n§;
      }
      
      public function get §6"!§() : String
      {
         if(this.§"!^§ != null && this.§["$§.nextTournamentBrand != null)
         {
            return this.§["$§.nextTournamentBrand;
         }
         return "";
      }
      
      public function get §^"=§() : Object
      {
         return this.§2#7§;
      }
      
      public function get §4d§() : Object
      {
         return this.§ !]§;
      }
      
      public function get lastResult() : Object
      {
         if(this.§8L§ && this.§8L§.prizeCounts && this.§8L§.players)
         {
            return this.§8L§;
         }
         return null;
      }
      
      public function get players() : Array
      {
         if(this.§^"=§)
         {
            return this.§^"=§.players;
         }
         return [];
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.levelObjects)
         {
            if(_loc2_.levelId == param1)
            {
               return this.§2X§(_loc2_);
            }
         }
         return false;
      }
      
      public function §1"C§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         for each(_loc3_ in this.levelObjects)
         {
            if(_loc3_.levelId == param1)
            {
               _loc3_.secondsToUnlock = -1;
               return;
            }
         }
      }
      
      public function secondsToUnlock(param1:String) : int
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.levelObjects)
         {
            if(_loc2_.levelId == param1)
            {
               return this.§@1§(_loc2_);
            }
         }
         return -1;
      }
      
      public function §@1§(param1:Object) : int
      {
         var _loc2_:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         return (param1.unlockTime - _loc2_) / 1000;
      }
      
      private function §2X§(param1:Object) : Boolean
      {
         if(param1.unlockTime)
         {
            if(§-#+§.§6!§.§5#o§(param1.levelId))
            {
               return true;
            }
            if(this.§@1§(param1) > 0)
            {
               return false;
            }
         }
         return true;
      }
      
      public function get levelIDs() : Array
      {
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.levelObjects)
         {
            _loc1_.push(_loc2_.levelId);
         }
         return _loc1_;
      }
      
      public function get levelObjects() : Array
      {
         if(this.§"!^§)
         {
            return this.§"!^§.levels;
         }
         return [];
      }
      
      public function get levelScores() : Array
      {
         if(this.§"!^§)
         {
            return this.§"!^§.levelScores;
         }
         return [];
      }
      
      public function get §;7§() : Array
      {
         if(this.§4d§)
         {
            if(this.§4d§.prizeCounts)
            {
               return this.§4d§.prizeCounts;
            }
         }
         return [1000,500,100];
      }
      
      public function get §=!P§() : Array
      {
         if(this.lastResult)
         {
            if(this.lastResult.prizeCounts)
            {
               return this.lastResult.prizeCounts;
            }
         }
         return [6,4,2];
      }
      
      public function get bronzeTrophies() : int
      {
         if(this.§4d§)
         {
            return this.§4d§.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.§4d§)
         {
            return this.§4d§.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.§4d§)
         {
            return this.§4d§.goldTrophies;
         }
         return 0;
      }
      
      public function §]#M§() : int
      {
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§5"O§ - _loc1_) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      public function §=0§(param1:String) : String
      {
         var _loc2_:int = this.levelIDs.indexOf(param1);
         var _loc3_:String = this.levelIDs[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.levelIDs.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function § #A§(param1:String) : String
      {
         var _loc2_:int = this.levelIDs.indexOf(param1);
         var _loc3_:String = this.levelIDs[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.levelIDs.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §?<§(param1:String) : int
      {
         return this.levelIDs.indexOf(param1) + 1;
      }
      
      public function §";§(param1:String) : String
      {
         switch(this.levelIDs.indexOf(param1))
         {
            case 0:
               return "one";
            case 1:
               return "two";
            case 2:
               return "three";
            case 3:
               return "four";
            case 4:
               return "five";
            case 5:
               return "six";
            default:
               return "";
         }
      }
      
      public function §1"q§() : Array
      {
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.players)
         {
            if(!_loc2_.i)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §?#U§() : Array
      {
         return §=#Q§.§5"H§(this.§]#M§());
      }
      
      public function §7$A§(param1:Number) : Array
      {
         var _loc8_:String = null;
         var _loc2_:int = param1 / 60;
         var _loc3_:* = "";
         var _loc4_:uint = 16774858;
         var _loc6_:int = Math.floor(_loc2_ / 1440);
         var _loc7_:int;
         if((_loc7_ = Math.floor(_loc2_ / 60)) < 24)
         {
            _loc4_ = 16762174;
            if(_loc7_ < 2 && _loc2_ >= 60)
            {
               _loc3_ = "Left: " + _loc7_ + " hour";
            }
            else if(_loc7_ >= 2)
            {
               _loc3_ = "Left: " + Math.max(0,_loc7_) + " hours";
            }
            else if(param1 >= 60)
            {
               _loc3_ = "Left: " + _loc2_ + " " + (_loc2_ == 1 ? "minute" : "minutes");
            }
            else
            {
               _loc8_ = "seconds";
               if(param1 == 1)
               {
                  _loc8_ = _loc8_.slice(0,_loc8_.length - 1);
               }
               _loc3_ = "Left: " + param1 + " " + _loc8_;
            }
         }
         else if(_loc6_ == 1)
         {
            _loc3_ = "Left: " + _loc6_ + " day";
         }
         else
         {
            _loc3_ = "Left: " + _loc6_ + " days";
         }
         return [_loc3_,_loc4_];
      }
      
      public function §<#8§() : int
      {
         var _loc2_:Object = null;
         var _loc1_:int = 1;
         for each(_loc2_ in this.players)
         {
            if(_loc2_.uid == userProgress.userID)
            {
               return _loc1_;
            }
            _loc1_++;
         }
         return § "C§;
      }
      
      public function get §5#&§() : Boolean
      {
         return this.§-"d§;
      }
      
      public function set §5#&§(param1:Boolean) : void
      {
         this.§-"d§ = param1;
      }
      
      public function §'!"§() : void
      {
         if(this.§,#z§ && !this.§,"r§)
         {
            this.§^!o§();
         }
      }
      
      private function §^!o§() : void
      {
         dispatchEvent(new §1#e§(§1#e§.§="2§));
         §`"O§.§6!§.§&$1§();
         §=!L§.§4K§();
         if(AngryBirdsBase.singleton.§ Y§().indexOf("Tournament") != -1)
         {
            ++§&#2§;
            if(§&#2§ > 2)
            {
               this.§]!t§();
               §&#2§ = 0;
            }
            else
            {
               this.§9$>§();
            }
         }
         this.§,"r§ = true;
      }
      
      public function get info() : String
      {
         if(this.§["$§ && this.§["$§.info)
         {
            return this.§["$§.info;
         }
         return "";
      }
      
      public function §+$4§() : void
      {
         this.§!"k§.§]#u§();
      }
      
      public function §?#w§(param1:Array) : void
      {
         this.§2p§ = param1;
      }
      
      public function §"!L§() : Array
      {
         return this.§2p§;
      }
      
      public function get §^A§() : Boolean
      {
         return this.lastResult;
      }
      
      public function §+$1§(param1:String) : §[#a§
      {
         if(!this.§7!N§)
         {
            this.§7!N§ = new §6#P§();
         }
         return this.§7!N§.§`!-§(param1);
      }
      
      public function §%!#§(param1:String) : void
      {
         if(this.§7!N§)
         {
            this.§7!N§.§7#7§(param1);
         }
      }
      
      public function §2`§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         if(this.§["$§)
         {
            for each(_loc2_ in this.§["$§.levels)
            {
               if(_loc2_.levelId == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §^$+§() : void
      {
         if(this.§7!N§)
         {
            this.§7!N§.§8",§();
         }
      }
      
      public function get §1$2§() : Object
      {
         return this.§0",§;
      }
      
      public function set §1$2§(param1:Object) : void
      {
         this.§0",§ = param1;
      }
   }
}
