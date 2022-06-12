package §7R§
{
   import §&!_§.§@"E§;
   import §&n§.§]"%§;
   import §,"v§.§ T§;
   import §,"v§.§;"n§;
   import §,"v§.§;#A§;
   import §0!s§.§]"Y§;
   import §1#v§.Base64;
   import §1L§.§!!o§;
   import §1L§.§9#f§;
   import §1L§.§;#&§;
   import §1L§.§>5§;
   import §2";§.§#$"§;
   import §9$2§.§7"L§;
   import §;"H§.SHA1;
   import §<!r§.§'##§;
   import §>2§.§ $,§;
   import §>2§.§"§;
   import §>z§.§#"l§;
   import §>z§.EggCollectedPopup;
   import §>z§.ErrorPopup;
   import §^"H§.UserProgressEvent;
   import §^"H§.§]!l§;
   import §`#@§.§7n§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class § #`§ extends §]!l§
   {
      
      public static const §%4§:String = "tt";
      
      public static const §?"M§:String = "btt";
      
      public static const §^"G§:String = "RAFFLE_";
      
      public static const §9U§:String = "END_RAFFLE_";
      
      public static const §!!`§:String = "END_RAFFLE_WINNERS_";
       
      
      protected var §+"E§:Dictionary;
      
      private var §6C§:Dictionary;
      
      private var §+! §:Dictionary;
      
      private var §]"<§:Dictionary;
      
      protected var §]#X§:String;
      
      protected var §^"5§:String;
      
      protected var §1"s§:String;
      
      private var §3#1§:Array;
      
      private var §?#2§:Array;
      
      private var §"#'§:Array;
      
      private var §]"'§:Array;
      
      private var §9!;§:Array;
      
      private var §49§:Array;
      
      private var §1X§:Array;
      
      private var §8!?§:Array;
      
      private var §0#&§:Array;
      
      private var §@#!§:Array;
      
      private var §!I§:Array;
      
      private var §?X§:Array;
      
      private var §??§:Array;
      
      private var §#"e§:Array;
      
      private var §4!O§:Array;
      
      private var §=!b§:Array;
      
      private var §5"v§:§9#f§;
      
      private var § "]§:Array;
      
      private var §3!^§:§9#f§;
      
      private var §^"e§:Array;
      
      public function § #`§(param1:String, param2:§;"n§)
      {
         this.§3#1§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§?#2§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§"#'§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§]"'§ = [97,99,116,117,97,108,76,101,118,101,108];
         this.§9!;§ = [101,112,105,115,111,100,101];
         this.§49§ = [108,101,118,101,108];
         this.§1X§ = [112,111,105,110,116,115];
         this.§8!?§ = [115,116,97,114,115];
         this.§0#&§ = [116,111,117,114,110,97,109,101,110,116,73,100];
         this.§@#!§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.§!I§ = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§?X§ = [115,101,99,117,114,105,116,121];
         this.§??§ = [98,108,111,99,107,115];
         this.§#"e§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§4!O§ = [117,115,101,100,67,111,110,115,117,109,97,98,108,101,73,116,101,109,73,100,115];
         this.§=!b§ = [99,111,108,108,101,99,116,101,100,73,116,101,109,115];
         this.§^"e§ = [];
         super(param1,param2);
         this.§+"E§ = new Dictionary();
         this.§ "]§ = [];
         this.§6C§ = new Dictionary();
         this.§]"<§ = new Dictionary();
         this.§+! § = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§ T§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = § $3§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §6!_§() : int
      {
         var _loc3_:§ T§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §["B§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §!"[§() : int
      {
         var _loc3_:§ T§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §]""§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §?#0§() : Dictionary
      {
         var _loc3_:int = 0;
         var _loc4_:§ T§ = null;
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
      
      public function §+"W§() : Boolean
      {
         var _loc3_:§ T§ = null;
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
      
      public function §!#B§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!§6!b§(_loc2_) && this.§ P§(_loc2_) == 0)
            {
               return false;
            }
         }
         return true;
      }
      
      public function § P§(param1:String) : int
      {
         var _loc2_:§@"E§ = null;
         if(this.§+! §[param1])
         {
            _loc2_ = this.§+! §[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §%!u§(param1:String) : int
      {
         if(this.§6C§[param1])
         {
            return this.§6C§[param1];
         }
         return 0;
      }
      
      public function §8#I§(param1:String, param2:int) : void
      {
         this.§6C§[param1] = param2;
      }
      
      public function §'!0§(param1:String, param2:int) : void
      {
         var _loc3_:§@"E§ = new §@"E§(param2);
         this.§+! §[param1] = _loc3_;
      }
      
      public function § #T§(param1:String) : int
      {
         if(this.§+"E§[param1])
         {
            return this.§+"E§[param1];
         }
         return 0;
      }
      
      public function §5"=§(param1:String, param2:int) : void
      {
         this.§+"E§[param1] = param2;
      }
      
      public function §6!B§(param1:String, param2:int) : void
      {
         this.§]"<§[param1] = param2;
      }
      
      public function §[A§(param1:String) : int
      {
         if(this.§]"<§[param1])
         {
            return this.§]"<§[param1];
         }
         return 0;
      }
      
      public function init(param1:String, param2:String, param3:Array) : void
      {
         this.§]#X§ = param1;
         this.§1"s§ = param2;
         this.§^"e§ = param3 || [];
      }
      
      public function §8#l§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§6C§ = new Dictionary();
         this.§+! § = new Dictionary();
         this.§]"<§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§'!0§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§8#I§(_loc2_.l,_loc2_.r);
            }
            if(_loc2_.gr)
            {
               this.§6!B§(_loc2_.l,_loc2_.gr);
            }
         }
      }
      
      public function §<"$§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               §?L§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.me)
            {
               §2#+§(_loc2_.l,_loc2_.me);
            }
            if(_loc2_.r)
            {
               this.§5"=§(_loc2_.l,_loc2_.r);
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
            return this.§^!^§(param1);
         }
         if(param1.split("-")[0] == "2000")
         {
            return §'##§.§`"H§.isLevelOpen(param1);
         }
         return super.isLevelOpen(param1);
      }
      
      private function §@!`§(param1:String) : String
      {
         var _loc2_:§ T§ = mLevelManager.getEpisodeForLevel(param1);
         return SHA1.§,"O§([!!_loc2_ ? _loc2_.name : this.§'!$§(),param1,§7n§.§ "'§.getScore(),getStarsForLevel(param1,§7n§.§ "'§.getScore()),§7n§.§ "'§.getEagleScore(),this.§+"-§()].join("|"));
      }
      
      private function §3$>§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §+"-§() : String
      {
         return this.§3$>§(this.§!I§);
      }
      
      private function override() : String
      {
         return this.§3$>§(this.§3#1§);
      }
      
      private function §'!$§() : String
      {
         return this.§3$>§(this.§?#2§);
      }
      
      private function §1+§() : String
      {
         return this.§3$>§(this.§"#'§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§^"e§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§!!o§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§^"e§.push(_loc3_);
         }
         (_loc4_ = §;#&§.§ #G§(§0#`§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§1+§();
         (_loc5_ = new §!!o§(null,2)).addEventListener(Event.COMPLETE,this.§["<§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§!!2§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!!2§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §["<§(param1:Event) : void
      {
         var _loc2_:§9#f§ = null;
         if(param1.currentTarget is §9#f§)
         {
            _loc2_ = param1.currentTarget as §9#f§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§["<§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §!!2§(param1:Event) : void
      {
         var _loc2_:§9#f§ = null;
         if(param1.currentTarget is §9#f§)
         {
            _loc2_ = param1.currentTarget as §9#f§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§["<§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:int = 0;
         if(this.§+!o§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString()));
         }
         var _loc5_:URLRequest;
         (_loc5_ = §;#&§.§ #G§(§0#`§ + this.override() + "/" + param3.toString() + "/" + param4.toString())).method = URLRequestMethod.POST;
         _loc5_.contentType = this.§1+§();
         var _loc6_:§ T§ = mLevelManager.getEpisodeForLevel(param1);
         var _loc7_:int = §7n§.§ "'§.getScore();
         var _loc8_:int = getStarsForLevel(param1,§7n§.§ "'§.getScore());
         var _loc9_:Object = {};
         var _loc10_:String = (mLevelManager as §;#A§).§`!-§(param1);
         if(param3)
         {
            _loc10_ = String(§'##§.§`"H§.§6!D§(param1));
         }
         _loc9_[this.§3$>§(this.§9!;§)] = !!_loc6_ ? _loc6_.name : this.§'!$§();
         _loc9_[this.§3$>§(this.§49§)] = param1;
         _loc9_[this.§3$>§(this.§1X§)] = _loc7_;
         _loc9_[this.§3$>§(this.§@#!§)] = §7n§.§ "'§.getEagleScore();
         _loc9_[this.§3$>§(this.§?X§)] = this.§@!`§(param1);
         _loc9_[this.§3$>§(this.§??§)] = § $,§.§=!^§();
         _loc9_[this.§3$>§(this.§#"e§)] = §#$"§.§9#,§;
         _loc9_[this.§3$>§(this.§4!O§)] = (§7n§.§6#K§ as §"#1§).§7"Z§();
         _loc9_[this.§3$>§(this.§]"'§)] = _loc10_;
         _loc9_[this.§3$>§(this.§8!?§)] = _loc8_;
         if(param3 && §'##§.§`"H§.§;#Q§)
         {
            _loc9_[this.§3$>§(this.§0#&§)] = §'##§.§`"H§.§;#Q§.id;
         }
         var _loc11_:§]"%§;
         if(_loc11_ = §7"L§.§`"H§.§9'§() as §]"%§)
         {
            if((_loc12_ = _loc11_.§;$,§()) > 0)
            {
               _loc9_[this.§3$>§(this.§=!b§)] = _loc12_;
            }
         }
         _loc5_.data = Base64.encode(JSON.stringify(_loc9_));
         this.§5"v§ = new §!!o§();
         this.§5"v§.addEventListener(Event.COMPLETE,this.§]#7§);
         this.§5"v§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§5"v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§5"v§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§5"v§.load(_loc5_);
      }
      
      private function §]#7§(param1:Event) : void
      {
         var _loc2_:Object = this.§5"v§.data;
         this.§5"v§ = null;
         if(_loc2_.errorCode || _loc2_.errorMessage)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Error saving score. Server return error code \'" + _loc2_.errorCode + "\', message: \'" + _loc2_.errorMessage + "\'."));
         }
         var _loc3_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§[$$§);
         _loc3_.data = _loc2_;
         var _loc4_:§]"%§;
         if(_loc4_ = §7"L§.§`"H§.§9'§() as §]"%§)
         {
            _loc4_.§`#[§(_loc2_.userEvent);
         }
         dispatchEvent(_loc3_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §>5§.§@!@§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $@§));
         }
         else
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Error event: " + param1.toString()));
         }
         this.§5"v§ = null;
      }
      
      public function §^!^§(param1:String) : Boolean
      {
         if(this.§ "]§ != null)
         {
            if(this.§ "]§.indexOf(param1) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §#y§(param1:String) : void
      {
         if(this.§^!^§(param1))
         {
            return;
         }
         var _loc2_:EggCollectedPopup = new EggCollectedPopup(§#"l§.§?!b§,§]"Y§.§]a§,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         this.§ "]§.push(param1);
         var _loc3_:URLRequest = §;#&§.§ #G§(§0#`§ + "/eggfound/" + param1);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = this.§1+§();
         this.§3!^§ = new §!!o§(null,2);
         this.§3!^§.addEventListener(Event.COMPLETE,this.§1V§);
         this.§3!^§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§3!^§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§3!^§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§3!^§.load(_loc3_);
      }
      
      public function §'"D§(param1:Array) : void
      {
         if(param1 != null)
         {
            this.§ "]§ = param1;
         }
      }
      
      private function §1V§(param1:Event) : void
      {
      }
      
      public function get §+!o§() : Boolean
      {
         return this.§5"v§ != null;
      }
      
      public function get userName() : String
      {
         return this.§]#X§;
      }
      
      public function get avatarString() : String
      {
         return this.§^"5§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§^"5§ = param1;
      }
      
      public function get userID() : String
      {
         return this.§1"s§;
      }
      
      public function §9$?§() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         for(_loc1_ in this.§+! §)
         {
            _loc2_ = this.§ P§(_loc1_);
            if(getStarsForLevel(_loc1_,_loc2_) < 3)
            {
               return false;
            }
         }
         return true;
      }
   }
}
