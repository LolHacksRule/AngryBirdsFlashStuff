package §-"S§
{
   import § "a§.§ !C§;
   import § "a§.UserProgressEvent;
   import § h§.§-!S§;
   import § h§.EggCollectedPopup;
   import § h§.ErrorPopup;
   import §#"3§.Base64;
   import §+!n§.§+!p§;
   import §+"_§.§>"%§;
   import §,!M§.SHA1;
   import §2E§.§[S§;
   import §4#$§.§5"L§;
   import §7"1§.§!"`§;
   import §7"1§.§"$D§;
   import §7"1§.§5"f§;
   import §7"1§.§;" §;
   import §9!6§.§## §;
   import §?$#§.§-V§;
   import §?$#§.§^#j§;
   import §?o§.§4#?§;
   import §?o§.§79§;
   import §?o§.§?"m§;
   import §]M§.§=!a§;
   import §^1§.§2#u§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §>#G§ extends § !C§
   {
      
      public static const §^!h§:String = "tt";
      
      public static const §@e§:String = "btt";
      
      public static const §'`§:String = "RAFFLE_";
      
      public static const §&I§:String = "END_RAFFLE_";
      
      public static const §'p§:String = "END_RAFFLE_WINNERS_";
       
      
      protected var §="5§:Dictionary;
      
      private var §%b§:Dictionary;
      
      private var §;"4§:Dictionary;
      
      private var §0o§:Dictionary;
      
      protected var §[O§:String;
      
      protected var §!Q§:String;
      
      protected var §1#Z§:String;
      
      private var §="S§:Array;
      
      private var §?$D§:Array;
      
      private var §?#Y§:Array;
      
      private var §?#p§:Array;
      
      private var §>!A§:Array;
      
      private var §@;§:Array;
      
      private var §"u§:Array;
      
      private var §3!>§:Array;
      
      private var §1"s§:Array;
      
      private var §9!E§:Array;
      
      private var §-#3§:Array;
      
      private var §"#c§:Array;
      
      private var §6,§:Array;
      
      private var § Z§:Array;
      
      private var §1Z§:Array;
      
      private var § "Y§:Array;
      
      private var §0!p§:§"$D§;
      
      private var §2#%§:Array;
      
      private var §0#,§:§"$D§;
      
      private var §0$9§:Array;
      
      public function §>#G§(param1:String, param2:§4#?§)
      {
         this.§="S§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§?$D§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§?#Y§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§?#p§ = [97,99,116,117,97,108,76,101,118,101,108];
         this.§>!A§ = [101,112,105,115,111,100,101];
         this.§@;§ = [108,101,118,101,108];
         this.§"u§ = [112,111,105,110,116,115];
         this.§3!>§ = [115,116,97,114,115];
         this.§1"s§ = [116,111,117,114,110,97,109,101,110,116,73,100];
         this.§9!E§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.§-#3§ = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§"#c§ = [115,101,99,117,114,105,116,121];
         this.§6,§ = [98,108,111,99,107,115];
         this.§ Z§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§1Z§ = [117,115,101,100,67,111,110,115,117,109,97,98,108,101,73,116,101,109,73,100,115];
         this.§ "Y§ = [99,111,108,108,101,99,116,101,100,73,116,101,109,115];
         this.§0$9§ = [];
         super(param1,param2);
         this.§="5§ = new Dictionary();
         this.§2#%§ = [];
         this.§%b§ = new Dictionary();
         this.§0o§ = new Dictionary();
         this.§;"4§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§79§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §2#2§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §7#s§() : int
      {
         var _loc3_:§79§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §@r§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §0"1§() : int
      {
         var _loc3_:§79§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §2$4§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §,!,§() : Dictionary
      {
         var _loc3_:int = 0;
         var _loc4_:§79§ = null;
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
      
      public function §]#a§() : Boolean
      {
         var _loc3_:§79§ = null;
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
      
      public function §="7§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!§@"z§(_loc2_) && this.§5!>§(_loc2_) == 0)
            {
               return false;
            }
         }
         return true;
      }
      
      public function §5!>§(param1:String) : int
      {
         var _loc2_:§[S§ = null;
         if(this.§;"4§[param1])
         {
            _loc2_ = this.§;"4§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §0#F§(param1:String) : int
      {
         if(this.§%b§[param1])
         {
            return this.§%b§[param1];
         }
         return 0;
      }
      
      public function §>#M§(param1:String, param2:int) : void
      {
         this.§%b§[param1] = param2;
      }
      
      public function §2#t§(param1:String, param2:int) : void
      {
         var _loc3_:§[S§ = new §[S§(param2);
         this.§;"4§[param1] = _loc3_;
      }
      
      public function §<u§(param1:String) : int
      {
         if(this.§="5§[param1])
         {
            return this.§="5§[param1];
         }
         return 0;
      }
      
      public function §##D§(param1:String, param2:int) : void
      {
         this.§="5§[param1] = param2;
      }
      
      public function §6"d§(param1:String, param2:int) : void
      {
         this.§0o§[param1] = param2;
      }
      
      public function §8$§(param1:String) : int
      {
         if(this.§0o§[param1])
         {
            return this.§0o§[param1];
         }
         return 0;
      }
      
      public function init(param1:String, param2:String, param3:Array) : void
      {
         this.§[O§ = param1;
         this.§1#Z§ = param2;
         this.§0$9§ = param3 || [];
      }
      
      public function §set §(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§%b§ = new Dictionary();
         this.§;"4§ = new Dictionary();
         this.§0o§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§2#t§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§>#M§(_loc2_.l,_loc2_.r);
            }
            if(_loc2_.gr)
            {
               this.§6"d§(_loc2_.l,_loc2_.gr);
            }
         }
      }
      
      public function §'$ §(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               §?g§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.me)
            {
               §5"P§(_loc2_.l,_loc2_.me);
            }
            if(_loc2_.r)
            {
               this.§##D§(_loc2_.l,_loc2_.r);
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
            return this.§3"^§(param1);
         }
         if(param1.split("-")[0] == "2000")
         {
            return §5"L§.§3"1§.isLevelOpen(param1);
         }
         return super.isLevelOpen(param1);
      }
      
      private function §^$"§(param1:String) : String
      {
         var _loc2_:§79§ = mLevelManager.getEpisodeForLevel(param1);
         return SHA1.§0c§([!!_loc2_ ? _loc2_.name : this.§2Q§(),param1,§+!p§.§-#W§.getScore(),getStarsForLevel(param1,§+!p§.§-#W§.getScore()),§+!p§.§-#W§.getEagleScore(),this.§9M§()].join("|"));
      }
      
      private function §>O§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §9M§() : String
      {
         return this.§>O§(this.§-#3§);
      }
      
      private function §4"j§() : String
      {
         return this.§>O§(this.§="S§);
      }
      
      private function §2Q§() : String
      {
         return this.§>O§(this.§?$D§);
      }
      
      private function §=l§() : String
      {
         return this.§>O§(this.§?#Y§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§0$9§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§5"f§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§0$9§.push(_loc3_);
         }
         (_loc4_ = §!"`§.§@!A§(§1$$§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§=l§();
         (_loc5_ = new §5"f§(null,2)).addEventListener(Event.COMPLETE,this.§<"y§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§-#1§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-#1§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §<"y§(param1:Event) : void
      {
         var _loc2_:§"$D§ = null;
         if(param1.currentTarget is §"$D§)
         {
            _loc2_ = param1.currentTarget as §"$D§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§<"y§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §-#1§(param1:Event) : void
      {
         var _loc2_:§"$D§ = null;
         if(param1.currentTarget is §"$D§)
         {
            _loc2_ = param1.currentTarget as §"$D§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§<"y§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:int = 0;
         if(this.§,#-§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString()));
         }
         var _loc5_:URLRequest;
         (_loc5_ = §!"`§.§@!A§(§1$$§ + this.§4"j§() + "/" + param3.toString() + "/" + param4.toString())).method = URLRequestMethod.POST;
         _loc5_.contentType = this.§=l§();
         var _loc6_:§79§ = mLevelManager.getEpisodeForLevel(param1);
         var _loc7_:int = §+!p§.§-#W§.getScore();
         var _loc8_:int = getStarsForLevel(param1,§+!p§.§-#W§.getScore());
         var _loc9_:Object = {};
         var _loc10_:String = (mLevelManager as §?"m§).§&#W§(param1);
         if(param3)
         {
            _loc10_ = String(§5"L§.§3"1§.§%!m§(param1));
         }
         _loc9_[this.§>O§(this.§>!A§)] = !!_loc6_ ? _loc6_.name : this.§2Q§();
         _loc9_[this.§>O§(this.§@;§)] = param1;
         _loc9_[this.§>O§(this.§"u§)] = _loc7_;
         _loc9_[this.§>O§(this.§9!E§)] = §+!p§.§-#W§.getEagleScore();
         _loc9_[this.§>O§(this.§"#c§)] = this.§^$"§(param1);
         _loc9_[this.§>O§(this.§6,§)] = §-V§.§`"e§();
         _loc9_[this.§>O§(this.§ Z§)] = §2#u§.§7#>§;
         _loc9_[this.§>O§(this.§1Z§)] = (§+!p§.§`?§ as §^#j§).§7#j§();
         _loc9_[this.§>O§(this.§?#p§)] = _loc10_;
         _loc9_[this.§>O§(this.§3!>§)] = _loc8_;
         if(param3 && §5"L§.§3"1§.§54§)
         {
            _loc9_[this.§>O§(this.§1"s§)] = §5"L§.§3"1§.§54§.id;
         }
         var _loc11_:§>"%§;
         if(_loc11_ = §=!a§.§3"1§.§>"Q§() as §>"%§)
         {
            if((_loc12_ = _loc11_.§>#h§()) > 0)
            {
               _loc9_[this.§>O§(this.§ "Y§)] = _loc12_;
            }
         }
         _loc5_.data = Base64.encode(JSON.stringify(_loc9_));
         this.§0!p§ = new §5"f§();
         this.§0!p§.addEventListener(Event.COMPLETE,this.§%5§);
         this.§0!p§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§0!p§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§0!p§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§0!p§.load(_loc5_);
      }
      
      private function §%5§(param1:Event) : void
      {
         var _loc2_:Object = this.§0!p§.data;
         this.§0!p§ = null;
         if(_loc2_.errorCode || _loc2_.errorMessage)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Error saving score. Server return error code \'" + _loc2_.errorCode + "\', message: \'" + _loc2_.errorMessage + "\'."));
         }
         var _loc3_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§"!f§);
         _loc3_.data = _loc2_;
         var _loc4_:§>"%§;
         if(_loc4_ = §=!a§.§3"1§.§>"Q§() as §>"%§)
         {
            _loc4_.§@$§(_loc2_.userEvent);
         }
         dispatchEvent(_loc3_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §;" §.§`S§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§&_§));
         }
         else
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Error event: " + param1.toString()));
         }
         this.§0!p§ = null;
      }
      
      public function §3"^§(param1:String) : Boolean
      {
         if(this.§2#%§ != null)
         {
            if(this.§2#%§.indexOf(param1) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §9#0§(param1:String) : void
      {
         if(this.§3"^§(param1))
         {
            return;
         }
         var _loc2_:EggCollectedPopup = new EggCollectedPopup(§-!S§.§ !^§,§## §.§<#k§,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         this.§2#%§.push(param1);
         var _loc3_:URLRequest = §!"`§.§@!A§(§1$$§ + "/eggfound/" + param1);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = this.§=l§();
         this.§0#,§ = new §5"f§(null,2);
         this.§0#,§.addEventListener(Event.COMPLETE,this.§9"h§);
         this.§0#,§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§0#,§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§0#,§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§0#,§.load(_loc3_);
      }
      
      public function §9$"§(param1:Array) : void
      {
         if(param1 != null)
         {
            this.§2#%§ = param1;
         }
      }
      
      private function §9"h§(param1:Event) : void
      {
      }
      
      public function get §,#-§() : Boolean
      {
         return this.§0!p§ != null;
      }
      
      public function get userName() : String
      {
         return this.§[O§;
      }
      
      public function get avatarString() : String
      {
         return this.§!Q§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§!Q§ = param1;
      }
      
      public function get userID() : String
      {
         return this.§1#Z§;
      }
      
      public function §;#6§() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         for(_loc1_ in this.§;"4§)
         {
            _loc2_ = this.§5!>§(_loc1_);
            if(getStarsForLevel(_loc1_,_loc2_) < 3)
            {
               return false;
            }
         }
         return true;
      }
   }
}
