package §7-§
{
   import §%!v§.§[<§;
   import §'!s§.§%?§;
   import §0!G§.§1-§;
   import §[!K§.§-k§;
   import §]!>§.§"!w§;
   import §]!>§.§#"1§;
   import §]!A§.;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §,!C§
   {
      
      public static const §1!G§:String = "LOTUS_BLACK";
      
      public static const §'W§:int = 100000;
      
      private static var §8G§:int = 0;
      
      private static var §2"<§:§,!C§;
       
      
      private var §8!$§:Boolean = false;
      
      private var §>">§:Object;
      
      private var §;<§:Number = 0;
      
      private var §%!c§:Number;
      
      public function §,!C§()
      {
         super();
         AngryBirdsFP11.§@<§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public static function get §;"§() : §,!C§
      {
         if(§2"<§ == null)
         {
            §2"<§ = new §,!C§();
         }
         return §2"<§;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(!this.§8!$§)
         {
            if(this.§;<§ - getTimer() <= 0)
            {
               this.§8!$§ = true;
               if(§3T§.§67§.§<!W§().indexOf("Tournament") != -1)
               {
                  ++§8G§;
                  if(§8G§ > 2)
                  {
                     §%?§.§`!6§();
                     §8G§ = 0;
                  }
                  else
                  {
                     §%?§.§6F§();
                  }
               }
            }
         }
      }
      
      public function injectData(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§1-§ = null;
         this.§8!$§ = false;
         param1.currentStandings = §"!w§.§1!C§(param1.currentStandings,"players");
         this.§>">§ = param1;
         if(this.currentTournament)
         {
            _loc2_ = this.currentTournament.secondsLeft;
         }
         this.§%!c§ = getTimer();
         this.§;<§ = this.§%!c§ + _loc2_ * 1000;
         if(§3T§.§[!W§())
         {
            _loc3_ = §#6§.§ q§.§>k§();
            if(_loc3_ != null)
            {
               if(_loc3_.mName == §-k§.STATE_NAME)
               {
                  §3T§.§67§.§=!w§(§-k§.STATE_NAME);
               }
            }
         }
      }
      
      public function get §#!X§() : int
      {
         return getTimer() - this.§%!c§;
      }
      
      public function get currentTournament() : Object
      {
         return this.§>">§.currentTournament;
      }
      
      public function get §!!M§() : Object
      {
         return this.currentTournament.enteredDraw;
      }
      
      public function get §0!&§() : Object
      {
         if(this.currentTournament != null && this.currentTournament.brandedTournament != null)
         {
            return this.currentTournament.brandedTournament;
         }
         return "";
      }
      
      public function get nextTournamentBrand() : Object
      {
         if(this.currentTournament != null && this.§>">§.nextTournamentBrand != null)
         {
            return this.§>">§.nextTournamentBrand;
         }
         return "";
      }
      
      public function get currentStandings() : Object
      {
         return this.§>">§.currentStandings;
      }
      
      public function get previousTournament() : Object
      {
         return this.§>">§.previousTournament;
      }
      
      public function get lastResult() : Object
      {
         return this.§>">§.lastResult;
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
         for each(_loc2_ in this.§<f§)
         {
            if(_loc2_.levelId == param1)
            {
               return this.§8y§(_loc2_);
            }
         }
         return false;
      }
      
      public function § 4§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         for each(_loc3_ in this.§<f§)
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
         for each(_loc2_ in this.§<f§)
         {
            if(_loc2_.levelId == param1)
            {
               return _loc2_.secondsToUnlock;
            }
         }
         return -1;
      }
      
      private function §8y§(param1:Object) : Boolean
      {
         if(param1.secondsToUnlock)
         {
            if(param1.secondsToUnlock > 0)
            {
               return false;
            }
         }
         return true;
      }
      
      public function get §-&§() : Array
      {
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§<f§)
         {
            _loc1_.push(_loc2_.levelId);
         }
         return _loc1_;
      }
      
      public function get §<f§() : Array
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
      
      public function get § !Q§() : Array
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
      
      public function get §[-§() : Array
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
      
      public function §#"5§() : int
      {
         var _loc1_:int = (this.§;<§ - getTimer()) / 1000;
         return int(Math.max(0,_loc1_));
      }
      
      public function §4W§(param1:String) : String
      {
         var _loc2_:int = this.§-&§.indexOf(param1);
         var _loc3_:String = this.§-&§[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.§-&§.length && this.isLevelOpen(_loc3_))
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §8!z§(param1:String) : int
      {
         return this.§-&§.indexOf(param1) + 1;
      }
      
      public function §#!3§() : Array
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
      
      public function § !!§() : Array
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
      
      public function §9§(param1:String) : void
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
      
      public function §=!V§() : Array
      {
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.players)
         {
            if(_loc2_.i)
            {
               _loc1_.push(§#"1§.§!!t§(_loc2_));
            }
         }
         return _loc1_;
      }
      
      public function §0!V§() : Array
      {
         var _loc1_:int = this.§#"5§();
         return this.§52§(_loc1_);
      }
      
      public function §52§(param1:Number) : Array
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
      
      public function §<>§() : int
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.players)
         {
            if(_loc1_.u == (AngryBirdsFP11.sUserProgress as §[<§).§4v§)
            {
               return _loc1_.r;
            }
         }
         return §'W§;
      }
   }
}
