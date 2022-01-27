package §9"U§
{
   import §%!G§.§0"V§;
   import §%!G§.§`?§;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §0"k§.§@"[§;
   import §3!j§.TournamentResultsPopup;
   import §`"n§.§""r§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §[!s§ extends EventDispatcher
   {
      
      public static const §,!4§:String = "onTournamentOver";
      
      public static const §%"#§:String = "onTournamentLoaded";
      
      public static const §@K§:String = "onTournamentReset";
       
      
      private var §+3§:Object;
      
      private var §+"_§:Object;
      
      private var §,x§:Sprite;
      
      private var §3!u§:String;
      
      private var §0!=§:String;
      
      private var §!"l§:Number;
      
      private var §5#'§:§@"[§;
      
      private var §&K§:§`?§;
      
      private var §<!d§:Boolean = false;
      
      private var §7!=§:Timer;
      
      private var §6l§:Boolean = false;
      
      private var §@!W§:int = -1;
      
      public function §[!s§(param1:Object, param2:String, param3:String)
      {
         super();
         this.§3!u§ = param2;
         this.§0!=§ = param3;
         this.§@!W§ = !!param1.theme ? int(int(param1.theme)) : 2;
         this.§+3§ = param1;
         this.§+"_§ = param1.tournamentHistory;
         this.§7"L§();
         this.§,x§ = new Sprite();
         this.§,x§.addEventListener(Event.ENTER_FRAME,this.§^!<§);
         this.§7!=§ = new Timer(10 * 60 * 1000);
         this.§7!=§.addEventListener(TimerEvent.TIMER,this.§>!3§);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:Object = null;
         var _loc2_:§7"1§ = null;
         var _loc3_:§""r§ = null;
         var _loc4_:Object = null;
         var _loc5_:§3!§ = null;
         this.§!"l§ = getTimer() + this.currentTournament.secondsLeft * 1000;
         this.§5#'§ = new §@"[§(this.§3!u§,this.§0!=§,{"items":this.players});
         for each(_loc1_ in this.levelObjects)
         {
            if(_loc1_.secondsToUnlock && _loc1_.secondsToUnlock > 0)
            {
               _loc1_.unlocksAt = getTimer() + _loc1_.secondsToUnlock * 1000;
            }
         }
         _loc2_ = §4"#§.singleton.dataModel as §7"1§;
         if(_loc2_)
         {
            _loc3_ = _loc2_.userProgress as §""r§;
            if(_loc3_)
            {
               for each(_loc1_ in this.levelObjects)
               {
                  _loc3_.§4#'§(_loc1_.levelId);
                  _loc3_.§;"4§(_loc1_.levelId);
               }
               for each(_loc4_ in this.levelScores)
               {
                  if(_loc4_.p && _loc4_.l)
                  {
                     _loc3_.§>"t§(_loc4_.l,_loc4_.p);
                  }
                  if(_loc4_.r && _loc4_.l)
                  {
                     _loc3_.§ "C§(_loc4_.l,_loc4_.r);
                  }
               }
            }
         }
         if(this.lastResult && this.§<!d§)
         {
            _loc5_ = new TournamentResultsPopup(this.lastResult,§^!S§.§'"c§,§2!s§.TOP);
            §4"#§.singleton.popupManager.openPopup(_loc5_,true,true,true);
            this.§[!V§();
         }
         this.§7!=§.start();
      }
      
      private function §7"L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         if(this.§""l§)
         {
            _loc1_ = true;
            if(_loc1_)
            {
               _loc2_ = -1;
               for each(_loc3_ in this.§""l§)
               {
                  if(_loc3_.i >= _loc2_)
                  {
                     _loc2_ = _loc3_.i;
                  }
               }
               _loc4_ = 0;
               _loc5_ = 1;
               while(_loc5_ < _loc2_)
               {
                  _loc6_ = true;
                  for each(_loc3_ in this.§""l§)
                  {
                     if(_loc3_.i == _loc5_)
                     {
                        _loc6_ = false;
                        break;
                     }
                  }
                  if(_loc6_)
                  {
                     this.§""l§.splice(_loc4_,0,{"i":_loc5_});
                  }
                  _loc4_++;
                  _loc5_++;
               }
               for each(_loc3_ in this.§""l§)
               {
                  _loc3_.thc = _loc3_.i <= 17 ? this.§+3§.thc : true;
               }
            }
            this.§""l§.sortOn("i",Array.NUMERIC | Array.DESCENDING);
         }
      }
      
      public function get §""j§() : Boolean
      {
         return this.levelScores.length > 0 ? true : false;
      }
      
      public function get §9"K§() : Boolean
      {
         return this.§6l§;
      }
      
      public function set §9"K§(param1:Boolean) : void
      {
         this.§6l§ = param1;
         if(this.§6l§)
         {
            this.§7!=§.reset();
         }
      }
      
      private function §>!3§(param1:TimerEvent) : void
      {
         this.§9"K§ = true;
      }
      
      public function §3"&§() : void
      {
         this.§<!d§ = true;
      }
      
      public function get currentTournament() : Object
      {
         return this.§+3§.currentTournament || {};
      }
      
      public function get currentStandings() : Object
      {
         return this.§+3§.currentStandings;
      }
      
      public function get previousTournament() : Object
      {
         return this.§+3§.previousTournament;
      }
      
      public function get lastResult() : Object
      {
         return this.§+3§.lastResult;
      }
      
      public function get starCoinRewards() : Array
      {
         return this.§+3§.starCoinRewards;
      }
      
      public function get prizePerFriend() : int
      {
         return this.§+3§.prizePerFriend;
      }
      
      public function get §""l§() : Array
      {
         return this.§+"_§ as Array;
      }
      
      public function get prizeValues() : Array
      {
         return this.§+3§.prizeValues;
      }
      
      public function §[!V§() : void
      {
         this.§+3§.lastResult = null;
      }
      
      private function get players() : Array
      {
         if(this.currentStandings)
         {
            return this.currentStandings.players;
         }
         return [];
      }
      
      public function get §]!A§() : §@"[§
      {
         return this.§5#'§;
      }
      
      public function get levelObjects() : Array
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
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:Object = this.§9<§(param1);
         if(!_loc2_.unlocksAt || _loc2_ && getTimer() > _loc2_.unlocksAt)
         {
            return true;
         }
         return false;
      }
      
      public function §&"3§(param1:String) : int
      {
         return this.levelNames.indexOf(param1) + 1;
      }
      
      public function get levelNames() : Array
      {
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.levelObjects)
         {
            _loc1_.push(_loc2_.levelId);
         }
         return _loc1_;
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
      
      private function §^!<§(param1:Event) : void
      {
         if(this.isLoading)
         {
            return;
         }
         if(this.§?!N§ == 0)
         {
            this.§9"K§ = true;
            this.reset();
            dispatchEvent(new Event(§,!4§));
            TournamentResultsPopup.reset();
         }
      }
      
      public function get §?!N§() : Number
      {
         return Math.max((this.§!"l§ - getTimer()) / 1000,0);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:Object = this.§'!_§(param1);
         return !!_loc2_ ? int(_loc2_.p) : 0;
      }
      
      public function getRankForLevel(param1:String) : int
      {
         var _loc2_:Object = this.§'!_§(param1);
         return !!_loc2_ ? int(_loc2_.r) : 0;
      }
      
      public function §0!;§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:Object;
         if(!(_loc4_ = this.§'!_§(param1)))
         {
            _loc4_ = {"l":param1};
            this.levelScores.push(_loc4_);
         }
         _loc4_.r = param2;
         _loc4_.p = param3;
      }
      
      public function §9<§(param1:String) : Object
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
      
      public function §'!_§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.levelScores)
         {
            if(_loc2_.l == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§,x§)
         {
            this.§,x§.removeEventListener(Event.ENTER_FRAME,this.§^!<§);
            this.§,x§ = null;
         }
      }
      
      public function get isLoading() : Boolean
      {
         return this.§&K§ != null;
      }
      
      public function get §,"z§() : int
      {
         return this.§@!W§;
      }
      
      public function reset() : void
      {
         if(this.isLoading)
         {
            return;
         }
         this.§&K§ = new §`?§();
         this.§&K§.addEventListener(Event.COMPLETE,this.§9"W§);
         this.§&K§.load(§0"V§.§2"r§(§4"#§.SERVER_ROOT + "/tournamentinit"));
         dispatchEvent(new Event(§@K§));
      }
      
      private function §9"W§(param1:Event) : void
      {
         this.§9"K§ = false;
         this.§+3§ = this.§&K§.data;
         this.init();
         this.§&K§.removeEventListener(Event.COMPLETE,this.§9"W§);
         this.§&K§ = null;
         dispatchEvent(new Event(§%"#§));
      }
      
      public function §`"g§() : String
      {
         var _loc1_:int = this.§?!N§;
         var _loc2_:int = _loc1_ / 60;
         var _loc3_:* = "";
         var _loc4_:int = Math.round(_loc2_ / 1440);
         var _loc5_:int;
         if((_loc5_ = Math.round(_loc2_ / 60)) < 24)
         {
            if(_loc5_ < 2 && _loc2_ >= 60)
            {
               _loc3_ = _loc5_ + " Hour Left";
            }
            else if(_loc5_ >= 2)
            {
               _loc3_ = Math.max(0,_loc5_) + " Hours Left";
            }
            else if(_loc1_ >= 60)
            {
               if(_loc2_ == 1)
               {
                  _loc3_ = _loc2_ + " Minute Left";
               }
               else
               {
                  _loc3_ = _loc2_ + " Minutes Left";
               }
            }
            else if(_loc1_ == 1)
            {
               _loc3_ = _loc1_ + " Second Left!";
            }
            else
            {
               _loc3_ = _loc1_ + " Seconds Left!";
            }
         }
         else if(_loc4_ == 1)
         {
            _loc3_ = _loc4_ + " Day Left";
         }
         else
         {
            _loc3_ = _loc4_ + " Days Left";
         }
         return _loc3_;
      }
   }
}
