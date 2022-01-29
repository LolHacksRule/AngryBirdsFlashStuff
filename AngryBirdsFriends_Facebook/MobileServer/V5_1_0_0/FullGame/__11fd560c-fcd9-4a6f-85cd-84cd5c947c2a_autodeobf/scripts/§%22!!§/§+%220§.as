package §"!!§
{
   import §2G§.§#"8§;
   import §2G§.§1#S§;
   import §2G§.§4O§;
   import §2G§.§5$4§;
   import §2G§.§9"=§;
   import §2G§.§@#P§;
   import §2G§.§[" §;
   import §7!%§.§4"I§;
   import §8#!§.§5`§;
   import §?P§.ErrorPopup;
   import §`7§.§[$-§;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequestMethod;
   
   public class §+"0§ extends §>!X§
   {
      
      public static var §?# §:§4O§;
      
      public static const §?";§:int = 10;
      
      public static const §7![§:int = 10;
      
      public static var §]#6§:Vector.<§5$4§> = new Vector.<§5$4§>();
      
      public static var §]$4§:Vector.<§@#P§> = new Vector.<§@#P§>();
      
      public static var §@#`§:Array = [];
      
      private static var §>%§:Object = {};
       
      
      protected var §["L§:String;
      
      protected var §2!q§:String;
      
      protected var §3s§:Boolean = false;
      
      protected var §%#'§:Boolean = false;
      
      protected var §2!,§:Boolean = false;
      
      protected var §9!t§:int = -1;
      
      private var §9",§:Number = 0;
      
      public function §+"0§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false)
      {
         this.§["L§ = param1;
         this.§2!q§ = param2;
         this.§3s§ = param4;
         §,#;§ = !!param6 ? URLRequestMethod.GET : URLRequestMethod.POST;
         this.§%#'§ = param7;
         this.§2!,§ = param8;
         super(param3);
         if(param5)
         {
            §4"L§ = new §@E§(0,param5.players.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            loadItems(0,0);
         }
      }
      
      public static function §>"§(param1:String) : String
      {
         return §>%§[param1];
      }
      
      public function get §#$;§() : int
      {
         return this.§9!t§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§1#S§ = null;
         var _loc7_:§4O§ = null;
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
         this.§9!t§ = -1;
         var _loc6_:int = _loc3_.length - 1;
         while(_loc6_ >= 0)
         {
            _loc3_[_loc6_].r = _loc6_ + 1;
            if((_loc7_ = §4O§.§+!@§(_loc3_[_loc6_],_loc4_,this.§2!,§)) is §[" § && §4"I§.§`W§(_loc7_.userId))
            {
               --this.§9!t§;
            }
            else
            {
               if(_loc7_.userId == this.§["L§)
               {
                  this.§9!t§ = _loc6_;
                  §?# § = _loc7_;
               }
               if(!(_loc7_ is §[" §))
               {
                  _loc2_ = _loc2_ || _loc7_ as §1#S§;
               }
               if(_loc7_.avatarString)
               {
                  §>%§[_loc7_.userId] = _loc7_.avatarString;
               }
               _loc5_.players.unshift(_loc7_);
            }
            _loc6_--;
         }
         _loc5_.totalItemCount = _loc5_.players.length;
         super.dataLoaded(_loc5_);
         this.§9",§ = AngryBirdsBase.singleton.dataModel as §#"8§ && (AngryBirdsBase.singleton.dataModel as §#"8§).serverSynchronizedTime ? Number((AngryBirdsBase.singleton.dataModel as §#"8§).serverSynchronizedTime.synchronizedTimeStamp) : Number(0);
      }
      
      public function §@#V§(param1:§1#S§) : §1#S§
      {
         if(this.§3s§)
         {
            return new §9"=§(this.§["L§,this.§2!q§,!!§?# § ? §?# §.avatarString : "",0,0,!!param1 ? int(param1.rank + 1) : 1);
         }
         return new §@#P§(this.§["L§,this.§2!q§,!!§?# § ? §?# §.avatarString : "",0,0,0,!!param1 ? int(param1.rank + 1) : 1,null,0,null);
      }
      
      public function §+";§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §[" §) && (data[_loc2_] as §1#S§).userId == param1)
            {
               return (data[_loc2_] as §1#S§).rank;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §+!]§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §[" §) && (data[_loc2_] as §@#P§).rank == 2)
            {
               return (data[_loc2_] as §@#P§).§'!_§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §<@§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §@#P§).userId != this.§["L§ && !(data[_loc3_] is §[" §) && this.§["L§ && (data[_loc3_] as §@#P§).§'!_§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §2!d§() : §@#P§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§+";§(this.§["L§);
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
            if(data[_loc2_] is §@#P§ && (data[_loc2_] as §@#P§).rank == _loc1_ - 1)
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
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Can\'t load highscore list.\n" + (e.target as URLLoader).data + "\nError code: " + §[$-§.§&!X§));
         }
      }
      
      public function §#!G§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§@#P§ = null;
         var _loc5_:§@#P§;
         if(!(_loc5_ = data[this.§9!t§]))
         {
            return 0;
         }
         _loc5_.stars = param2;
         _loc5_.§'!_§ = param1;
         _loc5_.§#"y§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §[" §))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§["L§)
               {
                  if(!_loc7_.§'#%§)
                  {
                     if(_loc7_.rank <= _loc5_.rank)
                     {
                        if(_loc5_.§'!_§ > _loc7_.§'!_§ || _loc5_.§'!_§ == _loc7_.§'!_§ && _loc5_.§#"y§ > _loc7_.§#"y§)
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
         this.§9!t§ = _loc5_.rank - 1;
         return _loc5_.rank;
      }
      
      public function §'"J§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §9"=§).userId == param1)
               {
                  return (data[_loc2_] as §9"=§).§>$%§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function §3!T§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §9"=§).userId == param1)
               {
                  return (data[_loc2_] as §9"=§).§0"Q§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function § "R§(param1:String) : Number
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §@#P§).userId == param1)
               {
                  return (data[_loc2_] as §@#P§).§'!_§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function set §'! §(param1:Boolean) : void
      {
         this.§3s§ = param1;
      }
      
      public function get §=#S§() : Boolean
      {
         return this.§%#'§;
      }
      
      public function get §`! §() : Boolean
      {
         return this.§2!,§;
      }
      
      public function get §""§() : Number
      {
         return this.§9",§;
      }
      
      public function set §""§(param1:Number) : void
      {
         this.§9",§ = param1;
      }
      
      public function §>";§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §#"8§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - this.§9",§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §5`§.§9"I§)
         {
            return true;
         }
         this.§9",§ = _loc1_;
         return false;
      }
      
      public function §>O§(param1:§@#P§) : void
      {
         data.push(param1);
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_].userId == this.§["L§)
            {
               this.§9!t§ = _loc2_;
               break;
            }
            _loc2_++;
         }
      }
   }
}
