package §%!v§
{
   import § !9§.§'!J§;
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#!e§.§ <§;
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §6o§.Base64;
   import §7"@§.§2!e§;
   import §7-§.§,!C§;
   import §9"!§.§2K§;
   import §9"!§.§?E§;
   import §<a§.§9U§;
   import §=,§.§!!W§;
   import §=,§.UserProgressEvent;
   import §[!z§.§[!Y§;
   import §]!A§.;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §[<§ extends §!!W§
   {
      
      public static const §-!W§:String = "tt";
      
      public static const §8l§:String = "btt";
       
      
      protected var §6Z§:Dictionary;
      
      private var §6Q§:Dictionary;
      
      private var §3!&§:Dictionary;
      
      protected var §]!e§:String;
      
      protected var §@!0§:String;
      
      protected var § !b§:String;
      
      private var §5N§:Array;
      
      private var §[X§:Array;
      
      private var §-!w§:Array;
      
      private var §3_§:Array;
      
      private var §3"&§:Array;
      
      private var §>a§:Array;
      
      private var §[d§:Array;
      
      private var §23§:Array;
      
      private var override:Array;
      
      private var mName:Array;
      
      private var §-i§:Array;
      
      private var §5!7§:Array;
      
      private var §;2§:Array;
      
      private var §=]§:Array;
      
      private var §2;§:§0]§;
      
      private var §"%§:Array;
      
      private var §&w§:§0]§;
      
      private var §8!a§:Array;
      
      public function §[<§(param1:String)
      {
         this.§5N§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§[X§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§-!w§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§3_§ = [97,99,116,117,97,108,76,101,118,101,108];
         this.§3"&§ = [101,112,105,115,111,100,101];
         this.§>a§ = [108,101,118,101,108];
         this.§[d§ = [112,111,105,110,116,115];
         this.§23§ = [115,116,97,114,115];
         this.override = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§-i§ = [115,101,99,117,114,105,116,121];
         this.§5!7§ = [98,108,111,99,107,115];
         this.§;2§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§=]§ = [117,115,101,100,67,111,110,115,117,109,97,98,108,101,73,116,101,109,73,100,115];
         this.§8!a§ = [];
         super(param1);
         this.§6Z§ = new Dictionary();
         this.§"%§ = [];
         this.§6Q§ = new Dictionary();
         this.§3!&§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§>x§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§@!N§())
         {
            _loc3_ = LevelManager.§;X§(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §9o§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §<U§(param1:String) : int
      {
         var _loc2_:§9U§ = null;
         if(this.§3!&§[param1])
         {
            _loc2_ = this.§3!&§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §4!N§(param1:String) : int
      {
         if(this.§6Q§[param1])
         {
            return this.§6Q§[param1];
         }
         return 0;
      }
      
      public function §+"&§(param1:String, param2:int) : void
      {
         this.§6Q§[param1] = param2;
      }
      
      public function §7&§(param1:String, param2:int) : void
      {
         var _loc3_:§9U§ = new §9U§(param2);
         this.§3!&§[param1] = _loc3_;
      }
      
      public function §#!o§(param1:String) : int
      {
         if(this.§6Z§[param1])
         {
            return this.§6Z§[param1];
         }
         return 0;
      }
      
      public function §%"2§(param1:String, param2:int) : void
      {
         this.§6Z§[param1] = param2;
      }
      
      public function §;!i§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§6Q§ = new Dictionary();
         this.§3!&§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§7&§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§+"&§(_loc2_.l,_loc2_.r);
            }
         }
      }
      
      public function §?"D§(param1:Array, param2:String, param3:String, param4:String, param5:Array, param6:Array) : void
      {
         var _loc7_:Object = null;
         this.§]!e§ = param2;
         this.§@!0§ = param3;
         this.§ !b§ = param4;
         this.§8!a§ = param6 || [];
         if(param5 != null)
         {
            this.§"%§ = param5;
         }
         for each(_loc7_ in param1)
         {
            if(_loc7_.p)
            {
               §["$§(_loc7_.l,_loc7_.p);
            }
            if(_loc7_.me)
            {
               §<!,§(_loc7_.l,_loc7_.me);
            }
            if(_loc7_.r)
            {
               this.§%"2§(_loc7_.l,_loc7_.r);
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
            return this.§6M§(param1);
         }
         if(param1.split("-")[0] == "2000")
         {
            return §,!C§.§;"§.isLevelOpen(param1);
         }
         return super.isLevelOpen(param1);
      }
      
      private function §,!s§(param1:String) : String
      {
         var _loc2_:§>x§ = LevelManager.§^_§(param1);
         return §[!Y§.§78§([!!_loc2_ ? _loc2_.name : this.§2!`§(),param1,§#6§.§'" §.getScore(),getStarsForLevel(param1,§#6§.§'" §.getScore()),§#6§.§'" §.getEagleScore(),this.§=§()].join("|"));
      }
      
      private function §-W§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §=§() : String
      {
         return this.§-W§(this.mName);
      }
      
      private function §;"A§() : String
      {
         return this.§-W§(this.§5N§);
      }
      
      private function §2!`§() : String
      {
         return this.§-W§(this.§[X§);
      }
      
      private function §6!q§() : String
      {
         return this.§-W§(this.§-!w§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§8!a§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§0]§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§8!a§.push(_loc3_);
         }
         (_loc4_ = §-!l§.§%""§(§+]§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§6!q§();
         (_loc5_ = new §0]§(null,2)).addEventListener(Event.COMPLETE,this.§=!@§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§7!l§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7!l§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §=!@§(param1:Event) : void
      {
         var _loc2_:§0]§ = null;
         if(param1.currentTarget is §0]§)
         {
            _loc2_ = param1.currentTarget as §0]§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§=!@§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §7!l§(param1:Event) : void
      {
         var _loc2_:§0]§ = null;
         if(param1.currentTarget is §0]§)
         {
            _loc2_ = param1.currentTarget as §0]§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§=!@§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§7!I§)
         {
            throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString());
         }
         var _loc4_:URLRequest;
         (_loc4_ = §-!l§.§%""§(§+]§ + this.§;"A§() + "/" + param3.toString())).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§6!q§();
         var _loc5_:§>x§ = LevelManager.§^_§(param1);
         var _loc6_:int = §#6§.§'" §.getScore();
         var _loc7_:int = getStarsForLevel(param1,§#6§.§'" §.getScore());
         var _loc8_:Object = {};
         var _loc9_:String = § <§.§2!V§(param1);
         if(param3)
         {
            _loc9_ = String(§,!C§.§;"§.§8!z§(param1));
         }
         _loc8_[this.§-W§(this.§3"&§)] = !!_loc5_ ? _loc5_.name : this.§2!`§();
         _loc8_[this.§-W§(this.§>a§)] = param1;
         _loc8_[this.§-W§(this.§[d§)] = _loc6_;
         _loc8_[this.§-W§(this.§23§)] = _loc7_;
         _loc8_[this.§-W§(this.override)] = §#6§.§'" §.getEagleScore();
         _loc8_[this.§-W§(this.§-i§)] = this.§,!s§(param1);
         _loc8_[this.§-W§(this.§5!7§)] = §?E§.§9!T§();
         _loc8_[this.§-W§(this.§;2§)] = §2!e§.§#!W§;
         _loc8_[this.§-W§(this.§=]§)] = (§#6§.§6!z§ as §2K§).§[v§();
         _loc8_[this.§-W§(this.§3_§)] = _loc9_;
         _loc4_.data = Base64.encode(§'!J§.encode(_loc8_));
         this.§2;§ = new §0]§();
         this.§2;§.addEventListener(Event.COMPLETE,this.§for §);
         this.§2;§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§2;§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§2;§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§2;§.load(_loc4_);
      }
      
      private function §for §(param1:Event) : void
      {
         this.§2;§ = null;
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§+!f§);
         _loc2_.data = param1.currentTarget.data;
         dispatchEvent(_loc2_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §+!D§.§25§)
         {
            §%?§.§6!7§(§-d§.§]x§);
         }
         else
         {
            §%?§.§6!7§();
         }
         this.§2;§ = null;
      }
      
      public function §6M§(param1:String) : Boolean
      {
         if(this.§"%§ != null)
         {
            if(this.§"%§.indexOf(param1) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §`"3§(param1:String) : void
      {
         if(this.§6M§(param1))
         {
            return;
         }
         §%?§.§]"B§(param1);
         this.§"%§.push(param1);
         var _loc2_:URLRequest = §-!l§.§%""§(§+]§ + "/eggfound/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = this.§6!q§();
         this.§&w§ = new §0]§(null,2);
         this.§&w§.addEventListener(Event.COMPLETE,this.§4!M§);
         this.§&w§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&w§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&w§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§&w§.load(_loc2_);
      }
      
      private function §4!M§(param1:Event) : void
      {
      }
      
      public function get §7!I§() : Boolean
      {
         return this.§2;§ != null;
      }
      
      public function get userName() : String
      {
         return this.§]!e§;
      }
      
      public function get avatarString() : String
      {
         return this.§@!0§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§@!0§ = param1;
      }
      
      public function get §4v§() : String
      {
         return this.§ !b§;
      }
   }
}
