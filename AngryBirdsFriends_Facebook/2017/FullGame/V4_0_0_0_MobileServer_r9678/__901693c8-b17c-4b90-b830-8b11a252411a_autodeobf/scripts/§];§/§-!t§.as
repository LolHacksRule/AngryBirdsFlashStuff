package §];§
{
   import § "$§.§'"R§;
   import § o§.§%"!§;
   import § o§.TournamentEndedPopup;
   import § o§.TournamentNotFoundPopup;
   import §!@§.§&$#§;
   import §&"J§.§4"W§;
   import §&"J§.§<!u§;
   import §&"J§.§`]§;
   import §+"E§.§9"z§;
   import §1#W§.§!#&§;
   import §3#G§.§,";§;
   import §5"?§.§4"-§;
   import §5d§.§6"p§;
   import §5d§.§<"F§;
   import §6"r§.§!#A§;
   import §6V§.§&"g§;
   import §7",§.§2#i§;
   import §8"X§.§#p§;
   import §8"X§.§1!a§;
   import §8"X§.§6#K§;
   import §8"X§.§>!k§;
   import §8"X§.StateLastWeeksTournamentResults;
   import §8"X§.§^!E§;
   import §8"X§.§`$>§;
   import §94§.§'!!§;
   import §94§.§>!&§;
   import §<#m§.§^#o§;
   import §<o§.§7"P§;
   import §<u§.§ "a§;
   import §>!I§.§##s§;
   import §>!I§.§%#'§;
   import §>"c§.§"#k§;
   import §>"c§.§'$%§;
   import §>"c§.§+!R§;
   import §>"c§.§+!_§;
   import §>"c§.§-"&§;
   import §>"c§.§;$"§;
   import §>"c§.§@!1§;
   import §>@§.§'!L§;
   import §@#§.§9##§;
   import §@#§.§^#Q§;
   import §[0§.§;$-§;
   import §^#]§.§@!g§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §-!t§ extends EventDispatcher
   {
      
      public static const §8"b§:String = "STANDARD";
      
      public static const §%C§:String = "BRANDED";
      
      public static const §&#'§:String = "Weekly Tournament";
      
      public static const §%8§:String = "HALLOWEEN_2014";
      
      public static const §5#O§:String = "XMAS_2014";
      
      public static const §<9§:String = "BACKGROUND_FB_";
      
      public static const §=#S§:String = "tournament_";
      
      public static const §7$#§:String = "InterruptedQualifierBundle";
      
      public static const §"y§:int = 100000;
      
      private static var §@!k§:int = 0;
      
      private static var §%#b§:§-!t§;
      
      private static const §@!h§:String = "Weekly Tournament";
      
      public static var §-i§:Boolean;
      
      public static var §<N§:int = 2 * 60;
      
      public static const §`"7§:String = "CachePlayerCurrentTournament";
       
      
      private var §6!5§:Boolean = false;
      
      private var §-#Z§:Boolean = false;
      
      private var §9U§:Object;
      
      private var §@S§:Object;
      
      private var §3#[§:Object;
      
      private var §%#l§:Object;
      
      private var §-"z§:Object;
      
      private var §[#R§:§;!r§;
      
      private var §97§:§&"g§;
      
      private var §&#b§:String = "STANDARD";
      
      private var §7"5§:Number;
      
      private var §2"3§:Object;
      
      private var §+"7§:§&$#§;
      
      private var §@!V§:Boolean = false;
      
      private var §3f§:§,";§;
      
      private var §`!<§:Array;
      
      private var §="f§:Dictionary;
      
      private var §[#F§:§6"p§;
      
      private var §9"'§:Array;
      
      private var mLevelManager:§^#Q§;
      
      public var §>#8§:int = 0;
      
      private var §;"#§:Boolean = false;
      
      private var §!!"§:Object;
      
      public function §-!t§()
      {
         this.§="f§ = new Dictionary();
         super();
         this.§"z§();
         this.§9"'§ = new Array(5);
         this.§3f§ = new §,";§();
         this.§3f§.addEventListener(§'"R§.§",§,this.§@!!§);
         this.§3f§.addEventListener(§'"R§.§7$9§,this.§=p§);
         this.§3f§.addEventListener(§'"R§.§<!L§,this.§%#y§);
         this.§3f§.addEventListener(§'"R§.§3!C§,this.§6"$§);
         this.§3f§.addEventListener(§'"R§.§4&§,this.§^!p§);
         this.§3f§.addEventListener(§'"R§.§7#O§,this.§;O§);
         this.§3f§.addEventListener(§'"R§.§<!7§,this.§<p§);
         this.§`!<§ = new Array();
         this.§="f§[§`"7§] = §<N§;
      }
      
      public static function get § "D§() : §-!t§
      {
         if(§%#b§ == null)
         {
            §%#b§ = new §-!t§();
         }
         return §%#b§;
      }
      
      public static function §9#w§(param1:Number) : String
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
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      protected static function get userProgress() : §4"-§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §4"-§;
      }
      
      public static function §+" §() : void
      {
         §-i§ = true;
      }
      
      public function set §1c§(param1:int) : void
      {
         this.§>#8§ = param1;
      }
      
      public function get §1c§() : int
      {
         return this.§>#8§;
      }
      
      public function get §,"4§() : Boolean
      {
         return this.§>#8§ != 0;
      }
      
      public function §0H§() : Boolean
      {
         return this.§;"#§;
      }
      
      public function §1#6§(param1:Boolean) : void
      {
         this.§;"#§ = param1;
      }
      
      public function §5?§(param1:§^#Q§) : void
      {
         this.mLevelManager = param1;
      }
      
      protected function §<p§(param1:Event) : void
      {
         dispatchEvent(new §'"R§(§'"R§.§<!7§));
      }
      
      public function §@"C§() : void
      {
         if(§-i§ || this.§;"_§ == null || this.§;"_§ && this.§]!]§() <= 60 * 5)
         {
            this.§3f§.§2$8§();
            §-i§ = false;
         }
         else
         {
            this.§3f§.§![§();
         }
         if(!§;$-§.§ "D§.active)
         {
            this.§3f§.§2B§();
         }
      }
      
      public function §+!^§() : void
      {
         this.§3f§.§^"r§();
      }
      
      protected function §^!p§(param1:§'"R§) : void
      {
         if(param1.data)
         {
            if(this.§9U§ && param1.data.levelScores)
            {
               this.§9U§.levelScores = param1.data.levelScores;
               (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§#,§(this.§9U§.levelScores);
               dispatchEvent(new §'"R§(§'"R§.§4&§));
            }
         }
      }
      
      protected function §6"$§(param1:§'"R§) : void
      {
         if(param1.data != null && (!this.§@S§ || this.§@S§.toString() != param1.data.toString()))
         {
            this.§@S§ = param1.data;
            if(param1.data.players)
            {
               this.§3#[§ = param1.data;
            }
         }
         dispatchEvent(new §'"R§(§'"R§.§`$6§));
      }
      
      protected function §%#y§(param1:§'"R§) : void
      {
         if(this.§@S§ && this.§3#[§)
         {
            dispatchEvent(new §'"R§(§'"R§.§%!^§));
         }
         else if(param1.data != null && (!this.§3#[§ || this.§3#[§.toString() != param1.data.toString()))
         {
            this.§3#[§ = param1.data;
            dispatchEvent(new §'"R§(§'"R§.§%!^§));
         }
      }
      
      public function §<!j§(param1:String) : Number
      {
         return this.§="f§[param1];
      }
      
      private function §6!@§(param1:String) : Boolean
      {
         var _loc2_:Number = (AngryBirdsBase.singleton.dataModel as §`]§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc3_:int = (_loc2_ - this.§="f§[param1]) / 1000;
         _loc3_ = Math.max(0,_loc3_);
         if(_loc3_ < §<N§)
         {
            return true;
         }
         this.§="f§[param1] = _loc2_;
         return false;
      }
      
      protected function §@!!§(param1:§'"R§) : void
      {
         var _loc2_:§9##§ = null;
         var _loc3_:Object = null;
         if(param1.data)
         {
            this.§9U§ = param1.data;
            this.§3f§.§=#&§(this.brandedTournamentAssetId,this.§9U§.levels,this.mLevelManager);
            if(this.mLevelManager)
            {
               _loc2_ = this.mLevelManager.getEpisodeByName(§'!!§.§1!E§);
               for each(_loc3_ in this.§9U§.levels)
               {
                  _loc2_.§44§(_loc3_.levelId);
               }
            }
         }
         dispatchEvent(new §'"R§(§'"R§.§",§));
      }
      
      private function §=p§(param1:§'"R§) : void
      {
         var _loc2_:§##s§ = §##s§(param1.data);
         if(_loc2_)
         {
            dispatchEvent(new §'"R§(§'"R§.§7$9§,{
               "packLoader":_loc2_,
               "cb":this.§]#A§
            }));
         }
         else
         {
            dispatchEvent(new §'"R§(§'"R§.§7$9§,{"bluePrintPackLoader":new §%#'§()}));
            this.§?#3§();
         }
      }
      
      private function §]#A§() : void
      {
         this.§?#3§();
      }
      
      private function §?#3§() : void
      {
         if(this.§9U§)
         {
            this.injectData();
            if(!this.§9U§)
            {
               dispatchEvent(new §'"R§(§'"R§.§'k§));
            }
         }
         this.§3f§.§3c§(false);
         dispatchEvent(new §'"R§(§'"R§.§6#+§));
      }
      
      public function §9#[§() : void
      {
         var _loc1_:* = null;
         this.§9U§ = null;
         this.§@S§ = null;
         this.§3#[§ = null;
         this.§%#l§ = null;
         this.§-"z§ = null;
         for(_loc1_ in this.§="f§)
         {
            this.§="f§[_loc1_] = 0;
         }
         if(this.§[#F§)
         {
            this.§[#F§.§'e§();
         }
         this.§9"'§ = new Array(5);
      }
      
      public function §1"V§() : void
      {
         this.§@S§ = null;
      }
      
      protected function §;O§(param1:§'"R§) : void
      {
         if(param1.data)
         {
            this.§-"z§ = param1.data;
            this.§-"z§ = §<!u§.§9M§(this.§-"z§,"players");
            dispatchEvent(new §'"R§(§'"R§.§7#O§));
         }
      }
      
      public function get §%#P§() : Object
      {
         return this.§2"3§;
      }
      
      public function §9"<§(param1:Object) : void
      {
         var _loc2_:§2#i§ = null;
         if(this.§2"3§ != param1)
         {
            this.§2"3§ = param1;
            _loc2_ = §`]§(AngryBirdsBase.singleton.dataModel).§#"r§.§ #-§[0];
            this.§+"7§ = new §&$#§(_loc2_,_loc2_.getPricePoint(0));
            this.§+"7§.addEventListener(§9"z§.§9$>§,this.§1=§);
         }
      }
      
      private function §1=§(param1:§9"z§) : void
      {
         if(this.§+"7§)
         {
            this.§+"7§.removeEventListener(§9"z§.§9$>§,this.§1=§);
         }
         if(this.§2"3§)
         {
            delete this.§2"3§.unlockTime;
         }
         this.§2"3§ = null;
      }
      
      public function §-!]§(param1:String) : Object
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
      
      private function §"z§() : void
      {
         this.§97§ = new §&"g§();
         this.§97§[§8"b§] = this.§+#h§(§8"b§);
         this.§97§[§%C§] = this.§+#h§(§%C§,null,"","",false,"",§@!1§,§+!R§,§+!_§,§'$%§,§-"&§,§;$"§,§"#k§);
      }
      
      private function §+#h§(param1:String, param2:Class = null, param3:String = "", param4:String = "", param5:Boolean = false, param6:String = "", param7:Class = null, param8:Class = null, param9:Class = null, param10:Class = null, param11:Class = null, param12:Class = null, param13:Class = null) : §;!r§
      {
         var _loc14_:§;!r§;
         (_loc14_ = new §;!r§(param1,param2,param3,param4,param5,param6)).§7"-§(§^!E§.STATE_NAME,param7 || §^!E§);
         _loc14_.§7"-§(§`$>§.STATE_NAME,param8 || §`$>§);
         _loc14_.§7"-§(§6#K§.STATE_NAME,param9 || §6#K§);
         _loc14_.§7"-§(StateLastWeeksTournamentResults.STATE_NAME,param10 || StateLastWeeksTournamentResults);
         _loc14_.§7"-§(§#p§.STATE_NAME,param11 || §#p§);
         _loc14_.§7"-§(§>!k§.STATE_NAME,param12 || §>!k§);
         _loc14_.§7"-§(§1!a§.STATE_NAME,param13 || §1!a§);
         return _loc14_;
      }
      
      private function onEnterFrame(param1:§7"P§) : void
      {
         var _loc2_:int = 0;
         if(!this.§6!5§)
         {
            _loc2_ = this.§]!]§();
            if(_loc2_ == 0)
            {
               this.§6!5§ = true;
               this.§%"e§();
            }
            else if(_loc2_ > 0 && this.§@!V§)
            {
               this.§@!V§ = false;
            }
            if(_loc2_ <= 5 && _loc2_ > 0)
            {
               if(!this.§9"'§[_loc2_ - 1])
               {
                  if(§!#A§.§>q§.§="!§() == §^!E§.STATE_NAME || §!#A§.§>q§.§="!§() == §>!&§.STATE_NAME)
                  {
                     §!#&§.playSound("ui_countdown_" + _loc2_,§!#&§.§6#h§);
                  }
                  this.§9"'§[_loc2_ - 1] = true;
               }
            }
         }
      }
      
      private function §;$;§() : void
      {
         AngryBirdsBase.singleton.popupManager.§2#7§();
         var _loc1_:TournamentEndedPopup = new TournamentEndedPopup(§%"!§.NORMAL,§^#o§.TOP);
         _loc1_.addEventListener(§'"R§.§>k§,this.§,"o§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §,"o§(param1:Event) : void
      {
         (param1.currentTarget as TournamentEndedPopup).removeEventListener(§'"R§.§>k§,this.§,"o§);
         dispatchEvent(new §'"R§(§'"R§.§>k§));
      }
      
      protected function §+!i§() : void
      {
         var _loc1_:TournamentNotFoundPopup = new TournamentNotFoundPopup(§%"!§.NORMAL,§^#o§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function injectData() : void
      {
         var _loc1_:Object = null;
         if(!§!#A§.§>q§.hasEventListener(§7"P§.§,"!§))
         {
            §!#A§.§>q§.addEventListener(§7"P§.§,"!§,this.onEnterFrame);
         }
         this.§6!5§ = false;
         this.§-#Z§ = false;
         if(this.§9U§ && this.§9U§.levelScores)
         {
            _loc1_ = this.§9U§.levelScores;
         }
         this.§9U§.levelScores = _loc1_;
         if(this.§9U§)
         {
            this.§7"5§ = this.§;"_§.endTime;
         }
         if(this.§;"_§.brandedTournament != null)
         {
            this.§[#R§ = this.§97§[§%C§];
            this.§[#R§.§2"N§ = this.§;"_§.brandedTournament;
            this.§[#R§.§2Y§ = this.§;"_§.tn;
            this.§[#R§.§@!l§ = this.brandedTournamentAssetId;
            this.§[#R§.§,![§ = §=#S§ + this.brandedTournamentAssetId;
            if(this.§[#R§.§>]§)
            {
               this.§[#R§.background = §<9§ + this.brandedTournamentAssetId;
            }
            this.§[#R§.§2!N§ = this.brandedTournamentAssetId;
         }
         else
         {
            this.§[#R§ = this.§97§[§8"b§];
         }
         if(AngryBirdsBase.singleton.§-"-§)
         {
            this.§'!q§();
         }
      }
      
      private function §'!q§() : void
      {
         var _loc2_:§'!L§ = null;
         var _loc1_:Boolean = false;
         if(this.§2"N§ != "" && this.§&#b§ != this.§2"N§ && this.§[#R§)
         {
            this.§[#R§.§"!f§();
            this.§&#b§ = this.§2"N§;
            _loc1_ = true;
         }
         else if(this.§&#b§ != §8"b§ && this.§2"N§ == "")
         {
            this.§[#R§.§"!f§();
            this.§&#b§ = §8"b§;
            _loc1_ = true;
         }
         if(_loc1_)
         {
            _loc2_ = §!#A§.§>q§.§[##§();
            if(_loc2_ != null)
            {
               if(_loc2_.§;!p§ == §^!E§.STATE_NAME)
               {
                  AngryBirdsBase.singleton.§5"p§(§^!E§.STATE_NAME);
               }
            }
         }
      }
      
      public function §+"f§(param1:String) : §;!r§
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§97§)
         {
            if(_loc2_ == param1.toUpperCase())
            {
               return this.§97§[_loc2_];
            }
         }
         return null;
      }
      
      public function get §;"_§() : Object
      {
         if(this.§9U§)
         {
            return this.§9U§;
         }
         return null;
      }
      
      public function get §"##§() : Object
      {
         return this.§;"_§.enteredDraw;
      }
      
      public function get tournamentRules() : §;!r§
      {
         return this.§[#R§;
      }
      
      public function get §2"N§() : String
      {
         if(this.§[#R§)
         {
            return this.§[#R§.§2"N§;
         }
         return "";
      }
      
      public function get brandedTournamentAssetId() : String
      {
         if(this.§;"_§ != null && this.§;"_§.brandedTournamentAssetId != null)
         {
            if((this.§;"_§.brandedTournamentAssetId as String).toUpperCase() == "HALLOWEEN_2013")
            {
               return §-!t§.§%8§;
            }
            if((this.§;"_§.brandedTournamentAssetId as String).toUpperCase().indexOf(§5#O§) != -1)
            {
               return §5#O§;
            }
            return (this.§;"_§.brandedTournamentAssetId as String).toUpperCase();
         }
         return "";
      }
      
      public function get §2Y§() : String
      {
         if(this.§[#R§ && this.§[#R§.§2Y§)
         {
            return this.§[#R§.§2Y§;
         }
         return §&#'§;
      }
      
      public function get §<"q§() : String
      {
         if(this.§;"_§ != null && this.§9U§.nextTournamentBrand != null)
         {
            return this.§9U§.nextTournamentBrand;
         }
         return "";
      }
      
      public function get §&[§() : Object
      {
         return this.§-"z§;
      }
      
      public function get §>!j§() : Object
      {
         return this.§3#[§;
      }
      
      public function get lastResult() : Object
      {
         if(this.§@S§ && this.§@S§.prizeCounts && this.§@S§.players)
         {
            return this.§@S§;
         }
         return null;
      }
      
      public function get players() : Array
      {
         if(this.§&[§)
         {
            return this.§&[§.players;
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
               return this.§4!p§(_loc2_);
            }
         }
         return false;
      }
      
      public function §!$3§(param1:String, param2:Boolean) : void
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
               return this.§%"`§(_loc2_);
            }
         }
         return -1;
      }
      
      public function §%"`§(param1:Object) : int
      {
         var _loc2_:Number = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         return (param1.unlockTime - _loc2_) / 1000;
      }
      
      private function §4!p§(param1:Object) : Boolean
      {
         if(param1.unlockTime)
         {
            if(§4"W§.§ "D§.§-!-§(param1.levelId))
            {
               return true;
            }
            if(this.§%"`§(param1) > 0)
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
         if(this.§;"_§)
         {
            return this.§;"_§.levels;
         }
         return [];
      }
      
      public function get levelScores() : Array
      {
         if(this.§;"_§)
         {
            return this.§;"_§.levelScores;
         }
         return [];
      }
      
      public function get §;r§() : Array
      {
         if(this.§>!j§)
         {
            if(this.§>!j§.prizeCounts)
            {
               return this.§>!j§.prizeCounts;
            }
         }
         return [1000,500,100];
      }
      
      public function get § "[§() : Array
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
         if(this.§>!j§)
         {
            return this.§>!j§.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.§>!j§)
         {
            return this.§>!j§.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.§>!j§)
         {
            return this.§>!j§.goldTrophies;
         }
         return 0;
      }
      
      public function §]!]§() : int
      {
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§7"5§ - _loc1_) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      public function §4!y§(param1:String) : String
      {
         var _loc2_:int = this.levelIDs.indexOf(param1);
         var _loc3_:String = this.levelIDs[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.levelIDs.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §%#p§(param1:String) : String
      {
         var _loc2_:int = this.levelIDs.indexOf(param1);
         var _loc3_:String = this.levelIDs[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.levelIDs.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §9`§(param1:String) : int
      {
         return this.levelIDs.indexOf(param1) + 1;
      }
      
      public function §@2§(param1:String) : String
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
      
      public function §4!X§() : Array
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
      
      public function §7M§() : Array
      {
         return §@!g§.§%#m§(this.§]!]§());
      }
      
      public function §]N§(param1:Number) : Array
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
      
      public function §&$1§() : int
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
         return §"y§;
      }
      
      public function get §2"[§() : Boolean
      {
         return this.§@!V§;
      }
      
      public function set §2"[§(param1:Boolean) : void
      {
         this.§@!V§ = param1;
      }
      
      public function §+"p§() : void
      {
         if(this.§6!5§ && !this.§-#Z§)
         {
            this.§%"e§();
         }
      }
      
      private function §%"e§() : void
      {
         dispatchEvent(new §'"R§(§'"R§.§ !A§));
         § "a§.§ "D§.§>#T§();
         §^!E§.§@#t§();
         if(AngryBirdsBase.singleton.§="!§().indexOf("Tournament") != -1)
         {
            ++§@!k§;
            if(§@!k§ > 2)
            {
               this.§+!i§();
               §@!k§ = 0;
            }
            else
            {
               this.§;$;§();
            }
         }
         this.§-#Z§ = true;
      }
      
      public function get info() : String
      {
         if(this.§9U§ && this.§9U§.info)
         {
            return this.§9U§.info;
         }
         return "";
      }
      
      public function §3!i§() : void
      {
         this.§3f§.§2B§();
      }
      
      public function §@"-§(param1:Array) : void
      {
         this.§`!<§ = param1;
      }
      
      public function §`!=§() : Array
      {
         return this.§`!<§;
      }
      
      public function get §5$,§() : Boolean
      {
         return this.lastResult;
      }
      
      public function §+!V§(param1:String) : §<"F§
      {
         if(!this.§[#F§)
         {
            this.§[#F§ = new §6"p§();
         }
         return this.§[#F§.§[!=§(param1);
      }
      
      public function § "Z§(param1:String) : void
      {
         if(this.§[#F§)
         {
            this.§[#F§.§3#_§(param1);
         }
      }
      
      public function §5"I§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         if(this.§9U§)
         {
            for each(_loc2_ in this.§9U§.levels)
            {
               if(_loc2_.levelId == param1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §?I§() : void
      {
         if(this.§[#F§)
         {
            this.§[#F§.§@k§();
         }
      }
      
      public function get §5#n§() : Object
      {
         return this.§!!"§;
      }
      
      public function set §5#n§(param1:Object) : void
      {
         this.§!!"§ = param1;
      }
   }
}
