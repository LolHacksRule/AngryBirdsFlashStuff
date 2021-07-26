package §<!r§
{
   import § §.§2"O§;
   import §!"'§.§2"?§;
   import §!#C§.§&%§;
   import §!#C§.§4!Q§;
   import §"!n§.§;"x§;
   import §##Z§.§<$2§;
   import §&!_§.§[!j§;
   import §,"v§.§;"n§;
   import §-u§.§0"E§;
   import §-u§.§1#w§;
   import §0!s§.§]"Y§;
   import §0"C§.§+"z§;
   import §2";§.§95§;
   import §2J§.§]#@§;
   import §3+§.§#D§;
   import §3+§.§+">§;
   import §3+§.§0!S§;
   import §3+§.§7#+§;
   import §3+§.§7#t§;
   import §3+§.§;!H§;
   import §3+§.StateLastWeeksTournamentResults;
   import §3+§.StateTournamentResults;
   import §3+§.§`o§;
   import §5" §.§=n§;
   import §6t§.§4?§;
   import §7"G§.§8$?§;
   import §7R§.§ #`§;
   import §8!h§.§6$1§;
   import §8!h§.§^"]§;
   import §8#K§.§3Z§;
   import §9$2§.§7"L§;
   import §>"W§.§7Y§;
   import §>z§.§#"l§;
   import §>z§.TournamentEndedPopup;
   import §>z§.TournamentNotFoundPopup;
   import §`#@§.§7n§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §'##§ extends EventDispatcher
   {
      
      public static const §1!?§:String = "STANDARD";
      
      public static const §6!C§:String = "BRANDED";
      
      public static const §%"F§:String = "Angry Birds Tournament";
      
      public static const § !?§:String = "HALLOWEEN_2014";
      
      public static const §@b§:String = "XMAS_2014";
      
      public static const §!$#§:String = "BACKGROUND_FB_";
      
      public static const §9#k§:String = "tournament_";
      
      public static const §&!`§:String = "InterruptedQualifierBundle";
      
      public static const §=#&§:int = 100000;
      
      private static var §,![§:int = 0;
      
      private static var §1$8§:§'##§;
      
      private static const §>$+§:String = "Angry Birds Tournament";
      
      private static var §9"0§:Boolean;
      
      public static var §7#%§:int = 2 * 60;
      
      public static const §1! §:String = "CachePlayerCurrentTournament";
      
      private static var §%!'§:Boolean;
       
      
      private var §+#Q§:Boolean = false;
      
      private var §-!I§:Boolean = false;
      
      private var §2#5§:Object;
      
      private var §@U§:Object;
      
      private var §%#n§:Object;
      
      private var §9G§:Object;
      
      private var §6H§:Object;
      
      private var §>#[§:Object;
      
      private var §?#!§:§]_§;
      
      private var §+W§:§[!j§;
      
      private var §9#x§:String = "STANDARD";
      
      private var § D§:Number;
      
      private var §?,§:Object;
      
      private var §>"v§:§2"O§;
      
      private var §=#@§:Boolean = false;
      
      private var §0K§:§8$?§;
      
      private var §;#U§:Array;
      
      private var §5"g§:Dictionary;
      
      private var §[$;§:§6$1§;
      
      private var §@$-§:Array;
      
      private var mLevelManager:§;"n§;
      
      public var §?#w§:int = 0;
      
      private var §`M§:Boolean = false;
      
      private var §1!N§:Object;
      
      private var §]"G§:Object;
      
      private var §!X§:Object;
      
      private var §[F§:Timer;
      
      public function §'##§()
      {
         this.§5"g§ = new Dictionary();
         super();
         this.§^E§();
         this.§@$-§ = new Array(5);
         this.§0K§ = new §8$?§();
         this.§0K§.addEventListener(§]#@§.§["X§,this.§"![§);
         this.§0K§.addEventListener(§]#@§.§ ">§,this.§`%§);
         this.§0K§.addEventListener(§]#@§.§#t§,this.§ #?§);
         this.§0K§.addEventListener(§]#@§.§4#p§,this.§-!C§);
         this.§0K§.addEventListener(§]#@§.§,X§,this.§!#<§);
         this.§0K§.addEventListener(§]#@§.§%!+§,this.§20§);
         this.§0K§.addEventListener(§]#@§.§]<§,this.§0A§);
         this.§0K§.addEventListener(§]#@§.§6$7§,this.§!"d§);
         this.§0K§.addEventListener(§]#@§.§,!N§,this.§^"&§);
         this.§;#U§ = new Array();
         this.§5"g§[§1! §] = §7#%§;
      }
      
      public static function get §`"H§() : §'##§
      {
         if(§1$8§ == null)
         {
            §1$8§ = new §'##§();
         }
         return §1$8§;
      }
      
      public static function §6#c§(param1:Number) : String
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
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      protected static function get userProgress() : § #`§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as § #`§;
      }
      
      public static function §#$@§(param1:Boolean) : void
      {
         §%!'§ = param1;
      }
      
      public static function §0!V§() : void
      {
         §9"0§ = true;
      }
      
      public function set §`d§(param1:int) : void
      {
         this.§?#w§ = param1;
      }
      
      public function get §`d§() : int
      {
         return this.§?#w§;
      }
      
      public function get §9<§() : Boolean
      {
         return this.§?#w§ != 0;
      }
      
      public function §'#B§() : Boolean
      {
         return this.§`M§;
      }
      
      public function §0!X§(param1:Boolean) : void
      {
         this.§`M§ = param1;
      }
      
      public function §4F§(param1:§;"n§) : void
      {
         this.mLevelManager = param1;
      }
      
      protected function §20§(param1:Event) : void
      {
         dispatchEvent(new §]#@§(§]#@§.§%!+§));
      }
      
      public function § $%§() : void
      {
         this.§0K§.§<#>§(0);
         if(!§<$2§.§`"H§.active)
         {
            this.§0K§.§2<§();
         }
      }
      
      public function §;$!§() : void
      {
         this.§4&§();
         this.§0K§.§;$!§(this.§4"e§());
         this.§2"F§();
      }
      
      public function §<#>§(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         if(!§9"0§ && this.§0K§.§8b§(param1))
         {
            _loc2_ = this.§0K§.§%$$§(param1);
            _loc3_ = (AngryBirdsBase.singleton.dataModel as §4!Q§).serverSynchronizedTime.synchronizedTimeStamp;
            if(_loc2_.endTime - _loc3_ <= 0)
            {
               this.§0K§.§<#>§(param1);
            }
            else
            {
               this.§0K§.§#"§(param1);
            }
         }
         else if(param1 == 0)
         {
            if(!§9"0§ && this.§;#Q§ != null && this.§0K§.§8b§(this.§;#Q§.id))
            {
               this.§0K§.§#"§(this.§;#Q§.id);
            }
            else
            {
               this.§0K§.§<#>§(0);
            }
            if(!§<$2§.§`"H§.active)
            {
               this.§0K§.§2<§();
            }
         }
         else
         {
            this.§0K§.§<#>§(param1);
         }
         §9"0§ = false;
      }
      
      public function §6W§(param1:int) : void
      {
         this.§0K§.§6W§(param1);
      }
      
      public function §`!u§(param1:int) : void
      {
         this.§0K§.§'!A§(param1);
      }
      
      public function §2!j§(param1:Boolean) : void
      {
         if(this.§?$$§ == null || param1)
         {
            this.§0K§.§2!j§();
         }
         else
         {
            dispatchEvent(new §]#@§(§]#@§.§]<§,this.§>#[§));
         }
      }
      
      public function §2"F§() : void
      {
         this.§0K§.§&!K§(this.brandedTournamentAssetId,this.§2#5§.levels,this.mLevelManager);
      }
      
      public function §,$$§() : void
      {
         this.§0K§.§@M§();
      }
      
      protected function §-!C§(param1:§]#@§) : void
      {
         if(param1.data)
         {
            if(this.§2#5§ && param1.data.levelScores)
            {
               this.§2#5§.levelScores = param1.data.levelScores;
               (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).§8#l§(this.§2#5§.levelScores);
            }
         }
         dispatchEvent(new §]#@§(§]#@§.§4#p§));
         this.§8F§(§]#@§.§4#p§);
      }
      
      protected function § #?§(param1:§]#@§) : void
      {
         if(param1.data != null && (!this.§@U§ || this.§@U§.toString() != param1.data.toString()))
         {
            this.§@U§ = param1.data;
            if(param1.data.players)
            {
               this.§%#n§ = param1.data;
            }
         }
         dispatchEvent(new §]#@§(§]#@§.§3"0§));
      }
      
      protected function §`%§(param1:§]#@§) : void
      {
         if(this.§@U§ && this.§%#n§)
         {
            dispatchEvent(new §]#@§(§]#@§.§3!`§));
         }
         else if(param1.data != null && (!this.§%#n§ || this.§%#n§.toString() != param1.data.toString()))
         {
            this.§%#n§ = param1.data;
            dispatchEvent(new §]#@§(§]#@§.§3!`§));
         }
      }
      
      public function §%$&§(param1:String) : Number
      {
         return this.§5"g§[param1];
      }
      
      private function §<!8§(param1:String) : Boolean
      {
         var _loc2_:Number = (AngryBirdsBase.singleton.dataModel as §4!Q§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = (_loc2_ - this.§5"g§[param1]) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ < §7#%§)
         {
            return true;
         }
         if(!isNaN(this.§ D§))
         {
            _loc3_ = (this.§ D§ - _loc2_) / 1000;
            if(_loc3_ < §7#%§)
            {
               return false;
            }
         }
         this.§5"g§[param1] = _loc2_;
         return false;
      }
      
      protected function §^"&§(param1:§]#@§) : void
      {
         if(param1.data)
         {
            this.§2#5§ = param1.data;
         }
         dispatchEvent(new §]#@§(§]#@§.§,!N§,param1.data));
      }
      
      private function §"![§(param1:§]#@§) : void
      {
         var _loc2_:§1#w§ = §1#w§(param1.data);
         if(_loc2_)
         {
            dispatchEvent(new §]#@§(§]#@§.§["X§,{
               "packLoader":_loc2_,
               "cb":this.§@#g§
            }));
         }
         else
         {
            dispatchEvent(new §]#@§(§]#@§.§["X§,{"bluePrintPackLoader":new §0"E§()}));
            this.§=">§();
         }
         this.§8F§(§]#@§.§["X§);
      }
      
      private function §@#g§() : void
      {
         this.§=">§();
      }
      
      public function §=">§(param1:int = 0) : void
      {
         if(this.§2#5§)
         {
            this.injectData();
            if(!this.§2#5§)
            {
               dispatchEvent(new §]#@§(§]#@§.§^#y§));
            }
         }
         dispatchEvent(new §]#@§(§]#@§.§^!q§));
      }
      
      public function §@!W§() : void
      {
         var _loc1_:* = null;
         this.§2#5§ = null;
         this.§@U§ = null;
         this.§%#n§ = null;
         this.§9G§ = null;
         this.§6H§ = null;
         for(_loc1_ in this.§5"g§)
         {
            this.§5"g§[_loc1_] = 0;
         }
         if(this.§[$;§)
         {
            this.§[$;§.§?#z§();
         }
         this.§@$-§ = new Array(5);
      }
      
      public function §4"]§() : void
      {
         this.§@U§ = null;
      }
      
      protected function §!#<§(param1:§]#@§) : void
      {
         if(param1.data)
         {
            this.§6H§ = param1.data;
            this.§6H§ = §&%§.§-x§(this.§6H§,"players");
         }
         dispatchEvent(new §]#@§(§]#@§.§,X§));
         this.§8F§(§]#@§.§,X§);
      }
      
      protected function §0A§(param1:§]#@§) : void
      {
         if(param1.data)
         {
            this.§>#[§ = param1.data;
            dispatchEvent(new §]#@§(§]#@§.§]<§,this.§>#[§));
         }
      }
      
      protected function §!"d§(param1:§]#@§) : void
      {
         this.§>#[§ = null;
         this.§<#>§(0);
         dispatchEvent(new §]#@§(§]#@§.§6$7§));
      }
      
      public function get §]#8§() : Object
      {
         return this.§?,§;
      }
      
      public function §-!3§(param1:Object) : void
      {
         var _loc2_:§=n§ = null;
         if(this.§?,§ != param1)
         {
            this.§?,§ = param1;
            _loc2_ = §4!Q§(AngryBirdsBase.singleton.dataModel).§="N§.§&i§[0];
            this.§>"v§ = new §2"O§(_loc2_,_loc2_.getPricePoint(0));
            this.§>"v§.addEventListener(§4?§.§?w§,this.§,b§);
         }
      }
      
      private function §,b§(param1:§4?§) : void
      {
         if(this.§>"v§)
         {
            this.§>"v§.removeEventListener(§4?§.§?w§,this.§,b§);
         }
         if(this.§?,§)
         {
            delete this.§?,§.unlockTime;
         }
         this.§?,§ = null;
      }
      
      public function §@X§(param1:String) : Object
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
      
      private function §^E§() : void
      {
         this.§+W§ = new §[!j§();
         this.§+W§[§1!?§] = this.§3!m§(§1!?§);
         this.§+W§[§6!C§] = this.§3!m§(§6!C§,null,"","",false,"",§+"z§);
      }
      
      private function §3!m§(param1:String, param2:Class = null, param3:String = "", param4:String = "", param5:Boolean = false, param6:String = "", param7:Class = null, param8:Class = null, param9:Class = null, param10:Class = null, param11:Class = null, param12:Class = null, param13:Class = null) : §]_§
      {
         var _loc14_:§]_§;
         (_loc14_ = new §]_§(param1,param2,param3,param4,param5,param6)).§@p§(§;!H§.STATE_NAME,param7 || §;!H§);
         _loc14_.§@p§(§+">§.STATE_NAME,param8 || §+">§);
         _loc14_.§@p§(§7#+§.STATE_NAME,param9 || §7#+§);
         _loc14_.§@p§(StateLastWeeksTournamentResults.STATE_NAME,param10 || StateLastWeeksTournamentResults);
         _loc14_.§@p§(§`o§.STATE_NAME,param11 || §`o§);
         _loc14_.§@p§(§#D§.STATE_NAME,param12 || §#D§);
         _loc14_.§@p§(§7#t§.STATE_NAME,param13 || §7#t§);
         return _loc14_;
      }
      
      private function onEnterFrame(param1:§2"?§) : void
      {
         var _loc2_:int = 0;
         if(AngryBirdsBase.singleton.§'!&§() == §0!S§.STATE_NAME)
         {
            return;
         }
         if(!this.§+#Q§ && §%!'§)
         {
            _loc2_ = this.§'"^§();
            if(_loc2_ == 0)
            {
               this.§+#Q§ = true;
               this.§;"1§();
            }
            else if(_loc2_ > 0 && this.§=#@§)
            {
               this.§=#@§ = false;
            }
            if(_loc2_ <= 5 && _loc2_ > 0)
            {
               if(!this.§@$-§[_loc2_ - 1])
               {
                  if(§7n§.§-$<§.§'!&§() == §;!H§.STATE_NAME || §7n§.§-$<§.§'!&§() == §95§.STATE_NAME)
                  {
                     §3Z§.playSound("ui_countdown_" + _loc2_,§3Z§.§[!F§);
                  }
                  this.§@$-§[_loc2_ - 1] = true;
               }
            }
         }
      }
      
      private function §[#P§() : void
      {
         if(!this.§[F§)
         {
            this.§[F§ = new Timer(30000);
            this.§[F§.addEventListener(TimerEvent.TIMER,function():void
            {
               §[F§.stop();
               §[F§ = null;
            });
            this.§[F§.start();
            AngryBirdsBase.singleton.popupManager.§`J§();
            var popup:TournamentEndedPopup = new TournamentEndedPopup(§#"l§.NORMAL,§]"Y§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(popup);
            return;
         }
      }
      
      protected function §0j§() : void
      {
         var _loc1_:TournamentNotFoundPopup = new TournamentNotFoundPopup(§#"l§.NORMAL,§]"Y§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function injectData() : void
      {
         var _loc1_:Object = null;
         if(!§7n§.§-$<§.hasEventListener(§2"?§.§?#Y§))
         {
            §7n§.§-$<§.addEventListener(§2"?§.§?#Y§,this.onEnterFrame);
         }
         this.§+#Q§ = false;
         this.§-!I§ = false;
         if(this.§2#5§ && this.§2#5§.levelScores)
         {
            _loc1_ = this.§2#5§.levelScores;
         }
         this.§2#5§.levelScores = _loc1_;
         if(this.§2#5§)
         {
            this.§ D§ = this.§;#Q§.endTime;
         }
         if(this.§;#Q§.brandedTournament != null)
         {
            this.§?#!§ = this.§+W§[§6!C§];
            this.§?#!§.§=k§ = this.§;#Q§.brandedTournament;
            this.§?#!§.§3"j§ = this.§;#Q§.tn;
            this.§?#!§.§3V§ = this.brandedTournamentAssetId;
            this.§?#!§.§@!;§ = §9#k§ + this.brandedTournamentAssetId;
            if(this.§?#!§.§'X§)
            {
               this.§?#!§.background = §!$#§ + this.brandedTournamentAssetId;
            }
            this.§?#!§.§5!5§ = this.brandedTournamentAssetId;
         }
         else
         {
            this.§?#!§ = this.§+W§[§1!?§];
         }
         if(AngryBirdsBase.singleton.§""'§)
         {
            this.§8$#§();
         }
      }
      
      private function §8$#§() : void
      {
         var _loc2_:§7Y§ = null;
         var _loc1_:Boolean = false;
         if(this.§=k§ != "" && this.§9#x§ != this.§=k§ && this.§?#!§)
         {
            this.§?#!§.§`"n§();
            this.§9#x§ = this.§=k§;
            _loc1_ = true;
         }
         else if(this.§9#x§ != §1!?§ && this.§=k§ == "")
         {
            this.§?#!§.§`"n§();
            this.§9#x§ = §1!?§;
            _loc1_ = true;
         }
         if(_loc1_)
         {
            _loc2_ = §7n§.§-$<§.§-j§();
            if(_loc2_ != null)
            {
               if(_loc2_.§!I§ == §;!H§.STATE_NAME)
               {
                  AngryBirdsBase.singleton.§1!L§(§;!H§.STATE_NAME);
               }
            }
         }
      }
      
      public function §>"d§(param1:String) : §]_§
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§+W§)
         {
            if(_loc2_ == param1.toUpperCase())
            {
               return this.§+W§[_loc2_];
            }
         }
         return null;
      }
      
      public function get §;#Q§() : Object
      {
         if(this.§2#5§)
         {
            return this.§2#5§;
         }
         return null;
      }
      
      public function §'"H§() : String
      {
         if(this.§;#Q§)
         {
            return "tournamentId=" + this.§2#5§.id;
         }
         return "tournamentId=-1";
      }
      
      public function §4"e§() : int
      {
         if(this.§;#Q§)
         {
            return this.§2#5§.id;
         }
         return -1;
      }
      
      public function §;!q§() : Boolean
      {
         var _loc1_:Number = NaN;
         if(this.§2#5§)
         {
            if(this.§2#5§.overlappingTournamentsEnabled && this.§2#5§.overlappingTournamentsStart && this.§2#5§.overlappingTournamentsEnd)
            {
               _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
               if(_loc1_ >= this.§2#5§.overlappingTournamentsEnd || _loc1_ < this.§2#5§.overlappingTournamentsStart)
               {
                  return false;
               }
               return true;
            }
         }
         return false;
      }
      
      public function get §["r§() : Object
      {
         return this.§;#Q§.enteredDraw;
      }
      
      public function get tournamentRules() : §]_§
      {
         return this.§?#!§;
      }
      
      public function get §=k§() : String
      {
         if(this.§?#!§)
         {
            return this.§?#!§.§=k§;
         }
         return "";
      }
      
      public function get brandedTournamentAssetId() : String
      {
         if(this.§;#Q§ != null && this.§;#Q§.brandedTournamentAssetId != null)
         {
            if((this.§;#Q§.brandedTournamentAssetId as String).toUpperCase() == "HALLOWEEN_2013")
            {
               return §'##§.§ !?§;
            }
            if((this.§;#Q§.brandedTournamentAssetId as String).toUpperCase().indexOf(§@b§) != -1)
            {
               return §@b§;
            }
            return (this.§;#Q§.brandedTournamentAssetId as String).toUpperCase();
         }
         return "";
      }
      
      public function get §3"j§() : String
      {
         if(this.§?#!§ && this.§?#!§.§3"j§)
         {
            return this.§?#!§.§3"j§;
         }
         return §%"F§;
      }
      
      public function get §1"#§() : String
      {
         if(this.§;#Q§ != null && this.§2#5§.nextTournamentBrand != null)
         {
            return this.§2#5§.nextTournamentBrand;
         }
         return "";
      }
      
      public function get §4D§() : Object
      {
         return this.§6H§;
      }
      
      public function get §?$$§() : Object
      {
         return this.§>#[§;
      }
      
      public function get §[#_§() : Object
      {
         return this.§%#n§;
      }
      
      public function get lastResult() : Object
      {
         if(this.§@U§ && this.§@U§.prizeCounts && this.§@U§.players)
         {
            return this.§@U§;
         }
         return null;
      }
      
      public function get players() : Array
      {
         if(this.§4D§)
         {
            return this.§4D§.players;
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
      
      public function §,"W§(param1:String, param2:Boolean) : void
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
         if(this.§;#Q§)
         {
            return this.§;#Q§.levels;
         }
         return [];
      }
      
      public function get levelScores() : Array
      {
         if(this.§;#Q§)
         {
            return this.§;#Q§.levelScores;
         }
         return [];
      }
      
      public function get §3#2§() : Array
      {
         if(this.§[#_§)
         {
            if(this.§[#_§.prizeCounts)
            {
               return this.§[#_§.prizeCounts;
            }
         }
         return [1000,500,100];
      }
      
      public function get §=D§() : Array
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
         if(this.§[#_§)
         {
            return this.§[#_§.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.§[#_§)
         {
            return this.§[#_§.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.§[#_§)
         {
            return this.§[#_§.goldTrophies;
         }
         return 0;
      }
      
      public function §'"^§() : int
      {
         if(isNaN(this.§ D§))
         {
            return 0;
         }
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§ D§ - _loc1_) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      public function §8!i§(param1:String) : String
      {
         var _loc2_:int = this.levelIDs.indexOf(param1);
         var _loc3_:String = this.levelIDs[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.levelIDs.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §>Q§(param1:String) : String
      {
         var _loc2_:int = this.levelIDs.indexOf(param1);
         var _loc3_:String = this.levelIDs[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.levelIDs.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §6!D§(param1:String) : int
      {
         return this.levelIDs.indexOf(param1) + 1;
      }
      
      public function §;p§(param1:String) : String
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
      
      public function §]!,§() : Array
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
      
      public function §?! §() : Array
      {
         return §;"x§.§%#T§(this.§'"^§());
      }
      
      public function §@!e§(param1:Number) : Array
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
      
      public function §@!L§() : Array
      {
         var _loc1_:int = 0;
         if(this.§2#5§ && this.§2#5§.overlappingTournamentsEnd)
         {
            _loc1_ = (this.§2#5§.overlappingTournamentsEnd - dataModel.serverSynchronizedTime.synchronizedTimeStamp) / 1000;
            return §;"x§.§%#T§(Math.max(0,_loc1_));
         }
         return ["0s","0xFFFFFF"];
      }
      
      public function §!#F§() : int
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
         return §=#&§;
      }
      
      public function get §2!B§() : Boolean
      {
         return this.§=#@§;
      }
      
      public function set §2!B§(param1:Boolean) : void
      {
         this.§=#@§ = param1;
      }
      
      public function §`"M§() : void
      {
         if(this.§+#Q§ && !this.§-!I§)
         {
            this.§;"1§();
         }
      }
      
      private function §;"1§() : void
      {
         if(this.§>"L§())
         {
            return;
         }
         var _loc1_:String = AngryBirdsBase.singleton.§'!&§();
         if(_loc1_ == StateTournamentResults.STATE_NAME)
         {
            return;
         }
         if(AngryBirdsBase.singleton.popupManager.getOpenPopupById(TournamentEndedPopup.ID))
         {
            return;
         }
         §7"L§.§`"H§.§?Z§();
         if(this.§;!q§())
         {
            if(_loc1_ == §7#+§.STATE_NAME)
            {
               this.§[#P§();
            }
            else if(_loc1_ == §;!H§.STATE_NAME || _loc1_ == §+"z§.STATE_NAME)
            {
               if(!(AngryBirdsBase.singleton.§-j§() as §;!H§).§6#J§())
               {
                  this.§[#P§();
               }
            }
         }
         else
         {
            dispatchEvent(new §]#@§(§]#@§.§,Q§));
            §;!H§.§]`§();
            if(AngryBirdsBase.singleton.§'!&§().indexOf("Tournament") != -1)
            {
               this.§[#P§();
            }
         }
         this.§-!I§ = true;
      }
      
      public function get info() : String
      {
         if(this.§2#5§ && this.§2#5§.info)
         {
            return this.§2#5§.info;
         }
         return "";
      }
      
      public function §@#J§(param1:Array) : void
      {
         this.§;#U§ = param1;
      }
      
      public function §>Z§() : Array
      {
         return this.§;#U§;
      }
      
      public function get §%"I§() : Boolean
      {
         return this.lastResult;
      }
      
      public function §?4§(param1:String) : §^"]§
      {
         if(!this.§[$;§)
         {
            this.§[$;§ = new §6$1§();
         }
         return this.§[$;§.§if §(param1);
      }
      
      public function §-$&§(param1:String) : void
      {
         if(this.§[$;§)
         {
            this.§[$;§.§'"b§(param1);
         }
      }
      
      public function §;!2§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         if(this.§2#5§)
         {
            for each(_loc2_ in this.§2#5§.levels)
            {
               if(_loc2_.levelId == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §?!L§() : void
      {
         if(this.§[$;§)
         {
            this.§[$;§.§8#-§();
         }
      }
      
      public function get §8"Q§() : Object
      {
         return this.§1!N§;
      }
      
      public function set §8"Q§(param1:Object) : void
      {
         this.§1!N§ = param1;
      }
      
      public function get §2$ §() : Object
      {
         return this.§]"G§;
      }
      
      public function set §2$ §(param1:Object) : void
      {
         this.§]"G§ = param1;
      }
      
      public function §false§() : Boolean
      {
         return this.§2$ § && this.§2$ §.zombiesEnabled;
      }
      
      public function §<Z§() : Boolean
      {
         return this.§2$ § && this.§2$ §.eddieTheBirdEnabled;
      }
      
      private function §4&§() : void
      {
         this.§!X§ = new Object();
         this.§!X§[§]#@§.§4#p§] = true;
         this.§!X§[§]#@§.§,X§] = true;
         this.§!X§[§]#@§.§["X§] = true;
      }
      
      private function §8F§(param1:String) : void
      {
         if(!this.§!X§ || !this.§!X§[param1])
         {
            return;
         }
         this.§!X§[param1] = false;
         if(!this.§>"L§())
         {
            dispatchEvent(new §]#@§(§]#@§.§1!^§));
         }
      }
      
      private function §>"L§() : Boolean
      {
         var _loc1_:* = null;
         if(!this.§!X§)
         {
            return false;
         }
         for(_loc1_ in this.§!X§)
         {
            if(this.§!X§[_loc1_])
            {
               return true;
            }
         }
         return false;
      }
      
      public function § t§() : Array
      {
         if(this.§2#5§)
         {
            return this.§2#5§.levelScores;
         }
         return null;
      }
   }
}
