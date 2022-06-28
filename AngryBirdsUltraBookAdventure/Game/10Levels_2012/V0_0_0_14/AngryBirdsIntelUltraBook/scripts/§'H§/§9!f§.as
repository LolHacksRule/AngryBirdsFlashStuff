package §'H§
{
   import §!!§.§@+§;
   import §!!§.LevelManager;
   import §&!4§.§ !J§;
   import §&!h§.§?!K§;
   import §+&§.§;!8§;
   import §0o§.§>Z§;
   import §4!C§.§"!m§;
   import §4!C§.§]!X§;
   import §4!C§.§^!g§;
   import §5i§.§4!]§;
   import §6z§.Base64;
   import §8!G§.§"D§;
   import §9!3§.§"!g§;
   import §9!Q§.§2!S§;
   import §9!Q§.§7o§;
   import §[a§.§2!T§;
   import §[a§.UserProgressEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §9!f§ extends §2!T§
   {
      
      public static const §!=§:String = "tt";
       
      
      protected var §?F§:Dictionary;
      
      private var §%!f§:Dictionary;
      
      private var §--§:Dictionary;
      
      protected var §]!6§:String;
      
      protected var §7!-§:String;
      
      protected var §null§:String;
      
      private var §<!S§:Array;
      
      private var §@$§:Array;
      
      private var §2>§:Array;
      
      private var §[Q§:Array;
      
      private var §;!W§:Array;
      
      private var §;n§:Array;
      
      private var §5!P§:Array;
      
      private var §2P§:Array;
      
      private var mName:Array;
      
      private var §!i§:Array;
      
      private var §6e§:Array;
      
      private var §%G§:Array;
      
      private var §6I§:Array;
      
      private var §5a§:§"!m§;
      
      private var §&P§:Array;
      
      private var §^V§:§"!m§;
      
      private var §4!-§:Array;
      
      public function §9!f§(param1:String)
      {
         this.§<!S§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§@$§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§2>§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§[Q§ = [101,112,105,115,111,100,101];
         this.§;!W§ = [108,101,118,101,108];
         this.§;n§ = [112,111,105,110,116,115];
         this.§5!P§ = [115,116,97,114,115];
         this.§2P§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§!i§ = [115,101,99,117,114,105,116,121];
         this.§6e§ = [98,108,111,99,107,115];
         this.§%G§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§6I§ = [99,111,117,110,116,67,111,110,115,117,109,97,98,108,101,115];
         super(param1);
         this.§?F§ = new Dictionary();
         this.§&P§ = [];
         this.§%!f§ = new Dictionary();
         this.§--§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§@+§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§`!v§())
         {
            _loc3_ = LevelManager.§'v§(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §^!E§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §6b§(param1:String) : int
      {
         var _loc2_:§?!K§ = null;
         if(this.§--§[param1])
         {
            _loc2_ = this.§--§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §3![§(param1:String) : int
      {
         if(this.§%!f§[param1])
         {
            return this.§%!f§[param1];
         }
         return 0;
      }
      
      public function §3!2§(param1:String, param2:int) : void
      {
         this.§%!f§[param1] = param2;
      }
      
      public function §6!2§(param1:String, param2:int) : void
      {
         var _loc3_:§?!K§ = new §?!K§(param2);
         this.§--§[param1] = _loc3_;
      }
      
      public function §while§(param1:String) : int
      {
         if(this.§?F§[param1])
         {
            return this.§?F§[param1];
         }
         return 0;
      }
      
      public function §%!§(param1:String, param2:int) : void
      {
         this.§?F§[param1] = param2;
      }
      
      public function § &§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§%!f§ = new Dictionary();
         this.§--§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§6!2§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§3!2§(_loc2_.l,_loc2_.r);
            }
         }
      }
      
      public function §<v§(param1:Array, param2:String, param3:String, param4:String, param5:Array, param6:Array) : void
      {
         var _loc7_:Object = null;
         this.§]!6§ = param2;
         this.§7!-§ = param3;
         this.§null§ = param4;
         this.§4!-§ = param6;
         if(param5 != null)
         {
            this.§&P§ = param5;
         }
         for each(_loc7_ in param1)
         {
            if(_loc7_.p)
            {
               §,x§(_loc7_.l,_loc7_.p);
            }
            if(_loc7_.me)
            {
               §#]§(_loc7_.l,_loc7_.me);
            }
            if(_loc7_.r)
            {
               this.§%!§(_loc7_.l,_loc7_.r);
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
      
      private function §@!Z§(param1:String) : String
      {
         var _loc2_:§@+§ = LevelManager.§,m§(param1);
         return §"!g§.§<]§([!!_loc2_ ? _loc2_.name : this.§;y§(),param1,§4!]§.§=`§.getScore(),getStarsForLevel(param1,§4!]§.§=`§.getScore()),§4!]§.§=`§.getEagleScore(),this.§?!M§()].join("|"));
      }
      
      private function §%!i§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §?!M§() : String
      {
         return this.§%!i§(this.mName);
      }
      
      private function §6!x§() : String
      {
         return this.§%!i§(this.§<!S§);
      }
      
      private function §;y§() : String
      {
         return this.§%!i§(this.§@$§);
      }
      
      private function §6U§() : String
      {
         return this.§%!i§(this.§2>§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§4!-§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§"!m§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§4!-§.push(_loc3_);
         }
         (_loc4_ = §]!X§.§#l§(§0'§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§6U§();
         (_loc5_ = new §"!m§(null,2)).addEventListener(Event.COMPLETE,this.§1!h§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§finally§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§finally§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §1!h§(param1:Event) : void
      {
         var _loc2_:§"!m§ = null;
         if(param1.currentTarget is §"!m§)
         {
            _loc2_ = param1.currentTarget as §"!m§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§1!h§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §finally§(param1:Event) : void
      {
         var _loc2_:§"!m§ = null;
         if(param1.currentTarget is §"!m§)
         {
            _loc2_ = param1.currentTarget as §"!m§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§1!h§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§29§)
         {
            throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString());
         }
         var _loc4_:URLRequest;
         (_loc4_ = §]!X§.§#l§(§0'§ + this.§6!x§() + "/" + param3.toString())).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§6U§();
         var _loc5_:§@+§ = LevelManager.§,m§(param1);
         var _loc6_:int = §4!]§.§=`§.getScore();
         var _loc7_:int = getStarsForLevel(param1,§4!]§.§=`§.getScore());
         var _loc8_:Object;
         (_loc8_ = {})[this.§%!i§(this.§[Q§)] = !!_loc5_ ? _loc5_.name : this.§;y§();
         _loc8_[this.§%!i§(this.§;!W§)] = param1;
         _loc8_[this.§%!i§(this.§;n§)] = _loc6_;
         _loc8_[this.§%!i§(this.§5!P§)] = _loc7_;
         _loc8_[this.§%!i§(this.§2P§)] = §4!]§.§=`§.getEagleScore();
         _loc8_[this.§%!i§(this.§!i§)] = this.§@!Z§(param1);
         _loc8_[this.§%!i§(this.§6e§)] = §;!8§.§?!h§();
         _loc8_[this.§%!i§(this.§%G§)] = §>Z§.§[!1§;
         _loc8_[this.§%!i§(this.§6I§)] = (§4!]§.§8C§ as §"D§).§^!%§();
         _loc4_.data = Base64.encode(§ !J§.encode(_loc8_));
         this.§5a§ = new §"!m§();
         this.§5a§.addEventListener(Event.COMPLETE,this.§2!U§);
         this.§5a§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§5a§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§5a§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§5a§.load(_loc4_);
      }
      
      private function §2!U§(param1:Event) : void
      {
         this.§5a§ = null;
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§&!R§);
         _loc2_.data = param1.currentTarget.data;
         dispatchEvent(_loc2_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §^!g§.§]P§)
         {
            §7o§.§-Y§(§2!S§.§2u§);
         }
         else
         {
            §7o§.§-Y§();
         }
         this.§5a§ = null;
      }
      
      public function isEggUnlocked(param1:String) : Boolean
      {
         if(this.§&P§ != null)
         {
            if(this.§&P§.indexOf(param1) != -1)
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
         §7o§.§;M§(param1);
         this.§&P§.push(param1);
         var _loc2_:URLRequest = §]!X§.§#l§(§0'§ + "/eggfound/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = this.§6U§();
         this.§^V§ = new §"!m§(null,2);
         this.§^V§.addEventListener(Event.COMPLETE,this.§%!g§);
         this.§^V§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§^V§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§^V§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§^V§.load(_loc2_);
      }
      
      private function §%!g§(param1:Event) : void
      {
      }
      
      public function get §29§() : Boolean
      {
         return this.§5a§ != null;
      }
      
      public function get userName() : String
      {
         return this.§]!6§;
      }
      
      public function get avatarString() : String
      {
         return this.§7!-§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§7!-§ = param1;
      }
      
      public function get §0!V§() : String
      {
         return this.§null§;
      }
   }
}
