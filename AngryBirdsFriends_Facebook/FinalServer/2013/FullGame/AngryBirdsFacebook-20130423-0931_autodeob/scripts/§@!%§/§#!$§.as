package §@!%§
{
   import § $§.§9P§;
   import §+!c§.Base64;
   import §0D§.§3!R§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §4!<§.§%6§;
   import §4!<§.§;P§;
   import §4D§.§"H§;
   import §4D§.UserProgressEvent;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import §9!n§.§!J§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §9@§.§9!D§;
   import §;u§.§+"9§;
   import §@!"§.§?l§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §#!$§ extends §"H§
   {
      
      public static const §3"+§:String = "tt";
      
      public static const §;O§:String = "btt";
      
      public static const §4"P§:String = "RAFFLE_";
      
      public static const §+%§:String = "END_RAFFLE_";
      
      public static const §1!g§:String = "END_RAFFLE_WINNERS_";
       
      
      protected var §6L§:Dictionary;
      
      private var §"!^§:Dictionary;
      
      private var §3" §:Dictionary;
      
      protected var §[!D§:String;
      
      protected var §+!Q§:String;
      
      protected var §8"H§:String;
      
      private var §9!l§:Array;
      
      private var §-`§:Array;
      
      private var §!]§:Array;
      
      private var §7;§:Array;
      
      private var §`X§:Array;
      
      private var §8E§:Array;
      
      private var §&0§:Array;
      
      private var §2f§:Array;
      
      private var §[!§:Array;
      
      private var mName:Array;
      
      private var §#G§:Array;
      
      private var §]"S§:Array;
      
      private var §?"§:Array;
      
      private var §-!=§:Array;
      
      private var §with§:§3d§;
      
      private var §?g§:Array;
      
      private var §3"§:§3d§;
      
      private var §`r§:Array;
      
      public function §#!$§(param1:String)
      {
         this.§9!l§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§-`§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§!]§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§7;§ = [97,99,116,117,97,108,76,101,118,101,108];
         this.§`X§ = [101,112,105,115,111,100,101];
         this.§8E§ = [108,101,118,101,108];
         this.§&0§ = [112,111,105,110,116,115];
         this.§2f§ = [115,116,97,114,115];
         this.§[!§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§#G§ = [115,101,99,117,114,105,116,121];
         this.§]"S§ = [98,108,111,99,107,115];
         this.§?"§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§-!=§ = [117,115,101,100,67,111,110,115,117,109,97,98,108,101,73,116,101,109,73,100,115];
         this.§`r§ = [];
         super(param1);
         this.§6L§ = new Dictionary();
         this.§?g§ = [];
         this.§"!^§ = new Dictionary();
         this.§3" § = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§3-§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§0"5§())
         {
            _loc3_ = LevelManager.§1!m§(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §[!a§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §="&§(param1:String) : int
      {
         var _loc2_:§9!D§ = null;
         if(this.§3" §[param1])
         {
            _loc2_ = this.§3" §[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §3"4§(param1:String) : int
      {
         if(this.§"!^§[param1])
         {
            return this.§"!^§[param1];
         }
         return 0;
      }
      
      public function §1q§(param1:String, param2:int) : void
      {
         this.§"!^§[param1] = param2;
      }
      
      public function §6!W§(param1:String, param2:int) : void
      {
         var _loc3_:§9!D§ = new §9!D§(param2);
         this.§3" §[param1] = _loc3_;
      }
      
      public function §;M§(param1:String) : int
      {
         if(this.§6L§[param1])
         {
            return this.§6L§[param1];
         }
         return 0;
      }
      
      public function §'!y§(param1:String, param2:int) : void
      {
         this.§6L§[param1] = param2;
      }
      
      public function §"r§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§"!^§ = new Dictionary();
         this.§3" § = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§6!W§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§1q§(_loc2_.l,_loc2_.r);
            }
         }
      }
      
      public function §?!m§(param1:Array, param2:String, param3:String, param4:String, param5:Array, param6:Array) : void
      {
         var _loc7_:Object = null;
         this.§[!D§ = param2;
         this.§+!Q§ = param3;
         this.§8"H§ = param4;
         this.§`r§ = param6 || [];
         if(param5 != null)
         {
            this.§?g§ = param5;
         }
         for each(_loc7_ in param1)
         {
            if(_loc7_.p)
            {
               §!y§(_loc7_.l,_loc7_.p);
            }
            if(_loc7_.me)
            {
               §3!Z§(_loc7_.l,_loc7_.me);
            }
            if(_loc7_.r)
            {
               this.§'!y§(_loc7_.l,_loc7_.r);
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
            return this.§,"F§(param1);
         }
         if(param1.split("-")[0] == "2000")
         {
            return §3!R§.§&"5§.isLevelOpen(param1);
         }
         return super.isLevelOpen(param1);
      }
      
      private function §;I§(param1:String) : String
      {
         var _loc2_:§3-§ = LevelManager.§5!T§(param1);
         return §9P§.§7m§([!!_loc2_ ? _loc2_.name : this.§!G§(),param1,§?l§.§5-§.getScore(),getStarsForLevel(param1,§?l§.§5-§.getScore()),§?l§.§5-§.getEagleScore(),this.§""S§()].join("|"));
      }
      
      private function § do§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §""S§() : String
      {
         return this.§ do§(this.mName);
      }
      
      private function §[L§() : String
      {
         return this.§ do§(this.§9!l§);
      }
      
      private function §!G§() : String
      {
         return this.§ do§(this.§-`§);
      }
      
      private function § G§() : String
      {
         return this.§ do§(this.§!]§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§`r§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§3d§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§`r§.push(_loc3_);
         }
         (_loc4_ = §9!7§.§,!l§(§@"R§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§ G§();
         (_loc5_ = new §3d§(null,2)).addEventListener(Event.COMPLETE,this.§"!K§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§><§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§><§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §"!K§(param1:Event) : void
      {
         var _loc2_:§3d§ = null;
         if(param1.currentTarget is §3d§)
         {
            _loc2_ = param1.currentTarget as §3d§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§"!K§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §><§(param1:Event) : void
      {
         var _loc2_:§3d§ = null;
         if(param1.currentTarget is §3d§)
         {
            _loc2_ = param1.currentTarget as §3d§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§"!K§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§case §)
         {
            throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString());
         }
         var _loc4_:URLRequest;
         (_loc4_ = §9!7§.§,!l§(§@"R§ + this.§[L§() + "/" + param3.toString())).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§ G§();
         var _loc5_:§3-§ = LevelManager.§5!T§(param1);
         var _loc6_:int = §?l§.§5-§.getScore();
         var _loc7_:int = getStarsForLevel(param1,§?l§.§5-§.getScore());
         var _loc8_:Object = {};
         var _loc9_:String = §!J§.§;6§(param1);
         if(param3)
         {
            _loc9_ = String(§3!R§.§&"5§.§5K§(param1));
         }
         _loc8_[this.§ do§(this.§`X§)] = !!_loc5_ ? _loc5_.name : this.§!G§();
         _loc8_[this.§ do§(this.§8E§)] = param1;
         _loc8_[this.§ do§(this.§&0§)] = _loc6_;
         _loc8_[this.§ do§(this.§[!§)] = §?l§.§5-§.getEagleScore();
         _loc8_[this.§ do§(this.§#G§)] = this.§;I§(param1);
         _loc8_[this.§ do§(this.§]"S§)] = §;P§.§84§();
         _loc8_[this.§ do§(this.§?"§)] = §+"9§.§%?§;
         _loc8_[this.§ do§(this.§-!=§)] = (§?l§.§'h§ as §%6§).§'!>§();
         _loc8_[this.§ do§(this.§7;§)] = _loc9_;
         _loc8_[this.§ do§(this.§2f§)] = _loc7_;
         _loc4_.data = Base64.encode(JSON.stringify(_loc8_));
         this.§with§ = new §3d§();
         this.§with§.addEventListener(Event.COMPLETE,this.§[U§);
         this.§with§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§with§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§with§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§with§.load(_loc4_);
      }
      
      private function §[U§(param1:Event) : void
      {
         this.§with§ = null;
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§@O§);
         _loc2_.data = param1.currentTarget.data;
         dispatchEvent(_loc2_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §9G§.§33§)
         {
            §9"6§.§>_§(§]!I§.§`'§);
         }
         else
         {
            §9"6§.§>_§();
         }
         this.§with§ = null;
      }
      
      public function §,"F§(param1:String) : Boolean
      {
         if(this.§?g§ != null)
         {
            if(this.§?g§.indexOf(param1) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §9!'§(param1:String) : void
      {
         if(this.§,"F§(param1))
         {
            return;
         }
         §9"6§.§[i§(param1);
         this.§?g§.push(param1);
         var _loc2_:URLRequest = §9!7§.§,!l§(§@"R§ + "/eggfound/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = this.§ G§();
         this.§3"§ = new §3d§(null,2);
         this.§3"§.addEventListener(Event.COMPLETE,this.§>";§);
         this.§3"§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§3"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§3"§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§3"§.load(_loc2_);
      }
      
      private function §>";§(param1:Event) : void
      {
      }
      
      public function get §case §() : Boolean
      {
         return this.§with§ != null;
      }
      
      public function get userName() : String
      {
         return this.§[!D§;
      }
      
      public function get avatarString() : String
      {
         return this.§+!Q§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§+!Q§ = param1;
      }
      
      public function get §5!0§() : String
      {
         return this.§8"H§;
      }
   }
}
