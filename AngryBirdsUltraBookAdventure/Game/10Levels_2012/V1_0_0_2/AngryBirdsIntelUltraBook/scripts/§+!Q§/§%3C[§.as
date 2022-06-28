package §+!Q§
{
   import §,!5§.§;v§;
   import §0!N§.§4n§;
   import §0!N§.LevelManager;
   import §0X§.§&'§;
   import §2t§.§?+§;
   import §40§.§-!,§;
   import §9!y§.§2v§;
   import §9!y§.§@M§;
   import §;!5§.§ v§;
   import §;!5§.§!e§;
   import §;!5§.§3!^§;
   import §;<§.§4!d§;
   import §@N§.§2w§;
   import §]!§.§4!s§;
   import §]!§.UserProgressEvent;
   import §^_§.Base64;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import §true§.§ _§;
   
   public class §<[§ extends §4!s§
   {
      
      public static const §[!]§:String = "tt";
       
      
      protected var §?[§:Dictionary;
      
      private var §`l§:Dictionary;
      
      private var §%l§:Dictionary;
      
      protected var §&i§:String;
      
      protected var §-!Z§:String;
      
      protected var §,!3§:String;
      
      private var §'!b§:Array;
      
      private var §1@§:Array;
      
      private var §`'§:Array;
      
      private var §<!b§:Array;
      
      private var §`P§:Array;
      
      private var §@t§:Array;
      
      private var §]!D§:Array;
      
      private var §!A§:Array;
      
      private var mName:Array;
      
      private var §&o§:Array;
      
      private var §=!3§:Array;
      
      private var §0<§:Array;
      
      private var §8!$§:Array;
      
      private var §0Y§:§!e§;
      
      private var §^!H§:Array;
      
      private var §&w§:§!e§;
      
      private var §6W§:Array;
      
      public function §<[§(param1:String)
      {
         this.§'!b§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§1@§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§`'§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§<!b§ = [101,112,105,115,111,100,101];
         this.§`P§ = [108,101,118,101,108];
         this.§@t§ = [112,111,105,110,116,115];
         this.§]!D§ = [115,116,97,114,115];
         this.§!A§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§&o§ = [115,101,99,117,114,105,116,121];
         this.§=!3§ = [98,108,111,99,107,115];
         this.§0<§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§8!$§ = [99,111,117,110,116,67,111,110,115,117,109,97,98,108,101,115];
         super(param1);
         this.§?[§ = new Dictionary();
         this.§^!H§ = [];
         this.§`l§ = new Dictionary();
         this.§%l§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§4n§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§1K§())
         {
            _loc3_ = LevelManager.§`!-§(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §&!N§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §9F§(param1:String) : int
      {
         var _loc2_:§&'§ = null;
         if(this.§%l§[param1])
         {
            _loc2_ = this.§%l§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §>!`§(param1:String) : int
      {
         if(this.§`l§[param1])
         {
            return this.§`l§[param1];
         }
         return 0;
      }
      
      public function §,"§(param1:String, param2:int) : void
      {
         this.§`l§[param1] = param2;
      }
      
      public function §6%§(param1:String, param2:int) : void
      {
         var _loc3_:§&'§ = new §&'§(param2);
         this.§%l§[param1] = _loc3_;
      }
      
      public function §,!l§(param1:String) : int
      {
         if(this.§?[§[param1])
         {
            return this.§?[§[param1];
         }
         return 0;
      }
      
      public function §2!@§(param1:String, param2:int) : void
      {
         this.§?[§[param1] = param2;
      }
      
      public function §6"§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§`l§ = new Dictionary();
         this.§%l§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§6%§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§,"§(_loc2_.l,_loc2_.r);
            }
         }
      }
      
      public function §90§(param1:Array, param2:String, param3:String, param4:String, param5:Array, param6:Array) : void
      {
         var _loc7_:Object = null;
         this.§&i§ = param2;
         this.§-!Z§ = param3;
         this.§,!3§ = param4;
         this.§6W§ = param6;
         if(param5 != null)
         {
            this.§^!H§ = param5;
         }
         for each(_loc7_ in param1)
         {
            if(_loc7_.p)
            {
               §,!i§(_loc7_.l,_loc7_.p);
            }
            if(_loc7_.me)
            {
               §5U§(_loc7_.l,_loc7_.me);
            }
            if(_loc7_.r)
            {
               this.§2!@§(_loc7_.l,_loc7_.r);
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
      
      private function §;!e§(param1:String) : String
      {
         var _loc2_:§4n§ = LevelManager.§2!9§(param1);
         return §?+§.§'!P§([!!_loc2_ ? _loc2_.name : this.§>&§(),param1,§ _§.§?!]§.getScore(),getStarsForLevel(param1,§ _§.§?!]§.getScore()),§ _§.§?!]§.getEagleScore(),this.§=!U§()].join("|"));
      }
      
      private function §%!o§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §=!U§() : String
      {
         return this.§%!o§(this.mName);
      }
      
      private function §1D§() : String
      {
         return this.§%!o§(this.§'!b§);
      }
      
      private function §>&§() : String
      {
         return this.§%!o§(this.§1@§);
      }
      
      private function §+v§() : String
      {
         return this.§%!o§(this.§`'§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§6W§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§!e§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§6W§.push(_loc3_);
         }
         (_loc4_ = § v§.§<N§(§3l§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§+v§();
         (_loc5_ = new §!e§(null,2)).addEventListener(Event.COMPLETE,this.§4T§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§`!+§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`!+§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §4T§(param1:Event) : void
      {
         var _loc2_:§!e§ = null;
         if(param1.currentTarget is §!e§)
         {
            _loc2_ = param1.currentTarget as §!e§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§4T§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §`!+§(param1:Event) : void
      {
         var _loc2_:§!e§ = null;
         if(param1.currentTarget is §!e§)
         {
            _loc2_ = param1.currentTarget as §!e§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§4T§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§'!n§)
         {
            throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString());
         }
         var _loc4_:URLRequest;
         (_loc4_ = § v§.§<N§(§3l§ + this.§1D§() + "/" + param3.toString())).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§+v§();
         var _loc5_:§4n§ = LevelManager.§2!9§(param1);
         var _loc6_:int = § _§.§?!]§.getScore();
         var _loc7_:int = getStarsForLevel(param1,§ _§.§?!]§.getScore());
         var _loc8_:Object;
         (_loc8_ = {})[this.§%!o§(this.§<!b§)] = !!_loc5_ ? _loc5_.name : this.§>&§();
         _loc8_[this.§%!o§(this.§`P§)] = param1;
         _loc8_[this.§%!o§(this.§@t§)] = _loc6_;
         _loc8_[this.§%!o§(this.§]!D§)] = _loc7_;
         _loc8_[this.§%!o§(this.§!A§)] = § _§.§?!]§.getEagleScore();
         _loc8_[this.§%!o§(this.§&o§)] = this.§;!e§(param1);
         _loc8_[this.§%!o§(this.§=!3§)] = §;v§.§-1§();
         _loc8_[this.§%!o§(this.§0<§)] = §-!,§.§[l§;
         _loc8_[this.§%!o§(this.§8!$§)] = (§ _§.§!6§ as §2w§).§''§();
         _loc4_.data = Base64.encode(§4!d§.encode(_loc8_));
         this.§0Y§ = new §!e§();
         this.§0Y§.addEventListener(Event.COMPLETE,this.§4N§);
         this.§0Y§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§0Y§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§0Y§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§0Y§.load(_loc4_);
      }
      
      private function §4N§(param1:Event) : void
      {
         this.§0Y§ = null;
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§3P§);
         _loc2_.data = param1.currentTarget.data;
         dispatchEvent(_loc2_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §3!^§.§2_§)
         {
            §@M§.§!!g§(§2v§.§'1§);
         }
         else
         {
            §@M§.§!!g§();
         }
         this.§0Y§ = null;
      }
      
      public function isEggUnlocked(param1:String) : Boolean
      {
         if(this.§^!H§ != null)
         {
            if(this.§^!H§.indexOf(param1) != -1)
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
         §@M§.§@!7§(param1);
         this.§^!H§.push(param1);
         var _loc2_:URLRequest = § v§.§<N§(§3l§ + "/eggfound/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = this.§+v§();
         this.§&w§ = new §!e§(null,2);
         this.§&w§.addEventListener(Event.COMPLETE,this.§^r§);
         this.§&w§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&w§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&w§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§&w§.load(_loc2_);
      }
      
      private function §^r§(param1:Event) : void
      {
      }
      
      public function get §'!n§() : Boolean
      {
         return this.§0Y§ != null;
      }
      
      public function get userName() : String
      {
         return this.§&i§;
      }
      
      public function get avatarString() : String
      {
         return this.§-!Z§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§-!Z§ = param1;
      }
      
      public function get §0u§() : String
      {
         return this.§,!3§;
      }
   }
}
