package §[G§
{
   import §&"J§.§%"E§;
   import §&"J§.§2!T§;
   import §&"J§.§3!3§;
   import §&"J§.§4"n§;
   import §&"J§.§7>§;
   import §&"J§.§="6§;
   import §&"J§.§`]§;
   import §6V§.§4!v§;
   import §]#p§.§%!?§;
   import §];§.§-!t§;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequestMethod;
   
   public class §4!0§ extends §1!0§
   {
      
      public static var §,"D§:§3!3§;
      
      public static const §?#C§:int = 10;
      
      public static const §^"B§:int = 10;
      
      public static var §7!s§:Vector.<§%"E§> = new Vector.<§%"E§>();
      
      public static var §>"t§:Vector.<§4"n§> = new Vector.<§4"n§>();
      
      public static var §9! §:Array = [];
      
      private static var §+![§:Object = {};
       
      
      protected var §[#n§:String;
      
      protected var §"!W§:String;
      
      protected var §@![§:Boolean = false;
      
      protected var §1y§:Boolean = false;
      
      protected var §-#j§:Boolean = false;
      
      protected var §1!-§:int = -1;
      
      private var §7!%§:Number = 0;
      
      public function §4!0§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false)
      {
         this.§[#n§ = param1;
         this.§"!W§ = param2;
         this.§@![§ = param4;
         §,#R§ = !!param6 ? URLRequestMethod.GET : URLRequestMethod.POST;
         this.§1y§ = param7;
         this.§-#j§ = param8;
         super(param3);
         if(param5)
         {
            §=##§ = new §-L§(0,param5.players.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            loadItems(0,0);
         }
      }
      
      public static function §`E§(param1:String) : String
      {
         return §+![§[param1];
      }
      
      public function get §[" §() : int
      {
         return this.§1!-§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§2!T§ = null;
         var _loc7_:§3!3§ = null;
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
         this.§1!-§ = -1;
         var _loc6_:int = _loc3_.length - 1;
         while(_loc6_ >= 0)
         {
            _loc3_[_loc6_].r = _loc6_ + 1;
            if((_loc7_ = §3!3§.§2u§(_loc3_[_loc6_],_loc4_,this.§-#j§)) is §7>§ && §%!?§.§<"t§(_loc7_.userId))
            {
               --this.§1!-§;
            }
            else
            {
               if(_loc7_.userId == this.§[#n§)
               {
                  this.§1!-§ = _loc6_;
                  §,"D§ = _loc7_;
               }
               if(!(_loc7_ is §7>§))
               {
                  _loc2_ = _loc2_ || _loc7_ as §2!T§;
               }
               if(_loc7_.avatarString)
               {
                  §+![§[_loc7_.userId] = _loc7_.avatarString;
               }
               _loc5_.players.unshift(_loc7_);
            }
            _loc6_--;
         }
         _loc5_.totalItemCount = _loc5_.players.length;
         super.dataLoaded(_loc5_);
         this.§7!%§ = AngryBirdsBase.singleton.dataModel as §`]§ && (AngryBirdsBase.singleton.dataModel as §`]§).serverSynchronizedTime ? Number((AngryBirdsBase.singleton.dataModel as §`]§).serverSynchronizedTime.synchronizedTimeStamp) : Number(0);
      }
      
      public function §[f§(param1:§2!T§) : §2!T§
      {
         if(this.§@![§)
         {
            return new §="6§(this.§[#n§,this.§"!W§,!!§,"D§ ? §,"D§.avatarString : "",0,0,!!param1 ? int(param1.rank + 1) : 1);
         }
         return new §4"n§(this.§[#n§,this.§"!W§,!!§,"D§ ? §,"D§.avatarString : "",0,0,0,!!param1 ? int(param1.rank + 1) : 1,null,0,null);
      }
      
      public function §;#%§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §7>§) && (data[_loc2_] as §2!T§).userId == param1)
            {
               return (data[_loc2_] as §2!T§).rank;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §"#%§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §7>§) && (data[_loc2_] as §4"n§).rank == 2)
            {
               return (data[_loc2_] as §4"n§).levelScore;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §#^§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §4"n§).userId != this.§[#n§ && !(data[_loc3_] is §7>§) && this.§[#n§ && (data[_loc3_] as §4"n§).levelScore > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §`#q§() : §4"n§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§;#%§(this.§[#n§);
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
            if(data[_loc2_] is §4"n§ && (data[_loc2_] as §4"n§).rank == _loc1_ - 1)
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
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§4!v§.§&"a§);
         }
      }
      
      public function §1J§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§4"n§ = null;
         var _loc5_:§4"n§;
         if(!(_loc5_ = data[this.§1!-§]))
         {
            return 0;
         }
         _loc5_.stars = param2;
         _loc5_.levelScore = param1;
         _loc5_.§5#e§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §7>§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§[#n§)
               {
                  if(!_loc7_.§9!r§)
                  {
                     if(_loc7_.rank <= _loc5_.rank)
                     {
                        if(_loc5_.levelScore > _loc7_.levelScore || _loc5_.levelScore == _loc7_.levelScore && _loc5_.§5#e§ > _loc7_.§5#e§)
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
         this.§1!-§ = _loc5_.rank - 1;
         return _loc5_.rank;
      }
      
      public function §8$-§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §="6§).userId == param1)
               {
                  return (data[_loc2_] as §="6§).§=!Q§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function §5"T§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §="6§).userId == param1)
               {
                  return (data[_loc2_] as §="6§).§<X§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function §>#>§(param1:String) : Number
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §4"n§).userId == param1)
               {
                  return (data[_loc2_] as §4"n§).levelScore;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function set §[_§(param1:Boolean) : void
      {
         this.§@![§ = param1;
      }
      
      public function get §7#A§() : Boolean
      {
         return this.§1y§;
      }
      
      public function get §@",§() : Boolean
      {
         return this.§-#j§;
      }
      
      public function get §<!j§() : Number
      {
         return this.§7!%§;
      }
      
      public function set §<!j§(param1:Number) : void
      {
         this.§7!%§ = param1;
      }
      
      public function §73§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §`]§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - this.§7!%§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §-!t§.§<N§)
         {
            return true;
         }
         this.§7!%§ = _loc1_;
         return false;
      }
      
      public function §@Y§(param1:§4"n§) : void
      {
         data.push(param1);
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_].userId == this.§[#n§)
            {
               this.§1!-§ = _loc2_;
               break;
            }
            _loc2_++;
         }
      }
   }
}
