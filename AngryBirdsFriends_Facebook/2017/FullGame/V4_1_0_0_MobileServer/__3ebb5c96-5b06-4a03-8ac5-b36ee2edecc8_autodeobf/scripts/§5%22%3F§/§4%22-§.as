package §5"?§
{
   import § $%§.§%§;
   import § $%§.§0#`§;
   import § $%§.§4"v§;
   import § $%§.§]e§;
   import § o§.§%"!§;
   import § o§.EggCollectedPopup;
   import § o§.ErrorPopup;
   import §##-§.SHA1;
   import §+!C§.§#!L§;
   import §+!C§.§2"b§;
   import §6"r§.§!#A§;
   import §6V§.§#j§;
   import §94§.§&I§;
   import §<"p§.Base64;
   import §<#m§.§^#o§;
   import §<u§.§ "a§;
   import §@#§.§9##§;
   import §@#§.§^#Q§;
   import §@#§.§`!Q§;
   import §]#K§.§>#x§;
   import §];§.§-!t§;
   import §`M§.§6W§;
   import §`M§.UserProgressEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §4"-§ extends §6W§
   {
      
      public static const §[y§:String = "tt";
      
      public static const §8!8§:String = "btt";
      
      public static const §<!'§:String = "RAFFLE_";
      
      public static const §5!?§:String = "END_RAFFLE_";
      
      public static const §'§:String = "END_RAFFLE_WINNERS_";
       
      
      protected var §[#Q§:Dictionary;
      
      private var §34§:Dictionary;
      
      private var §,!`§:Dictionary;
      
      protected var §"!W§:String;
      
      protected var §]<§:String;
      
      protected var §7+§:String;
      
      private var §8#$§:Array;
      
      private var §,3§:Array;
      
      private var §+$9§:Array;
      
      private var §`v§:Array;
      
      private var §3#X§:Array;
      
      private var §?!P§:Array;
      
      private var §"!g§:Array;
      
      private var §["w§:Array;
      
      private var §^F§:Array;
      
      private var §;!p§:Array;
      
      private var § !&§:Array;
      
      private var §5"]§:Array;
      
      private var §8!Q§:Array;
      
      private var §+p§:Array;
      
      private var §?!t§:Array;
      
      private var §!"3§:§0#`§;
      
      private var §[!#§:Array;
      
      private var §]"Q§:§0#`§;
      
      private var §""&§:Array;
      
      public function §4"-§(param1:String, param2:§^#Q§)
      {
         this.§8#$§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§,3§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§+$9§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§`v§ = [97,99,116,117,97,108,76,101,118,101,108];
         this.§3#X§ = [101,112,105,115,111,100,101];
         this.§?!P§ = [108,101,118,101,108];
         this.§"!g§ = [112,111,105,110,116,115];
         this.§["w§ = [115,116,97,114,115];
         this.§^F§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.§;!p§ = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§ !&§ = [115,101,99,117,114,105,116,121];
         this.§5"]§ = [98,108,111,99,107,115];
         this.§8!Q§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§+p§ = [117,115,101,100,67,111,110,115,117,109,97,98,108,101,73,116,101,109,73,100,115];
         this.§?!t§ = [99,111,108,108,101,99,116,101,100,73,116,101,109,115];
         this.§""&§ = [];
         super(param1,param2);
         this.§[#Q§ = new Dictionary();
         this.§[!#§ = [];
         this.§34§ = new Dictionary();
         this.§,!`§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§9##§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §@"V§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §>#?§() : int
      {
         var _loc3_:§9##§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §%n§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §,#J§() : int
      {
         var _loc3_:§9##§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §26§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §!#^§() : Dictionary
      {
         var _loc3_:int = 0;
         var _loc4_:§9##§ = null;
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
      
      public function §@C§() : Boolean
      {
         var _loc3_:§9##§ = null;
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
      
      public function §##R§(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!§,A§(_loc2_) && this.§ =§(_loc2_) == 0)
            {
               return false;
            }
         }
         return true;
      }
      
      public function § =§(param1:String) : int
      {
         var _loc2_:§#j§ = null;
         if(this.§,!`§[param1])
         {
            _loc2_ = this.§,!`§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §]$"§(param1:String) : int
      {
         if(this.§34§[param1])
         {
            return this.§34§[param1];
         }
         return 0;
      }
      
      public function §""`§(param1:String, param2:int) : void
      {
         this.§34§[param1] = param2;
      }
      
      public function §25§(param1:String, param2:int) : void
      {
         var _loc3_:§#j§ = new §#j§(param2);
         this.§,!`§[param1] = _loc3_;
      }
      
      public function §^x§(param1:String) : int
      {
         if(this.§[#Q§[param1])
         {
            return this.§[#Q§[param1];
         }
         return 0;
      }
      
      public function §&#@§(param1:String, param2:int) : void
      {
         this.§[#Q§[param1] = param2;
      }
      
      public function init(param1:String, param2:String, param3:Array) : void
      {
         this.§"!W§ = param1;
         this.§7+§ = param2;
         this.§""&§ = param3 || [];
      }
      
      public function §#,§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§34§ = new Dictionary();
         this.§,!`§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§25§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§""`§(_loc2_.l,_loc2_.r);
            }
         }
      }
      
      public function §>"$§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               §9!G§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.me)
            {
               §>!c§(_loc2_.l,_loc2_.me);
            }
            if(_loc2_.r)
            {
               this.§&#@§(_loc2_.l,_loc2_.r);
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
            return this.§#!V§(param1);
         }
         if(param1.split("-")[0] == "2000")
         {
            return §-!t§.§ "D§.isLevelOpen(param1);
         }
         return super.isLevelOpen(param1);
      }
      
      private function §,o§(param1:String) : String
      {
         var _loc2_:§9##§ = mLevelManager.getEpisodeForLevel(param1);
         return SHA1.§0"x§([!!_loc2_ ? _loc2_.name : this.§6!O§(),param1,§!#A§.§=![§.getScore(),getStarsForLevel(param1,§!#A§.§=![§.getScore()),§!#A§.§=![§.getEagleScore(),this.§-"K§()].join("|"));
      }
      
      private function §9!c§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §-"K§() : String
      {
         return this.§9!c§(this.§;!p§);
      }
      
      private function §>#f§() : String
      {
         return this.§9!c§(this.§8#$§);
      }
      
      private function §6!O§() : String
      {
         return this.§9!c§(this.§,3§);
      }
      
      private function §#!4§() : String
      {
         return this.§9!c§(this.§+$9§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§""&§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§4"v§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§""&§.push(_loc3_);
         }
         (_loc4_ = §%#9§.§`#<§(§3#?§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§#!4§();
         (_loc5_ = new §4"v§(null,2)).addEventListener(Event.COMPLETE,this.§@N§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§9#u§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9#u§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §@N§(param1:Event) : void
      {
         var _loc2_:§0#`§ = null;
         if(param1.currentTarget is §0#`§)
         {
            _loc2_ = param1.currentTarget as §0#`§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§@N§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §9#u§(param1:Event) : void
      {
         var _loc2_:§0#`§ = null;
         if(param1.currentTarget is §0#`§)
         {
            _loc2_ = param1.currentTarget as §0#`§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§@N§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:int = 0;
         if(this.§'"c§)
         {
            throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString());
         }
         var _loc5_:URLRequest;
         (_loc5_ = §%#9§.§`#<§(§3#?§ + this.§>#f§() + "/" + param3.toString() + "/" + param4.toString())).method = URLRequestMethod.POST;
         _loc5_.contentType = this.§#!4§();
         var _loc6_:§9##§ = mLevelManager.getEpisodeForLevel(param1);
         var _loc7_:int = §!#A§.§=![§.getScore();
         var _loc8_:int = getStarsForLevel(param1,§!#A§.§=![§.getScore());
         var _loc9_:Object = {};
         var _loc10_:String = (mLevelManager as §`!Q§).§+#O§(param1);
         if(param3)
         {
            _loc10_ = String(§-!t§.§ "D§.§9`§(param1));
         }
         _loc9_[this.§9!c§(this.§3#X§)] = !!_loc6_ ? _loc6_.name : this.§6!O§();
         _loc9_[this.§9!c§(this.§?!P§)] = param1;
         _loc9_[this.§9!c§(this.§"!g§)] = _loc7_;
         _loc9_[this.§9!c§(this.§^F§)] = §!#A§.§=![§.getEagleScore();
         _loc9_[this.§9!c§(this.§ !&§)] = this.§,o§(param1);
         _loc9_[this.§9!c§(this.§5"]§)] = §2"b§.§[!,§();
         _loc9_[this.§9!c§(this.§8!Q§)] = §&I§.§4#X§;
         _loc9_[this.§9!c§(this.§+p§)] = (§!#A§.§#F§ as §#!L§).§-$1§();
         _loc9_[this.§9!c§(this.§`v§)] = _loc10_;
         _loc9_[this.§9!c§(this.§["w§)] = _loc8_;
         var _loc11_:§>#x§;
         if(_loc11_ = § "a§.§ "D§.§^W§() as §>#x§)
         {
            if((_loc12_ = _loc11_.§4!b§()) > 0)
            {
               _loc9_[this.§9!c§(this.§?!t§)] = _loc12_;
            }
         }
         _loc5_.data = Base64.encode(JSON.stringify(_loc9_));
         this.§!"3§ = new §4"v§();
         this.§!"3§.addEventListener(Event.COMPLETE,this.§!T§);
         this.§!"3§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§!"3§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§!"3§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§!"3§.load(_loc5_);
      }
      
      private function §!T§(param1:Event) : void
      {
         var _loc2_:Object = this.§!"3§.data;
         this.§!"3§ = null;
         if(_loc2_.errorCode || _loc2_.errorMessage)
         {
            throw new Error("Error saving score. Server return error code \'" + _loc2_.errorCode + "\', message: \'" + _loc2_.errorMessage + "\'.");
         }
         var _loc3_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§!!_§);
         _loc3_.data = _loc2_;
         var _loc4_:§>#x§;
         if(_loc4_ = § "a§.§ "D§.§^W§() as §>#x§)
         {
            _loc4_.§5a§(_loc2_.userEvent);
         }
         dispatchEvent(_loc3_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §]e§.§5!;§)
         {
            this.§[#U§(ErrorPopup.§?"V§);
         }
         else
         {
            this.§[#U§(ErrorPopup.§^#c§);
         }
         this.§!"3§ = null;
      }
      
      protected function §[#U§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§%"!§.§4!P§,§^#o§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §#!V§(param1:String) : Boolean
      {
         if(this.§[!#§ != null)
         {
            if(this.§[!#§.indexOf(param1) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §%#k§(param1:String) : void
      {
         if(this.§#!V§(param1))
         {
            return;
         }
         var _loc2_:EggCollectedPopup = new EggCollectedPopup(§%"!§.§4!P§,§^#o§.§#!K§,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         this.§[!#§.push(param1);
         var _loc3_:URLRequest = §%#9§.§`#<§(§3#?§ + "/eggfound/" + param1);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = this.§#!4§();
         this.§]"Q§ = new §4"v§(null,2);
         this.§]"Q§.addEventListener(Event.COMPLETE,this.§%$!§);
         this.§]"Q§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]"Q§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]"Q§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§]"Q§.load(_loc3_);
      }
      
      public function §1!I§(param1:Array) : void
      {
         if(param1 != null)
         {
            this.§[!#§ = param1;
         }
      }
      
      private function §%$!§(param1:Event) : void
      {
      }
      
      public function get §'"c§() : Boolean
      {
         return this.§!"3§ != null;
      }
      
      public function get userName() : String
      {
         return this.§"!W§;
      }
      
      public function get avatarString() : String
      {
         return this.§]<§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§]<§ = param1;
      }
      
      public function get userID() : String
      {
         return this.§7+§;
      }
      
      public function §6]§() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         for(_loc1_ in this.§,!`§)
         {
            _loc2_ = this.§ =§(_loc1_);
            if(getStarsForLevel(_loc1_,_loc2_) < 3)
            {
               return false;
            }
         }
         return true;
      }
   }
}
