package §^!o§
{
   import §%!'§.§5!;§;
   import §&!"§.§`B§;
   import §5!G§.§&2§;
   import §6k§.§,C§;
   import §6k§.§-#§;
   import §6k§.§;!e§;
   import §6k§.§?1§;
   import §6k§.StateLastWeeksTournamentResults;
   import §6k§.§["K§;
   import §<";§.§'y§;
   import §=#§.§5!S§;
   import §^!U§.§2!M§;
   import §^!U§.§8!a§;
   import flash.events.Event;
   
   public class §=1§
   {
      
      public static const §8V§:String = "STANDARD";
      
      public static const §!!"§:int = 100000;
      
      private static var §0!d§:int = 0;
      
      private static var §`"$§:§=1§;
       
      
      private var §@!V§:Boolean = false;
      
      private var §=]§:Object;
      
      private var §,!?§:§]p§;
      
      private var §?">§:§5!;§;
      
      private var §%"'§:String = "STANDARD";
      
      private var §'">§:Number;
      
      public function §=1§()
      {
         super();
         this.§?j§();
      }
      
      public static function get §1[§() : §=1§
      {
         if(§`"$§ == null)
         {
            §`"$§ = new §=1§();
         }
         return §`"$§;
      }
      
      public static function §3!u§(param1:Number) : Array
      {
         var _loc2_:int = param1 / 60;
         var _loc3_:* = "";
         var _loc4_:uint = 11324655;
         var _loc5_:int = Math.round(_loc2_ / 1440);
         var _loc6_:int;
         if((_loc6_ = Math.round(_loc2_ / 60)) < 24)
         {
            _loc4_ = 16762174;
            if(_loc6_ < 2 && _loc2_ >= 60)
            {
               _loc3_ = _loc6_ + " Hour Left";
            }
            else if(_loc6_ >= 2)
            {
               _loc3_ = Math.max(0,_loc6_) + " Hours Left";
            }
            else if(param1 >= 60)
            {
               _loc3_ = _loc2_ + " " + (_loc2_ == 1 ? "Minute" : "Minutes") + " Left";
               _loc4_ = 16464956;
            }
            else
            {
               _loc3_ = param1 + " Seconds Left!";
               _loc4_ = 16464956;
            }
         }
         else if(_loc5_ == 1)
         {
            _loc3_ = _loc5_ + " Day Left";
         }
         else
         {
            _loc3_ = _loc5_ + " Days Left";
         }
         return [_loc3_,_loc4_];
      }
      
      private function §?j§() : void
      {
         var _loc1_:§]p§ = null;
         this.§?">§ = new §5!;§();
         _loc1_ = new §]p§(§8V§,null,"","",false);
         _loc1_.§6,§(§-#§.STATE_NAME,§-#§);
         _loc1_.§6,§(§["K§.STATE_NAME,§["K§);
         _loc1_.§6,§(§;!e§.STATE_NAME,§;!e§);
         _loc1_.§6,§(§?1§.STATE_NAME,§?1§);
         _loc1_.§6,§(§,C§.STATE_NAME,§,C§);
         _loc1_.§6,§(StateLastWeeksTournamentResults.STATE_NAME,StateLastWeeksTournamentResults);
         this.§?">§[_loc1_.§!">§] = _loc1_;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(!this.§@!V§)
         {
            if(this.§^G§() == 0)
            {
               this.§@!V§ = true;
               if(§,"I§.§&q§.§;!b§().indexOf("Tournament") != -1)
               {
                  ++§0!d§;
                  if(§0!d§ > 2)
                  {
                     §`B§.§0!7§();
                     §0!d§ = 0;
                  }
                  else
                  {
                     §`B§.§`!h§();
                  }
               }
            }
         }
      }
      
      public function injectData(param1:Object) : void
      {
         if(!AngryBirdsFP11.§#!4§.hasEventListener(Event.ENTER_FRAME))
         {
            AngryBirdsFP11.§#!4§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         this.§@!V§ = false;
         param1.currentStandings = §8!a§.§#!V§(param1.currentStandings,"players");
         this.§=]§ = param1;
         if(this.§=]§ && this.§=]§.currentTournament)
         {
            this.§'">§ = this.currentTournament.endTime;
         }
         if(this.§"!'§ && this.§?">§[this.§"!'§])
         {
            this.§,!?§ = this.§?">§[this.§"!'§];
         }
         else if(this.§"!'§ == "" && this.§?">§[§8V§])
         {
            this.§,!?§ = this.§?">§[§8V§];
         }
         if(this.§,!X§ && this.§=]§.currentTournament && this.§=]§.currentTournament.powerUpFrenzy)
         {
            this.§,!?§.§<f§ = this.§=]§.currentTournament.powerUpFrenzy;
         }
         if(§,"I§.§&q§.§@!]§)
         {
            this.§%`§();
         }
      }
      
      public function §%`§() : void
      {
         var _loc2_:§5!S§ = null;
         var _loc1_:Boolean = false;
         if(this.§"!'§ != "" && this.§%"'§ != this.§"!'§)
         {
            this.§,!?§.§=X§();
            this.§%"'§ = this.§"!'§;
            _loc1_ = true;
         }
         else if(this.§%"'§ != §8V§ && this.§"!'§ == "")
         {
            this.§,!?§.§=X§();
            this.§%"'§ = §8V§;
            _loc1_ = true;
         }
         if(_loc1_)
         {
            _loc2_ = §&2§.§5!k§.§6!k§();
            if(_loc2_ != null)
            {
               if(_loc2_.mName == §-#§.STATE_NAME)
               {
                  §,"I§.§&q§.§>"I§(§-#§.STATE_NAME);
               }
            }
         }
      }
      
      public function §1^§(param1:String) : §]p§
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§?">§)
         {
            if(_loc2_ == param1.toUpperCase())
            {
               return this.§?">§[_loc2_];
            }
         }
         return null;
      }
      
      public function get currentTournament() : Object
      {
         return this.§=]§.currentTournament;
      }
      
      public function get §#"$§() : Object
      {
         return this.currentTournament.enteredDraw;
      }
      
      public function get §,!X§() : §]p§
      {
         return this.§,!?§;
      }
      
      private function get §"!'§() : String
      {
         if(this.currentTournament != null && this.currentTournament.brandedTournament != null)
         {
            return (this.currentTournament.brandedTournament as String).toUpperCase();
         }
         return "";
      }
      
      public function get §#"3§() : String
      {
         if(this.currentTournament != null && this.§=]§.nextTournamentBrand != null)
         {
            return this.§=]§.nextTournamentBrand;
         }
         return "";
      }
      
      public function get currentStandings() : Object
      {
         return this.§=]§.currentStandings;
      }
      
      public function get previousTournament() : Object
      {
         return this.§=]§.previousTournament;
      }
      
      public function get lastResult() : Object
      {
         return this.§=]§.lastResult;
      }
      
      public function get players() : Array
      {
         if(this.currentStandings)
         {
            return this.currentStandings.players;
         }
         return [];
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.§6X§)
         {
            if(_loc2_.levelId == param1)
            {
               return this.§!!Y§(_loc2_);
            }
         }
         return false;
      }
      
      public function § 0§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         for each(_loc3_ in this.§6X§)
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
         var _loc3_:Object = null;
         var _loc2_:Number = §,"I§.§&q§.§+g§.§?"&§.§?9§;
         for each(_loc3_ in this.§6X§)
         {
            if(_loc3_.levelId == param1)
            {
               return (_loc3_.unlockTime - _loc2_) / 1000;
            }
         }
         return -1;
      }
      
      private function §!!Y§(param1:Object) : Boolean
      {
         if(param1.unlockTime)
         {
            if(this.secondsToUnlock(param1.levelId) > 0)
            {
               return false;
            }
         }
         return true;
      }
      
      public function get §;9§() : Array
      {
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§6X§)
         {
            _loc1_.push(_loc2_.levelId);
         }
         return _loc1_;
      }
      
      public function get §6X§() : Array
      {
         if(this.currentTournament)
         {
            return this.currentTournament.levels;
         }
         return [];
      }
      
      public function get levelScores() : Array
      {
         if(this.currentStandings)
         {
            return this.currentStandings.levelScores;
         }
         return [];
      }
      
      public function get §!!W§() : Array
      {
         if(this.previousTournament)
         {
            if(this.previousTournament.priceCounts)
            {
               return this.previousTournament.priceCounts;
            }
         }
         return [6,4,2];
      }
      
      public function get §2!A§() : Array
      {
         if(this.lastResult)
         {
            if(this.lastResult.priceCounts)
            {
               return this.lastResult.priceCounts;
            }
         }
         return [6,4,2];
      }
      
      public function get bronzeTrophies() : int
      {
         if(this.previousTournament)
         {
            return this.previousTournament.bronzeTrophies;
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         if(this.previousTournament)
         {
            return this.previousTournament.silverTrophies;
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         if(this.previousTournament)
         {
            return this.previousTournament.goldTrophies;
         }
         return 0;
      }
      
      public function §^G§() : int
      {
         var _loc1_:Number = §,"I§.§&q§.§+g§.§?"&§.§?9§;
         var _loc2_:int = (this.§'">§ - _loc1_) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      public function §'!'§(param1:String) : String
      {
         var _loc2_:int = this.§;9§.indexOf(param1);
         var _loc3_:String = this.§;9§[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.§;9§.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §4O§(param1:String) : String
      {
         var _loc2_:int = this.§;9§.indexOf(param1);
         var _loc3_:String = this.§;9§[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.§;9§.length && this.isLevelOpen(_loc3_))
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §7!B§(param1:String) : int
      {
         return this.§;9§.indexOf(param1) + 1;
      }
      
      public function §3!N§() : Array
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
      
      public function § !2§() : Array
      {
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.players)
         {
            if(_loc2_.i)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §2"1§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc2_:int = this.players.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.players[_loc2_];
            if(_loc3_.u == param1)
            {
               this.players.splice(_loc2_,1);
               return;
            }
            _loc2_--;
         }
      }
      
      public function §^!6§() : Array
      {
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.players)
         {
            if(_loc2_.i)
            {
               _loc1_.push(§2!M§.§@6§(_loc2_));
            }
         }
         return _loc1_;
      }
      
      public function §&">§() : Array
      {
         var _loc1_:int = this.§^G§();
         return §3!u§(_loc1_);
      }
      
      public function §'a§(param1:Number) : String
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
      
      public function §&T§() : int
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.players)
         {
            if(_loc1_.u == (AngryBirdsFP11.sUserProgress as §'y§).§;#§)
            {
               return _loc1_.r;
            }
         }
         return §!!"§;
      }
   }
}
