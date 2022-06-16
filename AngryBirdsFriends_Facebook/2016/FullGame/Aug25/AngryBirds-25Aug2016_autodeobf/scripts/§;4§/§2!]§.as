package §;4§
{
   import §%$!§.§"#q§;
   import §%$!§.§+3§;
   import §%$!§.§3J§;
   import §%$!§.§8!t§;
   import §%$!§.§9$6§;
   import §%$!§.§>!G§;
   import §%$!§.§?i§;
   import §5"$§.§]!m§;
   import §7z§.§7"m§;
   import §>!#§.§@"$§;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequestMethod;
   
   public class §2!]§ extends §^!%§
   {
      
      public static var §]"u§:§9$6§;
      
      public static const §<"<§:int = 10;
      
      public static const §=!G§:int = 10;
      
      public static var §%B§:Vector.<§8!t§> = new Vector.<§8!t§>();
      
      public static var §+S§:Vector.<§?i§> = new Vector.<§?i§>();
      
      public static var §&F§:Array = [];
      
      private static var §7§:Object = {};
       
      
      protected var §%"6§:String;
      
      protected var §&$4§:String;
      
      protected var §>8§:Boolean = false;
      
      protected var §`J§:Boolean = false;
      
      protected var §'$$§:Boolean = false;
      
      protected var §<!W§:int = -1;
      
      private var §+"O§:Number = 0;
      
      public function §2!]§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false)
      {
         this.§%"6§ = param1;
         this.§&$4§ = param2;
         this.§>8§ = param4;
         §&B§ = !!param6 ? URLRequestMethod.GET : URLRequestMethod.POST;
         this.§`J§ = param7;
         this.§'$$§ = param8;
         super(param3);
         if(param5)
         {
            §]!C§ = new § !f§(0,param5.players.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            loadItems(0,0);
         }
      }
      
      public static function §]!^§(param1:String) : String
      {
         return §7§[param1];
      }
      
      public function get §["j§() : int
      {
         return this.§<!W§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§"#q§ = null;
         var _loc7_:§9$6§ = null;
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
         this.§<!W§ = -1;
         var _loc6_:int = _loc3_.length - 1;
         while(_loc6_ >= 0)
         {
            _loc3_[_loc6_].r = _loc6_ + 1;
            if((_loc7_ = §9$6§.§>!§(_loc3_[_loc6_],_loc4_,this.§'$$§)) is §3J§ && §7"m§.§&$!§(_loc7_.userId))
            {
               --this.§<!W§;
            }
            else
            {
               if(_loc7_.userId == this.§%"6§)
               {
                  this.§<!W§ = _loc6_;
                  §]"u§ = _loc7_;
               }
               if(!(_loc7_ is §3J§))
               {
                  _loc2_ = _loc2_ || _loc7_ as §"#q§;
               }
               if(_loc7_.avatarString)
               {
                  §7§[_loc7_.userId] = _loc7_.avatarString;
               }
               _loc5_.players.unshift(_loc7_);
            }
            _loc6_--;
         }
         _loc5_.totalItemCount = _loc5_.players.length;
         super.dataLoaded(_loc5_);
         this.§+"O§ = AngryBirdsBase.singleton.dataModel as §+3§ && (AngryBirdsBase.singleton.dataModel as §+3§).serverSynchronizedTime ? Number((AngryBirdsBase.singleton.dataModel as §+3§).serverSynchronizedTime.synchronizedTimeStamp) : Number(0);
      }
      
      public function §2$2§(param1:§"#q§) : §"#q§
      {
         if(this.§>8§)
         {
            return new §>!G§(this.§%"6§,this.§&$4§,!!§]"u§ ? §]"u§.avatarString : "",0,0,!!param1 ? int(param1.rank + 1) : 1);
         }
         return new §?i§(this.§%"6§,this.§&$4§,!!§]"u§ ? §]"u§.avatarString : "",0,0,0,!!param1 ? int(param1.rank + 1) : 1,null,0,null);
      }
      
      public function §7"9§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §3J§) && (data[_loc2_] as §"#q§).userId == param1)
            {
               return (data[_loc2_] as §"#q§).rank;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §,#1§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §3J§) && (data[_loc2_] as §?i§).rank == 2)
            {
               return (data[_loc2_] as §?i§).levelScore;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §2#s§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §?i§).userId != this.§%"6§ && !(data[_loc3_] is §3J§) && this.§%"6§ && (data[_loc3_] as §?i§).levelScore > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §?"p§() : §?i§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§7"9§(this.§%"6§);
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
            if(data[_loc2_] is §?i§ && (data[_loc2_] as §?i§).rank == _loc1_ - 1)
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
            return;
         }
         catch(err:Error)
         {
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§@"$§.§3"t§);
         }
      }
      
      public function §-y§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§?i§ = null;
         var _loc5_:§?i§;
         if(!(_loc5_ = data[this.§<!W§]))
         {
            return 0;
         }
         _loc5_.stars = param2;
         _loc5_.levelScore = param1;
         _loc5_.§?$9§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §3J§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§%"6§)
               {
                  if(!_loc7_.§[!Y§)
                  {
                     if(_loc7_.rank <= _loc5_.rank)
                     {
                        if(_loc5_.levelScore > _loc7_.levelScore || _loc5_.levelScore == _loc7_.levelScore && _loc5_.§?$9§ > _loc7_.§?$9§)
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
         this.§<!W§ = _loc5_.rank - 1;
         return _loc5_.rank;
      }
      
      public function §&$8§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §>!G§).userId == param1)
               {
                  return (data[_loc2_] as §>!G§).§3#1§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function §]a§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §>!G§).userId == param1)
               {
                  return (data[_loc2_] as §>!G§).§"#[§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function §^$1§(param1:String) : Number
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §?i§).userId == param1)
               {
                  return (data[_loc2_] as §?i§).levelScore;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function set §0!r§(param1:Boolean) : void
      {
         this.§>8§ = param1;
      }
      
      public function get §5!c§() : Boolean
      {
         return this.§`J§;
      }
      
      public function get §+"?§() : Boolean
      {
         return this.§'$$§;
      }
      
      public function get §2"O§() : Number
      {
         return this.§+"O§;
      }
      
      public function set §2"O§(param1:Number) : void
      {
         this.§+"O§ = param1;
      }
      
      public function §[$ §() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §+3§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - this.§+"O§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §]!m§.§break§)
         {
            return true;
         }
         this.§+"O§ = _loc1_;
         return false;
      }
      
      public function §7"d§(param1:§?i§) : void
      {
         data.push(param1);
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_].userId == this.§%"6§)
            {
               this.§<!W§ = _loc2_;
               break;
            }
            _loc2_++;
         }
      }
   }
}
