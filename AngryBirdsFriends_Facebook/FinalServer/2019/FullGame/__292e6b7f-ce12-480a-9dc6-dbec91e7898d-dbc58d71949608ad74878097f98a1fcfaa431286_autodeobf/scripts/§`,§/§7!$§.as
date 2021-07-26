package §`,§
{
   import § $0§.§5R§;
   import §!!L§.§ !8§;
   import §!!L§.§'"H§;
   import §!!L§.§6$1§;
   import §!!L§.§8"^§;
   import §!!L§.§=$3§;
   import §!!L§.§@<§;
   import §!!L§.StateLastWeeksTournamentResults;
   import §!!L§.StateTournamentResults;
   import §!!L§.§]!p§;
   import §!L§.§`#u§;
   import §#"4§.§&r§;
   import §&?§.§!M§;
   import §&?§.§`'§;
   import §'"b§.§ #F§;
   import §,#,§.§%"#§;
   import §,#,§.§=#o§;
   import §-$'§.§4$A§;
   import §1#`§.§&#m§;
   import §3"V§.§ b§;
   import §7#$§.§]#q§;
   import §9$1§.§'R§;
   import §>!I§.§&"5§;
   import §>!I§.§-!>§;
   import §>#q§.§8#Z§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.TournamentEndedPopup;
   import §?Q§.TournamentNotFoundPopup;
   import §[#V§.§1!>§;
   import §[c§.§ #a§;
   import §]#'§.§4"s§;
   import §]§.§3"E§;
   import §`"t§.§7"U§;
   import §`§.§?$B§;
   import §`D§.§2_§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §7!$§ extends EventDispatcher
   {
      
      public static const §%#S§:String = "STANDARD";
      
      public static const §]#>§:String = "BRANDED";
      
      public static const §0$ §:String = "Angry Birds Tournament";
      
      public static const §01§:String = "HALLOWEEN_2014";
      
      public static const §5#A§:String = "XMAS_2014";
      
      public static const §2h§:String = "BACKGROUND_FB_";
      
      public static const §3!H§:String = "tournament_";
      
      public static const §6$3§:String = "InterruptedQualifierBundle";
      
      public static const §1h§:int = 100000;
      
      private static var §%"9§:int = 0;
      
      private static var §+#!§:§7!$§;
      
      private static const §'">§:String = "Angry Birds Tournament";
      
      private static var §3$D§:Boolean;
      
      public static var §1#7§:int = 2 * 60;
      
      public static const §1$ §:String = "CachePlayerCurrentTournament";
      
      private static var § var§:Boolean;
       
      
      private var §^#^§:Boolean = false;
      
      private var §]#m§:Boolean = false;
      
      private var §8;§:Object;
      
      private var §&I§:Object;
      
      private var §1?§:Object;
      
      private var §^$%§:Object;
      
      private var §`W§:Object;
      
      private var §%#X§:Object;
      
      private var §7"u§:§'#t§;
      
      private var §4!a§:§&r§;
      
      private var §^#A§:String = "STANDARD";
      
      private var § #0§:Number;
      
      private var §%0§:Object;
      
      private var §7$=§:§8#Z§;
      
      private var §@!t§:Boolean = false;
      
      private var §%!s§:§4$A§;
      
      private var §8!S§:Array;
      
      private var §;"%§:Dictionary;
      
      private var §+!`§:§-!>§;
      
      private var §]!M§:Array;
      
      private var mLevelManager:§]#q§;
      
      public var §4#z§:int = 0;
      
      private var §;&§:Boolean = false;
      
      private var §;y§:Object;
      
      private var §##&§:Object;
      
      private var §8#A§:Object;
      
      private var §""'§:Timer;
      
      public function §7!$§()
      {
         this.§;"%§ = new Dictionary();
         super();
         this.§"#M§();
         this.§]!M§ = new Array(5);
         this.§%!s§ = new §4$A§();
         this.§%!s§.addEventListener(§&#m§.§]"]§,this.§@$?§);
         this.§%!s§.addEventListener(§&#m§.§&#h§,this.§7!D§);
         this.§%!s§.addEventListener(§&#m§.§ #%§,this.§""b§);
         this.§%!s§.addEventListener(§&#m§.§%#i§,this.§;x§);
         this.§%!s§.addEventListener(§&#m§.§'"Z§,this.§"#y§);
         this.§%!s§.addEventListener(§&#m§.§8#?§,this.§8y§);
         this.§%!s§.addEventListener(§&#m§.§9G§,this.§-#g§);
         this.§%!s§.addEventListener(§&#m§.§^"=§,this.§8%§);
         this.§%!s§.addEventListener(§&#m§.§&!I§,this.§!#%§);
         this.§8!S§ = new Array();
         this.§;"%§[§1$ §] = §1#7§;
      }
      
      public static function get §+!,§() : §7!$§
      {
         if(§+#!§ == null)
         {
            §+#!§ = new §7!$§();
         }
         return §+#!§;
      }
      
      public static function §<"a§(param1:Number) : String
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
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      protected static function get userProgress() : §`#u§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §`#u§;
      }
      
      public static function §0#§(param1:Boolean) : void
      {
         § var§ = param1;
      }
      
      public static function §'"P§() : void
      {
         §3$D§ = true;
      }
      
      public function set § 8§(param1:int) : void
      {
         this.§4#z§ = param1;
      }
      
      public function get § 8§() : int
      {
         return this.§4#z§;
      }
      
      public function get §+"9§() : Boolean
      {
         return this.§4#z§ != 0;
      }
      
      public function §6!0§() : Boolean
      {
         return this.§;&§;
      }
      
      public function §;L§(param1:Boolean) : void
      {
         this.§;&§ = param1;
      }
      
      public function § !0§(param1:§]#q§) : void
      {
         this.mLevelManager = param1;
      }
      
      protected function §8y§(param1:Event) : void
      {
         dispatchEvent(new §&#m§(§&#m§.§8#?§));
      }
      
      public function §08§() : void
      {
         this.§%!s§.final(0);
         if(!§4"s§.§+!,§.active)
         {
            this.§%!s§.§@# §();
         }
      }
      
      public function §2!P§() : void
      {
         this.§6!?§();
         this.§%!s§.§2!P§(this.§`!X§());
         this.§`!!§();
      }
      
      public function final(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         if(!§3$D§ && this.§%!s§.§1$;§(param1))
         {
            _loc2_ = this.§%!s§.§]u§(param1);
            _loc3_ = (AngryBirdsBase.singleton.dataModel as §=#o§).serverSynchronizedTime.synchronizedTimeStamp;
            if(_loc2_.endTime - _loc3_ <= 0)
            {
               this.§%!s§.final(param1);
            }
            else
            {
               this.§%!s§.§]i§(param1);
            }
         }
         else if(param1 == 0)
         {
            if(!§3$D§ && this.§@!v§ != null && this.§%!s§.§1$;§(this.§@!v§.id))
            {
               this.§%!s§.§]i§(this.§@!v§.id);
            }
            else
            {
               this.§%!s§.final(0);
            }
            if(!§4"s§.§+!,§.active)
            {
               this.§%!s§.§@# §();
            }
         }
         else
         {
            this.§%!s§.final(param1);
         }
         §3$D§ = false;
      }
      
      public function §'"4§(param1:int) : void
      {
         this.§%!s§.§'"4§(param1);
      }
      
      public function §!'§(param1:int) : void
      {
         this.§%!s§.§>$7§(param1);
      }
      
      public function §+"I§(param1:Boolean) : void
      {
         if(this.§>$1§ == null || param1)
         {
            this.§%!s§.§+"I§();
         }
         else
         {
            dispatchEvent(new §&#m§(§&#m§.§9G§,this.§%#X§));
         }
      }
      
      public function §`!!§() : void
      {
         this.§%!s§.§;"z§(this.brandedTournamentAssetId,this.§8;§.levels,this.mLevelManager);
      }
      
      public function §=!W§() : void
      {
         this.§%!s§.§=S§();
      }
      
      protected function §;x§(param1:§&#m§) : void
      {
         if(param1.data)
         {
            if(this.§8;§ && param1.data.levelScores)
            {
               this.§8;§.levelScores = param1.data.levelScores;
               (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).§]"c§(this.§8;§.levelScores);
            }
         }
         dispatchEvent(new §&#m§(§&#m§.§%#i§));
         this.§!!>§(§&#m§.§%#i§);
      }
      
      protected function §""b§(param1:§&#m§) : void
      {
         if(param1.data != null && (!this.§&I§ || this.§&I§.toString() != param1.data.toString()))
         {
            this.§&I§ = param1.data;
            if(param1.data.players)
            {
               this.§1?§ = param1.data;
            }
         }
         dispatchEvent(new §&#m§(§&#m§.§@$+§));
      }
      
      protected function §7!D§(param1:§&#m§) : void
      {
         if(this.§&I§ && this.§1?§)
         {
            dispatchEvent(new §&#m§(§&#m§.§-=§));
         }
         else if(param1.data != null && (!this.§1?§ || this.§1?§.toString() != param1.data.toString()))
         {
            this.§1?§ = param1.data;
            dispatchEvent(new §&#m§(§&#m§.§-=§));
         }
      }
      
      public function §,"_§(param1:String) : Number
      {
         return this.§;"%§[param1];
      }
      
      private function §]"§(param1:String) : Boolean
      {
         var _loc2_:Number = (AngryBirdsBase.singleton.dataModel as §=#o§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = (_loc2_ - this.§;"%§[param1]) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ < §1#7§)
         {
            return true;
         }
         if(!isNaN(this.§ #0§))
         {
            _loc3_ = (this.§ #0§ - _loc2_) / 1000;
            if(_loc3_ < §1#7§)
            {
               return false;
            }
         }
         this.§;"%§[param1] = _loc2_;
         return false;
      }
      
      protected function §!#%§(param1:§&#m§) : void
      {
         if(param1.data)
         {
            this.§8;§ = param1.data;
         }
         dispatchEvent(new §&#m§(§&#m§.§&!I§,param1.data));
      }
      
      private function §@$?§(param1:§&#m§) : void
      {
         var _loc2_:§`'§ = §`'§(param1.data);
         if(_loc2_)
         {
            dispatchEvent(new §&#m§(§&#m§.§]"]§,{
               "packLoader":_loc2_,
               "cb":this.§&;§
            }));
         }
         else
         {
            dispatchEvent(new §&#m§(§&#m§.§]"]§,{"bluePrintPackLoader":new §!M§()}));
            this.§8"2§();
         }
         this.§!!>§(§&#m§.§]"]§);
      }
      
      private function §&;§() : void
      {
         this.§8"2§();
      }
      
      public function §8"2§(param1:int = 0) : void
      {
         if(this.§8;§)
         {
            this.injectData();
            if(!this.§8;§)
            {
               dispatchEvent(new §&#m§(§&#m§.§]"4§));
            }
         }
         dispatchEvent(new §&#m§(§&#m§.§7#o§));
      }
      
      public function §%"W§() : void
      {
         var _loc1_:* = null;
         this.§8;§ = null;
         this.§&I§ = null;
         this.§1?§ = null;
         this.§^$%§ = null;
         this.§`W§ = null;
         for(_loc1_ in this.§;"%§)
         {
            this.§;"%§[_loc1_] = 0;
         }
         if(this.§+!`§)
         {
            this.§+!`§.§5"#§();
         }
         this.§]!M§ = new Array(5);
      }
      
      public function §;#I§() : void
      {
         this.§&I§ = null;
      }
      
      protected function §"#y§(param1:§&#m§) : void
      {
         if(param1.data)
         {
            this.§`W§ = param1.data;
            this.§`W§ = §%"#§.§@"?§(this.§`W§,"players");
         }
         dispatchEvent(new §&#m§(§&#m§.§'"Z§));
         this.§!!>§(§&#m§.§'"Z§);
      }
      
      protected function §-#g§(param1:§&#m§) : void
      {
         if(param1.data)
         {
            this.§%#X§ = param1.data;
            dispatchEvent(new §&#m§(§&#m§.§9G§,this.§%#X§));
         }
      }
      
      protected function §8%§(param1:§&#m§) : void
      {
         this.§%#X§ = null;
         this.final(0);
         dispatchEvent(new §&#m§(§&#m§.§^"=§));
      }
      
      public function get §]!<§() : Object
      {
         return this.§%0§;
      }
      
      public function §]"u§(param1:Object) : void
      {
         var _loc2_:§2_§ = null;
         if(this.§%0§ != param1)
         {
            this.§%0§ = param1;
            _loc2_ = §=#o§(AngryBirdsBase.singleton.dataModel).§[h§.§0"Z§[0];
            this.§7$=§ = new §8#Z§(_loc2_,_loc2_.getPricePoint(0));
            this.§7$=§.addEventListener(§1!>§.§^#b§,this.§["]§);
         }
      }
      
      private function §["]§(param1:§1!>§) : void
      {
         if(this.§7$=§)
         {
            this.§7$=§.removeEventListener(§1!>§.§^#b§,this.§["]§);
         }
         if(this.§%0§)
         {
            delete this.§%0§.unlockTime;
         }
         this.§%0§ = null;
      }
      
      public function §%!%§(param1:String) : Object
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
      
      private function §"#M§() : void
      {
         this.§4!a§ = new §&r§();
         this.§4!a§[§%#S§] = this.§%9§(§%#S§);
         this.§4!a§[§]#>§] = this.§%9§(§]#>§,null,"","",false,"",§'R§);
      }
      
      private function §%9§(param1:String, param2:Class = null, param3:String = "", param4:String = "", param5:Boolean = false, param6:String = "", param7:Class = null, param8:Class = null, param9:Class = null, param10:Class = null, param11:Class = null, param12:Class = null, param13:Class = null) : §'#t§
      {
         var _loc14_:§'#t§;
         (_loc14_ = new §'#t§(param1,param2,param3,param4,param5,param6)).§-"7§(§ !8§.STATE_NAME,param7 || § !8§);
         _loc14_.§-"7§(§=$3§.STATE_NAME,param8 || §=$3§);
         _loc14_.§-"7§(§'"H§.STATE_NAME,param9 || §'"H§);
         _loc14_.§-"7§(StateLastWeeksTournamentResults.STATE_NAME,param10 || StateLastWeeksTournamentResults);
         _loc14_.§-"7§(§]!p§.STATE_NAME,param11 || §]!p§);
         _loc14_.§-"7§(§6$1§.STATE_NAME,param12 || §6$1§);
         _loc14_.§-"7§(§@<§.STATE_NAME,param13 || §@<§);
         return _loc14_;
      }
      
      private function onEnterFrame(param1:§?$B§) : void
      {
         var _loc2_:int = 0;
         if(AngryBirdsBase.singleton.§%#7§() == §8"^§.STATE_NAME)
         {
            return;
         }
         if(!this.§^#^§ && § var§)
         {
            _loc2_ = this.§&"%§();
            if(_loc2_ == 0)
            {
               this.§^#^§ = true;
               this.§[G§();
            }
            else if(_loc2_ > 0 && this.§@!t§)
            {
               this.§@!t§ = false;
            }
            if(_loc2_ <= 5 && _loc2_ > 0)
            {
               if(!this.§]!M§[_loc2_ - 1])
               {
                  if(§]$?§.§;u§.§%#7§() == § !8§.STATE_NAME || §]$?§.§;u§.§%#7§() == §3"E§.STATE_NAME)
                  {
                     § b§.playSound("ui_countdown_" + _loc2_,§ b§.§;$5§);
                  }
                  this.§]!M§[_loc2_ - 1] = true;
               }
            }
         }
      }
      
      private function §"$8§() : void
      {
         if(!this.§""'§)
         {
            this.§""'§ = new Timer(30000);
            this.§""'§.addEventListener(TimerEvent.TIMER,function():void
            {
               §""'§.stop();
               §""'§ = null;
            });
            this.§""'§.start();
            AngryBirdsBase.singleton.popupManager.§8"5§();
            var popup:TournamentEndedPopup = new TournamentEndedPopup(§@#D§.NORMAL,§5R§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(popup);
            return;
         }
      }
      
      protected function §@!>§() : void
      {
         var _loc1_:TournamentNotFoundPopup = new TournamentNotFoundPopup(§@#D§.NORMAL,§5R§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function injectData() : void
      {
         var _loc1_:Object = null;
         if(!§]$?§.§;u§.hasEventListener(§?$B§.§^"%§))
         {
            §]$?§.§;u§.addEventListener(§?$B§.§^"%§,this.onEnterFrame);
         }
         this.§^#^§ = false;
         this.§]#m§ = false;
         if(this.§8;§ && this.§8;§.levelScores)
         {
            _loc1_ = this.§8;§.levelScores;
         }
         this.§8;§.levelScores = _loc1_;
         if(this.§8;§)
         {
            this.§ #0§ = this.§@!v§.endTime;
         }
         if(this.§@!v§.brandedTournament != null)
         {
            this.§7"u§ = this.§4!a§[§]#>§];
            this.§7"u§.§!#g§ = this.§@!v§.brandedTournament;
            this.§7"u§.§6!D§ = this.§@!v§.tn;
            this.§7"u§.§"">§ = this.brandedTournamentAssetId;
            this.§7"u§.§#"y§ = §3!H§ + this.brandedTournamentAssetId;
            if(this.§7"u§.§4$<§)
            {
               this.§7"u§.background = §2h§ + this.brandedTournamentAssetId;
            }
            this.§7"u§.§5"3§ = this.brandedTournamentAssetId;
         }
         else
         {
            this.§7"u§ = this.§4!a§[§%#S§];
         }
         if(AngryBirdsBase.singleton.§^$4§)
         {
            this.§7"j§();
         }
      }
      
      private function §7"j§() : void
      {
         var _loc2_:§ #a§ = null;
         var _loc1_:Boolean = false;
         if(this.§!#g§ != "" && this.§^#A§ != this.§!#g§ && this.§7"u§)
         {
            this.§7"u§.§>!5§();
            this.§^#A§ = this.§!#g§;
            _loc1_ = true;
         }
         else if(this.§^#A§ != §%#S§ && this.§!#g§ == "")
         {
            this.§7"u§.§>!5§();
            this.§^#A§ = §%#S§;
            _loc1_ = true;
         }
         if(_loc1_)
         {
            _loc2_ = §]$?§.§;u§.§9"n§();
            if(_loc2_ != null)
            {
               if(_loc2_.§&$"§ == § !8§.STATE_NAME)
               {
                  AngryBirdsBase.singleton.§3#§(§ !8§.STATE_NAME);
               }
            }
         }
      }
      
      public function §0#U§(param1:String) : §'#t§
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§4!a§)
         {
            if(_loc2_ == param1.toUpperCase())
            {
               return this.§4!a§[_loc2_];
            }
         }
         return null;
      }
      
      public function get §@!v§() : Object
      {
         if(this.§8;§)
         {
            return this.§8;§;
         }
         return null;
      }
      
      public function §]!>§() : String
      {
         if(this.§@!v§)
         {
            return "tournamentId=" + this.§8;§.id;
         }
         return "tournamentId=-1";
      }
      
      public function §`!X§() : int
      {
         if(this.§@!v§)
         {
            return this.§8;§.id;
         }
         return -1;
      }
      
      public function §!$#§() : Boolean
      {
         var _loc1_:Number = NaN;
         if(this.§8;§)
         {
            if(this.§8;§.overlappingTournamentsEnabled && this.§8;§.overlappingTournamentsStart && this.§8;§.overlappingTournamentsEnd)
            {
               _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
               if(_loc1_ >= this.§8;§.overlappingTournamentsEnd || _loc1_ < this.§8;§.overlappingTournamentsStart)
               {
                  return false;
               }
               return true;
            }
         }
         return false;
      }
      
      public function get §;F§() : Object
      {
         return this.§@!v§.enteredDraw;
      }
      
      public function get tournamentRules() : §'#t§
      {
         return this.§7"u§;
      }
      
      public function get §!#g§() : String
      {
         if(this.§7"u§)
         {
            return this.§7"u§.§!#g§;
         }
         return "";
      }
      
      public function get brandedTournamentAssetId() : String
      {
         if(this.§@!v§ != null && this.§@!v§.brandedTournamentAssetId != null)
         {
            if((this.§@!v§.brandedTournamentAssetId as String).toUpperCase() == "HALLOWEEN_2013")
            {
               return §7!$§.§01§;
            }
            if((this.§@!v§.brandedTournamentAssetId as String).toUpperCase().indexOf(§5#A§) != -1)
            {
               return §5#A§;
            }
            return (this.§@!v§.brandedTournamentAssetId as String).toUpperCase();
         }
         return "";
      }
      
      public function get §6!D§() : String
      {
         if(this.§7"u§ && this.§7"u§.§6!D§)
         {
            return this.§7"u§.§6!D§;
         }
         return §0$ §;
      }
      
      public function get §6"L§() : String
      {
         if(this.§@!v§ != null && this.§8;§.nextTournamentBrand != null)
         {
            return this.§8;§.nextTournamentBrand;
         }
         return "";
      }
      
      public function get §1!c§() : Object
      {
         return this.§`W§;
      }
      
      public function get §>$1§() : Object
      {
         return this.§%#X§;
      }
      
      public function get §%&§() : Object
      {
         return this.§1?§;
      }
      
      public function get lastResult() : Object
      {
         if(this.§&I§ && this.§&I§.prizeCounts && this.§&I§.players)
         {
            return this.§&I§;
         }
         return null;
      }
      
      public function get players() : Array
      {
         if(this.§1!c§)
         {
            return this.§1!c§.players;
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
               return true;
            }
         }
         return false;
      }
      
      public function §<E§(param1:String, param2:Boolean) : void
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
         if(this.§@!v§)
         {
            return this.§@!v§.levels;
         }
         return [];
      }
      
      public function get levelScores() : Array
      {
         if(this.§@!v§)
         {
            return this.§@!v§.levelScores;
         }
         return [];
      }
      
      public function get §-"K§() : Array
      {
         if(this.§%&§)
         {
            if(this.§%&§.prizeCounts)
            {
               return this.§%&§.prizeCounts;
            }
         }
         return [1000,500,100];
      }
      
      public function get §[$<§() : Array
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
         if(this.§%&§)
         {
            return this.§%&§.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.§%&§)
         {
            return this.§%&§.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.§%&§)
         {
            return this.§%&§.goldTrophies;
         }
         return 0;
      }
      
      public function §&"%§() : int
      {
         if(isNaN(this.§ #0§))
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§ #0§ - _loc1_) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      public function §="X§(param1:String) : String
      {
         var _loc2_:int = this.levelIDs.indexOf(param1);
         var _loc3_:String = this.levelIDs[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.levelIDs.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §>";§(param1:String) : String
      {
         var _loc2_:int = this.levelIDs.indexOf(param1);
         var _loc3_:String = this.levelIDs[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.levelIDs.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §>"v§(param1:String) : int
      {
         return this.levelIDs.indexOf(param1) + 1;
      }
      
      public function §%#'§(param1:String) : String
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
      
      public function §<#K§() : Array
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
      
      public function §8#h§() : Array
      {
         return §7"U§.§&#M§(this.§&"%§());
      }
      
      public function §[!,§(param1:Number) : Array
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
      
      public function §?#"§() : Array
      {
         var _loc1_:int = 0;
         if(this.§8;§ && this.§8;§.overlappingTournamentsEnd)
         {
            _loc1_ = (this.§8;§.overlappingTournamentsEnd - dataModel.serverSynchronizedTime.synchronizedTimeStamp) / 1000;
            return §7"U§.§&#M§(Math.max(0,_loc1_));
         }
         return ["0s","0xFFFFFF"];
      }
      
      public function §?"t§() : int
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
         return §1h§;
      }
      
      public function get §;"$§() : Boolean
      {
         return this.§@!t§;
      }
      
      public function set §;"$§(param1:Boolean) : void
      {
         this.§@!t§ = param1;
      }
      
      public function §[#h§() : void
      {
         if(this.§^#^§ && !this.§]#m§)
         {
            this.§[G§();
         }
      }
      
      private function §[G§() : void
      {
         if(this.§,!3§())
         {
            return;
         }
         var _loc1_:String = AngryBirdsBase.singleton.§%#7§();
         if(_loc1_ == StateTournamentResults.STATE_NAME)
         {
            return;
         }
         if(AngryBirdsBase.singleton.popupManager.getOpenPopupById(TournamentEndedPopup.ID))
         {
            return;
         }
         § #F§.§+!,§.§2"K§();
         if(this.§!$#§())
         {
            if(_loc1_ == §'"H§.STATE_NAME)
            {
               this.§"$8§();
            }
            else if(_loc1_ == § !8§.STATE_NAME || _loc1_ == §'R§.STATE_NAME)
            {
               if(!(AngryBirdsBase.singleton.§9"n§() as § !8§).§9$$§())
               {
                  this.§"$8§();
               }
            }
         }
         else
         {
            dispatchEvent(new §&#m§(§&#m§.§%5§));
            § !8§.§>#_§();
            if(AngryBirdsBase.singleton.§%#7§().indexOf("Tournament") != -1)
            {
               this.§"$8§();
            }
         }
         this.§]#m§ = true;
      }
      
      public function get info() : String
      {
         if(this.§8;§ && this.§8;§.info)
         {
            return this.§8;§.info;
         }
         return "";
      }
      
      public function §;$$§(param1:Array) : void
      {
         this.§8!S§ = param1;
      }
      
      public function §=#<§() : Array
      {
         return this.§8!S§;
      }
      
      public function get §-#M§() : Boolean
      {
         return this.lastResult;
      }
      
      public function §;i§(param1:String) : §&"5§
      {
         if(!this.§+!`§)
         {
            this.§+!`§ = new §-!>§();
         }
         return this.§+!`§.§1#>§(param1);
      }
      
      public function §,!e§(param1:String) : void
      {
         if(this.§+!`§)
         {
            this.§+!`§.§<!W§(param1);
         }
      }
      
      public function §+!r§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         if(this.§8;§)
         {
            for each(_loc2_ in this.§8;§.levels)
            {
               if(_loc2_.levelId == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §,"V§() : void
      {
         if(this.§+!`§)
         {
            this.§+!`§.§+b§();
         }
      }
      
      public function get §>#;§() : Object
      {
         return this.§;y§;
      }
      
      public function set §>#;§(param1:Object) : void
      {
         this.§;y§ = param1;
      }
      
      public function get §<&§() : Object
      {
         return this.§##&§;
      }
      
      public function set §<&§(param1:Object) : void
      {
         this.§##&§ = param1;
      }
      
      public function §+v§() : Boolean
      {
         return this.§<&§ && this.§<&§.zombiesEnabled;
      }
      
      public function §5#e§() : Boolean
      {
         return this.§<&§ && this.§<&§.eddieTheBirdEnabled;
      }
      
      private function §6!?§() : void
      {
         this.§8#A§ = new Object();
         this.§8#A§[§&#m§.§%#i§] = true;
         this.§8#A§[§&#m§.§'"Z§] = true;
         this.§8#A§[§&#m§.§]"]§] = true;
      }
      
      private function §!!>§(param1:String) : void
      {
         if(!this.§8#A§ || !this.§8#A§[param1])
         {
            return;
         }
         this.§8#A§[param1] = false;
         if(!this.§,!3§())
         {
            dispatchEvent(new §&#m§(§&#m§.§'"X§));
         }
      }
      
      private function §,!3§() : Boolean
      {
         var _loc1_:* = null;
         if(!this.§8#A§)
         {
            return false;
         }
         for(_loc1_ in this.§8#A§)
         {
            if(this.§8#A§[_loc1_])
            {
               return true;
            }
         }
         return false;
      }
      
      public function §@#G§() : Array
      {
         if(this.§8;§)
         {
            return this.§8;§.levelScores;
         }
         return null;
      }
   }
}
