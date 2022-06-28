package §,!§
{
   import §!e§.§function§;
   import §"x§.Base64;
   import §#!O§.§9-§;
   import §'!J§.§-!d§;
   import §2_§.§@!6§;
   import §3!G§.§<!#§;
   import §3!G§.LevelManager;
   import §7X§.§!!5§;
   import §7X§.§+!p§;
   import §7X§.§7^§;
   import §>! §.§^!c§;
   import §?N§.§!!m§;
   import §?N§.§]!e§;
   import §]+§.§=E§;
   import §^!W§.§'Q§;
   import §^!W§.UserProgressEvent;
   import §^+§.§2!E§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §![§ extends §'Q§
   {
      
      public static const §&!4§:String = "tt";
       
      
      protected var §]_§:Dictionary;
      
      private var § !E§:Dictionary;
      
      private var §4!L§:Dictionary;
      
      protected var §<!t§:String;
      
      protected var §>o§:String;
      
      protected var §+R§:String;
      
      private var §,!,§:Array;
      
      private var §#!@§:Array;
      
      private var § f§:Array;
      
      private var §-!>§:Array;
      
      private var §4G§:Array;
      
      private var §>X§:Array;
      
      private var §!r§:Array;
      
      private var §7!e§:Array;
      
      private var mName:Array;
      
      private var §4&§:Array;
      
      private var §'!z§:Array;
      
      private var §@w§:Array;
      
      private var §#f§:Array;
      
      private var §%!+§:§7^§;
      
      private var §6!T§:Array;
      
      private var §"C§:§7^§;
      
      private var §&!W§:Array;
      
      public function §![§(param1:String)
      {
         this.§,!,§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§#!@§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§ f§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§-!>§ = [101,112,105,115,111,100,101];
         this.§4G§ = [108,101,118,101,108];
         this.§>X§ = [112,111,105,110,116,115];
         this.§!r§ = [115,116,97,114,115];
         this.§7!e§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§4&§ = [115,101,99,117,114,105,116,121];
         this.§'!z§ = [98,108,111,99,107,115];
         this.§@w§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§#f§ = [99,111,117,110,116,67,111,110,115,117,109,97,98,108,101,115];
         super(param1);
         this.§]_§ = new Dictionary();
         this.§6!T§ = [];
         this.§ !E§ = new Dictionary();
         this.§4!L§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§<!#§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§?p§())
         {
            _loc3_ = LevelManager.§'J§(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §^P§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §[!i§(param1:String) : int
      {
         var _loc2_:§=E§ = null;
         if(this.§4!L§[param1])
         {
            _loc2_ = this.§4!L§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §4!m§(param1:String) : int
      {
         if(this.§ !E§[param1])
         {
            return this.§ !E§[param1];
         }
         return 0;
      }
      
      public function §^x§(param1:String, param2:int) : void
      {
         this.§ !E§[param1] = param2;
      }
      
      public function §6!y§(param1:String, param2:int) : void
      {
         var _loc3_:§=E§ = new §=E§(param2);
         this.§4!L§[param1] = _loc3_;
      }
      
      public function §<y§(param1:String) : int
      {
         if(this.§]_§[param1])
         {
            return this.§]_§[param1];
         }
         return 0;
      }
      
      public function §=!9§(param1:String, param2:int) : void
      {
         this.§]_§[param1] = param2;
      }
      
      public function §<!N§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§ !E§ = new Dictionary();
         this.§4!L§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§6!y§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§^x§(_loc2_.l,_loc2_.r);
            }
         }
      }
      
      public function §!!h§(param1:Array, param2:String, param3:String, param4:String, param5:Array, param6:Array) : void
      {
         var _loc7_:Object = null;
         this.§<!t§ = param2;
         this.§>o§ = param3;
         this.§+R§ = param4;
         this.§&!W§ = param6;
         if(param5 != null)
         {
            this.§6!T§ = param5;
         }
         for each(_loc7_ in param1)
         {
            if(_loc7_.p)
            {
               §!!O§(_loc7_.l,_loc7_.p);
            }
            if(_loc7_.me)
            {
               §-!N§(_loc7_.l,_loc7_.me);
            }
            if(_loc7_.r)
            {
               this.§=!9§(_loc7_.l,_loc7_.r);
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
            return this.isEggUnlocked(param1);
         }
         return super.isLevelOpen(param1);
      }
      
      private function §^=§(param1:String) : String
      {
         var _loc2_:§<!#§ = LevelManager.§1H§(param1);
         return §2!E§.§-!?§([!!_loc2_ ? _loc2_.name : this.§<!a§(),param1,§^!c§.§-U§.getScore(),getStarsForLevel(param1,§^!c§.§-U§.getScore()),§^!c§.§-U§.getEagleScore(),this.§8t§()].join("|"));
      }
      
      private function §]H§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §8t§() : String
      {
         return this.§]H§(this.mName);
      }
      
      private function §?^§() : String
      {
         return this.§]H§(this.§,!,§);
      }
      
      private function §<!a§() : String
      {
         return this.§]H§(this.§#!@§);
      }
      
      private function §+m§() : String
      {
         return this.§]H§(this.§ f§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§&!W§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§7^§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§&!W§.push(_loc3_);
         }
         (_loc4_ = §+!p§.§`;§(§ j§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§+m§();
         (_loc5_ = new §7^§(null,2)).addEventListener(Event.COMPLETE,this.§=!o§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§,!l§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,!l§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §=!o§(param1:Event) : void
      {
         var _loc2_:§7^§ = null;
         if(param1.currentTarget is §7^§)
         {
            _loc2_ = param1.currentTarget as §7^§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§=!o§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         var _loc2_:§7^§ = null;
         if(param1.currentTarget is §7^§)
         {
            _loc2_ = param1.currentTarget as §7^§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§=!o§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§0m§)
         {
            throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString());
         }
         var _loc4_:URLRequest;
         (_loc4_ = §+!p§.§`;§(§ j§ + this.§?^§() + "/" + param3.toString())).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§+m§();
         var _loc5_:§<!#§ = LevelManager.§1H§(param1);
         var _loc6_:int = §^!c§.§-U§.getScore();
         var _loc7_:int = getStarsForLevel(param1,§^!c§.§-U§.getScore());
         var _loc8_:Object;
         (_loc8_ = {})[this.§]H§(this.§-!>§)] = !!_loc5_ ? _loc5_.name : this.§<!a§();
         _loc8_[this.§]H§(this.§4G§)] = param1;
         _loc8_[this.§]H§(this.§>X§)] = _loc6_;
         _loc8_[this.§]H§(this.§!r§)] = _loc7_;
         _loc8_[this.§]H§(this.§7!e§)] = §^!c§.§-U§.getEagleScore();
         _loc8_[this.§]H§(this.§4&§)] = this.§^=§(param1);
         _loc8_[this.§]H§(this.§'!z§)] = §@!6§.§!i§();
         _loc8_[this.§]H§(this.§@w§)] = §-!d§.§6![§;
         _loc8_[this.§]H§(this.§#f§)] = (§^!c§.§5!Y§ as §9-§).§ null§();
         _loc4_.data = Base64.encode(§function§.encode(_loc8_));
         this.§%!+§ = new §7^§();
         this.§%!+§.addEventListener(Event.COMPLETE,this.§`!$§);
         this.§%!+§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§%!+§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§%!+§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§%!+§.load(_loc4_);
      }
      
      private function §`!$§(param1:Event) : void
      {
         this.§%!+§ = null;
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§^!k§);
         _loc2_.data = param1.currentTarget.data;
         dispatchEvent(_loc2_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §!!5§.§[!§)
         {
            §]!e§.§>k§(§!!m§.§[!x§);
         }
         else
         {
            §]!e§.§>k§();
         }
         this.§%!+§ = null;
      }
      
      public function isEggUnlocked(param1:String) : Boolean
      {
         if(this.§6!T§ != null)
         {
            if(this.§6!T§.indexOf(param1) != -1)
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
         §]!e§.§+u§(param1);
         this.§6!T§.push(param1);
         var _loc2_:URLRequest = §+!p§.§`;§(§ j§ + "/eggfound/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = this.§+m§();
         this.§"C§ = new §7^§(null,2);
         this.§"C§.addEventListener(Event.COMPLETE,this.§0!+§);
         this.§"C§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§"C§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§"C§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§"C§.load(_loc2_);
      }
      
      private function §0!+§(param1:Event) : void
      {
      }
      
      public function get §0m§() : Boolean
      {
         return this.§%!+§ != null;
      }
      
      public function get userName() : String
      {
         return this.§<!t§;
      }
      
      public function get avatarString() : String
      {
         return this.§>o§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§>o§ = param1;
      }
      
      public function get §-H§() : String
      {
         return this.§+R§;
      }
   }
}
