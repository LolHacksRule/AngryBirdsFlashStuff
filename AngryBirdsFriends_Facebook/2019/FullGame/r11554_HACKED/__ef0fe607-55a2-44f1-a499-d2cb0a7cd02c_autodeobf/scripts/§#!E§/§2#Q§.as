package §#!E§
{
   import § !D§.§4B§;
   import § !D§.§@#z§;
   import §!!T§.§1"9§;
   import §"$=§.§'![§;
   import §"$=§.§,-§;
   import §"$=§.§[§;
   import §+"u§.§^"C§;
   import §+#B§.§["Q§;
   import §3=§.§0!e§;
   import §9#K§.Base64;
   import §;$5§.§9§;
   import §=!2§.§%"T§;
   import §>"Q§.§"!;§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §>"Q§.§7"2§;
   import §?!N§.§%#§;
   import §?!N§.EggCollectedPopup;
   import §?!N§.ErrorPopup;
   import §[";§.§8!n§;
   import §]#+§.SHA1;
   import §`D§.§@!7§;
   import §`D§.UserProgressEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §2#Q§ extends §@!7§
   {
      
      public static const §;R§:String = "tt";
      
      public static const §-!5§:String = "btt";
      
      public static const §6$C§:String = "RAFFLE_";
      
      public static const §^A§:String = "END_RAFFLE_";
      
      public static const §?!<§:String = "END_RAFFLE_WINNERS_";
       
      
      protected var §-"_§:Dictionary;
      
      private var §@^§:Dictionary;
      
      private var §9"U§:Dictionary;
      
      private var §+#]§:Dictionary;
      
      protected var §4!$§:String;
      
      protected var §'!j§:String;
      
      protected var §3I§:String;
      
      private var §]`§:Array;
      
      private var § !t§:Array;
      
      private var §,"<§:Array;
      
      private var §+! §:Array;
      
      private var §3-§:Array;
      
      private var §&#"§:Array;
      
      private var §=#=§:Array;
      
      private var §1"3§:Array;
      
      private var §5!2§:Array;
      
      private var §-!$§:Array;
      
      private var §-!O§:Array;
      
      private var §@;§:Array;
      
      private var §]!Q§:Array;
      
      private var §'#<§:Array;
      
      private var §@H§:Array;
      
      private var §2! §:Array;
      
      private var §;!K§:§7"2§;
      
      private var §^$>§:Array;
      
      private var §[!?§:§7"2§;
      
      private var §9#h§:Array;
      
      public function §2#Q§(param1:String, param2:§'![§)
      {
         this.§]`§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§ !t§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§,"<§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§+! § = [97,99,116,117,97,108,76,101,118,101,108];
         this.§3-§ = [101,112,105,115,111,100,101];
         this.§&#"§ = [108,101,118,101,108];
         this.§=#=§ = [112,111,105,110,116,115];
         this.§1"3§ = [115,116,97,114,115];
         this.§5!2§ = [116,111,117,114,110,97,109,101,110,116,73,100];
         this.§-!$§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.§-!O§ = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§@;§ = [115,101,99,117,114,105,116,121];
         this.§]!Q§ = [98,108,111,99,107,115];
         this.§'#<§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§@H§ = [117,115,101,100,67,111,110,115,117,109,97,98,108,101,73,116,101,109,73,100,115];
         this.§2! § = [99,111,108,108,101,99,116,101,100,73,116,101,109,115];
         this.§9#h§ = [];
         super(param1,param2);
         this.§-"_§ = new Dictionary();
         this.§^$>§ = [];
         this.§@^§ = new Dictionary();
         this.§+#]§ = new Dictionary();
         this.§9"U§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§[#5§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §=! §(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §`g§() : int
      {
         var _loc3_:§[#5§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §8!`§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §3!m§() : int
      {
         var _loc3_:§[#5§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §]-§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §^!q§() : Dictionary
      {
         var _loc3_:int = 0;
         var _loc4_:§[#5§ = null;
         var _loc5_:String = null;
         var _loc1_:Dictionary = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = 0;
            _loc4_ = mLevelManager.getEpisode(_loc2_);
            for each(_loc5_ in _loc4_.getLevelNames())
            {
               if(getStarsForLevel(_loc5_) > 0)
               {
                  _loc3_++;
               }
            }
            _loc1_[_loc4_.writtenName] = _loc3_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §7"s§() : Boolean
      {
         var _loc3_:§[#5§ = null;
         var _loc4_:String = null;
         var _loc1_:* = false;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            for each(_loc4_ in _loc3_.getLevelNames())
            {
               _loc1_ = getScoreForLevel(_loc4_) > 0;
               if(!_loc1_)
               {
                  return false;
               }
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §"!p§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!§""3§(_loc2_) && this.§var§(_loc2_) == 0)
            {
               return false;
            }
         }
         return true;
      }
      
      public function §var§(param1:String) : int
      {
         var _loc2_:§["Q§ = null;
         if(this.§9"U§[param1])
         {
            _loc2_ = this.§9"U§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §>#]§(param1:String) : int
      {
         if(this.§@^§[param1])
         {
            return this.§@^§[param1];
         }
         return 0;
      }
      
      public function §4,§(param1:String, param2:int) : void
      {
         this.§@^§[param1] = param2;
      }
      
      public function §9"m§(param1:String, param2:int) : void
      {
         var _loc3_:§["Q§ = new §["Q§(param2);
         this.§9"U§[param1] = _loc3_;
      }
      
      public function §5"I§(param1:String) : int
      {
         if(this.§-"_§[param1])
         {
            return this.§-"_§[param1];
         }
         return 0;
      }
      
      public function §8!S§(param1:String, param2:int) : void
      {
         this.§-"_§[param1] = param2;
      }
      
      public function §'",§(param1:String, param2:int) : void
      {
         this.§+#]§[param1] = param2;
      }
      
      public function §8#Z§(param1:String) : int
      {
         if(this.§+#]§[param1])
         {
            return this.§+#]§[param1];
         }
         return 0;
      }
      
      public function init(param1:String, param2:String, param3:Array) : void
      {
         this.§4!$§ = param1;
         this.§3I§ = param2;
         this.§9#h§ = param3 || [];
      }
      
      public function §#X§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§@^§ = new Dictionary();
         this.§9"U§ = new Dictionary();
         this.§+#]§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§9"m§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§4,§(_loc2_.l,_loc2_.r);
            }
            if(_loc2_.gr)
            {
               this.§'",§(_loc2_.l,_loc2_.gr);
            }
         }
      }
      
      public function §<9§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               §<$#§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.me)
            {
               §5!+§(_loc2_.l,_loc2_.me);
            }
            if(_loc2_.r)
            {
               this.§8!S§(_loc2_.l,_loc2_.r);
            }
         }
      }
      
      override public function isLevelOpen(param1:String) : Boolean
      {
         if(param1 == "10-1" || param1 == "11-1" || param1 == "3002-1")
         {
            return true;
         }
         if(param1.split("-")[0] == "1000")
         {
            return this.§!#h§(param1);
         }
         if(param1.split("-")[0] == "2000")
         {
            return §^"C§.§?q§.isLevelOpen(param1);
         }
         return super.isLevelOpen(param1);
      }
      
      private function §,T§(param1:String) : String
      {
         var _loc2_:§[#5§ = mLevelManager.getEpisodeForLevel(param1);
         return SHA1.§-$8§([!!_loc2_ ? _loc2_.name : this.§=!4§(),param1,§%"T§.§+"M§.getScore(),getStarsForLevel(param1,§%"T§.§+"M§.getScore()),§%"T§.§+"M§.getEagleScore(),this.§+"n§()].join("|"));
      }
      
      private function §0!m§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §+"n§() : String
      {
         return this.§0!m§(this.§-!O§);
      }
      
      private function §=#G§() : String
      {
         return this.§0!m§(this.§]`§);
      }
      
      private function §=!4§() : String
      {
         return this.§0!m§(this.§ !t§);
      }
      
      private function §3#Q§() : String
      {
         return this.§0!m§(this.§,"<§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§9#h§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§'!n§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§9#h§.push(_loc3_);
         }
         (_loc4_ = §2"6§.§;z§(§@"3§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§3#Q§();
         (_loc5_ = new §'!n§(null,2)).addEventListener(Event.COMPLETE,this.§1H§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§=!g§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!g§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §1H§(param1:Event) : void
      {
         var _loc2_:§7"2§ = null;
         if(param1.currentTarget is §7"2§)
         {
            _loc2_ = param1.currentTarget as §7"2§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§1H§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §=!g§(param1:Event) : void
      {
         var _loc2_:§7"2§ = null;
         if(param1.currentTarget is §7"2§)
         {
            _loc2_ = param1.currentTarget as §7"2§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§1H§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:int = 0;
         if(this.§6#P§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString()));
         }
         var _loc5_:URLRequest;
         (_loc5_ = §2"6§.§;z§(§@"3§ + this.§=#G§() + "/" + param3.toString() + "/" + param4.toString())).method = URLRequestMethod.POST;
         _loc5_.contentType = this.§3#Q§();
         var _loc6_:§[#5§ = mLevelManager.getEpisodeForLevel(param1);
         var _loc7_:int = §%"T§.§+"M§.getScore();
         var _loc8_:int = getStarsForLevel(param1,§%"T§.§+"M§.getScore());
         var _loc9_:Object = {};
         var _loc10_:String = (mLevelManager as §,-§).§#6§(param1);
         if(param3)
         {
            _loc10_ = String(§^"C§.§?q§.§6#T§(param1));
         }
         _loc9_[this.§0!m§(this.§3-§)] = !!_loc6_ ? _loc6_.name : this.§=!4§();
         _loc9_[this.§0!m§(this.§&#"§)] = param1;
         _loc9_[this.§0!m§(this.§=#=§)] = _loc7_;
         _loc9_[this.§0!m§(this.§-!$§)] = §%"T§.§+"M§.getEagleScore();
         _loc9_[this.§0!m§(this.§@;§)] = this.§,T§(param1);
         _loc9_[this.§0!m§(this.§]!Q§)] = §@#z§.§8#u§();
         _loc9_[this.§0!m§(this.§'#<§)] = §0!e§.§?#s§;
         _loc9_[this.§0!m§(this.§@H§)] = (§%"T§.§;`§ as §4B§).§4#h§();
         _loc9_[this.§0!m§(this.§+! §)] = _loc10_;
         _loc9_[this.§0!m§(this.§1"3§)] = _loc8_;
         if(param3 && §^"C§.§?q§.§4#-§)
         {
            _loc9_[this.§0!m§(this.§5!2§)] = §^"C§.§?q§.§4#-§.id;
         }
         var _loc11_:§8!n§;
         if(_loc11_ = §1"9§.§?q§.§[!8§() as §8!n§)
         {
            if((_loc12_ = _loc11_.§'-§()) > 0)
            {
               _loc9_[this.§0!m§(this.§2! §)] = _loc12_;
            }
         }
         _loc5_.data = Base64.encode(JSON.stringify(_loc9_));
         this.§;!K§ = new §'!n§();
         this.§;!K§.addEventListener(Event.COMPLETE,this.§'D§);
         this.§;!K§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§;!K§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§;!K§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§;!K§.load(_loc5_);
      }
      
      private function §'D§(param1:Event) : void
      {
         var _loc2_:Object = this.§;!K§.data;
         this.§;!K§ = null;
         if(_loc2_.errorCode || _loc2_.errorMessage)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Error saving score. Server return error code \'" + _loc2_.errorCode + "\', message: \'" + _loc2_.errorMessage + "\'."));
         }
         var _loc3_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§'$5§);
         _loc3_.data = _loc2_;
         var _loc4_:§8!n§;
         if(_loc4_ = §1"9§.§?q§.§[!8§() as §8!n§)
         {
            _loc4_.§%6§(_loc2_.userEvent);
         }
         dispatchEvent(_loc3_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §"!;§.§ #x§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§]"d§));
         }
         else
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Error event: " + param1.toString()));
         }
         this.§;!K§ = null;
      }
      
      public function §!#h§(param1:String) : Boolean
      {
         if(this.§^$>§ != null)
         {
            if(this.§^$>§.indexOf(param1) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §?!7§(param1:String) : void
      {
         if(this.§!#h§(param1))
         {
            return;
         }
         var _loc2_:EggCollectedPopup = new EggCollectedPopup(§%#§.§3t§,§9#5§.§;!!§,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         this.§^$>§.push(param1);
         var _loc3_:URLRequest = §2"6§.§;z§(§@"3§ + "/eggfound/" + param1);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = this.§3#Q§();
         this.§[!?§ = new §'!n§(null,2);
         this.§[!?§.addEventListener(Event.COMPLETE,this.§!g§);
         this.§[!?§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§[!?§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§[!?§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§[!?§.load(_loc3_);
      }
      
      public function §+"x§(param1:Array) : void
      {
         if(param1 != null)
         {
            this.§^$>§ = param1;
         }
      }
      
      private function §!g§(param1:Event) : void
      {
      }
      
      public function get §6#P§() : Boolean
      {
         return this.§;!K§ != null;
      }
      
      public function get userName() : String
      {
         return this.§4!$§;
      }
      
      public function get avatarString() : String
      {
         return this.§'!j§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§'!j§ = param1;
      }
      
      public function get userID() : String
      {
         return this.§3I§;
      }
      
      public function §4^§() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         for(_loc1_ in this.§9"U§)
         {
            _loc2_ = this.§var§(_loc1_);
            if(getStarsForLevel(_loc1_,_loc2_) < 3)
            {
               return false;
            }
         }
         return true;
      }
   }
}
