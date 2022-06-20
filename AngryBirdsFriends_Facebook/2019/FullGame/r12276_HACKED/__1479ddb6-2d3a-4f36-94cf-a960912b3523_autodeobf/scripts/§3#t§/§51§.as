package §3#t§
{
   import § h§.ErrorPopup;
   import §#!G§.§-#]§;
   import §2E§.§=$3§;
   import §4#$§.§5"L§;
   import §>#Y§.§!!d§;
   import §>#Y§.§!$$§;
   import §>#Y§.§#!&§;
   import §>#Y§.§,#b§;
   import §>#Y§.§0!j§;
   import §>#Y§.§1N§;
   import §>#Y§.§]!H§;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequestMethod;
   
   public class §51§ extends §=!A§
   {
      
      public static var §'#t§:§1N§;
      
      public static const § #-§:int = 10;
      
      public static const §,$E§:int = 10;
      
      public static var §%[§:Vector.<§#!&§> = new Vector.<§#!&§>();
      
      public static var §@"-§:Vector.<§!$$§> = new Vector.<§!$$§>();
      
      public static var §8!a§:Array = [];
      
      private static var § !z§:Object = {};
       
      
      protected var §'H§:String;
      
      protected var §[O§:String;
      
      protected var § true§:Boolean = false;
      
      protected var §2#"§:Boolean = false;
      
      protected var §?!8§:Boolean = false;
      
      protected var §8]§:int = -1;
      
      private var §5!Y§:Number = 0;
      
      public function §51§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false)
      {
         this.§'H§ = param1;
         this.§[O§ = param2;
         this.§ true§ = param4;
         §61§ = !!param6 ? URLRequestMethod.GET : URLRequestMethod.POST;
         this.§2#"§ = param7;
         this.§?!8§ = param8;
         super(param3);
         if(param5)
         {
            §>#T§ = new §#A§(0,param5.players.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            loadItems(0,0);
         }
      }
      
      public static function §7=§(param1:String) : String
      {
         return § !z§[param1];
      }
      
      public function get §0!L§() : int
      {
         return this.§8]§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§!!d§ = null;
         var _loc7_:§1N§ = null;
         var _loc3_:Array = new Array();
         var _loc4_:Boolean = false;
         if(param1.players)
         {
            _loc3_ = param1.players;
         }
         else if(param1.scores)
         {
            _loc3_ = param1.scores;
            _loc4_ = true;
         }
         else if(param1.p)
         {
            _loc3_ = param1.p;
            _loc4_ = true;
         }
         var _loc5_:Object = {"players":[]};
         this.§8]§ = -1;
         var _loc6_:int = _loc3_.length - 1;
         while(_loc6_ >= 0)
         {
            _loc3_[_loc6_].r = _loc6_ + 1;
            if((_loc7_ = §1N§.§5!I§(_loc3_[_loc6_],_loc4_,this.§?!8§)) is §]!H§ && §-#]§.§6"6§(_loc7_.userId))
            {
               --this.§8]§;
            }
            else
            {
               if(_loc7_.userId == this.§'H§)
               {
                  this.§8]§ = _loc6_;
                  §'#t§ = _loc7_;
               }
               if(!(_loc7_ is §]!H§))
               {
                  _loc2_ = _loc2_ || _loc7_ as §!!d§;
               }
               if(_loc7_.avatarString)
               {
                  § !z§[_loc7_.userId] = _loc7_.avatarString;
               }
               _loc5_.players.unshift(_loc7_);
            }
            _loc6_--;
         }
         _loc5_.totalItemCount = _loc5_.players.length;
         super.dataLoaded(_loc5_);
         this.§5!Y§ = AngryBirdsBase.singleton.dataModel as §,#b§ && (AngryBirdsBase.singleton.dataModel as §,#b§).serverSynchronizedTime ? Number((AngryBirdsBase.singleton.dataModel as §,#b§).serverSynchronizedTime.synchronizedTimeStamp) : Number(0);
      }
      
      public function §5"F§(param1:§!!d§) : §!!d§
      {
         if(this.§ true§)
         {
            return new §0!j§(this.§'H§,this.§[O§,!!§'#t§ ? §'#t§.avatarString : "",0,0,!!param1 ? int(param1.rank + 1) : 1);
         }
         return new §!$$§(this.§'H§,this.§[O§,!!§'#t§ ? §'#t§.avatarString : "",0,0,0,!!param1 ? int(param1.rank + 1) : 1,null,0,null);
      }
      
      public function §]S§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §]!H§) && (data[_loc2_] as §!!d§).userId == param1)
            {
               return (data[_loc2_] as §!!d§).rank;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §2"H§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §]!H§) && (data[_loc2_] as §!$$§).rank == 2)
            {
               return (data[_loc2_] as §!$$§).§5"1§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §"Y§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §!$$§).userId != this.§'H§ && !(data[_loc3_] is §]!H§) && this.§'H§ && (data[_loc3_] as §!$$§).§5"1§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §+!]§() : §!$$§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§]S§(this.§'H§);
         if(_loc1_ == 1)
         {
            return null;
         }
         if(_loc1_ == -1)
         {
            _loc1_ = data.length + 1;
         }
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_] is §!$$§ && (data[_loc2_] as §!$$§).rank == _loc1_ - 1)
            {
               return data[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      override protected function onUrlLoaderComplete(param1:Event) : void
      {
         var e:Event = param1;
         try
         {
            if(e.target.data.hasOwnProperty("st"))
            {
               delete e.target.data["st"];
            }
            super.onUrlLoaderComplete(e);
         }
         catch(err:Error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Can\'t load highscore list.\n" + (e.target as URLLoader).data + "\nError code: " + §=$3§.§!$5§));
         }
      }
      
      public function §>N§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§!$$§ = null;
         var _loc5_:§!$$§;
         if(!(_loc5_ = data[this.§8]§]))
         {
            return 0;
         }
         _loc5_.§]!v§ = param2;
         _loc5_.§5"1§ = param1;
         _loc5_.§>&§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §]!H§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§'H§)
               {
                  if(!_loc7_.§^"%§)
                  {
                     if(_loc7_.rank <= _loc5_.rank)
                     {
                        if(_loc5_.§5"1§ > _loc7_.§5"1§ || _loc5_.§5"1§ == _loc7_.§5"1§ && _loc5_.§>&§ > _loc7_.§>&§)
                        {
                           param4.push(_loc7_);
                           --_loc5_.rank;
                           ++_loc7_.rank;
                           _loc7_.beaten = true;
                           if(!_loc5_.targetOffset)
                           {
                              _loc5_.targetOffset = -1;
                           }
                           else
                           {
                              --_loc5_.targetOffset;
                           }
                           if(!_loc7_.targetOffset)
                           {
                              _loc7_.targetOffset = 1;
                           }
                           else
                           {
                              ++_loc7_.targetOffset;
                           }
                        }
                     }
                  }
               }
            }
            _loc6_--;
         }
         this.§8]§ = _loc5_.rank - 1;
         return _loc5_.rank;
      }
      
      public function §9!^§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §0!j§).userId == param1)
               {
                  return (data[_loc2_] as §0!j§).§?$<§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function §'"x§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §0!j§).userId == param1)
               {
                  return (data[_loc2_] as §0!j§).§4"^§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function §`!d§(param1:String) : Number
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §!$$§).userId == param1)
               {
                  return (data[_loc2_] as §!$$§).§5"1§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function set §2#B§(param1:Boolean) : void
      {
         this.§ true§ = param1;
      }
      
      public function get §`#U§() : Boolean
      {
         return this.§2#"§;
      }
      
      public function get §3"]§() : Boolean
      {
         return this.§?!8§;
      }
      
      public function get §7H§() : Number
      {
         return this.§5!Y§;
      }
      
      public function set §7H§(param1:Number) : void
      {
         this.§5!Y§ = param1;
      }
      
      public function §4"§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §,#b§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - this.§5!Y§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §5"L§.§4"z§)
         {
            return true;
         }
         this.§5!Y§ = _loc1_;
         return false;
      }
      
      public function §=#"§(param1:§!$$§) : void
      {
         data.push(param1);
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_].userId == this.§'H§)
            {
               this.§8]§ = _loc2_;
               break;
            }
            _loc2_++;
         }
      }
   }
}
