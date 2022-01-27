package §`"8§
{
   import §"!P§.§3G§;
   import §,!_§.§2!%§;
   import §,!_§.§>!_§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §<"s§.§0u§;
   import §=N§.TournamentResultsPopup;
   import §`!b§.§?#,§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §>6§ extends EventDispatcher
   {
      
      public static const § !A§:String = "onTournamentOver";
      
      public static const §]"R§:String = "onTournamentLoaded";
      
      public static const §5"G§:String = "onTournamentReset";
       
      
      private var §,6§:Object;
      
      private var §-"+§:Object;
      
      private var § !^§:Sprite;
      
      private var §!!B§:String;
      
      private var §+?§:String;
      
      private var §6!=§:Number;
      
      private var §7"f§:§?#,§;
      
      private var §`!E§:§2!%§;
      
      private var §^"p§:Boolean = false;
      
      private var §3^§:Timer;
      
      private var §""V§:Boolean = false;
      
      private var §]!q§:int = -1;
      
      public function §>6§(param1:Object, param2:String, param3:String)
      {
         super();
         this.§!!B§ = param2;
         this.§+?§ = param3;
         this.§]!q§ = !!param1.theme ? int(int(param1.theme)) : 2;
         this.§,6§ = param1;
         this.§-"+§ = param1.tournamentHistory;
         this.§%"j§();
         this.§ !^§ = new Sprite();
         this.§ !^§.addEventListener(Event.ENTER_FRAME,this.§`_§);
         this.§3^§ = new Timer(10 * 60 * 1000);
         this.§3^§.addEventListener(TimerEvent.TIMER,this.§ !q§);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:Object = null;
         var _loc2_:§-!w§ = null;
         var _loc3_:§3G§ = null;
         var _loc4_:Object = null;
         var _loc5_:§5!R§ = null;
         this.§6!=§ = getTimer() + this.currentTournament.secondsLeft * 1000;
         this.§7"f§ = new §?#,§(this.§!!B§,this.§+?§,{"items":this.players});
         for each(_loc1_ in this.levelObjects)
         {
            if(_loc1_.secondsToUnlock && _loc1_.secondsToUnlock > 0)
            {
               _loc1_.unlocksAt = getTimer() + _loc1_.secondsToUnlock * 1000;
            }
         }
         _loc2_ = §;"@§.singleton.dataModel as §-!w§;
         if(_loc2_)
         {
            _loc3_ = _loc2_.userProgress as §3G§;
            if(_loc3_)
            {
               for each(_loc1_ in this.levelObjects)
               {
                  _loc3_.§[C§(_loc1_.levelId);
                  _loc3_.§?!@§(_loc1_.levelId);
               }
               for each(_loc4_ in this.levelScores)
               {
                  if(_loc4_.p && _loc4_.l)
                  {
                     _loc3_.§&'§(_loc4_.l,_loc4_.p);
                  }
                  if(_loc4_.r && _loc4_.l)
                  {
                     _loc3_.§2"z§(_loc4_.l,_loc4_.r);
                  }
               }
            }
         }
         if(this.lastResult && this.§^"p§)
         {
            _loc5_ = new TournamentResultsPopup(this.lastResult,§0u§.§1"J§,§^T§.TOP);
            §;"@§.singleton.popupManager.openPopup(_loc5_,true,true,true);
            this.§-s§();
         }
         this.§3^§.start();
      }
      
      private function §%"j§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         if(this.§"F§)
         {
            _loc1_ = true;
            if(_loc1_)
            {
               _loc2_ = -1;
               for each(_loc3_ in this.§"F§)
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
                  for each(_loc3_ in this.§"F§)
                  {
                     if(_loc3_.i == _loc5_)
                     {
                        _loc6_ = false;
                        break;
                     }
                  }
                  if(_loc6_)
                  {
                     this.§"F§.splice(_loc4_,0,{"i":_loc5_});
                  }
                  _loc4_++;
                  _loc5_++;
               }
               for each(_loc3_ in this.§"F§)
               {
                  _loc3_.thc = _loc3_.i <= 17 ? this.§,6§.thc : true;
               }
            }
            this.§"F§.sortOn("i",Array.NUMERIC | Array.DESCENDING);
         }
      }
      
      public function get §5!l§() : Boolean
      {
         return this.levelScores.length > 0 ? true : false;
      }
      
      public function get §4,§() : Boolean
      {
         return this.§""V§;
      }
      
      public function set §4,§(param1:Boolean) : void
      {
         this.§""V§ = param1;
         if(this.§""V§)
         {
            this.§3^§.reset();
         }
      }
      
      private function § !q§(param1:TimerEvent) : void
      {
         this.§4,§ = true;
      }
      
      public function §#"D§() : void
      {
         this.§^"p§ = true;
      }
      
      public function get currentTournament() : Object
      {
         return this.§,6§.currentTournament || {};
      }
      
      public function get currentStandings() : Object
      {
         return this.§,6§.currentStandings;
      }
      
      public function get previousTournament() : Object
      {
         return this.§,6§.previousTournament;
      }
      
      public function get lastResult() : Object
      {
         return this.§,6§.lastResult;
      }
      
      public function get starCoinRewards() : Array
      {
         return this.§,6§.starCoinRewards;
      }
      
      public function get prizePerFriend() : int
      {
         return this.§,6§.prizePerFriend;
      }
      
      public function get §"F§() : Array
      {
         return this.§-"+§ as Array;
      }
      
      public function get prizeValues() : Array
      {
         return this.§,6§.prizeValues;
      }
      
      public function §-s§() : void
      {
         this.§,6§.lastResult = null;
      }
      
      private function get players() : Array
      {
         if(this.currentStandings)
         {
            return this.currentStandings.players;
         }
         return [];
      }
      
      public function get §?!x§() : §?#,§
      {
         return this.§7"f§;
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
         var _loc2_:Object = this.§]!@§(param1);
         if(!_loc2_.unlocksAt || _loc2_ && getTimer() > _loc2_.unlocksAt)
         {
            return true;
         }
         return false;
      }
      
      public function §&!x§(param1:String) : int
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
      
      private function §`_§(param1:Event) : void
      {
         if(this.isLoading)
         {
            return;
         }
         if(this.§^##§ == 0)
         {
            this.§4,§ = true;
            this.reset();
            dispatchEvent(new Event(§ !A§));
            TournamentResultsPopup.reset();
         }
      }
      
      public function get §^##§() : Number
      {
         return Math.max((this.§6!=§ - getTimer()) / 1000,0);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:Object = this.§'"=§(param1);
         return !!_loc2_ ? int(_loc2_.p) : 0;
      }
      
      public function getRankForLevel(param1:String) : int
      {
         var _loc2_:Object = this.§'"=§(param1);
         return !!_loc2_ ? int(_loc2_.r) : 0;
      }
      
      public function §>"k§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:Object;
         if(!(_loc4_ = this.§'"=§(param1)))
         {
            _loc4_ = {"l":param1};
            this.levelScores.push(_loc4_);
         }
         _loc4_.r = param2;
         _loc4_.p = param3;
      }
      
      public function §]!@§(param1:String) : Object
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
      
      public function §'"=§(param1:String) : Object
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
         if(this.§ !^§)
         {
            this.§ !^§.removeEventListener(Event.ENTER_FRAME,this.§`_§);
            this.§ !^§ = null;
         }
      }
      
      public function get isLoading() : Boolean
      {
         return this.§`!E§ != null;
      }
      
      public function get §@"C§() : int
      {
         return this.§]!q§;
      }
      
      public function reset() : void
      {
         if(this.isLoading)
         {
            return;
         }
         this.§`!E§ = new §2!%§();
         this.§`!E§.addEventListener(Event.COMPLETE,this.§,!u§);
         this.§`!E§.load(§>!_§.§^O§(§;"@§.SERVER_ROOT + "/tournamentinit"));
         dispatchEvent(new Event(§5"G§));
      }
      
      private function §,!u§(param1:Event) : void
      {
         this.§4,§ = false;
         this.§,6§ = this.§`!E§.data;
         this.init();
         this.§`!E§.removeEventListener(Event.COMPLETE,this.§,!u§);
         this.§`!E§ = null;
         dispatchEvent(new Event(§]"R§));
      }
      
      public function §"#$§() : String
      {
         var _loc1_:int = this.§^##§;
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
