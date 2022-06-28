package §[;§
{
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   import §-^§.§4-§;
   import §-^§.§45§;
   import §-^§.§7!6§;
   import §0b§.§"V§;
   import §1!B§.Base64;
   import §40§.§-!8§;
   import §7! §.§[!E§;
   import §;!y§.§,!s§;
   import §<-§.§2B§;
   import §@!Z§.§,Z§;
   import §[!1§.§+!6§;
   import §[!1§.UserProgressEvent;
   import §^!m§.§4!i§;
   import §^!m§.§;0§;
   import §`!#§.§>!4§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §#!6§ extends §+!6§
   {
      
      public static const §,!G§:String = "tt";
       
      
      protected var §]?§:Dictionary;
      
      private var §?!1§:Dictionary;
      
      private var §6z§:Dictionary;
      
      protected var §0!T§:String;
      
      protected var §9!l§:String;
      
      protected var §&I§:String;
      
      private var §;!S§:Array;
      
      private var §^q§:Array;
      
      private var §"!%§:Array;
      
      private var §0!E§:Array;
      
      private var §^!t§:Array;
      
      private var §"!q§:Array;
      
      private var §<!J§:Array;
      
      private var §3!7§:Array;
      
      private var mName:Array;
      
      private var §0H§:Array;
      
      private var §9!3§:Array;
      
      private var §05§:Array;
      
      private var §9!#§:Array;
      
      private var §6s§:§45§;
      
      private var §,;§:Array;
      
      private var §[!e§:§45§;
      
      private var § each§:Array;
      
      public function §#!6§(param1:String)
      {
         this.§;!S§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§^q§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§"!%§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§0!E§ = [101,112,105,115,111,100,101];
         this.§^!t§ = [108,101,118,101,108];
         this.§"!q§ = [112,111,105,110,116,115];
         this.§<!J§ = [115,116,97,114,115];
         this.§3!7§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§0H§ = [115,101,99,117,114,105,116,121];
         this.§9!3§ = [98,108,111,99,107,115];
         this.§05§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§9!#§ = [99,111,117,110,116,67,111,110,115,117,109,97,98,108,101,115];
         super(param1);
         this.§]?§ = new Dictionary();
         this.§,;§ = [];
         this.§?!1§ = new Dictionary();
         this.§6z§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§8K§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§%!1§())
         {
            _loc3_ = LevelManager.§!!A§(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §0q§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §1R§(param1:String) : int
      {
         var _loc2_:§2B§ = null;
         if(this.§6z§[param1])
         {
            _loc2_ = this.§6z§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §#!O§(param1:String) : int
      {
         if(this.§?!1§[param1])
         {
            return this.§?!1§[param1];
         }
         return 0;
      }
      
      public function §'!7§(param1:String, param2:int) : void
      {
         this.§?!1§[param1] = param2;
      }
      
      public function §>!&§(param1:String, param2:int) : void
      {
         var _loc3_:§2B§ = new §2B§(param2);
         this.§6z§[param1] = _loc3_;
      }
      
      public function §@z§(param1:String) : int
      {
         if(this.§]?§[param1])
         {
            return this.§]?§[param1];
         }
         return 0;
      }
      
      public function §%N§(param1:String, param2:int) : void
      {
         this.§]?§[param1] = param2;
      }
      
      public function §-!#§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§?!1§ = new Dictionary();
         this.§6z§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§>!&§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§'!7§(_loc2_.l,_loc2_.r);
            }
         }
      }
      
      public function §0!2§(param1:Array, param2:String, param3:String, param4:String, param5:Array, param6:Array) : void
      {
         var _loc7_:Object = null;
         this.§0!T§ = param2;
         this.§9!l§ = param3;
         this.§&I§ = param4;
         this.§ each§ = param6;
         if(param5 != null)
         {
            this.§,;§ = param5;
         }
         for each(_loc7_ in param1)
         {
            if(_loc7_.p)
            {
               §<C§(_loc7_.l,_loc7_.p);
            }
            if(_loc7_.me)
            {
               §3!L§(_loc7_.l,_loc7_.me);
            }
            if(_loc7_.r)
            {
               this.§%N§(_loc7_.l,_loc7_.r);
            }
         }
      }
      
      override public function isLevelOpen(param1:String) : Boolean
      {
         if(param1 == "10-1" || param1 == "11-1")
         {
            return true;
         }
         if(param1.split("-")[0] == "1000")
         {
            return this.§8E§(param1);
         }
         return super.isLevelOpen(param1);
      }
      
      private function §=!&§(param1:String) : String
      {
         var _loc2_:§8K§ = LevelManager.§`r§(param1);
         return §[!E§.§"F§([!!_loc2_ ? _loc2_.name : this.§"!+§(),param1,§,!s§.§ Q§.getScore(),getStarsForLevel(param1,§,!s§.§ Q§.getScore()),§,!s§.§ Q§.getEagleScore(),this.§8§()].join("|"));
      }
      
      private function §5Q§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §8§() : String
      {
         return this.§5Q§(this.mName);
      }
      
      private function §6F§() : String
      {
         return this.§5Q§(this.§;!S§);
      }
      
      private function §"!+§() : String
      {
         return this.§5Q§(this.§^q§);
      }
      
      private function §#e§() : String
      {
         return this.§5Q§(this.§"!%§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§ each§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§45§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§ each§.push(_loc3_);
         }
         (_loc4_ = §7!6§.§7V§(§0!m§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§#e§();
         (_loc5_ = new §45§(null,2)).addEventListener(Event.COMPLETE,this.§=J§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§-![§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-![§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §=J§(param1:Event) : void
      {
         var _loc2_:§45§ = null;
         if(param1.currentTarget is §45§)
         {
            _loc2_ = param1.currentTarget as §45§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§=J§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §-![§(param1:Event) : void
      {
         var _loc2_:§45§ = null;
         if(param1.currentTarget is §45§)
         {
            _loc2_ = param1.currentTarget as §45§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§=J§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§;!1§)
         {
            throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString());
         }
         var _loc4_:URLRequest;
         (_loc4_ = §7!6§.§7V§(§0!m§ + this.§6F§() + "/" + param3.toString())).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§#e§();
         var _loc5_:§8K§ = LevelManager.§`r§(param1);
         var _loc6_:int = §,!s§.§ Q§.getScore();
         var _loc7_:int = getStarsForLevel(param1,§,!s§.§ Q§.getScore());
         var _loc8_:Object;
         (_loc8_ = {})[this.§5Q§(this.§0!E§)] = !!_loc5_ ? _loc5_.name : this.§"!+§();
         _loc8_[this.§5Q§(this.§^!t§)] = param1;
         _loc8_[this.§5Q§(this.§"!q§)] = _loc6_;
         _loc8_[this.§5Q§(this.§<!J§)] = _loc7_;
         _loc8_[this.§5Q§(this.§3!7§)] = §,!s§.§ Q§.getEagleScore();
         _loc8_[this.§5Q§(this.§0H§)] = this.§=!&§(param1);
         _loc8_[this.§5Q§(this.§9!3§)] = §-!8§.§#$§();
         _loc8_[this.§5Q§(this.§05§)] = §>!4§.§`!e§;
         _loc8_[this.§5Q§(this.§9!#§)] = (§,!s§.§=!I§ as §"V§).§,,§();
         _loc4_.data = Base64.encode(§,Z§.encode(_loc8_));
         this.§6s§ = new §45§();
         this.§6s§.addEventListener(Event.COMPLETE,this.§8S§);
         this.§6s§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§6s§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§6s§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§6s§.load(_loc4_);
      }
      
      private function §8S§(param1:Event) : void
      {
         this.§6s§ = null;
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§ ?§);
         _loc2_.data = param1.currentTarget.data;
         dispatchEvent(_loc2_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §4-§.§4!m§)
         {
            §4!i§.§>t§(§;0§.§-!W§);
         }
         else
         {
            §4!i§.§>t§();
         }
         this.§6s§ = null;
      }
      
      public function §8E§(param1:String) : Boolean
      {
         if(this.§,;§ != null)
         {
            if(this.§,;§.indexOf(param1) != -1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §<!_§(param1:String) : void
      {
         if(this.§8E§(param1))
         {
            return;
         }
         §4!i§.§,!Z§(param1);
         this.§,;§.push(param1);
         var _loc2_:URLRequest = §7!6§.§7V§(§0!m§ + "/eggfound/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = this.§#e§();
         this.§[!e§ = new §45§(null,2);
         this.§[!e§.addEventListener(Event.COMPLETE,this.§5m§);
         this.§[!e§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§[!e§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§[!e§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§[!e§.load(_loc2_);
      }
      
      private function §5m§(param1:Event) : void
      {
      }
      
      public function get §;!1§() : Boolean
      {
         return this.§6s§ != null;
      }
      
      public function get userName() : String
      {
         return this.§0!T§;
      }
      
      public function get avatarString() : String
      {
         return this.§9!l§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§9!l§ = param1;
      }
      
      public function get § z§() : String
      {
         return this.§&I§;
      }
   }
}
