package §,"N§
{
   import § "4§.§7q§;
   import § "v§.TournamentResultsPopup;
   import §!"e§.§`"W§;
   import §"k§.§8"U§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §`!o§.§+"k§;
   import §`!o§.§<9§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §@"b§ extends EventDispatcher
   {
      
      public static const §3R§:String = "onTournamentOver";
      
      public static const §^o§:String = "onTournamentLoaded";
      
      public static const §,"3§:String = "onTournamentReset";
       
      
      private var §%4§:Object;
      
      private var §7#F§:Object;
      
      private var §2""§:Sprite;
      
      private var §>#T§:String;
      
      private var §9#Y§:String;
      
      private var §@""§:Number;
      
      private var §1#8§:§8"U§;
      
      private var §9v§:§+"k§;
      
      private var §`"X§:Boolean = false;
      
      private var §1#>§:Timer;
      
      private var §;!-§:Boolean = false;
      
      private var §7h§:int = -1;
      
      public function §@"b§(param1:Object, param2:String, param3:String)
      {
         super();
         this.§>#T§ = param2;
         this.§9#Y§ = param3;
         this.§7h§ = !!param1.theme ? int(int(param1.theme)) : 2;
         this.§%4§ = param1;
         this.§7#F§ = param1.tournamentHistory;
         this.§^!i§();
         this.§2""§ = new Sprite();
         this.§2""§.addEventListener(Event.ENTER_FRAME,this.§-!u§);
         this.§1#>§ = new Timer(10 * 60 * 1000);
         this.§1#>§.addEventListener(TimerEvent.TIMER,this.§[";§);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:Object = null;
         var _loc2_:§@#B§ = null;
         var _loc3_:§7q§ = null;
         var _loc4_:Object = null;
         var _loc5_:§[!j§ = null;
         this.§@""§ = getTimer() + this.currentTournament.secondsLeft * 1000;
         this.§1#8§ = new §8"U§(this.§>#T§,this.§9#Y§,{"items":this.players});
         for each(_loc1_ in this.levelObjects)
         {
            if(_loc1_.secondsToUnlock && _loc1_.secondsToUnlock > 0)
            {
               _loc1_.unlocksAt = getTimer() + _loc1_.secondsToUnlock * 1000;
            }
         }
         _loc2_ = §4#;§.singleton.dataModel as §@#B§;
         if(_loc2_)
         {
            _loc3_ = _loc2_.userProgress as §7q§;
            if(_loc3_)
            {
               for each(_loc1_ in this.levelObjects)
               {
                  _loc3_.§'!C§(_loc1_.levelId);
                  _loc3_.§'"p§(_loc1_.levelId);
               }
               for each(_loc4_ in this.levelScores)
               {
                  if(_loc4_.p && _loc4_.l)
                  {
                     _loc3_.§9!R§(_loc4_.l,_loc4_.p);
                  }
                  if(_loc4_.r && _loc4_.l)
                  {
                     _loc3_.§+!W§(_loc4_.l,_loc4_.r);
                  }
               }
            }
         }
         if(this.lastResult && this.§`"X§)
         {
            _loc5_ = new TournamentResultsPopup(this.lastResult,§`"W§.§+v§,§+5§.TOP);
            §4#;§.singleton.popupManager.openPopup(_loc5_,true,true,true);
            this.§`"f§();
         }
         this.§1#>§.start();
      }
      
      private function §^!i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         if(this.§-j§)
         {
            _loc1_ = true;
            if(_loc1_)
            {
               _loc2_ = -1;
               for each(_loc3_ in this.§-j§)
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
                  for each(_loc3_ in this.§-j§)
                  {
                     if(_loc3_.i == _loc5_)
                     {
                        _loc6_ = false;
                        break;
                     }
                  }
                  if(_loc6_)
                  {
                     this.§-j§.splice(_loc4_,0,{"i":_loc5_});
                  }
                  _loc4_++;
                  _loc5_++;
               }
               for each(_loc3_ in this.§-j§)
               {
                  _loc3_.thc = _loc3_.i <= 17 ? this.§%4§.thc : true;
               }
            }
            this.§-j§.sortOn("i",Array.NUMERIC | Array.DESCENDING);
         }
      }
      
      public function get §;!C§() : Boolean
      {
         return this.levelScores.length > 0 ? true : false;
      }
      
      public function get §!!e§() : Boolean
      {
         return this.§;!-§;
      }
      
      public function set §!!e§(param1:Boolean) : void
      {
         this.§;!-§ = param1;
         if(this.§;!-§)
         {
            this.§1#>§.reset();
         }
      }
      
      private function §[";§(param1:TimerEvent) : void
      {
         this.§!!e§ = true;
      }
      
      public function §^!'§() : void
      {
         this.§`"X§ = true;
      }
      
      public function get currentTournament() : Object
      {
         return this.§%4§.currentTournament || {};
      }
      
      public function get currentStandings() : Object
      {
         return this.§%4§.currentStandings;
      }
      
      public function get previousTournament() : Object
      {
         return this.§%4§.previousTournament;
      }
      
      public function get lastResult() : Object
      {
         return this.§%4§.lastResult;
      }
      
      public function get starCoinRewards() : Array
      {
         return this.§%4§.starCoinRewards;
      }
      
      public function get prizePerFriend() : int
      {
         return this.§%4§.prizePerFriend;
      }
      
      public function get §-j§() : Array
      {
         return this.§7#F§ as Array;
      }
      
      public function get prizeValues() : Array
      {
         return this.§%4§.prizeValues;
      }
      
      public function §`"f§() : void
      {
         this.§%4§.lastResult = null;
      }
      
      private function get players() : Array
      {
         if(this.currentStandings)
         {
            return this.currentStandings.players;
         }
         return [];
      }
      
      public function get §'"?§() : §8"U§
      {
         return this.§1#8§;
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
         var _loc2_:Object = this.§["^§(param1);
         if(!_loc2_.unlocksAt || _loc2_ && getTimer() > _loc2_.unlocksAt)
         {
            return true;
         }
         return false;
      }
      
      public function §1"C§(param1:String) : int
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
      
      private function §-!u§(param1:Event) : void
      {
         if(this.isLoading)
         {
            return;
         }
         if(this.§&"J§ == 0)
         {
            this.§!!e§ = true;
            this.reset();
            dispatchEvent(new Event(§3R§));
            TournamentResultsPopup.reset();
         }
      }
      
      public function get §&"J§() : Number
      {
         return Math.max((this.§@""§ - getTimer()) / 1000,0);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:Object = this.§>"R§(param1);
         return !!_loc2_ ? int(_loc2_.p) : 0;
      }
      
      public function getRankForLevel(param1:String) : int
      {
         var _loc2_:Object = this.§>"R§(param1);
         return !!_loc2_ ? int(_loc2_.r) : 0;
      }
      
      public function §3!n§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:Object;
         if(!(_loc4_ = this.§>"R§(param1)))
         {
            _loc4_ = {"l":param1};
            this.levelScores.push(_loc4_);
         }
         _loc4_.r = param2;
         _loc4_.p = param3;
      }
      
      public function §["^§(param1:String) : Object
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
      
      public function §>"R§(param1:String) : Object
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
         if(this.§2""§)
         {
            this.§2""§.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
            this.§2""§ = null;
         }
      }
      
      public function get isLoading() : Boolean
      {
         return this.§9v§ != null;
      }
      
      public function get §"#'§() : int
      {
         return this.§7h§;
      }
      
      public function reset() : void
      {
         if(this.isLoading)
         {
            return;
         }
         this.§9v§ = new §+"k§();
         this.§9v§.addEventListener(Event.COMPLETE,this.§&!A§);
         this.§9v§.load(§<9§.§""I§(§4#;§.SERVER_ROOT + "/tournamentinit"));
         dispatchEvent(new Event(§,"3§));
      }
      
      private function §&!A§(param1:Event) : void
      {
         this.§!!e§ = false;
         this.§%4§ = this.§9v§.data;
         this.init();
         this.§9v§.removeEventListener(Event.COMPLETE,this.§&!A§);
         this.§9v§ = null;
         dispatchEvent(new Event(§^o§));
      }
      
      public function §#!m§() : String
      {
         var _loc1_:int = this.§&"J§;
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
