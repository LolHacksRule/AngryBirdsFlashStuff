package §_-mh§
{
   import §_-03e§.§_-la§;
   import §_-0BH§.Base64;
   import §_-7§.§_-42§;
   import §_-7§.§_-EJ§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   import §_-Hb§.§_-P-§;
   import §_-Hb§.§_-a5§;
   import §_-Hb§.§_-ur§;
   import §_-T-§.§_-e3§;
   import §_-TG§.§_-40§;
   import §_-dJ§.§_-xW§;
   import §_-eS§.§_-BK§;
   import §_-py§.§_-bu§;
   import §_-qO§.§ in§;
   import §_-ry§.UserProgressEvent;
   import §_-ry§.§_-00s§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §_-09d§ extends §_-00s§
   {
      
      public static const §_-FR§:String = "tt";
       
      
      protected var §_-t5§:Dictionary;
      
      private var §_-bY§:Dictionary;
      
      private var §_-X5§:Dictionary;
      
      protected var §_-TT§:String;
      
      protected var §_-wl§:String;
      
      protected var §_-Yi§:String;
      
      private var §_-qd§:Array;
      
      private var §_-9O§:Array;
      
      private var §_-3J§:Array;
      
      private var §_-08S§:Array;
      
      private var §_-wR§:Array;
      
      private var §_-eH§:Array;
      
      private var §_-0-q§:Array;
      
      private var §_-JG§:Array;
      
      private var mName:Array;
      
      private var §_-F-§:Array;
      
      private var §_-dP§:Array;
      
      private var §_-z1§:Array;
      
      private var §_-3u§:Array;
      
      private var §_-06m§:§_-ur§;
      
      private var §_-6T§:Array;
      
      private var §_-Ek§:§_-ur§;
      
      private var §_-51§:Array;
      
      public function §_-09d§(param1:String)
      {
         this.§_-qd§ = [47,115,117,98,109,105,116,115,99,111,114,101];
         this.§_-9O§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
         this.§_-3J§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§_-08S§ = [101,112,105,115,111,100,101];
         this.§_-wR§ = [108,101,118,101,108];
         this.§_-eH§ = [112,111,105,110,116,115];
         this.§_-0-q§ = [115,116,97,114,115];
         this.§_-JG§ = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
         this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
         this.§_-F-§ = [115,101,99,117,114,105,116,121];
         this.§_-dP§ = [98,108,111,99,107,115];
         this.§_-z1§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
         this.§_-3u§ = [99,111,117,110,116,67,111,110,115,117,109,97,98,108,101,115];
         super(param1);
         this.§_-t5§ = new Dictionary();
         this.§_-6T§ = [];
         this.§_-bY§ = new Dictionary();
         this.§_-X5§ = new Dictionary();
      }
      
      override public function getTotalStars() : int
      {
         var _loc3_:§_-0C5§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§_-td§())
         {
            _loc3_ = LevelManager.§_-h8§(_loc2_);
            if(_loc3_.name != "2000")
            {
               _loc4_ = §_-Zh§(_loc3_);
               _loc1_ += _loc4_;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §_-EK§(param1:String) : int
      {
         var _loc2_:§_-BK§ = null;
         if(this.§_-X5§[param1])
         {
            _loc2_ = this.§_-X5§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-RY§(param1:String) : int
      {
         if(this.§_-bY§[param1])
         {
            return this.§_-bY§[param1];
         }
         return 0;
      }
      
      public function §_-wq§(param1:String, param2:int) : void
      {
         this.§_-bY§[param1] = param2;
      }
      
      public function §_-TM§(param1:String, param2:int) : void
      {
         var _loc3_:§_-BK§ = new §_-BK§(param2);
         this.§_-X5§[param1] = _loc3_;
      }
      
      public function §_-06N§(param1:String) : int
      {
         if(this.§_-t5§[param1])
         {
            return this.§_-t5§[param1];
         }
         return 0;
      }
      
      public function §_-00D§(param1:String, param2:int) : void
      {
         this.§_-t5§[param1] = param2;
      }
      
      public function §_-Pr§(param1:Array) : void
      {
         var _loc2_:Object = null;
         this.§_-bY§ = new Dictionary();
         this.§_-X5§ = new Dictionary();
         for each(_loc2_ in param1)
         {
            if(_loc2_.p)
            {
               this.§_-TM§(_loc2_.l,_loc2_.p);
            }
            if(_loc2_.r)
            {
               this.§_-wq§(_loc2_.l,_loc2_.r);
            }
         }
      }
      
      public function §_-mg§(param1:Array, param2:String, param3:String, param4:String, param5:Array, param6:Array) : void
      {
         var _loc7_:Object = null;
         this.§_-TT§ = param2;
         this.§_-wl§ = param3;
         this.§_-Yi§ = param4;
         this.§_-51§ = param6;
         if(param5 != null)
         {
            this.§_-6T§ = param5;
         }
         for each(_loc7_ in param1)
         {
            if(_loc7_.p)
            {
               §_-eF§(_loc7_.l,_loc7_.p);
            }
            if(_loc7_.me)
            {
               §_-09c§(_loc7_.l,_loc7_.me);
            }
            if(_loc7_.r)
            {
               this.§_-00D§(_loc7_.l,_loc7_.r);
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
      
      private function §_-05S§(param1:String) : String
      {
         var _loc2_:§_-0C5§ = LevelManager.§_-N9§(param1);
         return §_-la§.§_-Pv§([!!_loc2_ ? _loc2_.name : this.§_-03V§(),param1,§ in§.§_-03s§.getScore(),getStarsForLevel(param1,§ in§.§_-03s§.getScore()),§ in§.§_-03s§.getEagleScore(),this.§_-RJ§()].join("|"));
      }
      
      private function §_-06e§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §_-RJ§() : String
      {
         return this.§_-06e§(this.mName);
      }
      
      private function §_-090§() : String
      {
         return this.§_-06e§(this.§_-qd§);
      }
      
      private function §_-03V§() : String
      {
         return this.§_-06e§(this.§_-9O§);
      }
      
      private function §_-bw§() : String
      {
         return this.§_-06e§(this.§_-3J§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(this.§_-51§.indexOf(param1) != -1)
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§_-ur§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.§_-51§.push(_loc3_);
         }
         (_loc4_ = §_-P-§.§_-0Ak§(§_-pl§ + "/tutorialshown/" + param1)).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§_-bw§();
         (_loc5_ = new §_-ur§(null,2)).addEventListener(Event.COMPLETE,this.§_-c2§);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-TV§);
         _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-TV§);
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc5_.load(_loc4_);
      }
      
      private function §_-c2§(param1:Event) : void
      {
         var _loc2_:§_-ur§ = null;
         if(param1.currentTarget is §_-ur§)
         {
            _loc2_ = param1.currentTarget as §_-ur§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§_-c2§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      private function §_-TV§(param1:Event) : void
      {
         var _loc2_:§_-ur§ = null;
         if(param1.currentTarget is §_-ur§)
         {
            _loc2_ = param1.currentTarget as §_-ur§;
            _loc2_.removeEventListener(Event.COMPLETE,this.§_-c2§);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§_-HO§)
         {
            throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString());
         }
         var _loc4_:URLRequest;
         (_loc4_ = §_-P-§.§_-0Ak§(§_-pl§ + this.§_-090§() + "/" + param3.toString())).method = URLRequestMethod.POST;
         _loc4_.contentType = this.§_-bw§();
         var _loc5_:§_-0C5§ = LevelManager.§_-N9§(param1);
         var _loc6_:int = § in§.§_-03s§.getScore();
         var _loc7_:int = getStarsForLevel(param1,§ in§.§_-03s§.getScore());
         var _loc8_:Object;
         (_loc8_ = {})[this.§_-06e§(this.§_-08S§)] = !!_loc5_ ? _loc5_.name : this.§_-03V§();
         _loc8_[this.§_-06e§(this.§_-wR§)] = param1;
         _loc8_[this.§_-06e§(this.§_-eH§)] = _loc6_;
         _loc8_[this.§_-06e§(this.§_-0-q§)] = _loc7_;
         _loc8_[this.§_-06e§(this.§_-JG§)] = § in§.§_-03s§.getEagleScore();
         _loc8_[this.§_-06e§(this.§_-F-§)] = this.§_-05S§(param1);
         _loc8_[this.§_-06e§(this.§_-dP§)] = §_-40§.§_-Cn§();
         _loc8_[this.§_-06e§(this.§_-z1§)] = §_-e3§.§_-00p§;
         _loc8_[this.§_-06e§(this.§_-3u§)] = (§ in§.§_-Dc§ as §_-xW§).§_-pU§();
         _loc4_.data = Base64.encode(§_-bu§.encode(_loc8_));
         this.§_-06m§ = new §_-ur§();
         this.§_-06m§.addEventListener(Event.COMPLETE,this.§_-6§);
         this.§_-06m§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§_-06m§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§_-06m§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§_-06m§.load(_loc4_);
      }
      
      private function §_-6§(param1:Event) : void
      {
         this.§_-06m§ = null;
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§_-Wl§);
         _loc2_.data = param1.currentTarget.data;
         dispatchEvent(_loc2_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §_-a5§.§_-Gy§)
         {
            §_-EJ§.§_-QC§(§_-42§.§_-06o§);
         }
         else
         {
            §_-EJ§.§_-QC§();
         }
         this.§_-06m§ = null;
      }
      
      public function isEggUnlocked(param1:String) : Boolean
      {
         if(this.§_-6T§ != null)
         {
            if(this.§_-6T§.indexOf(param1) != -1)
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
         §_-EJ§.§_-4D§(param1);
         this.§_-6T§.push(param1);
         var _loc2_:URLRequest = §_-P-§.§_-0Ak§(§_-pl§ + "/eggfound/" + param1);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = this.§_-bw§();
         this.§_-Ek§ = new §_-ur§(null,2);
         this.§_-Ek§.addEventListener(Event.COMPLETE,this.§_-xA§);
         this.§_-Ek§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§_-Ek§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§_-Ek§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§_-Ek§.load(_loc2_);
      }
      
      private function §_-xA§(param1:Event) : void
      {
      }
      
      public function get §_-HO§() : Boolean
      {
         return this.§_-06m§ != null;
      }
      
      public function get userName() : String
      {
         return this.§_-TT§;
      }
      
      public function get avatarString() : String
      {
         return this.§_-wl§;
      }
      
      public function set avatarString(param1:String) : void
      {
         this.§_-wl§ = param1;
      }
      
      public function get §_-0x§() : String
      {
         return this.§_-Yi§;
      }
   }
}
