package §2L§
{
   import §%!'§.§8o§;
   import §^!U§.§!8§;
   import §^!U§.§""3§;
   import §^!U§.§"B§;
   import §^!U§.§2!M§;
   import §^!U§.§8!a§;
   import §^!U§.§default§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §`W§ extends §,8§
   {
      
      public static var §0e§:§2!M§;
      
      public static var §<Q§:Array = [];
      
      private static var §""J§:Object = {};
       
      
      protected var §&"7§:String;
      
      protected var §8" §:String;
      
      protected var §-;§:Boolean = false;
      
      protected var §=!l§:int = -1;
      
      private var §2"#§:int = 0;
      
      public function §`W§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         this.§&"7§ = param1;
         this.§8" § = param2;
         this.§-;§ = param4;
         super(param3);
         if(param5)
         {
            §""%§ = new §6!m§(0,param5.items.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            §2"K§(0,0);
         }
      }
      
      public static function §,'§(param1:String) : String
      {
         return §""J§[param1];
      }
      
      public function get §^M§() : int
      {
         return this.§2"#§;
      }
      
      public function get §'"7§() : int
      {
         return this.§=!l§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§""3§ = null;
         var _loc5_:§2!M§ = null;
         param1 = §8!a§.§#!V§(param1,"items",param1.level);
         var _loc3_:Object = {"items":[]};
         this.§=!l§ = -1;
         var _loc4_:int = param1.items.length - 1;
         while(_loc4_ >= 0)
         {
            §[!3§.§ !^§(new §^]§(param1.items[_loc4_].a,param1.items[_loc4_].u));
            if((_loc5_ = §2!M§.§@6§(param1.items[_loc4_])) is §"B§ && §<Q§.indexOf(_loc5_.userId) != -1)
            {
               --this.§=!l§;
            }
            else
            {
               if(!(_loc5_ is §"B§) && §<Q§.indexOf(_loc5_.userId) == -1)
               {
                  §<Q§.push(_loc5_.userId);
               }
               if(_loc5_.userId == this.§&"7§)
               {
                  this.§=!l§ = _loc4_;
                  §0e§ = _loc5_;
               }
               if(!(_loc5_ is §"B§))
               {
                  _loc2_ = _loc2_ || _loc5_ as §""3§;
               }
               if(_loc5_.avatarString)
               {
                  §""J§[_loc5_.userId] = _loc5_.avatarString;
               }
               _loc3_.items.unshift(_loc5_);
            }
            _loc4_--;
         }
         if(this.§=!l§ < 0)
         {
            this.§=!l§ = !!_loc2_ ? int(_loc3_.items.indexOf(_loc2_) + 1) : 0;
            _loc3_.items.splice(this.§=!l§,0,this.§8>§(_loc2_));
         }
         _loc3_.totalItemCount = _loc3_.items.length;
         this.§2"#§ = §<Q§.length;
         if(§<Q§.indexOf(this.§&"7§) >= 0)
         {
            --this.§2"#§;
         }
         super.dataLoaded(_loc3_);
      }
      
      public function §8>§(param1:§""3§) : §""3§
      {
         if(this.§-;§)
         {
            return new §!8§(this.§&"7§,this.§8" §,!!§0e§ ? §0e§.avatarString : "",0,0,!!param1 ? int(param1.§+!r§ + 1) : 1);
         }
         return new §default§(this.§&"7§,this.§8" §,!!§0e§ ? §0e§.avatarString : "",0,0,0,!!param1 ? int(param1.§+!r§ + 1) : 1);
      }
      
      public function §+!e§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §"B§) && (data[_loc2_] as §""3§).userId == param1)
            {
               return (data[_loc2_] as §""3§).§+!r§;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §>!X§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §"B§) && (data[_loc2_] as §default§).§+!r§ == 2)
            {
               return (data[_loc2_] as §default§).§1l§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §3"2§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §default§).userId != this.§&"7§ && !(data[_loc3_] is §"B§) && this.§&"7§ && (data[_loc3_] as §default§).§1l§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §6f§() : §default§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§+!e§(this.§&"7§);
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
            if(data[_loc2_] is §default§ && (data[_loc2_] as §default§).§+!r§ == _loc1_ - 1)
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
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§8o§.§1!d§);
         }
      }
      
      public function § !&§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§default§ = null;
         var _loc5_:§default§;
         if(!(_loc5_ = data[this.§=!l§]))
         {
            return 0;
         }
         _loc5_.stars = param2;
         _loc5_.§1l§ = param1;
         _loc5_.§]Z§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §"B§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§&"7§)
               {
                  if(_loc7_.§+!r§ <= _loc5_.§+!r§)
                  {
                     if(_loc5_.§1l§ > _loc7_.§1l§ || _loc5_.§1l§ == _loc7_.§1l§ && _loc5_.§]Z§ > _loc7_.§]Z§)
                     {
                        param4.push(_loc7_);
                        --_loc5_.§+!r§;
                        ++_loc7_.§+!r§;
                        _loc7_.§#y§ = true;
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
         return _loc5_.§+!r§;
      }
      
      public function §&!b§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if((data[_loc2_] as §!8§).userId == param1)
            {
               return (data[_loc2_] as §!8§).§%u§;
            }
            _loc2_++;
         }
         return 0;
      }
   }
}
