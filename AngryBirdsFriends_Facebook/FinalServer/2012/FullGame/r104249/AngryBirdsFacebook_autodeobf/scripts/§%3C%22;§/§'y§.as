package §<";§
{
   import §%!'§.§-§;
   import §&!"§.§5"§;
   import §&!"§.§`B§;
   import §0!2§.§-6§;
   import §0!2§.§9!F§;
   import §3I§.§3!b§;
   import §5!G§.§&2§;
   import §9!h§.§ s§;
   import §9!h§.UserProgressEvent;
   import §="9§.§="+§;
   import §@",§.§-!V§;
   import §[!-§.§9!S§;
   import §[!-§.§="B§;
   import §[!-§.§?x§;
   import §[x§.Base64;
   import §^!o§.§=1§;
   import §`!n§.§-[§;
   import §`!n§.§=!-§;
   import §`!n§.LevelManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §'y§ extends § s§
   {
      
      public static const §8!+§:String = "tt";
      
      public static const §-O§:String = "btt";
       
      
      protected var §["9§:Dictionary;
      
      private var §7]§:Dictionary;
      
      private var §8s§:Dictionary;
      
      protected var §8" §:String;
      
      protected var §9",§:String;
      
      protected var §4"-§:String;
      
      private var §]!1§:Array;
      
      private var §8!V§:Array;
      
      private var §["'§:Array;
      
      private var §9T§:Array;
      
      private var §%!!§:Array;
      
      private var §-!K§:Array;
      
      private var §2"@§:Array;
      
      private var §2!!§:Array;
      
      private var §;!J§:Array;
      
      private var mName:Array;
      
      private var §8M§:Array;
      
      private var §<j§:Array;
      
      private var §?!>§:Array;
      
      private var §%!m§:Array;
      
      private var §^"H§:§9!S§;
      
      private var §7!O§:Array;
      
      private var §<!H§:§9!S§;
      
      private var §'!d§:Array;
      
      public function §'y§(param1:String)
      {
         this.§]!1§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§8!V§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§["'§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§9T§ = [97,99,116,117,97,108,76,101,118,101,108];
         this.§%!!§ = [101,112,105,115,111,100,101];
         this.§-!K§ = [108,101,118,101,108];
         this.§2"@§ = [112,111,105,110,116,115];
         this.§2!!§ = [115,116,97,114,115];
         this.§;!J§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§8M§ = [115,101,99,117,114,105,116,121];
         this.§<j§ = [98,108,111,99,107,115];
         this.§?!>§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§%!m§ = [117,115,101,100,67,111,110,115,117,109,97,98,108,101,73,116,101,109,73,100,115];
         this.§'!d§ = [];
         super(param1);
         this.§["9§ = new Dictionary();
         this.§7!O§ = [];
         this.§7]§ = new Dictionary();
         this.§8s§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§=!-§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§>!3§())
         {
            _loc3_ = LevelManager.§9"&§(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §9!C§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §6!C§(param1:String) : int
      {
         var _loc2_:§-§ = null;
         if(this.§8s§[param1])
         {
            _loc2_ = this.§8s§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §']§(param1:String) : int
      {
         if(this.§7]§[param1])
         {
            return this.§7]§[param1];
         }
         return 0;
      }
      
      public function §8!Y§(param1:String, param2:int) : void
      {
         this.§7]§[param1] = param2;
      }
      
      public function §;P§(param1:String, param2:int) : void
      {
         var _loc3_:§-§ = new §-§(param2);
         this.§8s§[param1] = _loc3_;
      }
      
      public function §7I§(param1:String) : int
      {
         if(this.§["9§[param1])
         {
            return this.§["9§[param1];
         }
         return 0;
      }
      
      public function § set§(param1:String, param2:int) : void
      {
         this.§["9§[param1] = param2;
      }
      
      public function §7!s§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§7]§ = new Dictionary();
         this.§8s§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§;P§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§8!Y§(_loc2_.l,_loc2_.r);
            }
         }
      }
      
      public function §?e§(param1:Array, param2:String, param3:String, param4:String, param5:Array, param6:Array) : void
      {
         var _loc7_:Object = null;
         this.§8" § = param2;
         this.§9",§ = param3;
         this.§4"-§ = param4;
         this.§'!d§ = param6 || [];
         if(param5 != null)
         {
            this.§7!O§ = param5;
         }
         for each(_loc7_ in param1)
         {
            if(_loc7_.p)
            {
               §"!P§(_loc7_.l,_loc7_.p);
            }
            if(_loc7_.me)
            {
               §""C§(_loc7_.l,_loc7_.me);
            }
            if(_loc7_.r)
            {
               this.§ set§(_loc7_.l,_loc7_.r);
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
            return this.§#!e§(param1);
         }
         if(param1.split("-")[0] == "2000")
         {
            return §=1§.§1[§.isLevelOpen(param1);
         }
         return super.isLevelOpen(param1);
      }
      
      private function §'"A§(param1:String) : String
      {
         var _loc2_:§=!-§ = LevelManager.§0"§(param1);
         return §="+§.§%"$§([!!_loc2_ ? _loc2_.name : this.§3""§(),param1,§&2§.§,!x§.getScore(),getStarsForLevel(param1,§&2§.§,!x§.getScore()),§&2§.§,!x§.getEagleScore(),this.§]!j§()].join("|"));
      }
      
      private function §%m§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §]!j§() : String
      {
         return this.§%m§(this.mName);
      }
      
      private function §>!P§() : String
      {
         return this.§%m§(this.§]!1§);
      }
      
      private function §3""§() : String
      {
         return this.§%m§(this.§8!V§);
      }
      
      private function §""I§() : String
      {
         return this.§%m§(this.§["'§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§'!d§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§9!S§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§'!d§.push(_loc3_);
         }
         (_loc4_ = §?x§.§>t§(§0Z§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§""I§();
         (_loc5_ = new §9!S§(null,2)).addEventListener(Event.COMPLETE,this.§"!Y§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§!!§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!!§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §"!Y§(param1:Event) : void
      {
         var _loc2_:§9!S§ = null;
         if(param1.currentTarget is §9!S§)
         {
            _loc2_ = param1.currentTarget as §9!S§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§"!Y§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §!!§(param1:Event) : void
      {
         var _loc2_:§9!S§ = null;
         if(param1.currentTarget is §9!S§)
         {
            _loc2_ = param1.currentTarget as §9!S§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§"!Y§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§09§)
         {
            throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString());
         }
         var _loc4_:URLRequest;
         (_loc4_ = §?x§.§>t§(§0Z§ + this.§>!P§() + "/" + param3.toString())).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§""I§();
         var _loc5_:§=!-§ = LevelManager.§0"§(param1);
         var _loc6_:int = §&2§.§,!x§.getScore();
         var _loc7_:int = getStarsForLevel(param1,§&2§.§,!x§.getScore());
         var _loc8_:Object = {};
         var _loc9_:String = §-[§.§8"4§(param1);
         if(param3)
         {
            _loc9_ = String(§=1§.§1[§.§7!B§(param1));
         }
         _loc8_[this.§%m§(this.§%!!§)] = !!_loc5_ ? _loc5_.name : this.§3""§();
         _loc8_[this.§%m§(this.§-!K§)] = param1;
         _loc8_[this.§%m§(this.§2"@§)] = _loc6_;
         _loc8_[this.§%m§(this.§2!!§)] = _loc7_;
         _loc8_[this.§%m§(this.§;!J§)] = §&2§.§,!x§.getEagleScore();
         _loc8_[this.§%m§(this.§8M§)] = this.§'"A§(param1);
         _loc8_[this.§%m§(this.§<j§)] = §-6§.§3W§();
         _loc8_[this.§%m§(this.§?!>§)] = §-!V§.§#E§;
         _loc8_[this.§%m§(this.§%!m§)] = (§&2§.§],§ as §9!F§).§;!A§();
         _loc8_[this.§%m§(this.§9T§)] = _loc9_;
         _loc4_.data = Base64.encode(§3!b§.encode(_loc8_));
         this.§^"H§ = new §9!S§();
         this.§^"H§.addEventListener(Event.COMPLETE,this.§="&§);
         this.§^"H§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§^"H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§^"H§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§^"H§.load(_loc4_);
      }
      
      private function §="&§(param1:Event) : void
      {
         this.§^"H§ = null;
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§%"B§);
         _loc2_.data = param1.currentTarget.data;
         dispatchEvent(_loc2_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §="B§.§2"B§)
         {
            §`B§.§#!i§(§5"§.§;s§);
         }
         else
         {
            §`B§.§#!i§();
         }
         this.§^"H§ = null;
      }
      
      public function §#!e§(param1:String) : Boolean
      {
         if(this.§7!O§ != null)
         {
            if(this.§7!O§.indexOf(param1) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §?"%§(param1:String) : void
      {
         if(this.§#!e§(param1))
         {
            return;
         }
         §`B§.§69§(param1);
         this.§7!O§.push(param1);
         var _loc2_:URLRequest = §?x§.§>t§(§0Z§ + "/eggfound/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = this.§""I§();
         this.§<!H§ = new §9!S§(null,2);
         this.§<!H§.addEventListener(Event.COMPLETE,this.§-"G§);
         this.§<!H§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§<!H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§<!H§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§<!H§.load(_loc2_);
      }
      
      private function §-"G§(param1:Event) : void
      {
      }
      
      public function get §09§() : Boolean
      {
         return this.§^"H§ != null;
      }
      
      public function get userName() : String
      {
         return this.§8" §;
      }
      
      public function get avatarString() : String
      {
         return this.§9",§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§9",§ = param1;
      }
      
      public function get §;#§() : String
      {
         return this.§4"-§;
      }
   }
}
