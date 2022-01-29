package §-!S§
{
   import §"!@§.§6!+§;
   import §'#d§.§5!Z§;
   import §+!W§.SHA1;
   import §1!=§.§^"U§;
   import §8#!§.§5`§;
   import §;#D§.§3#U§;
   import §;$3§.§"m§;
   import §;$3§.§8=§;
   import §;$3§.§?!0§;
   import §<G§.§3§;
   import §<G§.UserProgressEvent;
   import §="h§.§`"O§;
   import §?P§.EggCollectedPopup;
   import §?P§.ErrorPopup;
   import §?P§.§]"$§;
   import §@0§.§&"A§;
   import §@0§.§2$2§;
   import §@V§.§1"V§;
   import §@V§.§6"§;
   import §@V§.§;m§;
   import §@V§.§["0§;
   import §]!6§.Base64;
   import §`7§.§;e§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §##>§ extends §3#9§
   {
      
      public static const §]#S§:String = "tt";
      
      public static const §1!8§:String = "btt";
      
      public static const §0#q§:String = "RAFFLE_";
      
      public static const §+"w§:String = "END_RAFFLE_";
      
      public static const §3J§:String = "END_RAFFLE_WINNERS_";
       
      
      protected var §4q§:Dictionary;
      
      private var §!#P§:Dictionary;
      
      private var §^"q§:Dictionary;
      
      private var §9#h§:Dictionary;
      
      protected var §2!q§:String;
      
      protected var §["S§:String;
      
      protected var §##&§:String;
      
      private var §&#$§:Array;
      
      private var §&! §:Array;
      
      private var §8O§:Array;
      
      private var §8"k§:Array;
      
      private var §2t§:Array;
      
      private var §["x§:Array;
      
      private var §-"j§:Array;
      
      private var §^!;§:Array;
      
      private var §%G§:Array;
      
      private var § $-§:Array;
      
      private var §=q§:Array;
      
      private var §3q§:Array;
      
      private var §-#w§:Array;
      
      private var §3!§:Array;
      
      private var §[#j§:Array;
      
      private var §>!>§:Array;
      
      private var §%"!§:§6"§;
      
      private var §`#!§:Array;
      
      private var §<!H§:§6"§;
      
      private var § #U§:Array;
      
      public function §##>§(param1:String, param2:§8=§)
      {
         this.§&#$§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§&! § = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§8O§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§8"k§ = [97,99,116,117,97,108,76,101,118,101,108];
         this.§2t§ = [101,112,105,115,111,100,101];
         this.§["x§ = [108,101,118,101,108];
         this.§-"j§ = [112,111,105,110,116,115];
         this.§^!;§ = [115,116,97,114,115];
         this.§%G§ = [116,111,117,114,110,97,109,101,110,116,73,100];
         this.§ $-§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.§=q§ = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§3q§ = [115,101,99,117,114,105,116,121];
         this.§-#w§ = [98,108,111,99,107,115];
         this.§3!§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§[#j§ = [117,115,101,100,67,111,110,115,117,109,97,98,108,101,73,116,101,109,73,100,115];
         this.§>!>§ = [99,111,108,108,101,99,116,101,100,73,116,101,109,115];
         this.§ #U§ = [];
         super(param1,param2);
         this.§4q§ = new Dictionary();
         this.§`#!§ = [];
         this.§!#P§ = new Dictionary();
         this.§9#h§ = new Dictionary();
         this.§^"q§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§"m§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §1n§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §`!#§() : int
      {
         var _loc3_:§"m§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §]!u§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §`y§() : int
      {
         var _loc3_:§"m§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §&#c§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §&O§() : Dictionary
      {
         var _loc3_:int = 0;
         var _loc4_:§"m§ = null;
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
      
      public function §##v§() : Boolean
      {
         var _loc3_:§"m§ = null;
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
      
      public function §"!u§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!§,!§(_loc2_) && this.§?"B§(_loc2_) == 0)
            {
               return false;
            }
         }
         return true;
      }
      
      public function §?"B§(param1:String) : int
      {
         var _loc2_:§;e§ = null;
         if(this.§^"q§[param1])
         {
            _loc2_ = this.§^"q§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §9!d§(param1:String) : int
      {
         if(this.§!#P§[param1])
         {
            return this.§!#P§[param1];
         }
         return 0;
      }
      
      public function §="1§(param1:String, param2:int) : void
      {
         this.§!#P§[param1] = param2;
      }
      
      public function §3#Y§(param1:String, param2:int) : void
      {
         var _loc3_:§;e§ = new §;e§(param2);
         this.§^"q§[param1] = _loc3_;
      }
      
      public function §,C§(param1:String) : int
      {
         if(this.§4q§[param1])
         {
            return this.§4q§[param1];
         }
         return 0;
      }
      
      public function §>#+§(param1:String, param2:int) : void
      {
         this.§4q§[param1] = param2;
      }
      
      public function §+#9§(param1:String, param2:int) : void
      {
         this.§9#h§[param1] = param2;
      }
      
      public function §#!,§(param1:String) : int
      {
         if(this.§9#h§[param1])
         {
            return this.§9#h§[param1];
         }
         return 0;
      }
      
      public function init(param1:String, param2:String, param3:Array) : void
      {
         this.§2!q§ = param1;
         this.§##&§ = param2;
         this.§ #U§ = param3 || [];
      }
      
      public function §@"e§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§!#P§ = new Dictionary();
         this.§^"q§ = new Dictionary();
         this.§9#h§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§3#Y§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§="1§(_loc2_.l,_loc2_.r);
            }
            if(_loc2_.gr)
            {
               this.§+#9§(_loc2_.l,_loc2_.gr);
            }
         }
      }
      
      public function §4!F§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               §&U§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.me)
            {
               §5#+§(_loc2_.l,_loc2_.me);
            }
            if(_loc2_.r)
            {
               this.§>#+§(_loc2_.l,_loc2_.r);
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
            return this.§44§(param1);
         }
         if(param1.split("-")[0] == "2000")
         {
            return §5`§.§6!§.isLevelOpen(param1);
         }
         return super.isLevelOpen(param1);
      }
      
      private function §3"O§(param1:String) : String
      {
         var _loc2_:§"m§ = mLevelManager.getEpisodeForLevel(param1);
         return SHA1.§%$6§([!!_loc2_ ? _loc2_.name : this.§<$A§(),param1,§3#U§.§8I§.getScore(),getStarsForLevel(param1,§3#U§.§8I§.getScore()),§3#U§.§8I§.getEagleScore(),this.§+#k§()].join("|"));
      }
      
      private function §,k§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §+#k§() : String
      {
         return this.§,k§(this.§=q§);
      }
      
      private function §?"K§() : String
      {
         return this.§,k§(this.§&#$§);
      }
      
      private function §<$A§() : String
      {
         return this.§,k§(this.§&! §);
      }
      
      private function §2"a§() : String
      {
         return this.§,k§(this.§8O§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§ #U§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§1"V§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§ #U§.push(_loc3_);
         }
         (_loc4_ = §["0§.§ G§(§^"j§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§2"a§();
         (_loc5_ = new §1"V§(null,2)).addEventListener(Event.COMPLETE,this.§7!3§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§4"4§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§4"4§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §7!3§(param1:Event) : void
      {
         var _loc2_:§6"§ = null;
         if(param1.currentTarget is §6"§)
         {
            _loc2_ = param1.currentTarget as §6"§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§7!3§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §4"4§(param1:Event) : void
      {
         var _loc2_:§6"§ = null;
         if(param1.currentTarget is §6"§)
         {
            _loc2_ = param1.currentTarget as §6"§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§7!3§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:int = 0;
         if(this.§<>§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString()));
         }
         var _loc5_:URLRequest;
         (_loc5_ = §["0§.§ G§(§^"j§ + this.§?"K§() + "/" + param3.toString() + "/" + param4.toString())).method = URLRequestMethod.POST;
         _loc5_.contentType = this.§2"a§();
         var _loc6_:§"m§ = mLevelManager.getEpisodeForLevel(param1);
         var _loc7_:int = §3#U§.§8I§.getScore();
         var _loc8_:int = getStarsForLevel(param1,§3#U§.§8I§.getScore());
         var _loc9_:Object = {};
         var _loc10_:String = (mLevelManager as §?!0§).§7#J§(param1);
         if(param3)
         {
            _loc10_ = String(§5`§.§6!§.§?<§(param1));
         }
         _loc9_[this.§,k§(this.§2t§)] = !!_loc6_ ? _loc6_.name : this.§<$A§();
         _loc9_[this.§,k§(this.§["x§)] = param1;
         _loc9_[this.§,k§(this.§-"j§)] = _loc7_;
         _loc9_[this.§,k§(this.§ $-§)] = §3#U§.§8I§.getEagleScore();
         _loc9_[this.§,k§(this.§3q§)] = this.§3"O§(param1);
         _loc9_[this.§,k§(this.§-#w§)] = §&"A§.§0l§();
         _loc9_[this.§,k§(this.§3!§)] = §6!+§.§0$8§;
         _loc9_[this.§,k§(this.§[#j§)] = (§3#U§.§#$4§ as §2$2§).§;&§();
         _loc9_[this.§,k§(this.§8"k§)] = _loc10_;
         _loc9_[this.§,k§(this.§^!;§)] = _loc8_;
         if(param3 && §5`§.§6!§.§"!^§)
         {
            _loc9_[this.§,k§(this.§%G§)] = §5`§.§6!§.§"!^§.id;
         }
         var _loc11_:§5!Z§;
         if(_loc11_ = §`"O§.§6!§.§!!I§() as §5!Z§)
         {
            if((_loc12_ = _loc11_.§4#i§()) > 0)
            {
               _loc9_[this.§,k§(this.§>!>§)] = _loc12_;
            }
         }
         _loc5_.data = Base64.encode(JSON.stringify(_loc9_));
         this.§%"!§ = new §1"V§();
         this.§%"!§.addEventListener(Event.COMPLETE,this.§"%§);
         this.§%"!§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§%"!§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§%"!§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§%"!§.load(_loc5_);
      }
      
      private function §"%§(param1:Event) : void
      {
         var _loc2_:Object = this.§%"!§.data;
         this.§%"!§ = null;
         if(_loc2_.errorCode || _loc2_.errorMessage)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Error saving score. Server return error code \'" + _loc2_.errorCode + "\', message: \'" + _loc2_.errorMessage + "\'."));
         }
         var _loc3_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§1"P§);
         _loc3_.data = _loc2_;
         var _loc4_:§5!Z§;
         if(_loc4_ = §`"O§.§6!§.§!!I§() as §5!Z§)
         {
            _loc4_.§>#<§(_loc2_.userEvent);
         }
         dispatchEvent(_loc3_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §;m§.§!$5§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§=!%§));
         }
         else
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Error event: " + param1.toString()));
         }
         this.§%"!§ = null;
      }
      
      public function §44§(param1:String) : Boolean
      {
         if(this.§`#!§ != null)
         {
            if(this.§`#!§.indexOf(param1) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §8$,§(param1:String) : void
      {
         if(this.§44§(param1))
         {
            return;
         }
         var _loc2_:EggCollectedPopup = new EggCollectedPopup(§]"$§.§[#=§,§^"U§.§-#s§,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         this.§`#!§.push(param1);
         var _loc3_:URLRequest = §["0§.§ G§(§^"j§ + "/eggfound/" + param1);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = this.§2"a§();
         this.§<!H§ = new §1"V§(null,2);
         this.§<!H§.addEventListener(Event.COMPLETE,this.§'"A§);
         this.§<!H§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§<!H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§<!H§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§<!H§.load(_loc3_);
      }
      
      public function §="4§(param1:Array) : void
      {
         if(param1 != null)
         {
            this.§`#!§ = param1;
         }
      }
      
      private function §'"A§(param1:Event) : void
      {
      }
      
      public function get §<>§() : Boolean
      {
         return this.§%"!§ != null;
      }
      
      public function get userName() : String
      {
         return this.§2!q§;
      }
      
      public function get avatarString() : String
      {
         return this.§["S§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§["S§ = param1;
      }
      
      public function get userID() : String
      {
         return this.§##&§;
      }
      
      public function §2!!§() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         for(_loc1_ in this.§^"q§)
         {
            _loc2_ = this.§?"B§(_loc1_);
            if(getStarsForLevel(_loc1_,_loc2_) < 3)
            {
               return false;
            }
         }
         return true;
      }
   }
}
