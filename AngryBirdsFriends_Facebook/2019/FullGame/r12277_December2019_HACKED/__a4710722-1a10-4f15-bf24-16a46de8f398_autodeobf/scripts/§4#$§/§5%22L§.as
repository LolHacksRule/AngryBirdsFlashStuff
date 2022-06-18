package §4#$§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import § h§.TournamentEndedPopup;
   import § h§.TournamentNotFoundPopup;
   import §!!H§.§ $4§;
   import §#$E§.§,!Y§;
   import §#$E§.§;$2§;
   import §%#^§.§""P§;
   import §%#^§.§<#o§;
   import §+!n§.§+!p§;
   import §+Z§.§?!T§;
   import §-"S§.§>#G§;
   import §0"M§.§>$%§;
   import §2E§.§&#a§;
   import §4#l§.§8#E§;
   import §6#x§.§'!G§;
   import §9!6§.§## §;
   import §=!&§.§<$!§;
   import §=X§.§`#x§;
   import §>#Y§.§,#b§;
   import §>#Y§.§2"%§;
   import §?o§.§4#?§;
   import §@!_§.§>%§;
   import §[#v§.§'"b§;
   import §[#v§.§4e§;
   import §[#v§.§7"Z§;
   import §[#v§.§>#P§;
   import §[#v§.§?"R§;
   import §[#v§.StateLastWeeksTournamentResults;
   import §[#v§.StateTournamentResults;
   import §[#v§.§["!§;
   import §[#v§.§]#<§;
   import §]M§.§=!a§;
   import §^#?§.§?#,§;
   import §^1§.§[$2§;
   import §catch§.§ !M§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §5"L§ extends EventDispatcher
   {
      
      public static const §%W§:String = "STANDARD";
      
      public static const §^"o§:String = "BRANDED";
      
      public static const §<!s§:String = "Angry Birds Tournament";
      
      public static const §3C§:String = "HALLOWEEN_2014";
      
      public static const §[#R§:String = "XMAS_2014";
      
      public static const §@!?§:String = "BACKGROUND_FB_";
      
      public static const §!'§:String = "tournament_";
      
      public static const §<"9§:String = "InterruptedQualifierBundle";
      
      public static const §'#]§:int = 100000;
      
      private static var §=$&§:int = 0;
      
      private static var §!#m§:§5"L§;
      
      private static const §%$2§:String = "Angry Birds Tournament";
      
      private static var §,!E§:Boolean;
      
      public static var §4"z§:int = 2 * 60;
      
      public static const §""M§:String = "CachePlayerCurrentTournament";
      
      private static var §"!G§:Boolean;
       
      
      private var §3"`§:Boolean = false;
      
      private var §6R§:Boolean = false;
      
      private var §=#y§:Object;
      
      private var §+"a§:Object;
      
      private var §`#G§:Object;
      
      private var §^"h§:Object;
      
      private var §7#w§:Object;
      
      private var §4"o§:Object;
      
      private var §<!'§:§6#!§;
      
      private var §0$A§:§&#a§;
      
      private var §=#r§:String = "STANDARD";
      
      private var §8"!§:Number;
      
      private var §6#O§:Object;
      
      private var §8#M§:§>%§;
      
      private var §true§:Boolean = false;
      
      private var §;#q§:§>$%§;
      
      private var §4K§:Array;
      
      private var §]u§:Dictionary;
      
      private var §7C§:§;$2§;
      
      private var §"x§:Array;
      
      private var mLevelManager:§4#?§;
      
      public var §3!"§:int = 0;
      
      private var §-$=§:Boolean = false;
      
      private var §>!y§:Object;
      
      private var §&'§:Object;
      
      private var §=" §:Object;
      
      private var §@#N§:Timer;
      
      public function §5"L§()
      {
         this.§]u§ = new Dictionary();
         super();
         this.§[#n§();
         this.§"x§ = new Array(5);
         this.§;#q§ = new §>$%§();
         this.§;#q§.addEventListener(§<$!§.§3!=§,this.§2S§);
         this.§;#q§.addEventListener(§<$!§.§,6§,this.§<A§);
         this.§;#q§.addEventListener(§<$!§.§0"Q§,this.§5#]§);
         this.§;#q§.addEventListener(§<$!§.§?"+§,this.§0"k§);
         this.§;#q§.addEventListener(§<$!§.§4!G§,this.§4$1§);
         this.§;#q§.addEventListener(§<$!§.§'#n§,this.§6#S§);
         this.§;#q§.addEventListener(§<$!§.§,"N§,this.§-"x§);
         this.§;#q§.addEventListener(§<$!§.§[p§,this.§=f§);
         this.§;#q§.addEventListener(§<$!§.§4!<§,this.§!!3§);
         this.§4K§ = new Array();
         this.§]u§[§""M§] = §4"z§;
      }
      
      public static function get §3"1§() : §5"L§
      {
         if(§!#m§ == null)
         {
            §!#m§ = new §5"L§();
         }
         return §!#m§;
      }
      
      public static function §#"O§(param1:Number) : String
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
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      protected static function get userProgress() : §>#G§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §>#G§;
      }
      
      public static function §`6§(param1:Boolean) : void
      {
         §"!G§ = param1;
      }
      
      public static function §1!P§() : void
      {
         §,!E§ = true;
      }
      
      public function set §5!F§(param1:int) : void
      {
         this.§3!"§ = param1;
      }
      
      public function get §5!F§() : int
      {
         return this.§3!"§;
      }
      
      public function get §,"B§() : Boolean
      {
         return this.§3!"§ != 0;
      }
      
      public function §;!P§() : Boolean
      {
         return this.§-$=§;
      }
      
      public function §+-§(param1:Boolean) : void
      {
         this.§-$=§ = param1;
      }
      
      public function §2"O§(param1:§4#?§) : void
      {
         this.mLevelManager = param1;
      }
      
      protected function §6#S§(param1:Event) : void
      {
         dispatchEvent(new §<$!§(§<$!§.§'#n§));
      }
      
      public function §9"G§() : void
      {
         this.§;#q§.§"$$§(0);
         if(!§?#,§.§3"1§.active)
         {
            this.§;#q§.§3#%§();
         }
      }
      
      public function §+#A§() : void
      {
         this.§,!R§();
         this.§;#q§.§+#A§(this.§`#p§());
         this.§2"U§();
      }
      
      public function §"$$§(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         if(!§,!E§ && this.§;#q§.§1O§(param1))
         {
            _loc2_ = this.§;#q§.§!!C§(param1);
            _loc3_ = (AngryBirdsBase.singleton.dataModel as §,#b§).serverSynchronizedTime.synchronizedTimeStamp;
            if(_loc2_.endTime - _loc3_ <= 0)
            {
               this.§;#q§.§"$$§(param1);
            }
            else
            {
               this.§;#q§.§7$'§(param1);
            }
         }
         else if(param1 == 0)
         {
            if(!§,!E§ && this.§54§ != null && this.§;#q§.§1O§(this.§54§.id))
            {
               this.§;#q§.§7$'§(this.§54§.id);
            }
            else
            {
               this.§;#q§.§"$$§(0);
            }
            if(!§?#,§.§3"1§.active)
            {
               this.§;#q§.§3#%§();
            }
         }
         else
         {
            this.§;#q§.§"$$§(param1);
         }
         §,!E§ = false;
      }
      
      public function §1'§(param1:int) : void
      {
         this.§;#q§.§1'§(param1);
      }
      
      public function §"#k§(param1:int) : void
      {
         this.§;#q§.§]!N§(param1);
      }
      
      public function §=#6§(param1:Boolean) : void
      {
         if(this.§2"A§ == null || param1)
         {
            this.§;#q§.§=#6§();
         }
         else
         {
            dispatchEvent(new §<$!§(§<$!§.§,"N§,this.§4"o§));
         }
      }
      
      public function §2"U§() : void
      {
         this.§;#q§.§&"]§(this.brandedTournamentAssetId,this.§=#y§.levels,this.mLevelManager);
      }
      
      public function §4&§() : void
      {
         this.§;#q§.§""a§();
      }
      
      protected function §0"k§(param1:§<$!§) : void
      {
         if(param1.data)
         {
            if(this.§=#y§ && param1.data.levelScores)
            {
               this.§=#y§.levelScores = param1.data.levelScores;
               (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).§set §(this.§=#y§.levelScores);
            }
         }
         dispatchEvent(new §<$!§(§<$!§.§?"+§));
         this.§4$5§(§<$!§.§?"+§);
      }
      
      protected function §5#]§(param1:§<$!§) : void
      {
         if(param1.data != null && (!this.§+"a§ || this.§+"a§.toString() != param1.data.toString()))
         {
            this.§+"a§ = param1.data;
            if(param1.data.players)
            {
               this.§`#G§ = param1.data;
            }
         }
         dispatchEvent(new §<$!§(§<$!§.§%>§));
      }
      
      protected function §<A§(param1:§<$!§) : void
      {
         if(this.§+"a§ && this.§`#G§)
         {
            dispatchEvent(new §<$!§(§<$!§.§[!§));
         }
         else if(param1.data != null && (!this.§`#G§ || this.§`#G§.toString() != param1.data.toString()))
         {
            this.§`#G§ = param1.data;
            dispatchEvent(new §<$!§(§<$!§.§[!§));
         }
      }
      
      public function §7H§(param1:String) : Number
      {
         return this.§]u§[param1];
      }
      
      private function §7!e§(param1:String) : Boolean
      {
         var _loc2_:Number = (AngryBirdsBase.singleton.dataModel as §,#b§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = (_loc2_ - this.§]u§[param1]) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ < §4"z§)
         {
            return true;
         }
         if(!isNaN(this.§8"!§))
         {
            _loc3_ = (this.§8"!§ - _loc2_) / 1000;
            if(_loc3_ < §4"z§)
            {
               return false;
            }
         }
         this.§]u§[param1] = _loc2_;
         return false;
      }
      
      protected function §!!3§(param1:§<$!§) : void
      {
         if(param1.data)
         {
            this.§=#y§ = param1.data;
         }
         dispatchEvent(new §<$!§(§<$!§.§4!<§,param1.data));
      }
      
      private function §2S§(param1:§<$!§) : void
      {
         var _loc2_:§<#o§ = §<#o§(param1.data);
         if(_loc2_)
         {
            dispatchEvent(new §<$!§(§<$!§.§3!=§,{
               "packLoader":_loc2_,
               "cb":this.§]!u§
            }));
         }
         else
         {
            dispatchEvent(new §<$!§(§<$!§.§3!=§,{"bluePrintPackLoader":new §""P§()}));
            this.§'!>§();
         }
         this.§4$5§(§<$!§.§3!=§);
      }
      
      private function §]!u§() : void
      {
         this.§'!>§();
      }
      
      public function §'!>§(param1:int = 0) : void
      {
         if(this.§=#y§)
         {
            this.injectData();
            if(!this.§=#y§)
            {
               dispatchEvent(new §<$!§(§<$!§.§4#X§));
            }
         }
         dispatchEvent(new §<$!§(§<$!§.§'!H§));
      }
      
      public function §3!%§() : void
      {
         var _loc1_:* = null;
         this.§=#y§ = null;
         this.§+"a§ = null;
         this.§`#G§ = null;
         this.§^"h§ = null;
         this.§7#w§ = null;
         for(_loc1_ in this.§]u§)
         {
            this.§]u§[_loc1_] = 0;
         }
         if(this.§7C§)
         {
            this.§7C§.§13§();
         }
         this.§"x§ = new Array(5);
      }
      
      public function §]"m§() : void
      {
         this.§+"a§ = null;
      }
      
      protected function §4$1§(param1:§<$!§) : void
      {
         if(param1.data)
         {
            this.§7#w§ = param1.data;
            this.§7#w§ = §2"%§.§%E§(this.§7#w§,"players");
         }
         dispatchEvent(new §<$!§(§<$!§.§4!G§));
         this.§4$5§(§<$!§.§4!G§);
      }
      
      protected function §-"x§(param1:§<$!§) : void
      {
         if(param1.data)
         {
            this.§4"o§ = param1.data;
            dispatchEvent(new §<$!§(§<$!§.§,"N§,this.§4"o§));
         }
      }
      
      protected function §=f§(param1:§<$!§) : void
      {
         this.§4"o§ = null;
         this.§"$$§(0);
         dispatchEvent(new §<$!§(§<$!§.§[p§));
      }
      
      public function get §7"<§() : Object
      {
         return this.§6#O§;
      }
      
      public function §[<§(param1:Object) : void
      {
         var _loc2_:§8#E§ = null;
         if(this.§6#O§ != param1)
         {
            this.§6#O§ = param1;
            _loc2_ = §,#b§(AngryBirdsBase.singleton.dataModel).§+!J§.§1!?§[0];
            this.§8#M§ = new §>%§(_loc2_,_loc2_.getPricePoint(0));
            this.§8#M§.addEventListener(§?!T§.§@!9§,this.§!"s§);
         }
      }
      
      private function §!"s§(param1:§?!T§) : void
      {
         if(this.§8#M§)
         {
            this.§8#M§.removeEventListener(§?!T§.§@!9§,this.§!"s§);
         }
         if(this.§6#O§)
         {
            delete this.§6#O§.unlockTime;
         }
         this.§6#O§ = null;
      }
      
      public function §2"`§(param1:String) : Object
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
      
      private function §[#n§() : void
      {
         this.§0$A§ = new §&#a§();
         this.§0$A§[§%W§] = this.§+#_§(§%W§);
         this.§0$A§[§^"o§] = this.§+#_§(§^"o§,null,"","",false,"",§ !M§);
      }
      
      private function §+#_§(param1:String, param2:Class = null, param3:String = "", param4:String = "", param5:Boolean = false, param6:String = "", param7:Class = null, param8:Class = null, param9:Class = null, param10:Class = null, param11:Class = null, param12:Class = null, param13:Class = null) : §6#!§
      {
         var _loc14_:§6#!§;
         (_loc14_ = new §6#!§(param1,param2,param3,param4,param5,param6)).§ !q§(§4e§.STATE_NAME,param7 || §4e§);
         _loc14_.§ !q§(§'"b§.STATE_NAME,param8 || §'"b§);
         _loc14_.§ !q§(§?"R§.STATE_NAME,param9 || §?"R§);
         _loc14_.§ !q§(StateLastWeeksTournamentResults.STATE_NAME,param10 || StateLastWeeksTournamentResults);
         _loc14_.§ !q§(§>#P§.STATE_NAME,param11 || §>#P§);
         _loc14_.§ !q§(§]#<§.STATE_NAME,param12 || §]#<§);
         _loc14_.§ !q§(§["!§.STATE_NAME,param13 || §["!§);
         return _loc14_;
      }
      
      private function onEnterFrame(param1:§`#x§) : void
      {
         var _loc2_:int = 0;
         if(AngryBirdsBase.singleton.§1"Z§() == §7"Z§.STATE_NAME)
         {
            return;
         }
         if(!this.§3"`§ && §"!G§)
         {
            _loc2_ = this.§@!-§();
            if(_loc2_ == 0)
            {
               this.§3"`§ = true;
               this.§6!^§();
            }
            else if(_loc2_ > 0 && this.§true§)
            {
               this.§true§ = false;
            }
            if(_loc2_ <= 5 && _loc2_ > 0)
            {
               if(!this.§"x§[_loc2_ - 1])
               {
                  if(§+!p§.§;"-§.§1"Z§() == §4e§.STATE_NAME || §+!p§.§;"-§.§1"Z§() == §[$2§.STATE_NAME)
                  {
                     §4$4§.playSound("ui_countdown_" + _loc2_,§4$4§.§1#l§);
                  }
                  this.§"x§[_loc2_ - 1] = true;
               }
            }
         }
      }
      
      private function §?"`§() : void
      {
         if(!this.§@#N§)
         {
            this.§@#N§ = new Timer(30000);
            this.§@#N§.addEventListener(TimerEvent.TIMER,function():void
            {
               §@#N§.stop();
               §@#N§ = null;
            });
            this.§@#N§.start();
            AngryBirdsBase.singleton.popupManager.§&"r§();
            var popup:TournamentEndedPopup = new TournamentEndedPopup(§-!S§.NORMAL,§## §.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(popup);
            return;
         }
      }
      
      protected function §9"7§() : void
      {
         var _loc1_:TournamentNotFoundPopup = new TournamentNotFoundPopup(§-!S§.NORMAL,§## §.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function injectData() : void
      {
         var _loc1_:Object = null;
         if(!§+!p§.§;"-§.hasEventListener(§`#x§.§2"F§))
         {
            §+!p§.§;"-§.addEventListener(§`#x§.§2"F§,this.onEnterFrame);
         }
         this.§3"`§ = false;
         this.§6R§ = false;
         if(this.§=#y§ && this.§=#y§.levelScores)
         {
            _loc1_ = this.§=#y§.levelScores;
         }
         this.§=#y§.levelScores = _loc1_;
         if(this.§=#y§)
         {
            this.§8"!§ = this.§54§.endTime;
         }
         if(this.§54§.brandedTournament != null)
         {
            this.§<!'§ = this.§0$A§[§^"o§];
            this.§<!'§.§1!>§ = this.§54§.brandedTournament;
            this.§<!'§.§^!K§ = this.§54§.tn;
            this.§<!'§.§,d§ = this.brandedTournamentAssetId;
            this.§<!'§.§&!Q§ = §!'§ + this.brandedTournamentAssetId;
            if(this.§<!'§.§6"w§)
            {
               this.§<!'§.background = §@!?§ + this.brandedTournamentAssetId;
            }
            this.§<!'§.§2"w§ = this.brandedTournamentAssetId;
         }
         else
         {
            this.§<!'§ = this.§0$A§[§%W§];
         }
         if(AngryBirdsBase.singleton.§,"A§)
         {
            this.§'#'§();
         }
      }
      
      private function §'#'§() : void
      {
         var _loc2_:§'!G§ = null;
         var _loc1_:Boolean = false;
         if(this.§1!>§ != "" && this.§=#r§ != this.§1!>§ && this.§<!'§)
         {
            this.§<!'§.§["$§();
            this.§=#r§ = this.§1!>§;
            _loc1_ = true;
         }
         else if(this.§=#r§ != §%W§ && this.§1!>§ == "")
         {
            this.§<!'§.§["$§();
            this.§=#r§ = §%W§;
            _loc1_ = true;
         }
         if(_loc1_)
         {
            _loc2_ = §+!p§.§;"-§.§8"v§();
            if(_loc2_ != null)
            {
               if(_loc2_.§-#3§ == §4e§.STATE_NAME)
               {
                  AngryBirdsBase.singleton.§%!?§(§4e§.STATE_NAME);
               }
            }
         }
      }
      
      public function §%!y§(param1:String) : §6#!§
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§0$A§)
         {
            if(_loc2_ == param1.toUpperCase())
            {
               return this.§0$A§[_loc2_];
            }
         }
         return null;
      }
      
      public function get §54§() : Object
      {
         if(this.§=#y§)
         {
            return this.§=#y§;
         }
         return null;
      }
      
      public function § !U§() : String
      {
         if(this.§54§)
         {
            return "tournamentId=" + this.§=#y§.id;
         }
         return "tournamentId=-1";
      }
      
      public function §`#p§() : int
      {
         if(this.§54§)
         {
            return this.§=#y§.id;
         }
         return -1;
      }
      
      public function §2o§() : Boolean
      {
         var _loc1_:Number = NaN;
         if(this.§=#y§)
         {
            if(this.§=#y§.overlappingTournamentsEnabled && this.§=#y§.overlappingTournamentsStart && this.§=#y§.overlappingTournamentsEnd)
            {
               _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
               if(_loc1_ >= this.§=#y§.overlappingTournamentsEnd || _loc1_ < this.§=#y§.overlappingTournamentsStart)
               {
                  return false;
               }
               return true;
            }
         }
         return false;
      }
      
      public function get §-"2§() : Object
      {
         return this.§54§.enteredDraw;
      }
      
      public function get tournamentRules() : §6#!§
      {
         return this.§<!'§;
      }
      
      public function get §1!>§() : String
      {
         if(this.§<!'§)
         {
            return this.§<!'§.§1!>§;
         }
         return "";
      }
      
      public function get brandedTournamentAssetId() : String
      {
         if(this.§54§ != null && this.§54§.brandedTournamentAssetId != null)
         {
            if((this.§54§.brandedTournamentAssetId as String).toUpperCase() == "HALLOWEEN_2013")
            {
               return §5"L§.§3C§;
            }
            if((this.§54§.brandedTournamentAssetId as String).toUpperCase().indexOf(§[#R§) != -1)
            {
               return §[#R§;
            }
            return (this.§54§.brandedTournamentAssetId as String).toUpperCase();
         }
         return "";
      }
      
      public function get §^!K§() : String
      {
         if(this.§<!'§ && this.§<!'§.§^!K§)
         {
            return this.§<!'§.§^!K§;
         }
         return §<!s§;
      }
      
      public function get §^#§() : String
      {
         if(this.§54§ != null && this.§=#y§.nextTournamentBrand != null)
         {
            return this.§=#y§.nextTournamentBrand;
         }
         return "";
      }
      
      public function get §@m§() : Object
      {
         return this.§7#w§;
      }
      
      public function get §2"A§() : Object
      {
         return this.§4"o§;
      }
      
      public function get §4#^§() : Object
      {
         return this.§`#G§;
      }
      
      public function get lastResult() : Object
      {
         if(this.§+"a§ && this.§+"a§.prizeCounts && this.§+"a§.players)
         {
            return this.§+"a§;
         }
         return null;
      }
      
      public function get players() : Array
      {
         if(this.§@m§)
         {
            return this.§@m§.players;
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
      
      public function §95§(param1:String, param2:Boolean) : void
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
         if(this.§54§)
         {
            return this.§54§.levels;
         }
         return [];
      }
      
      public function get levelScores() : Array
      {
         if(this.§54§)
         {
            return this.§54§.levelScores;
         }
         return [];
      }
      
      public function get §^!q§() : Array
      {
         if(this.§4#^§)
         {
            if(this.§4#^§.prizeCounts)
            {
               return this.§4#^§.prizeCounts;
            }
         }
         return [1000,500,100];
      }
      
      public function get §&u§() : Array
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
         if(this.§4#^§)
         {
            return this.§4#^§.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.§4#^§)
         {
            return this.§4#^§.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.§4#^§)
         {
            return this.§4#^§.goldTrophies;
         }
         return 0;
      }
      
      public function §@!-§() : int
      {
         if(isNaN(this.§8"!§))
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§8"!§ - _loc1_) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      public function §&"4§(param1:String) : String
      {
         var _loc2_:int = this.levelIDs.indexOf(param1);
         var _loc3_:String = this.levelIDs[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.levelIDs.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §!$A§(param1:String) : String
      {
         var _loc2_:int = this.levelIDs.indexOf(param1);
         var _loc3_:String = this.levelIDs[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.levelIDs.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §%!m§(param1:String) : int
      {
         return this.levelIDs.indexOf(param1) + 1;
      }
      
      public function §=#I§(param1:String) : String
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
      
      public function §?5§() : Array
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
      
      public function §%"#§() : Array
      {
         return § $4§.§1"n§(this.§@!-§());
      }
      
      public function §>#`§(param1:Number) : Array
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
      
      public function §;!Y§() : Array
      {
         var _loc1_:int = 0;
         if(this.§=#y§ && this.§=#y§.overlappingTournamentsEnd)
         {
            _loc1_ = (this.§=#y§.overlappingTournamentsEnd - dataModel.serverSynchronizedTime.synchronizedTimeStamp) / 1000;
            return § $4§.§1"n§(Math.max(0,_loc1_));
         }
         return ["0s","0xFFFFFF"];
      }
      
      public function §3!^§() : int
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
         return §'#]§;
      }
      
      public function get §#!$§() : Boolean
      {
         return this.§true§;
      }
      
      public function set §#!$§(param1:Boolean) : void
      {
         this.§true§ = param1;
      }
      
      public function §>"$§() : void
      {
         if(this.§3"`§ && !this.§6R§)
         {
            this.§6!^§();
         }
      }
      
      private function §6!^§() : void
      {
         if(this.§]$7§())
         {
            return;
         }
         var _loc1_:String = AngryBirdsBase.singleton.§1"Z§();
         if(_loc1_ == StateTournamentResults.STATE_NAME)
         {
            return;
         }
         if(AngryBirdsBase.singleton.popupManager.getOpenPopupById(TournamentEndedPopup.ID))
         {
            return;
         }
         §=!a§.§3"1§.§ #^§();
         if(this.§2o§())
         {
            if(_loc1_ == §?"R§.STATE_NAME)
            {
               this.§?"`§();
            }
            else if(_loc1_ == §4e§.STATE_NAME || _loc1_ == § !M§.STATE_NAME)
            {
               if(!(AngryBirdsBase.singleton.§8"v§() as §4e§).§#!?§())
               {
                  this.§?"`§();
               }
            }
         }
         else
         {
            dispatchEvent(new §<$!§(§<$!§.§#F§));
            §4e§.§^H§();
            if(AngryBirdsBase.singleton.§1"Z§().indexOf("Tournament") != -1)
            {
               this.§?"`§();
            }
         }
         this.§6R§ = true;
      }
      
      public function get info() : String
      {
         if(this.§=#y§ && this.§=#y§.info)
         {
            return this.§=#y§.info;
         }
         return "";
      }
      
      public function §0l§(param1:Array) : void
      {
         this.§4K§ = param1;
      }
      
      public function §?!L§() : Array
      {
         return this.§4K§;
      }
      
      public function get §]$?§() : Boolean
      {
         return this.lastResult;
      }
      
      public function §@#'§(param1:String) : §,!Y§
      {
         if(!this.§7C§)
         {
            this.§7C§ = new §;$2§();
         }
         return this.§7C§.§3"F§(param1);
      }
      
      public function §1!8§(param1:String) : void
      {
         if(this.§7C§)
         {
            this.§7C§.§,#y§(param1);
         }
      }
      
      public function §""s§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         if(this.§=#y§)
         {
            for each(_loc2_ in this.§=#y§.levels)
            {
               if(_loc2_.levelId == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §[$ §() : void
      {
         if(this.§7C§)
         {
            this.§7C§.§]$9§();
         }
      }
      
      public function get §9#,§() : Object
      {
         return this.§>!y§;
      }
      
      public function set §9#,§(param1:Object) : void
      {
         this.§>!y§ = param1;
      }
      
      public function get §2#5§() : Object
      {
         return this.§&'§;
      }
      
      public function set §2#5§(param1:Object) : void
      {
         this.§&'§ = param1;
      }
      
      public function §["%§() : Boolean
      {
         return this.§2#5§ && this.§2#5§.zombiesEnabled;
      }
      
      public function §`T§() : Boolean
      {
         return this.§2#5§ && this.§2#5§.eddieTheBirdEnabled;
      }
      
      private function §,!R§() : void
      {
         this.§=" § = new Object();
         this.§=" §[§<$!§.§?"+§] = true;
         this.§=" §[§<$!§.§4!G§] = true;
         this.§=" §[§<$!§.§3!=§] = true;
      }
      
      private function §4$5§(param1:String) : void
      {
         if(!this.§=" § || !this.§=" §[param1])
         {
            return;
         }
         this.§=" §[param1] = false;
         if(!this.§]$7§())
         {
            dispatchEvent(new §<$!§(§<$!§.§<#-§));
         }
      }
      
      private function §]$7§() : Boolean
      {
         var _loc1_:* = null;
         if(!this.§=" §)
         {
            return false;
         }
         for(_loc1_ in this.§=" §)
         {
            if(this.§=" §[_loc1_])
            {
               return true;
            }
         }
         return false;
      }
      
      public function §59§() : Array
      {
         if(this.§=#y§)
         {
            return this.§=#y§.levelScores;
         }
         return null;
      }
   }
}
