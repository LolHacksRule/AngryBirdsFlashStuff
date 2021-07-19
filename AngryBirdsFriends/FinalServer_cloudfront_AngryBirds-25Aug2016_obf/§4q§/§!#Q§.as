package §4q§
{
   import §!!B§.§7#<§;
   import §!!B§.UserProgressEvent;
   import §!g§.§;"L§;
   import §!x§.Base64;
   import §#v§.§#!?§;
   import §#v§.§6^§;
   import §#v§.§=!Z§;
   import §,!=§.§,#?§;
   import §5"$§.§]!m§;
   import §52§.§#%§;
   import §52§.§6" §;
   import §>!#§.§>p§;
   import §?"R§.EggCollectedPopup;
   import §?"R§.ErrorPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §]$9§.§5$!§;
   import §]$9§.§5$5§;
   import §]$9§.§>#J§;
   import §]$9§.§>J§;
   import §^!,§.§<d§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §!#Q§ extends §7#<§
   {
      
      public static const §8$3§:String = "tt";
      
      public static const §3W§:String = "btt";
      
      public static const §5##§:String = "RAFFLE_";
      
      public static const §^L§:String = "END_RAFFLE_";
      
      public static const §7!9§:String = "END_RAFFLE_WINNERS_";
       
      
      protected var §8$$§:Dictionary;
      
      private var §4#-§:Dictionary;
      
      private var §4#3§:Dictionary;
      
      protected var §&$4§:String;
      
      protected var §?D§:String;
      
      protected var §3#p§:String;
      
      private var §="I§:Array;
      
      private var § C§:Array;
      
      private var §7!§:Array;
      
      private var §9#9§:Array;
      
      private var §'Q§:Array;
      
      private var §"#L§:Array;
      
      private var §!$'§:Array;
      
      private var §`!1§:Array;
      
      private var §^"N§:Array;
      
      private var §2!4§:Array;
      
      private var §+"y§:Array;
      
      private var §8q§:Array;
      
      private var §]x§:Array;
      
      private var §7V§:Array;
      
      private var §`!$§:§5$5§;
      
      private var §!$5§:Array;
      
      private var §]" §:§5$5§;
      
      private var §4!`§:Array;
      
      public function §!#Q§(param1:String, param2:§#!?§)
      {
         this.§="I§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§ C§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§7!§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§9#9§ = [97,99,116,117,97,108,76,101,118,101,108];
         this.§'Q§ = [101,112,105,115,111,100,101];
         this.§"#L§ = [108,101,118,101,108];
         this.§!$'§ = [112,111,105,110,116,115];
         this.§`!1§ = [115,116,97,114,115];
         this.§^"N§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.§2!4§ = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§+"y§ = [115,101,99,117,114,105,116,121];
         this.§8q§ = [98,108,111,99,107,115];
         this.§]x§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§7V§ = [117,115,101,100,67,111,110,115,117,109,97,98,108,101,73,116,101,109,73,100,115];
         this.§4!`§ = [];
         super(param1,param2);
         this.§8$$§ = new Dictionary();
         this.§!$5§ = [];
         this.§4#-§ = new Dictionary();
         this.§4#3§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§=!Z§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §1#N§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §1!T§() : int
      {
         var _loc3_:§=!Z§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §5#A§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §2!7§() : int
      {
         var _loc3_:§=!Z§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = § !m§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §#"`§() : Dictionary
      {
         var _loc3_:int = 0;
         var _loc4_:§=!Z§ = null;
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
      
      public function §?"+§() : Boolean
      {
         var _loc3_:§=!Z§ = null;
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
      
      public function §<4§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!§4! §(_loc2_) && this.§3!5§(_loc2_) == 0)
            {
               return false;
            }
         }
         return true;
      }
      
      public function §3!5§(param1:String) : int
      {
         var _loc2_:§>p§ = null;
         if(this.§4#3§[param1])
         {
            _loc2_ = this.§4#3§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §#k§(param1:String) : int
      {
         if(this.§4#-§[param1])
         {
            return this.§4#-§[param1];
         }
         return 0;
      }
      
      public function §-#$§(param1:String, param2:int) : void
      {
         this.§4#-§[param1] = param2;
      }
      
      public function §&#4§(param1:String, param2:int) : void
      {
         var _loc3_:§>p§ = new §>p§(param2);
         this.§4#3§[param1] = _loc3_;
      }
      
      public function §-a§(param1:String) : int
      {
         if(this.§8$$§[param1])
         {
            return this.§8$$§[param1];
         }
         return 0;
      }
      
      public function §%w§(param1:String, param2:int) : void
      {
         this.§8$$§[param1] = param2;
      }
      
      public function init(param1:String, param2:String, param3:Array) : void
      {
         this.§&$4§ = param1;
         this.§3#p§ = param2;
         this.§4!`§ = param3 || [];
      }
      
      public function §""#§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§4#-§ = new Dictionary();
         this.§4#3§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§&#4§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§-#$§(_loc2_.l,_loc2_.r);
            }
         }
      }
      
      public function §&"-§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               §&#f§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.me)
            {
               §1$,§(_loc2_.l,_loc2_.me);
            }
            if(_loc2_.r)
            {
               this.§%w§(_loc2_.l,_loc2_.r);
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
            return this.§9"C§(param1);
         }
         if(param1.split("-")[0] == "2000")
         {
            return §]!m§.§3!]§.isLevelOpen(param1);
         }
         return super.isLevelOpen(param1);
      }
      
      private function §5""§(param1:String) : String
      {
         var _loc2_:§=!Z§ = mLevelManager.getEpisodeForLevel(param1);
         return §;"L§.§9"T§([!!_loc2_ ? _loc2_.name : this.§`6§(),param1,§>"$§.§#0§.getScore(),getStarsForLevel(param1,§>"$§.§#0§.getScore()),§>"$§.§#0§.getEagleScore(),this.§<$#§()].join("|"));
      }
      
      private function §7$!§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §<$#§() : String
      {
         return this.§7$!§(this.§2!4§);
      }
      
      private function §-!s§() : String
      {
         return this.§7$!§(this.§="I§);
      }
      
      private function §`6§() : String
      {
         return this.§7$!§(this.§ C§);
      }
      
      private function §;#;§() : String
      {
         return this.§7$!§(this.§7!§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§4!`§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§5$!§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§4!`§.push(_loc3_);
         }
         (_loc4_ = §>J§.§'[§(§3"=§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§;#;§();
         (_loc5_ = new §5$!§(null,2)).addEventListener(Event.COMPLETE,this.§!!=§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§]!=§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]!=§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §!!=§(param1:Event) : void
      {
         var _loc2_:§5$5§ = null;
         if(param1.currentTarget is §5$5§)
         {
            _loc2_ = param1.currentTarget as §5$5§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§!!=§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §]!=§(param1:Event) : void
      {
         var _loc2_:§5$5§ = null;
         if(param1.currentTarget is §5$5§)
         {
            _loc2_ = param1.currentTarget as §5$5§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§!!=§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(this.§`#I§)
         {
            throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString());
         }
         var _loc5_:URLRequest;
         (_loc5_ = §>J§.§'[§(§3"=§ + this.§-!s§() + "/" + param3.toString() + "/" + param4.toString())).method = URLRequestMethod.POST;
         _loc5_.contentType = this.§;#;§();
         var _loc6_:§=!Z§ = mLevelManager.getEpisodeForLevel(param1);
         var _loc7_:int = §>"$§.§#0§.getScore();
         var _loc8_:int = getStarsForLevel(param1,§>"$§.§#0§.getScore());
         var _loc9_:Object = {};
         var _loc10_:String = (mLevelManager as §6^§).§[!2§(param1);
         if(param3)
         {
            _loc10_ = String(§]!m§.§3!]§.§-#P§(param1));
         }
         _loc9_[this.§7$!§(this.§'Q§)] = !!_loc6_ ? _loc6_.name : this.§`6§();
         _loc9_[this.§7$!§(this.§"#L§)] = param1;
         _loc9_[this.§7$!§(this.§!$'§)] = _loc7_;
         _loc9_[this.§7$!§(this.§^"N§)] = §>"$§.§#0§.getEagleScore();
         _loc9_[this.§7$!§(this.§+"y§)] = this.§5""§(param1);
         _loc9_[this.§7$!§(this.§8q§)] = §6" §.§7#O§();
         _loc9_[this.§7$!§(this.§]x§)] = §,#?§.§2!0§;
         _loc9_[this.§7$!§(this.§7V§)] = (§>"$§.§3#'§ as §#%§).§?#A§();
         _loc9_[this.§7$!§(this.§9#9§)] = _loc10_;
         _loc9_[this.§7$!§(this.§`!1§)] = _loc8_;
         _loc5_.data = Base64.encode(JSON.stringify(_loc9_));
         this.§`!$§ = new §5$!§();
         this.§`!$§.addEventListener(Event.COMPLETE,this.§[j§);
         this.§`!$§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§`!$§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§`!$§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§`!$§.load(_loc5_);
      }
      
      private function §[j§(param1:Event) : void
      {
         var _loc2_:Object = this.§`!$§.data;
         this.§`!$§ = null;
         if(_loc2_.errorCode || _loc2_.errorMessage)
         {
            throw new Error("Error saving score. Server return error code \'" + _loc2_.errorCode + "\', message: \'" + _loc2_.errorMessage + "\'.");
         }
         var _loc3_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§5"!§);
         _loc3_.data = _loc2_;
         dispatchEvent(_loc3_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §>#J§.§-$%§)
         {
            this.§@!w§(ErrorPopup.§`"4§);
         }
         else
         {
            this.§@!w§(ErrorPopup.§^#x§);
         }
         this.§`!$§ = null;
      }
      
      protected function §@!w§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§[W§.§5Z§,§<d§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §9"C§(param1:String) : Boolean
      {
         if(this.§!$5§ != null)
         {
            if(this.§!$5§.indexOf(param1) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function § R§(param1:String) : void
      {
         if(this.§9"C§(param1))
         {
            return;
         }
         var _loc2_:EggCollectedPopup = new EggCollectedPopup(§[W§.§5Z§,§<d§.§8"K§,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         this.§!$5§.push(param1);
         var _loc3_:URLRequest = §>J§.§'[§(§3"=§ + "/eggfound/" + param1);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = this.§;#;§();
         this.§]" § = new §5$!§(null,2);
         this.§]" §.addEventListener(Event.COMPLETE,this.§6J§);
         this.§]" §.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]" §.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]" §.dataFormat = URLLoaderDataFormat.TEXT;
         this.§]" §.load(_loc3_);
      }
      
      public function §+"p§(param1:Array) : void
      {
         if(param1 != null)
         {
            this.§!$5§ = param1;
         }
      }
      
      private function §6J§(param1:Event) : void
      {
      }
      
      public function get §`#I§() : Boolean
      {
         return this.§`!$§ != null;
      }
      
      public function get userName() : String
      {
         return this.§&$4§;
      }
      
      public function get avatarString() : String
      {
         return this.§?D§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§?D§ = param1;
      }
      
      public function get userID() : String
      {
         return this.§3#p§;
      }
      
      public function §>#W§() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         for(_loc1_ in this.§4#3§)
         {
            _loc2_ = this.§3!5§(_loc1_);
            if(getStarsForLevel(_loc1_,_loc2_) < 3)
            {
               return false;
            }
         }
         return true;
      }
   }
}
