package §,@§
{
   import §4H§.§%!E§;
   import §4H§.§%Q§;
   import §4H§.§4!R§;
   import §4H§.§4!k§;
   import §4H§.§9?§;
   import §<-§.§"K§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §'!6§ extends §]![§
   {
      
      public static var §`A§:§4!R§;
      
      public static var §[!j§:Array = [];
      
      private static var §0K§:Object = {};
       
      
      protected var §][§:String;
      
      protected var §0!T§:String;
      
      protected var §>+§:Boolean = false;
      
      protected var §3H§:int = -1;
      
      private var §3s§:int = 0;
      
      public function §'!6§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         this.§][§ = param1;
         this.§0!T§ = param2;
         this.§>+§ = param4;
         super(param3);
         if(param5)
         {
            §&! § = new §;!r§(0,param5.items.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            §=$§(0,0);
         }
      }
      
      public static function §?D§(param1:String) : String
      {
         return §0K§[param1];
      }
      
      public function get §6!4§() : int
      {
         return this.§3s§;
      }
      
      public function get §`!r§() : int
      {
         return this.§3H§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§%!E§ = null;
         var _loc5_:§4!R§ = null;
         var _loc3_:Object = {"items":[]};
         this.§3H§ = -1;
         var _loc4_:int = param1.items.length - 1;
         while(_loc4_ >= 0)
         {
            §8@§.§ #§(new §`D§(param1.items[_loc4_].a,param1.items[_loc4_].u));
            if((_loc5_ = §4!R§.§+!7§(param1.items[_loc4_])) is §%Q§ && §[!j§.indexOf(_loc5_.userId) != -1)
            {
               --this.§3H§;
            }
            else
            {
               if(!(_loc5_ is §%Q§) && §[!j§.indexOf(_loc5_.userId) == -1)
               {
                  §[!j§.push(_loc5_.userId);
               }
               if(_loc5_.userId == this.§][§)
               {
                  this.§3H§ = _loc4_;
                  §`A§ = _loc5_;
               }
               if(!(_loc5_ is §%Q§))
               {
                  _loc2_ = _loc2_ || _loc5_ as §%!E§;
               }
               if(_loc5_.avatarString)
               {
                  §0K§[_loc5_.userId] = _loc5_.avatarString;
               }
               _loc3_.items.unshift(_loc5_);
            }
            _loc4_--;
         }
         if(this.§3H§ < 0)
         {
            this.§3H§ = !!_loc2_ ? int(_loc3_.items.indexOf(_loc2_) + 1) : 0;
            _loc3_.items.splice(this.§3H§,0,this.§"!G§(_loc2_));
         }
         _loc3_.totalItemCount = _loc3_.items.length;
         this.§3s§ = §[!j§.length;
         if(§[!j§.indexOf(this.§][§) >= 0)
         {
            --this.§3s§;
         }
         super.dataLoaded(_loc3_);
      }
      
      public function §"!G§(param1:§%!E§) : §%!E§
      {
         if(this.§>+§)
         {
            return new §4!k§(this.§][§,this.§0!T§,!!§`A§ ? §`A§.avatarString : "",0,0,!!param1 ? int(param1.§1<§ + 1) : 1,0);
         }
         return new §9?§(this.§][§,this.§0!T§,!!§`A§ ? §`A§.avatarString : "",0,0,0,!!param1 ? int(param1.§1<§ + 1) : 1);
      }
      
      public function §0U§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §%Q§) && (data[_loc2_] as §%!E§).userId == param1)
            {
               return (data[_loc2_] as §%!E§).§1<§;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §]-§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §%Q§) && (data[_loc2_] as §9?§).§1<§ == 2)
            {
               return (data[_loc2_] as §9?§).§;!u§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §=e§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §9?§).userId != this.§][§ && !(data[_loc3_] is §%Q§) && this.§][§ && (data[_loc3_] as §9?§).§;!u§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §=!0§() : §9?§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§0U§(this.§][§);
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
            if((data[_loc2_] as §9?§).§1<§ == _loc1_ - 1)
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
            super.onUrlLoaderComplete(e);
         }
         catch(err:Error)
         {
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§"K§.§6#§);
         }
      }
      
      public function §`j§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§9?§ = null;
         var _loc5_:§9?§;
         if(!(_loc5_ = data[this.§3H§]))
         {
            return 0;
         }
         _loc5_.stars = param2;
         _loc5_.§;!u§ = param1;
         _loc5_.§1t§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §%Q§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§][§)
               {
                  if(_loc7_.§1<§ < _loc5_.§1<§)
                  {
                     if(_loc5_.§;!u§ > _loc7_.§;!u§ || _loc5_.§;!u§ == _loc7_.§;!u§ && _loc5_.§1t§ > _loc7_.§1t§)
                     {
                        param4.push(_loc7_);
                        --_loc5_.§1<§;
                        ++_loc7_.§1<§;
                        _loc7_.§7!J§ = true;
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
            _loc6_--;
         }
         return _loc5_.§1<§;
      }
   }
}
