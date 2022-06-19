package §<!e§
{
   import §!!t§.§,-§;
   import §+I§.§9!%§;
   import §,"-§.§2!P§;
   import §2!,§.§=n§;
   import §7N§.§43§;
   import §<G§.§5w§;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §[!t§
   {
      
      public static const §9!K§:int = 100000;
      
      private static var §?!L§:int = 0;
      
      private static var §#!O§:§[!t§;
       
      
      private var §,"0§:Boolean = false;
      
      private var § 9§:Object;
      
      private var §<v§:Number = 0;
      
      private var §0!H§:Number;
      
      public function §[!t§()
      {
         super();
         AngryBirdsFP11.§`"B§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public static function get §8c§() : §[!t§
      {
         if(§#!O§ == null)
         {
            §#!O§ = new §[!t§();
         }
         return §#!O§;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(!this.§,"0§)
         {
            if(this.§<v§ - getTimer() <= 0)
            {
               this.§,"0§ = true;
               if(§ W§.§%!y§.§="'§().indexOf("Tournament") != -1)
               {
                  ++§?!L§;
                  if(§?!L§ > 2)
                  {
                     §43§.§ !_§();
                     §?!L§ = 0;
                  }
                  else
                  {
                     §43§.§>!m§();
                  }
               }
            }
         }
      }
      
      public function injectData(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§,-§ = null;
         this.§,"0§ = false;
         this.§ 9§ = param1;
         if(this.currentTournament)
         {
            _loc2_ = this.currentTournament.secondsLeft;
         }
         this.§0!H§ = getTimer();
         this.§<v§ = this.§0!H§ + _loc2_ * 1000;
         if(§ W§.§]T§())
         {
            _loc3_ = §9!%§.§ !W§.§>p§();
            if(_loc3_ != null)
            {
               if(_loc3_.mName == §5w§.STATE_NAME)
               {
                  § W§.§%!y§.§ !`§(§5w§.STATE_NAME);
               }
            }
         }
      }
      
      public function get §4"$§() : int
      {
         return getTimer() - this.§0!H§;
      }
      
      public function get currentTournament() : Object
      {
         return this.§ 9§.currentTournament;
      }
      
      public function get § h§() : Object
      {
         return this.currentTournament.enteredDraw;
      }
      
      public function get §&!>§() : Object
      {
         if(this.currentTournament != null && this.currentTournament.brandedTournament != null)
         {
            return this.currentTournament.brandedTournament;
         }
         return "";
      }
      
      public function get currentStandings() : Object
      {
         return this.§ 9§.currentStandings;
      }
      
      public function get previousTournament() : Object
      {
         return this.§ 9§.previousTournament;
      }
      
      public function get lastResult() : Object
      {
         return this.§ 9§.lastResult;
      }
      
      public function get players() : Array
      {
         if(this.currentStandings)
         {
            return this.currentStandings.players;
         }
         return [];
      }
      
      public function get levels() : Array
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
      
      public function get §+"2§() : Array
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
      
      public function get §[l§() : Array
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
      
      public function §%x§() : int
      {
         var _loc1_:int = (this.§<v§ - getTimer()) / 1000;
         return int(Math.max(0,_loc1_));
      }
      
      public function §1!y§(param1:String) : String
      {
         var _loc2_:int = this.levels.indexOf(param1);
         if(_loc2_ >= 0 && _loc2_ < 3)
         {
            return this.levels[_loc2_ + 1];
         }
         return "";
      }
      
      public function §=!l§(param1:String) : int
      {
         return this.levels.indexOf(param1) + 1;
      }
      
      public function §0!<§() : Array
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
      
      public function §[!"§() : Array
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
      
      public function §for§(param1:String) : void
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
      
      public function §%j§() : Array
      {
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.players)
         {
            if(_loc2_.i)
            {
               _loc1_.push(§=n§.§ N§(_loc2_));
            }
         }
         return _loc1_;
      }
      
      public function §@§() : Array
      {
         var _loc1_:int = this.§%x§();
         return this.§1w§(_loc1_);
      }
      
      public function §1w§(param1:Number) : Array
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
               _loc3_ = _loc2_ + " Minutes Left";
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
      
      public function §0!2§() : int
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.players)
         {
            if(_loc1_.u == (AngryBirdsFP11.sUserProgress as §2!P§).§!!'§)
            {
               return _loc1_.r;
            }
         }
         return §9!K§;
      }
   }
}
