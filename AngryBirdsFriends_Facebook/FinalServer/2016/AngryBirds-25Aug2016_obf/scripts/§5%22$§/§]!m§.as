package §5"$§
{
   import §!!G§.§0§;
   import §"!U§.§=#V§;
   import §#v§.§#!?§;
   import §#v§.§=!Z§;
   import §%$!§.§%!v§;
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §+!u§.§"#B§;
   import §+!u§.§"$5§;
   import §+!u§.§#"t§;
   import §+!u§.§%",§;
   import §+!u§.§1s§;
   import §+!u§.§;M§;
   import §+!u§.§]8§;
   import §,!=§.§=!-§;
   import §,!=§.§[!'§;
   import §-"i§.§%!'§;
   import §-"i§.§4"X§;
   import §-"i§.§5!o§;
   import §-"i§.§6#A§;
   import §-"i§.§;"§;
   import §-"i§.StateLastWeeksTournamentResults;
   import §-"i§.§^"A§;
   import §-#z§.§5§;
   import §3!T§.§5"8§;
   import §4q§.§!#Q§;
   import §7"A§.§!l§;
   import §7"A§.§3"Z§;
   import §7g§.§4!q§;
   import §8§.§#$+§;
   import §9"#§.§4$5§;
   import §;!H§.§%"K§;
   import §>!#§.§'"R§;
   import §?"R§.TournamentEndedPopup;
   import §?"R§.TournamentNotFoundPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §^!,§.§<d§;
   import §^$4§.§>"T§;
   import §`3§.§3#Y§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §]!m§ extends EventDispatcher
   {
      
      public static const §,!q§:String = "STANDARD";
      
      public static const §@!k§:String = "BRANDED";
      
      public static const §0f§:String = "Weekly Tournament";
      
      public static const §6s§:String = "HALLOWEEN_2014";
      
      public static const §`"#§:String = "XMAS_2014";
      
      public static const §<#8§:String = "BACKGROUND_FB_";
      
      public static const §8#J§:String = "tournament_";
      
      public static const §3"[§:String = "InterruptedQualifierBundle";
      
      public static const §#!W§:int = 100000;
      
      private static var §9"E§:int = 0;
      
      private static var §,!m§:§]!m§;
      
      private static const §[#x§:String = "Weekly Tournament";
      
      public static var §[",§:Boolean;
      
      public static var §break§:int = 2 * 60;
      
      public static const §#!P§:String = "CachePlayerCurrentTournament";
       
      
      private var §<#N§:Boolean = false;
      
      private var §"R§:Object;
      
      private var §8#!§:Object;
      
      private var §;! §:Object;
      
      private var §]3§:Object;
      
      private var §>!"§:Object;
      
      private var §""2§:§"#E§;
      
      private var §[$0§:§'"R§;
      
      private var §<#-§:String = "STANDARD";
      
      private var §4"<§:Number;
      
      private var §##+§:Object;
      
      private var §68§:§%"K§;
      
      private var §+$%§:Boolean = false;
      
      private var §2&§:§3#Y§;
      
      private var §@#Y§:Array;
      
      private var §!!o§:Dictionary;
      
      private var §8c§:§!l§;
      
      private var §7#C§:Array;
      
      private var mLevelManager:§#!?§;
      
      private var §9"q§:Boolean = false;
      
      public var §""y§:int = 0;
      
      private var §>!Y§:Boolean = false;
      
      public function §]!m§()
      {
         this.§!!o§ = new Dictionary();
         super();
         this.§&"G§();
         this.§7#C§ = new Array(5);
         this.§2&§ = new §3#Y§();
         this.§2&§.addEventListener(§0#3§.§;"=§,this.§2"Q§);
         this.§2&§.addEventListener(§0#3§.§'"8§,this.§[z§);
         this.§2&§.addEventListener(§0#3§.§?"<§,this.§'!s§);
         this.§2&§.addEventListener(§0#3§.§6#U§,this.§2"R§);
         this.§2&§.addEventListener(§0#3§.§^"B§,this.§&!Y§);
         this.§2&§.addEventListener(§0#3§.§]!I§,this.§4"R§);
         this.§2&§.addEventListener(§0#3§.§2!U§,this.§""w§);
         this.§@#Y§ = new Array();
         this.§!!o§[§#!P§] = §break§;
      }
      
      public static function get §3!]§() : §]!m§
      {
         if(§,!m§ == null)
         {
            §,!m§ = new §]!m§();
         }
         return §,!m§;
      }
      
      public static function §1!N§(param1:Number) : String
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
      
      protected static function get dataModel() : §+3§
      {
         return AngryBirdsBase.singleton.dataModel as §+3§;
      }
      
      protected static function get userProgress() : §!#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§;
      }
      
      public static function §8w§() : void
      {
         §[",§ = true;
      }
      
      public function set §""7§(param1:int) : void
      {
         this.§""y§ = param1;
      }
      
      public function get §""7§() : int
      {
         return this.§""y§;
      }
      
      public function get §>@§() : Boolean
      {
         return this.§""y§ != 0;
      }
      
      public function §;#J§() : Boolean
      {
         return this.§>!Y§;
      }
      
      public function §2#k§(param1:Boolean) : void
      {
         this.§>!Y§ = param1;
      }
      
      public function §#$§(param1:§#!?§) : void
      {
         this.mLevelManager = param1;
      }
      
      protected function §""w§(param1:Event) : void
      {
         dispatchEvent(new §0#3§(§0#3§.§2!U§));
      }
      
      public function §8#d§() : void
      {
         if(§[",§ || this.§7!,§ == null || this.§7!,§ && this.§7!5§() <= 60 * 5)
         {
            this.§2&§.§=$3§();
            §[",§ = false;
         }
         else
         {
            this.§2&§.§"!z§();
         }
         if(!§4!q§.§3!]§.active)
         {
            this.§2&§.§+"5§();
         }
      }
      
      public function §`#m§() : void
      {
         this.§2&§.§7#T§();
      }
      
      protected function §&!Y§(param1:§0#3§) : void
      {
         if(param1.data)
         {
            if(this.§"R§ && param1.data.levelScores)
            {
               this.§"R§.levelScores = param1.data.levelScores;
               (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§""#§(this.§"R§.levelScores);
               dispatchEvent(new §0#3§(§0#3§.§^"B§));
            }
         }
      }
      
      protected function §2"R§(param1:§0#3§) : void
      {
         if(param1.data != null && (!this.§8#!§ || this.§8#!§.toString() != param1.data.toString()))
         {
            this.§8#!§ = param1.data;
            if(param1.data.players)
            {
               this.§;! § = param1.data;
            }
         }
         dispatchEvent(new §0#3§(§0#3§.§0""§));
      }
      
      protected function §'!s§(param1:§0#3§) : void
      {
         if(this.§8#!§ && this.§;! §)
         {
            dispatchEvent(new §0#3§(§0#3§.§7"c§));
         }
         else if(param1.data != null && (!this.§;! § || this.§;! §.toString() != param1.data.toString()))
         {
            this.§;! § = param1.data;
            dispatchEvent(new §0#3§(§0#3§.§7"c§));
         }
      }
      
      public function §2"O§(param1:String) : Number
      {
         return this.§!!o§[param1];
      }
      
      private function §4!P§(param1:String) : Boolean
      {
         var _loc2_:Number = (AngryBirdsBase.singleton.dataModel as §+3§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = (_loc2_ - this.§!!o§[param1]) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ < §break§)
         {
            return true;
         }
         this.§!!o§[param1] = _loc2_;
         return false;
      }
      
      protected function §2"Q§(param1:§0#3§) : void
      {
         var _loc2_:§=!Z§ = null;
         var _loc3_:Object = null;
         if(param1.data)
         {
            this.§"R§ = param1.data;
            this.§2&§.§8#u§(this.brandedTournamentAssetId,this.§"R§.levels,this.mLevelManager);
            if(this.mLevelManager)
            {
               _loc2_ = this.mLevelManager.getEpisodeByName(§=!-§.§&!>§);
               for each(_loc3_ in this.§"R§.levels)
               {
                  _loc2_.§4W§(_loc3_.levelId);
               }
            }
         }
         dispatchEvent(new §0#3§(§0#3§.§;"=§));
      }
      
      private function §[z§(param1:§0#3§) : void
      {
         var _loc2_:§5#2§ = §5#2§(param1.data);
         "tournament_" + this.brandedTournamentAssetId;
         if(_loc2_)
         {
            dispatchEvent(new §0#3§(§0#3§.§'"8§,{
               "packLoader":_loc2_,
               "cb":this.§1"a§
            }));
         }
         else
         {
            this.§;#!§();
         }
      }
      
      private function §1"a§() : void
      {
         this.§;#!§();
      }
      
      private function §;#!§() : void
      {
         if(this.§"R§)
         {
            this.injectData();
            if(!this.§"R§)
            {
               dispatchEvent(new §0#3§(§0#3§.§,N§));
            }
         }
         this.§2&§.§?"B§(false);
         dispatchEvent(new §0#3§(§0#3§.§!#R§));
      }
      
      public function §1"X§() : void
      {
         var _loc1_:* = null;
         this.flockAnimation = false;
         this.§"R§ = null;
         this.§8#!§ = null;
         this.§;! § = null;
         this.§]3§ = null;
         this.§>!"§ = null;
         for(_loc1_ in this.§!!o§)
         {
            this.§!!o§[_loc1_] = 0;
         }
         if(this.§8c§)
         {
            this.§8c§.§##!§();
         }
         this.§7#C§ = new Array(5);
      }
      
      public function §-!"§() : void
      {
         this.§8#!§ = null;
      }
      
      protected function §4"R§(param1:§0#3§) : void
      {
         if(param1.data)
         {
            this.§>!"§ = param1.data;
            this.§>!"§ = §%!v§.§0!z§(this.§>!"§,"players");
            dispatchEvent(new §0#3§(§0#3§.§]!I§));
         }
      }
      
      public function get §]s§() : Object
      {
         return this.§##+§;
      }
      
      public function §>!y§(param1:Object) : void
      {
         var _loc2_:§=#V§ = null;
         if(this.§##+§ != param1)
         {
            this.§##+§ = param1;
            _loc2_ = §+3§(AngryBirdsBase.singleton.dataModel).§ ,§.§"#K§[0];
            this.§68§ = new §%"K§(_loc2_,_loc2_.getPricePoint(0));
            this.§68§.addEventListener(§>"T§.§>"d§,this.§;"M§);
         }
      }
      
      private function §;"M§(param1:§>"T§) : void
      {
         if(this.§68§)
         {
            this.§68§.removeEventListener(§>"T§.§>"d§,this.§;"M§);
         }
         if(this.§##+§)
         {
            delete this.§##+§.unlockTime;
         }
         this.§##+§ = null;
      }
      
      public function §#$'§(param1:String) : Object
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
      
      private function §&"G§() : void
      {
         this.§[$0§ = new §'"R§();
         this.§[$0§[§,!q§] = this.§3!M§(§,!q§);
         this.§[$0§[§@!k§] = this.§3!M§(§@!k§,null,"","",false,"",§%",§,§]8§,§"#B§,§"$5§,§1s§,§;M§,§#"t§);
      }
      
      private function §3!M§(param1:String, param2:Class = null, param3:String = "", param4:String = "", param5:Boolean = false, param6:String = "", param7:Class = null, param8:Class = null, param9:Class = null, param10:Class = null, param11:Class = null, param12:Class = null, param13:Class = null) : §"#E§
      {
         var _loc14_:§"#E§;
         (_loc14_ = new §"#E§(param1,param2,param3,param4,param5,param6)).§3!^§(§%!'§.STATE_NAME,param7 || §%!'§);
         _loc14_.§3!^§(§;"§.STATE_NAME,param8 || §;"§);
         _loc14_.§3!^§(§4"X§.STATE_NAME,param9 || §4"X§);
         _loc14_.§3!^§(StateLastWeeksTournamentResults.STATE_NAME,param10 || StateLastWeeksTournamentResults);
         _loc14_.§3!^§(§6#A§.STATE_NAME,param11 || §6#A§);
         _loc14_.§3!^§(§^"A§.STATE_NAME,param12 || §^"A§);
         _loc14_.§3!^§(§5!o§.STATE_NAME,param13 || §5!o§);
         return _loc14_;
      }
      
      private function onEnterFrame(param1:§5"8§) : void
      {
         var _loc2_:int = 0;
         if(!this.§<#N§)
         {
            _loc2_ = this.§7!5§();
            if(_loc2_ == 0)
            {
               this.§<#N§ = true;
               dispatchEvent(new §0#3§(§0#3§.§"#%§));
               if(AngryBirdsBase.singleton.§^!X§().indexOf("Tournament") != -1)
               {
                  ++§9"E§;
                  if(§9"E§ > 2)
                  {
                     this.§8$"§();
                     §9"E§ = 0;
                  }
                  else
                  {
                     this.§>"F§();
                  }
               }
            }
            else if(_loc2_ > 0 && this.§+$%§)
            {
               this.§+$%§ = false;
            }
            if(_loc2_ <= 5 && _loc2_ > 0)
            {
               if(!this.§7#C§[_loc2_ - 1])
               {
                  if(§>"$§.§<_§.§^!X§() == §%!'§.STATE_NAME || §>"$§.§<_§.§^!X§() == §[!'§.STATE_NAME)
                  {
                     §#$+§.playSound("Countdown_" + _loc2_,§#$+§.§'!o§);
                  }
                  this.§7#C§[_loc2_ - 1] = true;
               }
            }
         }
      }
      
      protected function §>"F§() : void
      {
         var _loc1_:TournamentEndedPopup = new TournamentEndedPopup(§[W§.INFO,§<d§.TOP);
         _loc1_.addEventListener(§0#3§.§#"G§,this.§6#F§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §6#F§(param1:Event) : void
      {
         (param1.currentTarget as TournamentEndedPopup).removeEventListener(§0#3§.§#"G§,this.§6#F§);
         dispatchEvent(new §0#3§(§0#3§.§#"G§));
      }
      
      protected function §8$"§() : void
      {
         var _loc1_:TournamentNotFoundPopup = new TournamentNotFoundPopup(§[W§.INFO,§<d§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function injectData() : void
      {
         var _loc1_:Object = null;
         if(!§>"$§.§<_§.hasEventListener(§5"8§.§>#x§))
         {
            §>"$§.§<_§.addEventListener(§5"8§.§>#x§,this.onEnterFrame);
         }
         this.§<#N§ = false;
         if(this.§"R§ && this.§"R§.levelScores)
         {
            _loc1_ = this.§"R§.levelScores;
         }
         this.§"R§.levelScores = _loc1_;
         if(this.§"R§)
         {
            this.§4"<§ = this.§7!,§.endTime;
         }
         var _loc2_:String = this.§?q§;
         if(_loc2_)
         {
            this.§""2§ = this.§[$0§[this.§?q§] || this.§[$0§[§@!k§];
            this.§""2§.§8!g§ = _loc2_;
            this.§""2§.§%#R§ = this.§="E§;
            this.§""2§.§+G§ = this.brandedTournamentAssetId;
            this.§""2§.§0!U§ = §8#J§ + this.brandedTournamentAssetId;
            if(this.§""2§.§8!F§)
            {
               this.§""2§.background = §<#8§ + this.brandedTournamentAssetId;
            }
            if(_loc2_.indexOf("XMAS_2014") != -1)
            {
               this.§""2§.§[!#§ = _loc2_;
            }
            else
            {
               this.§""2§.§[!#§ = this.brandedTournamentAssetId;
            }
         }
         else
         {
            this.§""2§ = this.§[$0§[§,!q§];
         }
         this.§""2§.§##_§ = this.§,"K§ && this.§"R§ && this.§"R§.powerUpFrenzy;
         if(AngryBirdsBase.singleton.§#4§)
         {
            this.§>!s§();
         }
      }
      
      private function §>!s§() : void
      {
         var _loc2_:§4$5§ = null;
         var _loc1_:Boolean = false;
         if(this.§?q§ != "" && this.§<#-§ != this.§?q§ && this.§""2§)
         {
            this.§""2§.§0$'§();
            this.§<#-§ = this.§?q§;
            _loc1_ = true;
         }
         else if(this.§<#-§ != §,!q§ && this.§?q§ == "")
         {
            this.§""2§.§0$'§();
            this.§<#-§ = §,!q§;
            _loc1_ = true;
         }
         if(_loc1_)
         {
            _loc2_ = §>"$§.§<_§.§ "-§();
            if(_loc2_ != null)
            {
               if(_loc2_.§2!4§ == §%!'§.STATE_NAME)
               {
                  AngryBirdsBase.singleton.§7P§(§%!'§.STATE_NAME);
               }
            }
         }
      }
      
      public function §&!i§(param1:String) : §"#E§
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§[$0§)
         {
            if(_loc2_ == param1.toUpperCase())
            {
               return this.§[$0§[_loc2_];
            }
         }
         return null;
      }
      
      public function get §7!,§() : Object
      {
         if(this.§"R§)
         {
            return this.§"R§;
         }
         return null;
      }
      
      public function set flockAnimation(param1:Boolean) : void
      {
         this.§9"q§ = param1;
      }
      
      public function get flockAnimation() : Boolean
      {
         return this.§9"q§;
      }
      
      public function get §%"$§() : Object
      {
         return this.§7!,§.enteredDraw;
      }
      
      public function get §,"K§() : §"#E§
      {
         return this.§""2§;
      }
      
      public function get §?q§() : String
      {
         if(this.§7!,§ != null && this.§7!,§.brandedTournament != null)
         {
            return (this.§7!,§.brandedTournament as String).toUpperCase();
         }
         return "";
      }
      
      public function get brandedTournamentAssetId() : String
      {
         if(this.§7!,§ != null && this.§7!,§.brandedTournamentAssetId != null)
         {
            if((this.§7!,§.brandedTournamentAssetId as String).toUpperCase() == "HALLOWEEN_2013")
            {
               return §]!m§.§6s§;
            }
            if((this.§7!,§.brandedTournamentAssetId as String).toUpperCase().indexOf(§`"#§) != -1)
            {
               return §`"#§;
            }
            return (this.§7!,§.brandedTournamentAssetId as String).toUpperCase();
         }
         return "";
      }
      
      public function get §="E§() : String
      {
         if(this.§7!,§ != null && this.§7!,§.brandedTournament != null)
         {
            return this.§7!,§.tn as String;
         }
         return "";
      }
      
      public function get §@P§() : String
      {
         if(this.§7!,§ != null && this.§"R§.nextTournamentBrand != null)
         {
            return this.§"R§.nextTournamentBrand;
         }
         return "";
      }
      
      public function get §7!A§() : Object
      {
         return this.§>!"§;
      }
      
      public function get §8#,§() : Object
      {
         return this.§;! §;
      }
      
      public function get lastResult() : Object
      {
         if(this.§8#!§ && this.§8#!§.prizeCounts && this.§8#!§.players)
         {
            return this.§8#!§;
         }
         return null;
      }
      
      public function get players() : Array
      {
         if(this.§7!A§)
         {
            return this.§7!A§.players;
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
               return this.§>!C§(_loc2_);
            }
         }
         return false;
      }
      
      public function §+#?§(param1:String, param2:Boolean) : void
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
               return this.§,$5§(_loc2_);
            }
         }
         return -1;
      }
      
      public function §,$5§(param1:Object) : int
      {
         var _loc2_:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         return (param1.unlockTime - _loc2_) / 1000;
      }
      
      private function §>!C§(param1:Object) : Boolean
      {
         if(param1.unlockTime)
         {
            if(§%h§.§3!]§.§"!A§(param1.levelId))
            {
               return true;
            }
            if(this.§,$5§(param1) > 0)
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
         if(this.§7!,§)
         {
            return this.§7!,§.levels;
         }
         return [];
      }
      
      public function get levelScores() : Array
      {
         if(this.§7!,§)
         {
            return this.§7!,§.levelScores;
         }
         return [];
      }
      
      public function get §#$5§() : Array
      {
         if(this.§8#,§)
         {
            if(this.§8#,§.prizeCounts)
            {
               return this.§8#,§.prizeCounts;
            }
         }
         return [1000,500,100];
      }
      
      public function get §%#+§() : Array
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
         if(this.§8#,§)
         {
            return this.§8#,§.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.§8#,§)
         {
            return this.§8#,§.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.§8#,§)
         {
            return this.§8#,§.goldTrophies;
         }
         return 0;
      }
      
      public function §7!5§() : int
      {
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§4"<§ - _loc1_) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      public function §;x§(param1:String) : String
      {
         var _loc2_:int = this.levelIDs.indexOf(param1);
         var _loc3_:String = this.levelIDs[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.levelIDs.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §<"o§(param1:String) : String
      {
         var _loc2_:int = this.levelIDs.indexOf(param1);
         var _loc3_:String = this.levelIDs[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.levelIDs.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §-#P§(param1:String) : int
      {
         return this.levelIDs.indexOf(param1) + 1;
      }
      
      public function §9#7§(param1:String) : String
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
      
      public function §#u§() : Array
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
      
      public function §=>§() : Array
      {
         var _loc1_:int = this.§7!5§();
         return this.§-#u§(_loc1_);
      }
      
      public function §-#u§(param1:Number) : Array
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:int = param1 / 60;
         var _loc3_:int = Math.floor(_loc2_ / 1440);
         var _loc4_:* = "";
         var _loc5_:uint = 16777215;
         if(_loc3_ > 0)
         {
            if(_loc3_ == 1)
            {
               _loc4_ = _loc3_ + " day ";
            }
            else
            {
               _loc4_ = _loc3_ + " days ";
            }
            _loc6_ = Math.floor((_loc2_ - _loc3_ * 1440) / 60);
            _loc4_ += _loc6_ + "h left";
         }
         else if((_loc6_ = Math.floor(_loc2_ / 60)) == 0)
         {
            if(param1 >= 60)
            {
               _loc4_ = _loc2_ + "min ";
               _loc7_ = Math.floor(param1 - _loc2_ * 60);
               _loc4_ += _loc7_ + "s left!";
            }
            else
            {
               _loc4_ = param1 + "s left!";
            }
         }
         else
         {
            _loc4_ = _loc6_ + "h ";
            _loc8_ = Math.floor(_loc2_ - _loc6_ * 60);
            _loc4_ += _loc8_ + "min left!";
         }
         return [_loc4_,_loc5_];
      }
      
      public function §-!=§(param1:Number) : Array
      {
         var _loc8_:String = null;
         var _loc2_:int = param1 / 60;
         var _loc3_:* = "";
         var _loc4_:uint = 16774858;
         var _loc5_:String = "Left: ";
         var _loc6_:int = Math.floor(_loc2_ / 1440);
         var _loc7_:int;
         if((_loc7_ = Math.floor(_loc2_ / 60)) < 24)
         {
            _loc4_ = 16762174;
            if(_loc7_ < 2 && _loc2_ >= 60)
            {
               _loc3_ = _loc5_ + _loc7_ + " hour";
            }
            else if(_loc7_ >= 2)
            {
               _loc3_ = _loc5_ + Math.max(0,_loc7_) + " hours";
            }
            else if(param1 >= 60)
            {
               _loc3_ = _loc5_ + _loc2_ + " " + (_loc2_ == 1 ? "minute" : "minutes");
            }
            else
            {
               _loc8_ = "seconds";
               if(param1 == 1)
               {
                  _loc8_ = _loc8_.slice(0,_loc8_.length - 1);
               }
               _loc3_ = _loc5_ + param1 + " " + _loc8_;
            }
         }
         else if(_loc6_ == 1)
         {
            _loc3_ = _loc5_ + _loc6_ + " day";
         }
         else
         {
            _loc3_ = _loc5_ + _loc6_ + " days";
         }
         return [_loc3_,_loc4_];
      }
      
      public function §0"3§() : int
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
         return §#!W§;
      }
      
      public function get §6E§() : Boolean
      {
         return this.§+$%§;
      }
      
      public function set §6E§(param1:Boolean) : void
      {
         this.§+$%§ = param1;
      }
      
      public function get §#!H§() : Boolean
      {
         return this.§<#N§;
      }
      
      public function get info() : String
      {
         if(this.§"R§ && this.§"R§.info)
         {
            return this.§"R§.info;
         }
         return "";
      }
      
      public function §]#G§() : void
      {
         this.§2&§.§+"5§();
      }
      
      public function §4L§(param1:Array) : void
      {
         this.§@#Y§ = param1;
      }
      
      public function §8#T§() : Array
      {
         return this.§@#Y§;
      }
      
      public function get §6!k§() : Boolean
      {
         return this.lastResult;
      }
      
      public function get §9"<§() : String
      {
         if(this.§="E§ == "")
         {
            return §[#x§;
         }
         return this.§="E§;
      }
      
      public function §^#U§(param1:String) : §3"Z§
      {
         if(!this.§8c§)
         {
            this.§8c§ = new §!l§();
         }
         return this.§8c§.§ !5§(param1);
      }
      
      public function §%!y§(param1:String) : void
      {
         if(this.§8c§)
         {
            this.§8c§.§&>§(param1);
         }
      }
      
      public function §%L§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         if(this.§"R§)
         {
            for each(_loc2_ in this.§"R§.levels)
            {
               if(_loc2_.levelId == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §!#_§() : void
      {
         if(this.§8c§)
         {
            this.§8c§.§!"[§();
         }
      }
   }
}
