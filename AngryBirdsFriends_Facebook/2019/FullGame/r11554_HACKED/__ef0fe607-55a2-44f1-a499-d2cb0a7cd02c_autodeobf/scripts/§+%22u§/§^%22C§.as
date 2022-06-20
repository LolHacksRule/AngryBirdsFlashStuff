package §+"u§
{
   import §!!?§.§,!K§;
   import §!!T§.§1"9§;
   import §!!t§.§ "X§;
   import §!!t§.§'8§;
   import §!!t§.§1!M§;
   import §!!t§.§2!S§;
   import §!!t§.§8!k§;
   import §!!t§.§9$A§;
   import §!!t§.§<!x§;
   import §!!t§.StateLastWeeksTournamentResults;
   import §!!t§.StateTournamentResults;
   import §"$=§.§'![§;
   import §#!E§.§2#Q§;
   import §'#g§.§1"i§;
   import §+#B§.§4"[§;
   import §3!5§.§0#r§;
   import §3=§.§6"H§;
   import §5"G§.§^"&§;
   import §5"c§.§8K§;
   import §6!'§.§@#c§;
   import §8"b§.§&!b§;
   import §9"§.§7§;
   import §9"§.§>!a§;
   import §9#o§.§5@§;
   import §9#o§.§6!u§;
   import §9&§.§+"j§;
   import §;$5§.§9§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §?!N§.TournamentEndedPopup;
   import §?!N§.TournamentNotFoundPopup;
   import §?#h§.§3#=§;
   import §]"'§.§1#"§;
   import §]"'§.§@"%§;
   import §]x§.§ $>§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §^"C§ extends EventDispatcher
   {
      
      public static const §?"!§:String = "STANDARD";
      
      public static const §,#n§:String = "BRANDED";
      
      public static const §8"+§:String = "Angry Birds Tournament";
      
      public static const §6#I§:String = "HALLOWEEN_2014";
      
      public static const §4!Y§:String = "XMAS_2014";
      
      public static const §!"R§:String = "BACKGROUND_FB_";
      
      public static const §&"+§:String = "tournament_";
      
      public static const §3"'§:String = "InterruptedQualifierBundle";
      
      public static const §&!A§:int = 100000;
      
      private static var §^#j§:int = 0;
      
      private static var §#!5§:§^"C§;
      
      private static const §#!=§:String = "Angry Birds Tournament";
      
      private static var §"#G§:Boolean;
      
      public static var §,";§:int = 2 * 60;
      
      public static const §,#4§:String = "CachePlayerCurrentTournament";
      
      private static var §8§:Boolean;
       
      
      private var §5F§:Boolean = false;
      
      private var §2"o§:Boolean = false;
      
      private var §`#B§:Object;
      
      private var §-!s§:Object;
      
      private var §5!X§:Object;
      
      private var §7!B§:Object;
      
      private var §6#@§:Object;
      
      private var §!C§:Object;
      
      private var §9$>§:§6!9§;
      
      private var §@"G§:§4"[§;
      
      private var §&#@§:String = "STANDARD";
      
      private var §;x§:Number;
      
      private var §+#Z§:Object;
      
      private var §[8§:§1"i§;
      
      private var §7!a§:Boolean = false;
      
      private var §@]§:§+"j§;
      
      private var §[!c§:Array;
      
      private var §2!d§:Dictionary;
      
      private var §&!^§:§>!a§;
      
      private var §#B§:Array;
      
      private var mLevelManager:§'![§;
      
      public var §^"y§:int = 0;
      
      private var §0$C§:Boolean = false;
      
      private var §]"$§:Object;
      
      private var §,f§:Object;
      
      private var §["j§:Object;
      
      private var §%[§:Timer;
      
      public function §^"C§()
      {
         this.§2!d§ = new Dictionary();
         super();
         this.§0!c§();
         this.§#B§ = new Array(5);
         this.§@]§ = new §+"j§();
         this.§@]§.addEventListener(§0#r§.§;![§,this.§6#C§);
         this.§@]§.addEventListener(§0#r§.§[#t§,this.§@V§);
         this.§@]§.addEventListener(§0#r§.§3#C§,this.§3#k§);
         this.§@]§.addEventListener(§0#r§.§'$>§,this.§5"9§);
         this.§@]§.addEventListener(§0#r§.§]E§,this.§+o§);
         this.§@]§.addEventListener(§0#r§.§@o§,this.§5#9§);
         this.§@]§.addEventListener(§0#r§.§,B§,this.§5#J§);
         this.§@]§.addEventListener(§0#r§.§7!m§,this.§;>§);
         this.§@]§.addEventListener(§0#r§.§=!z§,this.§4w§);
         this.§[!c§ = new Array();
         this.§2!d§[§,#4§] = §,";§;
      }
      
      public static function get §?q§() : §^"C§
      {
         if(§#!5§ == null)
         {
            §#!5§ = new §^"C§();
         }
         return §#!5§;
      }
      
      public static function §2#Y§(param1:Number) : String
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
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      protected static function get userProgress() : §2#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§;
      }
      
      public static function §]y§(param1:Boolean) : void
      {
         §8§ = param1;
      }
      
      public static function §-"T§() : void
      {
         §"#G§ = true;
      }
      
      public function set §1$0§(param1:int) : void
      {
         this.§^"y§ = param1;
      }
      
      public function get §1$0§() : int
      {
         return this.§^"y§;
      }
      
      public function get §-"d§() : Boolean
      {
         return this.§^"y§ != 0;
      }
      
      public function §,$;§() : Boolean
      {
         return this.§0$C§;
      }
      
      public function §4!l§(param1:Boolean) : void
      {
         this.§0$C§ = param1;
      }
      
      public function §'!a§(param1:§'![§) : void
      {
         this.mLevelManager = param1;
      }
      
      protected function §5#9§(param1:Event) : void
      {
         dispatchEvent(new §0#r§(§0#r§.§@o§));
      }
      
      public function §!$C§() : void
      {
         this.§@]§.§`#;§(0);
         if(!§@#c§.§?q§.active)
         {
            this.§@]§.§&r§();
         }
      }
      
      public function § #7§() : void
      {
         this.§3"h§();
         this.§@]§.§ #7§(this.§5!W§());
         this.§^"'§();
      }
      
      public function §`#;§(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         if(!§"#G§ && this.§@]§.§["5§(param1))
         {
            _loc2_ = this.§@]§.§,!B§(param1);
            _loc3_ = (AngryBirdsBase.singleton.dataModel as §@"%§).serverSynchronizedTime.synchronizedTimeStamp;
            if(_loc2_.endTime - _loc3_ <= 0)
            {
               this.§@]§.§`#;§(param1);
            }
            else
            {
               this.§@]§.§!"G§(param1);
            }
         }
         else if(param1 == 0)
         {
            if(!§"#G§ && this.§4#-§ != null && this.§@]§.§["5§(this.§4#-§.id))
            {
               this.§@]§.§!"G§(this.§4#-§.id);
            }
            else
            {
               this.§@]§.§`#;§(0);
            }
            if(!§@#c§.§?q§.active)
            {
               this.§@]§.§&r§();
            }
         }
         else
         {
            this.§@]§.§`#;§(param1);
         }
         §"#G§ = false;
      }
      
      public function §-!g§(param1:int) : void
      {
         this.§@]§.§-!g§(param1);
      }
      
      public function §,$,§(param1:int) : void
      {
         this.§@]§.§-&§(param1);
      }
      
      public function §6"T§(param1:Boolean) : void
      {
         if(this.§7!H§ == null || param1)
         {
            this.§@]§.§6"T§();
         }
         else
         {
            dispatchEvent(new §0#r§(§0#r§.§,B§,this.§!C§));
         }
      }
      
      public function §^"'§() : void
      {
         this.§@]§.§,"2§(this.brandedTournamentAssetId,this.§`#B§.levels,this.mLevelManager);
      }
      
      public function §15§() : void
      {
         this.§@]§.§=#j§();
      }
      
      protected function §5"9§(param1:§0#r§) : void
      {
         if(param1.data)
         {
            if(this.§`#B§ && param1.data.levelScores)
            {
               this.§`#B§.levelScores = param1.data.levelScores;
               (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).§#X§(this.§`#B§.levelScores);
            }
         }
         dispatchEvent(new §0#r§(§0#r§.§'$>§));
         this.§`!P§(§0#r§.§'$>§);
      }
      
      protected function §3#k§(param1:§0#r§) : void
      {
         if(param1.data != null && (!this.§-!s§ || this.§-!s§.toString() != param1.data.toString()))
         {
            this.§-!s§ = param1.data;
            if(param1.data.players)
            {
               this.§5!X§ = param1.data;
            }
         }
         dispatchEvent(new §0#r§(§0#r§.§'!+§));
      }
      
      protected function §@V§(param1:§0#r§) : void
      {
         if(this.§-!s§ && this.§5!X§)
         {
            dispatchEvent(new §0#r§(§0#r§.§9!M§));
         }
         else if(param1.data != null && (!this.§5!X§ || this.§5!X§.toString() != param1.data.toString()))
         {
            this.§5!X§ = param1.data;
            dispatchEvent(new §0#r§(§0#r§.§9!M§));
         }
      }
      
      public function §1#y§(param1:String) : Number
      {
         return this.§2!d§[param1];
      }
      
      private function §,N§(param1:String) : Boolean
      {
         var _loc2_:Number = (AngryBirdsBase.singleton.dataModel as §@"%§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = (_loc2_ - this.§2!d§[param1]) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ < §,";§)
         {
            return true;
         }
         if(!isNaN(this.§;x§))
         {
            _loc3_ = (this.§;x§ - _loc2_) / 1000;
            if(_loc3_ < §,";§)
            {
               return false;
            }
         }
         this.§2!d§[param1] = _loc2_;
         return false;
      }
      
      protected function §4w§(param1:§0#r§) : void
      {
         if(param1.data)
         {
            this.§`#B§ = param1.data;
         }
         dispatchEvent(new §0#r§(§0#r§.§=!z§,param1.data));
      }
      
      private function §6#C§(param1:§0#r§) : void
      {
         var _loc2_:§6!u§ = §6!u§(param1.data);
         if(_loc2_)
         {
            dispatchEvent(new §0#r§(§0#r§.§;![§,{
               "packLoader":_loc2_,
               "cb":this.§[!a§
            }));
         }
         else
         {
            dispatchEvent(new §0#r§(§0#r§.§;![§,{"bluePrintPackLoader":new §5@§()}));
            this.§=!?§();
         }
         this.§`!P§(§0#r§.§;![§);
      }
      
      private function §[!a§() : void
      {
         this.§=!?§();
      }
      
      public function §=!?§(param1:int = 0) : void
      {
         if(this.§`#B§)
         {
            this.injectData();
            if(!this.§`#B§)
            {
               dispatchEvent(new §0#r§(§0#r§.§5"z§));
            }
         }
         dispatchEvent(new §0#r§(§0#r§.§]"?§));
      }
      
      public function §=!"§() : void
      {
         var _loc1_:* = null;
         this.§`#B§ = null;
         this.§-!s§ = null;
         this.§5!X§ = null;
         this.§7!B§ = null;
         this.§6#@§ = null;
         for(_loc1_ in this.§2!d§)
         {
            this.§2!d§[_loc1_] = 0;
         }
         if(this.§&!^§)
         {
            this.§&!^§.§05§();
         }
         this.§#B§ = new Array(5);
      }
      
      public function §%"E§() : void
      {
         this.§-!s§ = null;
      }
      
      protected function §+o§(param1:§0#r§) : void
      {
         if(param1.data)
         {
            this.§6#@§ = param1.data;
            this.§6#@§ = §1#"§.§,z§(this.§6#@§,"players");
         }
         dispatchEvent(new §0#r§(§0#r§.§]E§));
         this.§`!P§(§0#r§.§]E§);
      }
      
      protected function §5#J§(param1:§0#r§) : void
      {
         if(param1.data)
         {
            this.§!C§ = param1.data;
            this.§!C§.sortOn("id");
            dispatchEvent(new §0#r§(§0#r§.§,B§,this.§!C§));
         }
      }
      
      protected function §;>§(param1:§0#r§) : void
      {
         this.§!C§ = null;
         this.§`#;§(0);
         dispatchEvent(new §0#r§(§0#r§.§7!m§));
      }
      
      public function get §'!e§() : Object
      {
         return this.§+#Z§;
      }
      
      public function §03§(param1:Object) : void
      {
         var _loc2_:§,!K§ = null;
         if(this.§+#Z§ != param1)
         {
            this.§+#Z§ = param1;
            _loc2_ = §@"%§(AngryBirdsBase.singleton.dataModel).§,H§.§ #R§[0];
            this.§[8§ = new §1"i§(_loc2_,_loc2_.getPricePoint(0));
            this.§[8§.addEventListener(§8K§.§`#y§,this.§=8§);
         }
      }
      
      private function §=8§(param1:§8K§) : void
      {
         if(this.§[8§)
         {
            this.§[8§.removeEventListener(§8K§.§`#y§,this.§=8§);
         }
         if(this.§+#Z§)
         {
            delete this.§+#Z§.unlockTime;
         }
         this.§+#Z§ = null;
      }
      
      public function §'^§(param1:String) : Object
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
      
      private function §0!c§() : void
      {
         this.§@"G§ = new §4"[§();
         this.§@"G§[§?"!§] = this.dynamic(§?"!§);
         this.§@"G§[§,#n§] = this.dynamic(§,#n§,null,"","",false,"",§ $>§);
      }
      
      private function dynamic(param1:String, param2:Class = null, param3:String = "", param4:String = "", param5:Boolean = false, param6:String = "", param7:Class = null, param8:Class = null, param9:Class = null, param10:Class = null, param11:Class = null, param12:Class = null, param13:Class = null) : §6!9§
      {
         var _loc14_:§6!9§;
         (_loc14_ = new §6!9§(param1,param2,param3,param4,param5,param6)).§ `§(§'8§.STATE_NAME,param7 || §'8§);
         _loc14_.§ `§(§8!k§.STATE_NAME,param8 || §8!k§);
         _loc14_.§ `§(§2!S§.STATE_NAME,param9 || §2!S§);
         _loc14_.§ `§(StateLastWeeksTournamentResults.STATE_NAME,param10 || StateLastWeeksTournamentResults);
         _loc14_.§ `§(§<!x§.STATE_NAME,param11 || §<!x§);
         _loc14_.§ `§(§ "X§.STATE_NAME,param12 || § "X§);
         _loc14_.§ `§(§1!M§.STATE_NAME,param13 || §1!M§);
         return _loc14_;
      }
      
      private function onEnterFrame(param1:§^"&§) : void
      {
         var _loc2_:int = 0;
         if(AngryBirdsBase.singleton.§ p§() == §9$A§.STATE_NAME)
         {
            return;
         }
         if(!this.§5F§ && §8§)
         {
            _loc2_ = this.§&"C§();
            if(_loc2_ == 0)
            {
               this.§5F§ = true;
               this.§3"V§();
            }
            else if(_loc2_ > 0 && this.§7!a§)
            {
               this.§7!a§ = false;
            }
            if(_loc2_ <= 5 && _loc2_ > 0)
            {
               if(!this.§#B§[_loc2_ - 1])
               {
                  if(§%"T§.§>$<§.§ p§() == §'8§.STATE_NAME || §%"T§.§>$<§.§ p§() == §6"H§.STATE_NAME)
                  {
                     §[#%§.playSound("ui_countdown_" + _loc2_,§[#%§.§-"I§);
                  }
                  this.§#B§[_loc2_ - 1] = true;
               }
            }
         }
      }
      
      private function §]#T§() : void
      {
         if(!this.§%[§)
         {
            this.§%[§ = new Timer(30000);
            this.§%[§.addEventListener(TimerEvent.TIMER,function():void
            {
               §%[§.stop();
               §%[§ = null;
            });
            this.§%[§.start();
            AngryBirdsBase.singleton.popupManager.§,#8§();
            var popup:TournamentEndedPopup = new TournamentEndedPopup(§%#§.NORMAL,§9#5§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(popup);
            return;
         }
      }
      
      protected function §2Y§() : void
      {
         var _loc1_:TournamentNotFoundPopup = new TournamentNotFoundPopup(§%#§.NORMAL,§9#5§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function injectData() : void
      {
         var _loc1_:Object = null;
         if(!§%"T§.§>$<§.hasEventListener(§^"&§.§>"q§))
         {
            §%"T§.§>$<§.addEventListener(§^"&§.§>"q§,this.onEnterFrame);
         }
         this.§5F§ = false;
         this.§2"o§ = false;
         if(this.§`#B§ && this.§`#B§.levelScores)
         {
            _loc1_ = this.§`#B§.levelScores;
         }
         this.§`#B§.levelScores = _loc1_;
         if(this.§`#B§)
         {
            this.§;x§ = this.§4#-§.endTime;
         }
         if(this.§4#-§.brandedTournament != null)
         {
            this.§9$>§ = this.§@"G§[§,#n§];
            this.§9$>§.§1"5§ = this.§4#-§.brandedTournament;
            this.§9$>§.§+#X§ = this.§4#-§.tn;
            this.§9$>§.§9d§ = this.brandedTournamentAssetId;
            this.§9$>§.§;&§ = §&"+§ + this.brandedTournamentAssetId;
            if(this.§9$>§.§%$3§)
            {
               this.§9$>§.background = §!"R§ + this.brandedTournamentAssetId;
            }
            this.§9$>§.§`§ = this.brandedTournamentAssetId;
         }
         else
         {
            this.§9$>§ = this.§@"G§[§?"!§];
         }
         if(AngryBirdsBase.singleton.§^K§)
         {
            this.§&!W§();
         }
      }
      
      private function §&!W§() : void
      {
         var _loc2_:§3#=§ = null;
         var _loc1_:Boolean = false;
         if(this.§1"5§ != "" && this.§&#@§ != this.§1"5§ && this.§9$>§)
         {
            this.§9$>§.§"!N§();
            this.§&#@§ = this.§1"5§;
            _loc1_ = true;
         }
         else if(this.§&#@§ != §?"!§ && this.§1"5§ == "")
         {
            this.§9$>§.§"!N§();
            this.§&#@§ = §?"!§;
            _loc1_ = true;
         }
         if(_loc1_)
         {
            _loc2_ = §%"T§.§>$<§.§1h§();
            if(_loc2_ != null)
            {
               if(_loc2_.§-!O§ == §'8§.STATE_NAME)
               {
                  AngryBirdsBase.singleton.§%D§(§'8§.STATE_NAME);
               }
            }
         }
      }
      
      public function §="f§(param1:String) : §6!9§
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§@"G§)
         {
            if(_loc2_ == param1.toUpperCase())
            {
               return this.§@"G§[_loc2_];
            }
         }
         return null;
      }
      
      public function get §4#-§() : Object
      {
         if(this.§`#B§)
         {
            return this.§`#B§;
         }
         return null;
      }
      
      public function §;$&§() : String
      {
         if(this.§4#-§)
         {
            return "tournamentId=" + this.§`#B§.id;
         }
         return "tournamentId=-1";
      }
      
      public function §5!W§() : int
      {
         if(this.§4#-§)
         {
            return this.§`#B§.id;
         }
         return -1;
      }
      
      public function §&2§() : Boolean
      {
         var _loc1_:Number = NaN;
         if(this.§`#B§)
         {
            if(this.§`#B§.overlappingTournamentsEnabled && this.§`#B§.overlappingTournamentsStart && this.§`#B§.overlappingTournamentsEnd)
            {
               _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
               if(_loc1_ >= this.§`#B§.overlappingTournamentsEnd || _loc1_ < this.§`#B§.overlappingTournamentsStart)
               {
                  return false;
               }
               return true;
            }
         }
         return false;
      }
      
      public function get §]!>§() : Object
      {
         return this.§4#-§.enteredDraw;
      }
      
      public function get tournamentRules() : §6!9§
      {
         return this.§9$>§;
      }
      
      public function get §1"5§() : String
      {
         if(this.§9$>§)
         {
            return this.§9$>§.§1"5§;
         }
         return "";
      }
      
      public function get brandedTournamentAssetId() : String
      {
         if(this.§4#-§ != null && this.§4#-§.brandedTournamentAssetId != null)
         {
            if((this.§4#-§.brandedTournamentAssetId as String).toUpperCase() == "HALLOWEEN_2013")
            {
               return §^"C§.§6#I§;
            }
            if((this.§4#-§.brandedTournamentAssetId as String).toUpperCase().indexOf(§4!Y§) != -1)
            {
               return §4!Y§;
            }
            return (this.§4#-§.brandedTournamentAssetId as String).toUpperCase();
         }
         return "";
      }
      
      public function get §+#X§() : String
      {
         if(this.§9$>§ && this.§9$>§.§+#X§)
         {
            return this.§9$>§.§+#X§;
         }
         return §8"+§;
      }
      
      public function get §+$6§() : String
      {
         if(this.§4#-§ != null && this.§`#B§.nextTournamentBrand != null)
         {
            return this.§`#B§.nextTournamentBrand;
         }
         return "";
      }
      
      public function get §9%§() : Object
      {
         return this.§6#@§;
      }
      
      public function get §7!H§() : Object
      {
         return this.§!C§;
      }
      
      public function get §>$ §() : Object
      {
         return this.§5!X§;
      }
      
      public function get lastResult() : Object
      {
         if(this.§-!s§ && this.§-!s§.prizeCounts && this.§-!s§.players)
         {
            return this.§-!s§;
         }
         return null;
      }
      
      public function get players() : Array
      {
         if(this.§9%§)
         {
            return this.§9%§.players;
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
      
      public function §0"p§(param1:String, param2:Boolean) : void
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
         if(this.§4#-§)
         {
            return this.§4#-§.levels;
         }
         return [];
      }
      
      public function get levelScores() : Array
      {
         if(this.§4#-§)
         {
            return this.§4#-§.levelScores;
         }
         return [];
      }
      
      public function get §^#L§() : Array
      {
         if(this.§>$ §)
         {
            if(this.§>$ §.prizeCounts)
            {
               return this.§>$ §.prizeCounts;
            }
         }
         return [1000,500,100];
      }
      
      public function get §@!c§() : Array
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
         if(this.§>$ §)
         {
            return this.§>$ §.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.§>$ §)
         {
            return this.§>$ §.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.§>$ §)
         {
            return this.§>$ §.goldTrophies;
         }
         return 0;
      }
      
      public function §&"C§() : int
      {
         if(isNaN(this.§;x§))
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§;x§ - _loc1_) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      public function §`-§(param1:String) : String
      {
         var _loc2_:int = this.levelIDs.indexOf(param1);
         var _loc3_:String = this.levelIDs[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.levelIDs.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §"!@§(param1:String) : String
      {
         var _loc2_:int = this.levelIDs.indexOf(param1);
         var _loc3_:String = this.levelIDs[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.levelIDs.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §6#T§(param1:String) : int
      {
         return this.levelIDs.indexOf(param1) + 1;
      }
      
      public function §%!4§(param1:String) : String
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
      
      public function §#C§() : Array
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
      
      public function §1!h§() : Array
      {
         return §&!b§.§0#$§(this.§&"C§());
      }
      
      public function §!"X§(param1:Number) : Array
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
      
      public function §=#i§() : Array
      {
         var _loc1_:int = 0;
         if(this.§`#B§ && this.§`#B§.overlappingTournamentsEnd)
         {
            _loc1_ = (this.§`#B§.overlappingTournamentsEnd - dataModel.serverSynchronizedTime.synchronizedTimeStamp) / 1000;
            return §&!b§.§0#$§(Math.max(0,_loc1_));
         }
         return ["0s","0xFFFFFF"];
      }
      
      public function §@!F§() : int
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
         return §&!A§;
      }
      
      public function get §^!@§() : Boolean
      {
         return this.§7!a§;
      }
      
      public function set §^!@§(param1:Boolean) : void
      {
         this.§7!a§ = param1;
      }
      
      public function §""w§() : void
      {
         if(this.§5F§ && !this.§2"o§)
         {
            this.§3"V§();
         }
      }
      
      private function §3"V§() : void
      {
         if(this.§&"d§())
         {
            return;
         }
         var _loc1_:String = AngryBirdsBase.singleton.§ p§();
         if(_loc1_ == StateTournamentResults.STATE_NAME)
         {
            return;
         }
         if(AngryBirdsBase.singleton.popupManager.getOpenPopupById(TournamentEndedPopup.ID))
         {
            return;
         }
         §1"9§.§?q§.§=#_§();
         if(this.§&2§())
         {
            if(_loc1_ == §2!S§.STATE_NAME)
            {
               this.§]#T§();
            }
            else if(_loc1_ == §'8§.STATE_NAME || _loc1_ == § $>§.STATE_NAME)
            {
               if(!(AngryBirdsBase.singleton.§1h§() as §'8§).§0"§())
               {
                  this.§]#T§();
               }
            }
         }
         else
         {
            dispatchEvent(new §0#r§(§0#r§.§7v§));
            §'8§.§`"O§();
            if(AngryBirdsBase.singleton.§ p§().indexOf("Tournament") != -1)
            {
               this.§]#T§();
            }
         }
         this.§2"o§ = true;
      }
      
      public function get info() : String
      {
         if(this.§`#B§ && this.§`#B§.info)
         {
            return this.§`#B§.info;
         }
         return "";
      }
      
      public function §`$§(param1:Array) : void
      {
         this.§[!c§ = param1;
      }
      
      public function §>!-§() : Array
      {
         return this.§[!c§;
      }
      
      public function get §=!f§() : Boolean
      {
         return this.lastResult;
      }
      
      public function §8!H§(param1:String) : §7#7§
      {
         if(!this.§&!^§)
         {
            this.§&!^§ = new §>!a§();
         }
         return this.§&!^§.§!#k§(param1);
      }
      
      public function §,!b§(param1:String) : void
      {
         if(this.§&!^§)
         {
            this.§&!^§.§8"1§(param1);
         }
      }
      
      public function §3h§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         if(this.§`#B§)
         {
            for each(_loc2_ in this.§`#B§.levels)
            {
               if(_loc2_.levelId == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §39§() : void
      {
         if(this.§&!^§)
         {
            this.§&!^§.§,#$§();
         }
      }
      
      public function get §3#"§() : Object
      {
         return this.§]"$§;
      }
      
      public function set §3#"§(param1:Object) : void
      {
         this.§]"$§ = param1;
      }
      
      public function get §!N§() : Object
      {
         return this.§,f§;
      }
      
      public function set §!N§(param1:Object) : void
      {
         this.§,f§ = param1;
      }
      
      public function §%#,§() : Boolean
      {
         return this.§!N§ && this.§!N§.zombiesEnabled;
      }
      
      public function §5"O§() : Boolean
      {
         return this.§!N§ && this.§!N§.eddieTheBirdEnabled;
      }
      
      private function §3"h§() : void
      {
         this.§["j§ = new Object();
         this.§["j§[§0#r§.§'$>§] = true;
         this.§["j§[§0#r§.§]E§] = true;
         this.§["j§[§0#r§.§;![§] = true;
      }
      
      private function §`!P§(param1:String) : void
      {
         if(!this.§["j§ || !this.§["j§[param1])
         {
            return;
         }
         this.§["j§[param1] = false;
         if(!this.§&"d§())
         {
            dispatchEvent(new §0#r§(§0#r§.§ var§));
         }
      }
      
      private function §&"d§() : Boolean
      {
         var _loc1_:* = null;
         if(!this.§["j§)
         {
            return false;
         }
         for(_loc1_ in this.§["j§)
         {
            if(this.§["j§[_loc1_])
            {
               return true;
            }
         }
         return false;
      }
   }
}
