package §"!P§
{
   import § "=§.§6!X§;
   import §,!_§.§"!c§;
   import §,!_§.§2!%§;
   import §,!_§.§>!_§;
   import §,#+§.§ "0§;
   import §,#+§.§7!m§;
   import §-T§.§!!p§;
   import §0"I§.Base64;
   import §1!o§.§;!J§;
   import §5!q§.§"!A§;
   import §5!q§.§6"@§;
   import §8!<§.§>"e§;
   import §8_§.§!!t§;
   import §8_§.§-"5§;
   import §8_§.§<Z§;
   import §8_§.§>+§;
   import §@##§.§]"C§;
   import §@b§.§-";§;
   import §`"8§.§#f§;
   import §`"8§.§-!w§;
   import §`"8§.§6`§;
   import §`"8§.§>6§;
   import com.angrybirds.§;!e§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class §3G§ extends §5X§
   {
      
      public static const §%g§:String = "tt";
       
      
      private var §6l§:§!!p§;
      
      private var §`"h§:§!!t§;
      
      private var §!C§:String;
      
      private var §'!"§:Boolean = false;
      
      protected var §&#§:Dictionary;
      
      protected var §+?§:String;
      
      private var §7"%§:Array;
      
      private var §,!D§:Array;
      
      private var §1c§:Array;
      
      private var §;!6§:Array;
      
      private var §"",§:Array;
      
      private var §'s§:Array;
      
      private var §&G§:Array;
      
      private var §0!4§:Array;
      
      private var §0q§:Array;
      
      private var mName:Array;
      
      private var §0! §:Array;
      
      private var §4t§:Array;
      
      private var dynamic:Array;
      
      private var §&r§:Array;
      
      private var §>!P§:Array;
      
      private var § ,§:Array;
      
      private var §%"N§:§"!c§;
      
      private var §>"F§:Vector.<String>;
      
      protected var §,!^§:Boolean;
      
      public function §3G§(param1:String, param2:§7!m§, param3:Array, param4:String, param5:Object)
      {
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         this.§7"%§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§,!D§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§1c§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§;!6§ = [97,99,116,117,97,108,76,101,118,101,108];
         this.§"",§ = [101,112,105,115,111,100,101];
         this.§'s§ = [108,101,118,101,108];
         this.§&G§ = [112,111,105,110,116,115];
         this.§0!4§ = [115,116,97,114,115];
         this.§0q§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§0! § = [115,101,99,117,114,105,116,121];
         this.§4t§ = [98,108,111,99,107,115];
         this.dynamic = [101,120,116,114,97,66,105,114,100];
         this.§&r§ = [99,111,117,110,116,67,111,110,115,117,109,97,98,108,101,115];
         this.§>!P§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         super(param1,param2);
         this.§,!^§ = false;
         this.§&#§ = new Dictionary();
         this.§`"h§ = new §!!t§(§;"@§.SERVER_ROOT);
         this.§6l§ = new §!!p§(§;"@§.SERVER_ROOT);
         this.§ ,§ = [];
         this.§>"F§ = new Vector.<String>(0);
         for each(_loc6_ in param3)
         {
            if(_loc6_.p)
            {
               §&'§(_loc6_.l,_loc6_.p);
            }
            if(_loc6_.me)
            {
               §?"I§(_loc6_.l,_loc6_.me);
            }
            if(_loc6_.r)
            {
               this.§2"z§(_loc6_.l,_loc6_.r);
            }
         }
         _loc7_ = param5.tutorials;
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            this.§>"F§.push(_loc7_[_loc8_]);
            _loc8_++;
         }
      }
      
      public function get §2!'§() : String
      {
         return this.§!C§;
      }
      
      public function getRankForLevel(param1:String) : int
      {
         if(this.§&#§[param1])
         {
            return this.§&#§[param1];
         }
         return 0;
      }
      
      public function §2"z§(param1:String, param2:int) : void
      {
         this.§&#§[param1] = param2;
      }
      
      public function §?!@§(param1:String) : void
      {
         if(this.§&#§[param1])
         {
            delete this.§&#§[param1];
         }
      }
      
      public function §[C§(param1:String) : void
      {
         if(§4"G§[param1])
         {
            delete §4"G§[param1];
         }
      }
      
      private function §4""§(param1:String, param2:Boolean) : String
      {
         var _loc3_:§ "0§ = § !p§.getEpisodeForLevel(param1);
         return §>"e§.§5"H§([!!_loc3_ ? _loc3_.name : this.§,k§(),param1,§;!e§.§%e§.getScore(0),getStarsForLevel(param1,§;!e§.§%e§.getScore(10)),§;!e§.§%e§.getEagleScore(),this.§^!?§()].join("|"));
      }
      
      private function §^!n§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §^!?§() : String
      {
         return this.§^!n§(this.mName);
      }
      
      private function §'p§() : String
      {
         return this.§^!n§(this.§7"%§);
      }
      
      private function §,k§() : String
      {
         return this.§^!n§(this.§,!D§);
      }
      
      private function §]#5§() : String
      {
         return this.§^!n§(this.§1c§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§>"F§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         var _loc6_:§2!%§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            if(this.§>"F§.indexOf(_loc3_) == -1)
            {
               this.§>"F§.push(_loc3_);
            }
         }
         _loc4_ = §?"]§ + "/tutorialshown/" + param1;
         (_loc5_ = §>!_§.§^O§(_loc4_)).method = URLRequestMethod.POST;
         _loc5_.contentType = this.§]#5§();
         (_loc6_ = new §2!%§(null,2)).addEventListener(Event.COMPLETE,this.§]2§);
         _loc6_.addEventListener(IOErrorEvent.IO_ERROR,this.§;!u§);
         _loc6_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;!u§);
         _loc6_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc6_.load(_loc5_);
      }
      
      private function §]2§(param1:Event) : void
      {
         var _loc2_:§2!%§ = null;
         if(param1.currentTarget is §2!%§)
         {
            _loc2_ = param1.currentTarget as §2!%§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§]2§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §;!u§(param1:Event) : void
      {
         var _loc2_:§2!%§ = null;
         if(param1.currentTarget is §2!%§)
         {
            _loc2_ = param1.currentTarget as §2!%§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§]2§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      public function get §"!I§() : Boolean
      {
         return this.§'!"§;
      }
      
      private function §`#5§(param1:§>+§) : void
      {
         if(param1.§>"T§ && !§-!w§(§;"@§.singleton.dataModel).§`!§.§'O§)
         {
            this.§`!&§(param1.§>"T§,true);
         }
         this.§!C§ = param1.§5u§;
         this.§'!"§ = false;
      }
      
      private function §`!&§(param1:§<Z§, param2:Boolean = false) : void
      {
         §-!w§(§;"@§.singleton.dataModel).§`!§.update(param1.§-!y§,param1.§'e§,param1.§5!%§,param1.§2!k§,param2);
      }
      
      public function §58§(param1:String, param2:String, param3:String, param4:String, param5:int) : §]"C§
      {
         if(this.§'!"§)
         {
            throw new Error();
         }
         return this.§6l§.§58§(param1,param2,param3,param4,param5,this.§!C§,this.§,`§,this.§8!f§);
      }
      
      public function §%"=§(param1:§]"C§) : void
      {
         this.§6l§.§%"+§(param1);
      }
      
      protected function §,`§(param1:§6!X§) : void
      {
         var _loc3_:§-!w§ = null;
         var _loc2_:Boolean = false;
         if(param1)
         {
            _loc3_ = §-!w§(§;"@§.singleton.dataModel);
            _loc3_.§=>§.§""e§(param1.itemID,param1.balance);
            if(!isNaN(param1.starCoins))
            {
               _loc3_.§;L§.§8"2§(param1.starCoins);
            }
            if(param1.allowed && param1.§2!'§ != this.§!C§)
            {
               _loc2_ = true;
               this.§!C§ = param1.§2!'§;
               dispatchEvent(new §;!J§(§;!J§.§``§,_loc2_,param1.itemID));
               return;
            }
            throw new Error("--#BlackFacebookUserProgress[onUsePowerupComplete]:: ERROR, result.allowed[" + param1.allowed + "], same token?[" + (param1.§2!'§ == this.§!C§) + "]");
         }
         dispatchEvent(new §;!J§(§;!J§.§``§,_loc2_,""));
      }
      
      protected function §8!f§(param1:ErrorEvent) : void
      {
         dispatchEvent(new §;!J§(§;!J§.§``§,false,""));
      }
      
      public function §5O§(param1:String, param2:Boolean) : void
      {
         this.§'!"§ = true;
         this.§`"h§.§-!$§(param1,param2,this.§`#5§);
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc9_:String = null;
         if(this.§'!"§)
         {
            throw new Error();
         }
         this.§,!^§ = true;
         var _loc4_:§ "0§ = § !p§.getEpisodeForLevel(param1);
         var _loc5_:int = §;!e§.§%e§.getScore(0);
         var _loc6_:int = getStarsForLevel(param1,§;!e§.§%e§.getScore(10));
         var _loc7_:Object = {};
         var _loc8_:Boolean = §6"@§(§;!e§.§<x§).§`#§(§#f§.§]"i§);
         if(param3)
         {
            _loc9_ = (§-!w§(§;"@§.singleton.dataModel).§2!J§.levelNames.indexOf(param1) + 1).toString();
         }
         else
         {
            _loc9_ = (_loc4_.getLevelIndex(param1) + 1).toString();
         }
         _loc7_[this.§^!n§(this.§"",§)] = !!_loc4_ ? _loc4_.name : this.§,k§();
         _loc7_[this.§^!n§(this.§'s§)] = param1;
         _loc7_[this.§^!n§(this.§&G§)] = _loc5_;
         _loc7_[this.§^!n§(this.§0!4§)] = _loc6_;
         _loc7_[this.§^!n§(this.§0q§)] = §;!e§.§%e§.getEagleScore();
         _loc7_[this.§^!n§(this.§0! §)] = this.§4""§(param1,param3);
         _loc7_[this.§^!n§(this.§4t§)] = §"!A§.§3X§();
         var _loc10_:§-";§ = §-!w§(§;"@§.singleton.dataModel).birdLevels;
         _loc7_.birdLevels = {
            "red":_loc10_.red,
            "yellow":_loc10_.yellow,
            "blue":_loc10_.blue,
            "black":_loc10_.black,
            "big":_loc10_.§>!d§,
            "pink":_loc10_.pink
         };
         _loc7_[this.§^!n§(this.§>!P§)] = this.§!C§;
         _loc7_[this.§^!n§(this.§&r§)] = §6"@§(§;!e§.§<x§).§]"4§();
         _loc7_[this.§^!n§(this.§;!6§)] = _loc9_;
         _loc7_[this.§^!n§(this.dynamic)] = _loc8_;
         var _loc11_:URLRequest;
         (_loc11_ = §>!_§.§^O§(§?"]§ + this.§^!n§(this.§7"%§) + "/" + param3.toString())).method = URLRequestMethod.POST;
         _loc11_.contentType = this.§^!n§(this.§1c§);
         var _loc12_:String = JSON.stringify(_loc7_);
         _loc11_.data = Base64.encode(_loc12_);
         this.§`"h§.saveLevelProgress(_loc11_,this.§!R§);
      }
      
      private function §!R§(param1:§-"5§) : void
      {
         var _loc3_:§6`§ = null;
         if(param1.§>"T§)
         {
            this.§`!&§(param1.§>"T§);
         }
         if(param1.birdLevels)
         {
            §-!w§(§;"@§.singleton.dataModel).birdLevels.update(param1.birdLevels);
         }
         if(!isNaN(param1.starCoins))
         {
            §-!w§(§;"@§.singleton.dataModel).§;L§.§8"2§(param1.starCoins);
         }
         if(param1.§+!l§)
         {
            if(param1.§+!l§ == "StarCoin")
            {
               _loc3_ = §-!w§(§;"@§.singleton.dataModel).§;L§;
               _loc3_.§8"2§(_loc3_.starCoins + param1.§""f§);
            }
            else
            {
               §-!w§(§;"@§.singleton.dataModel).§=>§.§""e§(param1.§+!l§,§-!w§(§;"@§.singleton.dataModel).§=>§.§"!V§(param1.§+!l§) + param1.§""f§);
            }
         }
         this.§,!^§ = false;
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§!#,§);
         _loc2_.data = param1;
         dispatchEvent(_loc2_);
      }
      
      public function get §,"X§() : Boolean
      {
         return this.§,!^§;
      }
      
      private function onError(param1:Event) : void
      {
      }
      
      public function get userName() : String
      {
         return this.§+?§;
      }
      
      override public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:§>6§ = null;
         var _loc3_:Object = null;
         if(param1.indexOf("2000-") != -1)
         {
            _loc2_ = §-!w§(§;"@§.singleton.dataModel).§2!J§;
            _loc3_ = _loc2_.§]!@§(param1);
            if(!_loc3_)
            {
               return false;
            }
            if(_loc3_.unlocksAt != undefined && _loc3_.unlocksAt > getTimer())
            {
               return false;
            }
            return true;
         }
         return super.isLevelOpen(param1);
      }
      
      public function get §70§() : Boolean
      {
         return isLevelPassed(§ !p§.getEpisodeByName("2").getLevelName(8));
      }
   }
}
