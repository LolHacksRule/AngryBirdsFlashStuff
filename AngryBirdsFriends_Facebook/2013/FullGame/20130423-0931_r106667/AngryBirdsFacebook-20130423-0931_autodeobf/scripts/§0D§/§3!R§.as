package §0D§
{
   import §%!I§.§6"'§;
   import §%!I§.§7"1§;
   import §%!I§.§]!M§;
   import §,l§.§#!>§;
   import §,l§.§;!O§;
   import §5!Y§.§9"6§;
   import §8!^§.§,p§;
   import §8!^§.§15§;
   import §8!^§.§;!7§;
   import §8";§.§+d§;
   import §9@§.§4Z§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import flash.events.Event;
   
   public class §3!R§
   {
      
      public static const §4!9§:String = "STANDARD";
      
      public static const §%!B§:int = 100000;
      
      private static var § N§:int = 0;
      
      private static var §+!Y§:§3!R§;
       
      
      private var §4!P§:Boolean = false;
      
      private var §+]§:Object;
      
      private var §9"[§:§3j§;
      
      private var §9"$§:§4Z§;
      
      private var §1!s§:String = "STANDARD";
      
      private var §2e§:Number;
      
      public function §3!R§()
      {
         super();
         this.§&W§();
      }
      
      public static function get §&"5§() : §3!R§
      {
         if(§+!Y§ == null)
         {
            §+!Y§ = new §3!R§();
         }
         return §+!Y§;
      }
      
      public static function §"A§(param1:Number) : String
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
      
      private function §&W§() : void
      {
         var _loc1_:§3j§ = null;
         this.§9"$§ = new §4Z§();
         _loc1_ = new §3j§(§4!9§,null,"","",false);
         _loc1_.§+!>§(§]!M§.STATE_NAME,§]!M§);
         _loc1_.§+!>§(§6"'§.STATE_NAME,§6"'§);
         _loc1_.§+!>§(§7"1§.STATE_NAME,§7"1§);
         this.§9"$§[_loc1_.§1!8§] = _loc1_;
         _loc1_ = new §3j§("EASTER_1",null,"","EASTER_BUTTON_1",false);
         _loc1_.§;[§ = null;
         _loc1_.§+!>§(§,p§.STATE_NAME,§,p§);
         _loc1_.§+!>§(§15§.STATE_NAME,§15§);
         _loc1_.§+!>§(§7"1§.STATE_NAME,§;!7§);
         this.§9"$§[_loc1_.§1!8§] = _loc1_;
         _loc1_ = new §3j§("EASTER_2",null,"","EASTER_BUTTON_2",false);
         _loc1_.§;[§ = null;
         _loc1_.§+!>§(§,p§.STATE_NAME,§,p§);
         _loc1_.§+!>§(§15§.STATE_NAME,§15§);
         _loc1_.§+!>§(§7"1§.STATE_NAME,§;!7§);
         this.§9"$§[_loc1_.§1!8§] = _loc1_;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(!this.§4!P§)
         {
            if(this.§5"S§() == 0)
            {
               this.§4!P§ = true;
               if(§%"S§.§!C§.§%^§().indexOf("Tournament") != -1)
               {
                  ++§ N§;
                  if(§ N§ > 2)
                  {
                     §9"6§.§'m§();
                     § N§ = 0;
                  }
                  else
                  {
                     §9"6§.§6T§();
                  }
               }
            }
         }
      }
      
      public function injectData(param1:Object) : void
      {
         AngryBirdsFP11.§>m§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§4!P§ = false;
         param1.currentStandings = §;!O§.§>k§(param1.currentStandings,"players");
         this.§+]§ = param1;
         if(this.§+]§ && this.§+]§.currentTournament)
         {
            this.§2e§ = this.currentTournament.endTime;
         }
         if(this.§#"Z§ && this.§9"$§[this.§#"Z§])
         {
            this.§9"[§ = this.§9"$§[this.§#"Z§];
         }
         else if(this.§#"Z§ == "" && this.§9"$§[§4!9§])
         {
            this.§9"[§ = this.§9"$§[§4!9§];
         }
         if(this.§%!^§ && this.§+]§.currentTournament && this.§+]§.currentTournament.powerUpFrenzy)
         {
            this.§9"[§.§=l§ = this.§+]§.currentTournament.powerUpFrenzy;
         }
         if(§%"S§.§!C§.§'!t§)
         {
            this.§>4§();
         }
      }
      
      public function §>4§() : void
      {
         var _loc2_:§+d§ = null;
         var _loc1_:Boolean = false;
         if(this.§#"Z§ != "" && this.§1!s§ != this.§#"Z§ && this.§9"[§)
         {
            this.§9"[§.§6k§();
            this.§1!s§ = this.§#"Z§;
            _loc1_ = true;
         }
         else if(this.§1!s§ != §4!9§ && this.§#"Z§ == "")
         {
            this.§9"[§.§6k§();
            this.§1!s§ = §4!9§;
            _loc1_ = true;
         }
         if(_loc1_)
         {
            _loc2_ = §?l§.§ "G§.§2!d§();
            if(_loc2_ != null)
            {
               if(_loc2_.mName == §]!M§.STATE_NAME)
               {
                  §%"S§.§!C§.§`H§(§]!M§.STATE_NAME);
               }
            }
         }
      }
      
      public function §%!f§(param1:String) : §3j§
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§9"$§)
         {
            if(_loc2_ == param1.toUpperCase())
            {
               return this.§9"$§[_loc2_];
            }
         }
         return null;
      }
      
      public function get currentTournament() : Object
      {
         return this.§+]§.currentTournament;
      }
      
      public function get §5h§() : Object
      {
         return this.currentTournament.enteredDraw;
      }
      
      public function get §%!^§() : §3j§
      {
         return this.§9"[§;
      }
      
      private function get §#"Z§() : String
      {
         if(this.currentTournament != null && this.currentTournament.brandedTournament != null)
         {
            return (this.currentTournament.brandedTournament as String).toUpperCase();
         }
         return "";
      }
      
      public function get §&"N§() : String
      {
         if(this.currentTournament != null && this.§+]§.nextTournamentBrand != null)
         {
            return this.§+]§.nextTournamentBrand;
         }
         return "";
      }
      
      public function get currentStandings() : Object
      {
         return this.§+]§.currentStandings;
      }
      
      public function get previousTournament() : Object
      {
         return this.§+]§.previousTournament;
      }
      
      public function get lastResult() : Object
      {
         return this.§+]§.lastResult;
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
         for each(_loc2_ in this.§?x§)
         {
            if(_loc2_.levelId == param1)
            {
               return this.§8J§(_loc2_);
            }
         }
         return false;
      }
      
      public function §,"4§(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         for each(_loc3_ in this.§?x§)
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
         var _loc2_:Number = §%"S§.§!C§.§9"%§.§ Y§.§?!;§;
         for each(_loc3_ in this.§?x§)
         {
            if(_loc3_.levelId == param1)
            {
               return (_loc3_.unlockTime - _loc2_) / 1000;
            }
         }
         return -1;
      }
      
      private function §8J§(param1:Object) : Boolean
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
      
      public function get §8I§() : Array
      {
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§?x§)
         {
            _loc1_.push(_loc2_.levelId);
         }
         return _loc1_;
      }
      
      public function get §?x§() : Array
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
      
      public function get §7k§() : Array
      {
         if(this.previousTournament)
         {
            if(this.previousTournament.priceCounts)
            {
               return this.previousTournament.priceCounts;
            }
         }
         return [1000,500,100];
      }
      
      public function get §7!f§() : Array
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
      
      public function §5"S§() : int
      {
         var _loc1_:Number = 0;
         if(§%"S§.§!C§.§9"%§.§ Y§)
         {
            _loc1_ = §%"S§.§!C§.§9"%§.§ Y§.§?!;§;
         }
         var _loc2_:int = (this.§2e§ - _loc1_) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      public function §3L§(param1:String) : String
      {
         var _loc2_:int = this.§8I§.indexOf(param1);
         var _loc3_:String = this.§8I§[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.§8I§.length)
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §="S§(param1:String) : String
      {
         var _loc2_:int = this.§8I§.indexOf(param1);
         var _loc3_:String = this.§8I§[_loc2_ + 1];
         if(_loc2_ >= 0 && _loc2_ < this.§8I§.length && this.isLevelOpen(_loc3_))
         {
            return _loc3_;
         }
         return "";
      }
      
      public function §5K§(param1:String) : int
      {
         return this.§8I§.indexOf(param1) + 1;
      }
      
      public function §^E§() : Array
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
      
      public function §^"'§() : Array
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
      
      public function §2>§(param1:String) : void
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
      
      public function §@!X§() : Array
      {
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.players)
         {
            if(_loc2_.i)
            {
               _loc1_.push(§#!>§.§?$§(_loc2_));
            }
         }
         return _loc1_;
      }
      
      public function §^!y§() : Array
      {
         var _loc1_:int = this.§5"S§();
         return this.§2"I§(_loc1_);
      }
      
      public function §2"I§(param1:Number) : Array
      {
         var _loc2_:int = param1 / 60;
         var _loc3_:* = "";
         var _loc4_:uint = 11324655;
         var _loc5_:int = Math.floor(_loc2_ / 1440);
         var _loc6_:int;
         if((_loc6_ = Math.floor(_loc2_ / 60)) < 24)
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
      
      public function §0h§() : int
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.players)
         {
            if(_loc1_.u == (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§)
            {
               return _loc1_.r;
            }
         }
         return §%!B§;
      }
   }
}
