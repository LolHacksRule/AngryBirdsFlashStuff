package §,"-§
{
   import §'i§.§7!m§;
   import §'i§.UserProgressEvent;
   import §+I§.§9!%§;
   import §-0§.§"!k§;
   import §0!?§.Base64;
   import §3,§.§!" §;
   import §3,§.§>M§;
   import §7N§.§43§;
   import §7N§.§]@§;
   import §9"%§.§"!n§;
   import §9"%§.§,!S§;
   import §9"%§.§4!J§;
   import §<!<§.§,V§;
   import §<!e§.§[!t§;
   import §[!K§.§&j§;
   import §[!z§.§"5§;
   import §[!z§.LevelManager;
   import §[!z§.§]f§;
   import §`"3§.§8"4§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §2!P§ extends §7!m§
   {
      
      public static const §=?§:String = "tt";
       
      
      protected var §3W§:Dictionary;
      
      private var §+"7§:Dictionary;
      
      private var § ",§:Dictionary;
      
      protected var §&!w§:String;
      
      protected var §>!R§:String;
      
      protected var §1T§:String;
      
      private var §<H§:Array;
      
      private var §]!r§:Array;
      
      private var § !u§:Array;
      
      private var §,K§:Array;
      
      private var §+!#§:Array;
      
      private var §?p§:Array;
      
      private var §5!T§:Array;
      
      private var § !7§:Array;
      
      private var §<F§:Array;
      
      private var mName:Array;
      
      private var §^!u§:Array;
      
      private var §^"$§:Array;
      
      private var §`y§:Array;
      
      private var §^"%§:Array;
      
      private var §0!5§:§,!S§;
      
      private var §'!P§:Array;
      
      private var §3m§:§,!S§;
      
      private var §>0§:Array;
      
      public function §2!P§(param1:String)
      {
         this.§<H§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§]!r§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§ !u§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§,K§ = [97,99,116,117,97,108,76,101,118,101,108];
         this.§+!#§ = [101,112,105,115,111,100,101];
         this.§?p§ = [108,101,118,101,108];
         this.§5!T§ = [112,111,105,110,116,115];
         this.§ !7§ = [115,116,97,114,115];
         this.§<F§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§^!u§ = [115,101,99,117,114,105,116,121];
         this.§^"$§ = [98,108,111,99,107,115];
         this.§`y§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§^"%§ = [99,111,117,110,116,67,111,110,115,117,109,97,98,108,101,115];
         super(param1);
         this.§3W§ = new Dictionary();
         this.§'!P§ = [];
         this.§+"7§ = new Dictionary();
         this.§ ",§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§]f§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§%3§())
         {
            _loc3_ = LevelManager.§3"1§(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §@y§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §8l§(param1:String) : int
      {
         var _loc2_:§,V§ = null;
         if(this.§ ",§[param1])
         {
            _loc2_ = this.§ ",§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §[!l§(param1:String) : int
      {
         if(this.§+"7§[param1])
         {
            return this.§+"7§[param1];
         }
         return 0;
      }
      
      public function §%'§(param1:String, param2:int) : void
      {
         this.§+"7§[param1] = param2;
      }
      
      public function §?;§(param1:String, param2:int) : void
      {
         var _loc3_:§,V§ = new §,V§(param2);
         this.§ ",§[param1] = _loc3_;
      }
      
      public function §?!!§(param1:String) : int
      {
         if(this.§3W§[param1])
         {
            return this.§3W§[param1];
         }
         return 0;
      }
      
      public function § 7§(param1:String, param2:int) : void
      {
         this.§3W§[param1] = param2;
      }
      
      public function §?>§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§+"7§ = new Dictionary();
         this.§ ",§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§?;§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§%'§(_loc2_.l,_loc2_.r);
            }
         }
      }
      
      public function §8J§(param1:Array, param2:String, param3:String, param4:String, param5:Array, param6:Array) : void
      {
         var _loc7_:Object = null;
         this.§&!w§ = param2;
         this.§>!R§ = param3;
         this.§1T§ = param4;
         this.§>0§ = param6;
         if(param5 != null)
         {
            this.§'!P§ = param5;
         }
         for each(_loc7_ in param1)
         {
            if(_loc7_.p)
            {
               §'!X§(_loc7_.l,_loc7_.p);
            }
            if(_loc7_.me)
            {
               §[y§(_loc7_.l,_loc7_.me);
            }
            if(_loc7_.r)
            {
               this.§ 7§(_loc7_.l,_loc7_.r);
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
            return this.isEggUnlocked(param1);
         }
         if(param1.split("-")[0] == "2000")
         {
            return §[!t§.§8c§.levels.indexOf(param1) > -1;
         }
         return super.isLevelOpen(param1);
      }
      
      private function §^e§(param1:String) : String
      {
         var _loc2_:§]f§ = LevelManager.§"!r§(param1);
         return §"!k§.§1§([!!_loc2_ ? _loc2_.name : this.§4"'§(),param1,§9!%§.§&N§.getScore(),getStarsForLevel(param1,§9!%§.§&N§.getScore()),§9!%§.§&N§.getEagleScore(),this.§'!n§()].join("|"));
      }
      
      private function §0H§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §'!n§() : String
      {
         return this.§0H§(this.mName);
      }
      
      private function §8"2§() : String
      {
         return this.§0H§(this.§<H§);
      }
      
      private function §4"'§() : String
      {
         return this.§0H§(this.§]!r§);
      }
      
      private function §'G§() : String
      {
         return this.§0H§(this.§ !u§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§>0§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§,!S§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§>0§.push(_loc3_);
         }
         (_loc4_ = §4!J§.§3j§(§&!M§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§'G§();
         (_loc5_ = new §,!S§(null,2)).addEventListener(Event.COMPLETE,this.§[!#§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§0-§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0-§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §[!#§(param1:Event) : void
      {
         var _loc2_:§,!S§ = null;
         if(param1.currentTarget is §,!S§)
         {
            _loc2_ = param1.currentTarget as §,!S§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§[!#§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §0-§(param1:Event) : void
      {
         var _loc2_:§,!S§ = null;
         if(param1.currentTarget is §,!S§)
         {
            _loc2_ = param1.currentTarget as §,!S§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§[!#§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§;"%§)
         {
            throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString());
         }
         var _loc4_:URLRequest;
         (_loc4_ = §4!J§.§3j§(§&!M§ + this.§8"2§() + "/" + param3.toString())).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§'G§();
         var _loc5_:§]f§ = LevelManager.§"!r§(param1);
         var _loc6_:int = §9!%§.§&N§.getScore();
         var _loc7_:int = getStarsForLevel(param1,§9!%§.§&N§.getScore());
         var _loc8_:Object = {};
         var _loc9_:String = §"5§.§3t§(param1);
         if(param3)
         {
            _loc9_ = String(§[!t§.§8c§.§=!l§(param1));
         }
         _loc8_[this.§0H§(this.§+!#§)] = !!_loc5_ ? _loc5_.name : this.§4"'§();
         _loc8_[this.§0H§(this.§?p§)] = param1;
         _loc8_[this.§0H§(this.§5!T§)] = _loc6_;
         _loc8_[this.§0H§(this.§ !7§)] = _loc7_;
         _loc8_[this.§0H§(this.§<F§)] = §9!%§.§&N§.getEagleScore();
         _loc8_[this.§0H§(this.§^!u§)] = this.§^e§(param1);
         _loc8_[this.§0H§(this.§^"$§)] = §!" §.§81§();
         _loc8_[this.§0H§(this.§`y§)] = §&j§.§="5§;
         _loc8_[this.§0H§(this.§^"%§)] = (§9!%§.§!!M§ as §>M§).§;H§();
         _loc8_[this.§0H§(this.§,K§)] = _loc9_;
         _loc4_.data = Base64.encode(§8"4§.encode(_loc8_));
         this.§0!5§ = new §,!S§();
         this.§0!5§.addEventListener(Event.COMPLETE,this.§[=§);
         this.§0!5§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§0!5§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§0!5§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§0!5§.load(_loc4_);
      }
      
      private function §[=§(param1:Event) : void
      {
         this.§0!5§ = null;
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§]"4§);
         _loc2_.data = param1.currentTarget.data;
         dispatchEvent(_loc2_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §"!n§.§"+§)
         {
            §43§.§ "6§(§]@§.§76§);
         }
         else
         {
            §43§.§ "6§();
         }
         this.§0!5§ = null;
      }
      
      public function isEggUnlocked(param1:String) : Boolean
      {
         if(this.§'!P§ != null)
         {
            if(this.§'!P§.indexOf(param1) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function setEggUnlocked(param1:String) : void
      {
         if(this.isEggUnlocked(param1))
         {
            return;
         }
         §43§.§![§(param1);
         this.§'!P§.push(param1);
         var _loc2_:URLRequest = §4!J§.§3j§(§&!M§ + "/eggfound/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = this.§'G§();
         this.§3m§ = new §,!S§(null,2);
         this.§3m§.addEventListener(Event.COMPLETE,this.§7!o§);
         this.§3m§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§3m§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§3m§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§3m§.load(_loc2_);
      }
      
      private function §7!o§(param1:Event) : void
      {
      }
      
      public function get §;"%§() : Boolean
      {
         return this.§0!5§ != null;
      }
      
      public function get userName() : String
      {
         return this.§&!w§;
      }
      
      public function get avatarString() : String
      {
         return this.§>!R§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§>!R§ = param1;
      }
      
      public function get §!!'§() : String
      {
         return this.§1T§;
      }
   }
}
