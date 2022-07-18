package § "4§
{
   import §!"W§.§##L§;
   import §"?§.§0§;
   import §,"N§.§6"w§;
   import §,"N§.§=o§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §2!!§.§7§;
   import §5t§.Base64;
   import §6!H§.§&"f§;
   import §9p§.§!#`§;
   import §9p§.§#"T§;
   import §9p§.§1!J§;
   import §9p§.§=<§;
   import §;#Q§.§6!Y§;
   import §>#K§.§8!u§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import §^#>§.§&'§;
   import §^#>§.§8"f§;
   import §`!o§.§+"k§;
   import §`!o§.§2,§;
   import §`!o§.§<9§;
   import com.angrybirds.§,!q§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class §7q§ extends §8!R§
   {
      
      public static const §""6§:String = "tt";
       
      
      private var § !?§:§0#1§;
      
      private var §#7§:§!#`§;
      
      private var §0!u§:String;
      
      private var §7!O§:Boolean = false;
      
      protected var §8#B§:Dictionary;
      
      protected var §9#Y§:String;
      
      private var §5[§:Array;
      
      private var §2!V§:Array;
      
      private var §5O§:Array;
      
      private var §07§:Array;
      
      private var §?#G§:Array;
      
      private var §-!e§:Array;
      
      private var §9+§:Array;
      
      private var §+N§:Array;
      
      private var §""_§:Array;
      
      private var mName:Array;
      
      private var §9!A§:Array;
      
      private var §!#U§:Array;
      
      private var §"!h§:Array;
      
      private var §<!I§:Array;
      
      private var §9i§:Array;
      
      private var §[^§:Array;
      
      private var §+"g§:§2,§;
      
      private var §&!]§:Vector.<String>;
      
      protected var §<"5§:Boolean;
      
      public function §7q§(param1:String, param2:§+"2§, param3:Array, param4:String, param5:Object)
      {
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         this.§5[§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§2!V§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§5O§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§07§ = [97,99,116,117,97,108,76,101,118,101,108];
         this.§?#G§ = [101,112,105,115,111,100,101];
         this.§-!e§ = [108,101,118,101,108];
         this.§9+§ = [112,111,105,110,116,115];
         this.§+N§ = [115,116,97,114,115];
         this.§""_§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§9!A§ = [115,101,99,117,114,105,116,121];
         this.§!#U§ = [98,108,111,99,107,115];
         this.§"!h§ = [101,120,116,114,97,66,105,114,100];
         this.§<!I§ = [99,111,117,110,116,67,111,110,115,117,109,97,98,108,101,115];
         this.§9i§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         super(param1,param2);
         this.§<"5§ = false;
         this.§8#B§ = new Dictionary();
         this.§#7§ = new §!#`§(§4#;§.SERVER_ROOT);
         this.§ !?§ = new §0#1§(§4#;§.SERVER_ROOT);
         this.§[^§ = [];
         this.§&!]§ = new Vector.<String>(0);
         for each(_loc6_ in param3)
         {
            if(_loc6_.p)
            {
               §9!R§(_loc6_.l,_loc6_.p);
            }
            if(_loc6_.me)
            {
               §]"D§(_loc6_.l,_loc6_.me);
            }
            if(_loc6_.r)
            {
               this.§+!W§(_loc6_.l,_loc6_.r);
            }
         }
         _loc7_ = param5.tutorials;
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            this.§&!]§.push(_loc7_[_loc8_]);
            _loc8_++;
         }
      }
      
      public function get §3""§() : String
      {
         return this.§0!u§;
      }
      
      public function getRankForLevel(param1:String) : int
      {
         if(this.§8#B§[param1])
         {
            return this.§8#B§[param1];
         }
         return 0;
      }
      
      public function §+!W§(param1:String, param2:int) : void
      {
         this.§8#B§[param1] = param2;
      }
      
      public function §'"p§(param1:String) : void
      {
         if(this.§8#B§[param1])
         {
            delete this.§8#B§[param1];
         }
      }
      
      public function §'!C§(param1:String) : void
      {
         if(§,`§[param1])
         {
            delete §,`§[param1];
         }
      }
      
      private function §9t§(param1:String, param2:Boolean) : String
      {
         var _loc3_:§3![§ = §+!b§.getEpisodeForLevel(param1);
         return §8!u§.§`q§([!!_loc3_ ? _loc3_.name : this.§<!5§(),param1,§,!q§.§>k§.getScore(0),getStarsForLevel(param1,§,!q§.§>k§.getScore(10)),§,!q§.§>k§.getEagleScore(),this.§[!3§()].join("|"));
      }
      
      private function §+!E§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §[!3§() : String
      {
         return this.§+!E§(this.mName);
      }
      
      private function §!F§() : String
      {
         return this.§+!E§(this.§5[§);
      }
      
      private function §<!5§() : String
      {
         return this.§+!E§(this.§2!V§);
      }
      
      private function §9"^§() : String
      {
         return this.§+!E§(this.§5O§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§&!]§.indexOf(param1) != -1)
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
         var _loc6_:§+"k§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            if(this.§&!]§.indexOf(_loc3_) == -1)
            {
               this.§&!]§.push(_loc3_);
            }
         }
         _loc4_ = §@#L§ + "/tutorialshown/" + param1;
         (_loc5_ = §<9§.§""I§(_loc4_)).method = URLRequestMethod.POST;
         _loc5_.contentType = this.§9"^§();
         (_loc6_ = new §+"k§(null,2)).addEventListener(Event.COMPLETE,this.§7!@§);
         _loc6_.addEventListener(IOErrorEvent.IO_ERROR,this.§!-§);
         _loc6_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!-§);
         _loc6_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc6_.load(_loc5_);
      }
      
      private function §7!@§(param1:Event) : void
      {
         var _loc2_:§+"k§ = null;
         if(param1.currentTarget is §+"k§)
         {
            _loc2_ = param1.currentTarget as §+"k§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§7!@§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §!-§(param1:Event) : void
      {
         var _loc2_:§+"k§ = null;
         if(param1.currentTarget is §+"k§)
         {
            _loc2_ = param1.currentTarget as §+"k§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§7!@§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      public function get §4r§() : Boolean
      {
         return this.§7!O§;
      }
      
      private function §[!g§(param1:§=<§) : void
      {
         if(param1.§ 8§ && !§@#B§(§4#;§.singleton.dataModel).§^"J§.§3!@§)
         {
            this.§09§(param1.§ 8§,true);
         }
         this.§0!u§ = param1.§%i§;
         this.§7!O§ = false;
      }
      
      private function §09§(param1:§1!J§, param2:Boolean = false) : void
      {
         §@#B§(§4#;§.singleton.dataModel).§^"J§.update(param1.§+#O§,param1.§+!a§,param1.§0!-§,param1.§6"g§,param2);
      }
      
      public function §7# §(param1:String, param2:String, param3:String, param4:String, param5:int) : §6!Y§
      {
         if(this.§7!O§)
         {
            throw new Error();
         }
         return this.§ !?§.§7# §(param1,param2,param3,param4,param5,this.§0!u§,this.§,l§,this.§2^§);
      }
      
      public function §"!1§(param1:§6!Y§) : void
      {
         this.§ !?§.§1!e§(param1);
      }
      
      protected function §,l§(param1:§7#7§) : void
      {
         var _loc3_:§@#B§ = null;
         var _loc2_:Boolean = false;
         if(param1)
         {
            _loc3_ = §@#B§(§4#;§.singleton.dataModel);
            _loc3_.§]"<§.§#!+§(param1.itemID,param1.balance);
            if(!isNaN(param1.starCoins))
            {
               _loc3_.§`!W§.§@w§(param1.starCoins);
            }
            if(param1.allowed && param1.§3""§ != this.§0!u§)
            {
               _loc2_ = true;
               this.§0!u§ = param1.§3""§;
               dispatchEvent(new §##L§(§##L§.§0"5§,_loc2_,param1.itemID));
               return;
            }
            throw new Error("--#BlackFacebookUserProgress[onUsePowerupComplete]:: ERROR, result.allowed[" + param1.allowed + "], same token?[" + (param1.§3""§ == this.§0!u§) + "]");
         }
         dispatchEvent(new §##L§(§##L§.§0"5§,_loc2_,""));
      }
      
      protected function §2^§(param1:ErrorEvent) : void
      {
         dispatchEvent(new §##L§(§##L§.§0"5§,false,""));
      }
      
      public function §9"t§(param1:String, param2:Boolean) : void
      {
         this.§7!O§ = true;
         this.§#7§.§>!4§(param1,param2,this.§[!g§);
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc9_:String = null;
         if(this.§7!O§)
         {
            throw new Error();
         }
         this.§<"5§ = true;
         var _loc4_:§3![§ = §+!b§.getEpisodeForLevel(param1);
         var _loc5_:int = §,!q§.§>k§.getScore(0);
         var _loc6_:int = getStarsForLevel(param1,§,!q§.§>k§.getScore(10));
         var _loc7_:Object = {};
         var _loc8_:Boolean = §8"f§(§,!q§.§9!,§).§8%§(§6"w§.§1!m§);
         if(param3)
         {
            _loc9_ = (§@#B§(§4#;§.singleton.dataModel).§!!C§.levelNames.indexOf(param1) + 1).toString();
         }
         else
         {
            _loc9_ = (_loc4_.getLevelIndex(param1) + 1).toString();
         }
         _loc7_[this.§+!E§(this.§?#G§)] = !!_loc4_ ? _loc4_.name : this.§<!5§();
         _loc7_[this.§+!E§(this.§-!e§)] = param1;
         _loc7_[this.§+!E§(this.§9+§)] = _loc5_;
         _loc7_[this.§+!E§(this.§+N§)] = _loc6_;
         _loc7_[this.§+!E§(this.§""_§)] = §,!q§.§>k§.getEagleScore();
         _loc7_[this.§+!E§(this.§9!A§)] = this.§9t§(param1,param3);
         _loc7_[this.§+!E§(this.§!#U§)] = §&'§.§2w§();
         var _loc10_:§&"f§ = §@#B§(§4#;§.singleton.dataModel).birdLevels;
         _loc7_.birdLevels = {
            "red":_loc10_.red,
            "yellow":_loc10_.yellow,
            "blue":_loc10_.blue,
            "black":_loc10_.black,
            "big":_loc10_.§8#<§,
            "pink":_loc10_.pink
         };
         _loc7_[this.§+!E§(this.§9i§)] = this.§0!u§;
         _loc7_[this.§+!E§(this.§<!I§)] = §8"f§(§,!q§.§9!,§).§2!o§();
         _loc7_[this.§+!E§(this.§07§)] = _loc9_;
         _loc7_[this.§+!E§(this.§"!h§)] = _loc8_;
         var _loc11_:URLRequest;
         (_loc11_ = §<9§.§""I§(§@#L§ + this.§+!E§(this.§5[§) + "/" + param3.toString())).method = URLRequestMethod.POST;
         _loc11_.contentType = this.§+!E§(this.§5O§);
         var _loc12_:String = JSON.stringify(_loc7_);
         _loc11_.data = Base64.encode(_loc12_);
         this.§#7§.saveLevelProgress(_loc11_,this.§?"x§);
      }
      
      private function §?"x§(param1:§#"T§) : void
      {
         var _loc3_:§=o§ = null;
         if(param1.§ 8§)
         {
            this.§09§(param1.§ 8§);
         }
         if(param1.birdLevels)
         {
            §@#B§(§4#;§.singleton.dataModel).birdLevels.update(param1.birdLevels);
         }
         if(!isNaN(param1.starCoins))
         {
            §@#B§(§4#;§.singleton.dataModel).§`!W§.§@w§(param1.starCoins);
         }
         if(param1.§@!?§)
         {
            if(param1.§@!?§ == "StarCoin")
            {
               _loc3_ = §@#B§(§4#;§.singleton.dataModel).§`!W§;
               _loc3_.§@w§(_loc3_.starCoins + param1.§+",§);
            }
            else
            {
               §@#B§(§4#;§.singleton.dataModel).§]"<§.§#!+§(param1.§@!?§,§@#B§(§4#;§.singleton.dataModel).§]"<§.§8#K§(param1.§@!?§) + param1.§+",§);
            }
         }
         this.§<"5§ = false;
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§3#V§);
         _loc2_.data = param1;
         dispatchEvent(_loc2_);
      }
      
      public function get §7"`§() : Boolean
      {
         return this.§<"5§;
      }
      
      private function onError(param1:Event) : void
      {
      }
      
      public function get userName() : String
      {
         return this.§9#Y§;
      }
      
      override public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:§@"b§ = null;
         var _loc3_:Object = null;
         if(param1.indexOf("2000-") != -1)
         {
            _loc2_ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
            _loc3_ = _loc2_.§["^§(param1);
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
      
      public function get §#F§() : Boolean
      {
         return isLevelPassed(§+!b§.getEpisodeByName("2").getLevelName(8));
      }
   }
}
