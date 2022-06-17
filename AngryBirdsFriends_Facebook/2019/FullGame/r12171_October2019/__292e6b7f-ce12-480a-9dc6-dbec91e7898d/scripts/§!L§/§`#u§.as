package §!L§
{
   import § $0§.§5R§;
   import §#"4§.§'#B§;
   import §#g§.§!P§;
   import §#g§.§%!a§;
   import §'"b§.§ #F§;
   import §4S§.§+!p§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §4S§.§@§;
   import §5#D§.SHA1;
   import §6"p§.Base64;
   import §7#$§.§3!,§;
   import §7#$§.§8$%§;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.EggCollectedPopup;
   import §?Q§.ErrorPopup;
   import §]§.§ "F§;
   import §`!Z§.§=!7§;
   import §`#c§.§8#B§;
   import §`#c§.UserProgressEvent;
   import §`,§.§7!$§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §`#u§ extends §8#B§
   {
      
      public static const §8"%§:String = "tt";
      
      public static const §#k§:String = "btt";
      
      public static const §0$3§:String = "RAFFLE_";
      
      public static const § $-§:String = "END_RAFFLE_";
      
      public static const §+!x§:String = "END_RAFFLE_WINNERS_";
       
      
      protected var §-"a§:Dictionary;
      
      private var §;"2§:Dictionary;
      
      private var §6"v§:Dictionary;
      
      private var §2"'§:Dictionary;
      
      protected var §[#z§:String;
      
      protected var §^#I§:String;
      
      protected var §6,§:String;
      
      private var §7!`§:Array;
      
      private var §4#X§:Array;
      
      private var §?#y§:Array;
      
      private var §9!b§:Array;
      
      private var §+9§:Array;
      
      private var §'#S§:Array;
      
      private var § #W§:Array;
      
      private var §`%§:Array;
      
      private var §#!5§:Array;
      
      private var §]5§:Array;
      
      private var §&$"§:Array;
      
      private var §5"T§:Array;
      
      private var §## §:Array;
      
      private var §'#H§:Array;
      
      private var §1"5§:Array;
      
      private var §3"N§:Array;
      
      private var §2"@§:§@#1§;
      
      private var §0"g§:Array;
      
      private var §<v§:§@#1§;
      
      private var § #=§:Array;
      
      public function §`#u§(param1:String, param2:§]#q§)
      {
         this.§7!`§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§4#X§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§?#y§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§9!b§ = [97,99,116,117,97,108,76,101,118,101,108];
         this.§+9§ = [101,112,105,115,111,100,101];
         this.§'#S§ = [108,101,118,101,108];
         this.§ #W§ = [112,111,105,110,116,115];
         this.§`%§ = [115,116,97,114,115];
         this.§#!5§ = [116,111,117,114,110,97,109,101,110,116,73,100];
         this.§]5§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.§&$"§ = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§5"T§ = [115,101,99,117,114,105,116,121];
         this.§## § = [98,108,111,99,107,115];
         this.§'#H§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§1"5§ = [117,115,101,100,67,111,110,115,117,109,97,98,108,101,73,116,101,109,73,100,115];
         this.§3"N§ = [99,111,108,108,101,99,116,101,100,73,116,101,109,115];
         this.§ #=§ = [];
         super(param1,param2);
         this.§-"a§ = new Dictionary();
         this.§0"g§ = [];
         this.§;"2§ = new Dictionary();
         this.§2"'§ = new Dictionary();
         this.§6"v§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§3!,§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §`!t§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §2l§() : int
      {
         var _loc3_:§3!,§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §<!S§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §>A§() : int
      {
         var _loc3_:§3!,§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §=#[§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §2?§() : Dictionary
      {
         var _loc3_:int = 0;
         var _loc4_:§3!,§ = null;
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
      
      public function §@#E§() : Boolean
      {
         var _loc3_:§3!,§ = null;
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
      
      public function §6#x§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!§&#2§(_loc2_) && this.§1$C§(_loc2_) == 0)
            {
               return false;
            }
         }
         return true;
      }
      
      public function §1$C§(param1:String) : int
      {
         var _loc2_:§'#B§ = null;
         if(this.§6"v§[param1])
         {
            _loc2_ = this.§6"v§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §7]§(param1:String) : int
      {
         if(this.§;"2§[param1])
         {
            return this.§;"2§[param1];
         }
         return 0;
      }
      
      public function §0#!§(param1:String, param2:int) : void
      {
         this.§;"2§[param1] = param2;
      }
      
      public function §@g§(param1:String, param2:int) : void
      {
         var _loc3_:§'#B§ = new §'#B§(param2);
         this.§6"v§[param1] = _loc3_;
      }
      
      public function § $%§(param1:String) : int
      {
         if(this.§-"a§[param1])
         {
            return this.§-"a§[param1];
         }
         return 0;
      }
      
      public function §=l§(param1:String, param2:int) : void
      {
         this.§-"a§[param1] = param2;
      }
      
      public function §+!A§(param1:String, param2:int) : void
      {
         this.§2"'§[param1] = param2;
      }
      
      public function §]#,§(param1:String) : int
      {
         if(this.§2"'§[param1])
         {
            return this.§2"'§[param1];
         }
         return 0;
      }
      
      public function init(param1:String, param2:String, param3:Array) : void
      {
         this.§[#z§ = param1;
         this.§6,§ = param2;
         this.§ #=§ = param3 || [];
      }
      
      public function §]"c§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§;"2§ = new Dictionary();
         this.§6"v§ = new Dictionary();
         this.§2"'§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§@g§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§0#!§(_loc2_.l,_loc2_.r);
            }
            if(_loc2_.gr)
            {
               this.§+!A§(_loc2_.l,_loc2_.gr);
            }
         }
      }
      
      public function §6#9§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               §[1§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.me)
            {
               § d§(_loc2_.l,_loc2_.me);
            }
            if(_loc2_.r)
            {
               this.§=l§(_loc2_.l,_loc2_.r);
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
            return this.§`p§(param1);
         }
         if(param1.split("-")[0] == "2000")
         {
            return §7!$§.§+!,§.isLevelOpen(param1);
         }
         return super.isLevelOpen(param1);
      }
      
      private function §<!]§(param1:String) : String
      {
         var _loc2_:§3!,§ = mLevelManager.getEpisodeForLevel(param1);
         return SHA1.§!"a§([!!_loc2_ ? _loc2_.name : this.§<#W§(),param1,§]$?§.§;r§.getScore(),getStarsForLevel(param1,§]$?§.§;r§.getScore()),§]$?§.§;r§.getEagleScore(),this.§6#n§()].join("|"));
      }
      
      private function §`"L§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §6#n§() : String
      {
         return this.§`"L§(this.§&$"§);
      }
      
      private function §`#7§() : String
      {
         return this.§`"L§(this.§7!`§);
      }
      
      private function §<#W§() : String
      {
         return this.§`"L§(this.§4#X§);
      }
      
      private function §3! §() : String
      {
         return this.§`"L§(this.§?#y§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§ #=§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§-$C§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§ #=§.push(_loc3_);
         }
         (_loc4_ = §?#l§.§2#=§(§!#s§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§3! §();
         (_loc5_ = new §-$C§(null,2)).addEventListener(Event.COMPLETE,this.§1!9§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§^!G§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^!G§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §1!9§(param1:Event) : void
      {
         var _loc2_:§@#1§ = null;
         if(param1.currentTarget is §@#1§)
         {
            _loc2_ = param1.currentTarget as §@#1§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§1!9§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §^!G§(param1:Event) : void
      {
         var _loc2_:§@#1§ = null;
         if(param1.currentTarget is §@#1§)
         {
            _loc2_ = param1.currentTarget as §@#1§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§1!9§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:int = 0;
         if(this.§;w§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString()));
         }
         var _loc5_:URLRequest;
         (_loc5_ = §?#l§.§2#=§(§!#s§ + this.§`#7§() + "/" + param3.toString() + "/" + param4.toString())).method = URLRequestMethod.POST;
         _loc5_.contentType = this.§3! §();
         var _loc6_:§3!,§ = mLevelManager.getEpisodeForLevel(param1);
         var _loc7_:int = §]$?§.§;r§.getScore();
         var _loc8_:int = getStarsForLevel(param1,§]$?§.§;r§.getScore());
         var _loc9_:Object = {};
         var _loc10_:String = (mLevelManager as §8$%§).§0"<§(param1);
         if(param3)
         {
            _loc10_ = String(§7!$§.§+!,§.§>"v§(param1));
         }
         _loc9_[this.§`"L§(this.§+9§)] = !!_loc6_ ? _loc6_.name : this.§<#W§();
         _loc9_[this.§`"L§(this.§'#S§)] = param1;
         _loc9_[this.§`"L§(this.§ #W§)] = _loc7_;
         _loc9_[this.§`"L§(this.§]5§)] = §]$?§.§;r§.getEagleScore();
         _loc9_[this.§`"L§(this.§5"T§)] = this.§<!]§(param1);
         _loc9_[this.§`"L§(this.§## §)] = §%!a§.§+#Q§();
         _loc9_[this.§`"L§(this.§'#H§)] = § "F§.§2O§;
         _loc9_[this.§`"L§(this.§1"5§)] = (§]$?§.§2#§ as §!P§).§with§();
         _loc9_[this.§`"L§(this.§9!b§)] = _loc10_;
         _loc9_[this.§`"L§(this.§`%§)] = _loc8_;
         if(param3 && §7!$§.§+!,§.§@!v§)
         {
            _loc9_[this.§`"L§(this.§#!5§)] = §7!$§.§+!,§.§@!v§.id;
         }
         var _loc11_:§=!7§;
         if(_loc11_ = § #F§.§+!,§.§4#P§() as §=!7§)
         {
            if((_loc12_ = _loc11_.§9#>§()) > 0)
            {
               _loc9_[this.§`"L§(this.§3"N§)] = _loc12_;
            }
         }
         _loc5_.data = Base64.encode(JSON.stringify(_loc9_));
         this.§2"@§ = new §-$C§();
         this.§2"@§.addEventListener(Event.COMPLETE,this.§4"J§);
         this.§2"@§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§2"@§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§2"@§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§2"@§.load(_loc5_);
      }
      
      private function §4"J§(param1:Event) : void
      {
         var _loc2_:Object = this.§2"@§.data;
         this.§2"@§ = null;
         if(_loc2_.errorCode || _loc2_.errorMessage)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Error saving score. Server return error code \'" + _loc2_.errorCode + "\', message: \'" + _loc2_.errorMessage + "\'."));
         }
         var _loc3_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§!"z§);
         _loc3_.data = _loc2_;
         var _loc4_:§=!7§;
         if(_loc4_ = § #F§.§+!,§.§4#P§() as §=!7§)
         {
            _loc4_.§8#y§(_loc2_.userEvent);
         }
         dispatchEvent(_loc3_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §+!p§.§2$9§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§-#d§));
         }
         else
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Error event: " + param1.toString()));
         }
         this.§2"@§ = null;
      }
      
      public function §`p§(param1:String) : Boolean
      {
         if(this.§0"g§ != null)
         {
            if(this.§0"g§.indexOf(param1) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §0a§(param1:String) : void
      {
         if(this.§`p§(param1))
         {
            return;
         }
         var _loc2_:EggCollectedPopup = new EggCollectedPopup(§@#D§.§,"4§,§5R§.§!#§,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         this.§0"g§.push(param1);
         var _loc3_:URLRequest = §?#l§.§2#=§(§!#s§ + "/eggfound/" + param1);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = this.§3! §();
         this.§<v§ = new §-$C§(null,2);
         this.§<v§.addEventListener(Event.COMPLETE,this.§`#J§);
         this.§<v§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§<v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§<v§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§<v§.load(_loc3_);
      }
      
      public function §6"i§(param1:Array) : void
      {
         if(param1 != null)
         {
            this.§0"g§ = param1;
         }
      }
      
      private function §`#J§(param1:Event) : void
      {
      }
      
      public function get §;w§() : Boolean
      {
         return this.§2"@§ != null;
      }
      
      public function get userName() : String
      {
         return this.§[#z§;
      }
      
      public function get avatarString() : String
      {
         return this.§^#I§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§^#I§ = param1;
      }
      
      public function get userID() : String
      {
         return this.§6,§;
      }
      
      public function §>!R§() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         for(_loc1_ in this.§6"v§)
         {
            _loc2_ = this.§1$C§(_loc1_);
            if(getStarsForLevel(_loc1_,_loc2_) < 3)
            {
               return false;
            }
         }
         return true;
      }
   }
}
