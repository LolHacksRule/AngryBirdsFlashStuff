package §2!Y§
{
   import §"#X§.§8#g§;
   import §#"4§.§@$7§;
   import §,#,§.§-n§;
   import §,#,§.§0!u§;
   import §,#,§.§2§;
   import §,#,§.§;$A§;
   import §,#,§.§=#o§;
   import §,#,§.§>#%§;
   import §,#,§.§[!V§;
   import §?Q§.ErrorPopup;
   import §`,§.§7!$§;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequestMethod;
   
   public class §4!h§ extends §5@§
   {
      
      public static var §4+§:§0!u§;
      
      public static const §=@§:int = 10;
      
      public static const §+>§:int = 10;
      
      public static var §3#^§:Vector.<§2#9§> = new Vector.<§2#9§>();
      
      public static var §>y§:Vector.<§[!V§> = new Vector.<§[!V§>();
      
      public static var §6M§:Array = [];
      
      private static var §4#+§:Object = {};
       
      
      protected var §5"U§:String;
      
      protected var §[#z§:String;
      
      protected var §&$7§:Boolean = false;
      
      protected var §1!r§:Boolean = false;
      
      protected var §=#k§:Boolean = false;
      
      protected var §@"e§:int = -1;
      
      private var §<! §:Number = 0;
      
      public function §4!h§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false)
      {
         this.§5"U§ = param1;
         this.§[#z§ = param2;
         this.§&$7§ = param4;
         §,!C§ = !!param6 ? URLRequestMethod.GET : URLRequestMethod.POST;
         this.§1!r§ = param7;
         this.§=#k§ = param8;
         super(param3);
         if(param5)
         {
            §`!T§ = new §-N§(0,param5.players.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            loadItems(0,0);
         }
      }
      
      public static function §@$!§(param1:String) : String
      {
         return §4#+§[param1];
      }
      
      public function get §0"@§() : int
      {
         return this.§@"e§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§;$A§ = null;
         var _loc7_:§0!u§ = null;
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
         this.§@"e§ = -1;
         var _loc6_:int = _loc3_.length - 1;
         while(_loc6_ >= 0)
         {
            _loc3_[_loc6_].r = _loc6_ + 1;
            if((_loc7_ = §0!u§.§"!U§(_loc3_[_loc6_],_loc4_,this.§=#k§)) is §-n§ && §8#g§.§#Y§(_loc7_.userId))
            {
               --this.§@"e§;
            }
            else
            {
               if(_loc7_.userId == this.§5"U§)
               {
                  this.§@"e§ = _loc6_;
                  §4+§ = _loc7_;
               }
               if(!(_loc7_ is §-n§))
               {
                  _loc2_ = _loc2_ || _loc7_ as §;$A§;
               }
               if(_loc7_.avatarString)
               {
                  §4#+§[_loc7_.userId] = _loc7_.avatarString;
               }
               _loc5_.players.unshift(_loc7_);
            }
            _loc6_--;
         }
         _loc5_.totalItemCount = _loc5_.players.length;
         super.dataLoaded(_loc5_);
         this.§<! § = AngryBirdsBase.singleton.dataModel as §=#o§ && (AngryBirdsBase.singleton.dataModel as §=#o§).serverSynchronizedTime ? Number((AngryBirdsBase.singleton.dataModel as §=#o§).serverSynchronizedTime.synchronizedTimeStamp) : Number(0);
      }
      
      public function §!"l§(param1:§;$A§) : §;$A§
      {
         if(this.§&$7§)
         {
            return new §>#%§(this.§5"U§,this.§[#z§,!!§4+§ ? §4+§.avatarString : "",0,0,!!param1 ? int(param1.rank + 1) : 1);
         }
         return new §[!V§(this.§5"U§,this.§[#z§,!!§4+§ ? §4+§.avatarString : "",0,0,0,!!param1 ? int(param1.rank + 1) : 1,null,0,null);
      }
      
      public function §8"d§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §-n§) && (data[_loc2_] as §;$A§).userId == param1)
            {
               return (data[_loc2_] as §;$A§).rank;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §9"x§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §-n§) && (data[_loc2_] as §[!V§).rank == 2)
            {
               return (data[_loc2_] as §[!V§).§0#y§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §&!o§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §[!V§).userId != this.§5"U§ && !(data[_loc3_] is §-n§) && this.§5"U§ && (data[_loc3_] as §[!V§).§0#y§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §1#'§() : §[!V§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§8"d§(this.§5"U§);
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
            if(data[_loc2_] is §[!V§ && (data[_loc2_] as §[!V§).rank == _loc1_ - 1)
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
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Can\'t load highscore list.\n" + (e.target as URLLoader).data + "\nError code: " + §@$7§.§8A§));
         }
      }
      
      public function §%S§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§[!V§ = null;
         var _loc5_:§[!V§;
         if(!(_loc5_ = data[this.§@"e§]))
         {
            return 0;
         }
         _loc5_.§>"Z§ = param2;
         _loc5_.§0#y§ = param1;
         _loc5_.§]-§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §-n§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§5"U§)
               {
                  if(!_loc7_.§#!§)
                  {
                     if(_loc7_.rank <= _loc5_.rank)
                     {
                        if(_loc5_.§0#y§ > _loc7_.§0#y§ || _loc5_.§0#y§ == _loc7_.§0#y§ && _loc5_.§]-§ > _loc7_.§]-§)
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
         this.§@"e§ = _loc5_.rank - 1;
         return _loc5_.rank;
      }
      
      public function §8"b§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §>#%§).userId == param1)
               {
                  return (data[_loc2_] as §>#%§).§+!9§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function §?B§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §>#%§).userId == param1)
               {
                  return (data[_loc2_] as §>#%§).§2#k§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function §+$ §(param1:String) : Number
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §[!V§).userId == param1)
               {
                  return (data[_loc2_] as §[!V§).§0#y§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function set §?$#§(param1:Boolean) : void
      {
         this.§&$7§ = param1;
      }
      
      public function get §7T§() : Boolean
      {
         return this.§1!r§;
      }
      
      public function get §4#?§() : Boolean
      {
         return this.§=#k§;
      }
      
      public function get §,"_§() : Number
      {
         return this.§<! §;
      }
      
      public function set §,"_§(param1:Number) : void
      {
         this.§<! § = param1;
      }
      
      public function §=#R§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §=#o§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - this.§<! §) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §7!$§.§1#7§)
         {
            return true;
         }
         this.§<! § = _loc1_;
         return false;
      }
      
      public function §,"Z§(param1:§[!V§) : void
      {
         data.push(param1);
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_].userId == this.§5"U§)
            {
               this.§@"e§ = _loc2_;
               break;
            }
            _loc2_++;
         }
      }
   }
}
