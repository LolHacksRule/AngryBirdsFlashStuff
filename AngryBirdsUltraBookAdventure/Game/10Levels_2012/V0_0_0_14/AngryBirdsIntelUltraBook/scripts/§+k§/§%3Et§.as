package §+k§
{
   import §&!h§.§4!<§;
   import §4[§.§%!X§;
   import §4[§.§-w§;
   import §4[§.§3!G§;
   import §4[§.§>!P§;
   import §4[§.§?O§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §>t§ extends §-9§
   {
      
      public static var §,"§:§?O§;
      
      public static var §4!%§:Array = [];
      
      private static var §9Y§:Object = {};
       
      
      protected var §7D§:String;
      
      protected var §]!6§:String;
      
      protected var §8!%§:Boolean = false;
      
      protected var §6s§:int = -1;
      
      private var §9]§:int = 0;
      
      public function §>t§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         this.§7D§ = param1;
         this.§]!6§ = param2;
         this.§8!%§ = param4;
         super(param3);
         if(param5)
         {
            §`!u§ = new §9W§(0,param5.items.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            §`!5§(0,0);
         }
      }
      
      public static function §-!s§(param1:String) : String
      {
         return §9Y§[param1];
      }
      
      public function get §&1§() : int
      {
         return this.§9]§;
      }
      
      public function get §5^§() : int
      {
         return this.§6s§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§%!X§ = null;
         var _loc5_:§?O§ = null;
         var _loc3_:Object = {"items":[]};
         this.§6s§ = -1;
         var _loc4_:int = param1.items.length - 1;
         while(_loc4_ >= 0)
         {
            §%!2§.§1u§(new §=!A§(param1.items[_loc4_].a,param1.items[_loc4_].u));
            if((_loc5_ = §?O§.§+q§(param1.items[_loc4_])) is §3!G§ && §4!%§.indexOf(_loc5_.userId) != -1)
            {
               --this.§6s§;
            }
            else
            {
               if(!(_loc5_ is §3!G§) && §4!%§.indexOf(_loc5_.userId) == -1)
               {
                  §4!%§.push(_loc5_.userId);
               }
               if(_loc5_.userId == this.§7D§)
               {
                  this.§6s§ = _loc4_;
                  §,"§ = _loc5_;
               }
               if(!(_loc5_ is §3!G§))
               {
                  _loc2_ = _loc2_ || _loc5_ as §%!X§;
               }
               if(_loc5_.avatarString)
               {
                  §9Y§[_loc5_.userId] = _loc5_.avatarString;
               }
               _loc3_.items.unshift(_loc5_);
            }
            _loc4_--;
         }
         if(this.§6s§ < 0)
         {
            this.§6s§ = !!_loc2_ ? int(_loc3_.items.indexOf(_loc2_) + 1) : 0;
            _loc3_.items.splice(this.§6s§,0,this.§9>§(_loc2_));
         }
         _loc3_.totalItemCount = _loc3_.items.length;
         this.§9]§ = §4!%§.length;
         if(§4!%§.indexOf(this.§7D§) >= 0)
         {
            --this.§9]§;
         }
         super.dataLoaded(_loc3_);
      }
      
      public function §9>§(param1:§%!X§) : §%!X§
      {
         if(this.§8!%§)
         {
            return new §>!P§(this.§7D§,this.§]!6§,!!§,"§ ? §,"§.avatarString : "",0,0,!!param1 ? int(param1.§0v§ + 1) : 1,0);
         }
         return new §-w§(this.§7D§,this.§]!6§,!!§,"§ ? §,"§.avatarString : "",0,0,0,!!param1 ? int(param1.§0v§ + 1) : 1);
      }
      
      public function §,!Y§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §3!G§) && (data[_loc2_] as §%!X§).userId == param1)
            {
               return (data[_loc2_] as §%!X§).§0v§;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §&N§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §3!G§) && (data[_loc2_] as §-w§).§0v§ == 2)
            {
               return (data[_loc2_] as §-w§).§'!j§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §4r§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §-w§).userId != this.§7D§ && !(data[_loc3_] is §3!G§) && this.§7D§ && (data[_loc3_] as §-w§).§'!j§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §=u§() : §-w§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§,!Y§(this.§7D§);
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
            if((data[_loc2_] as §-w§).§0v§ == _loc1_ - 1)
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
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§4!<§.§ 5§);
         }
      }
      
      public function §3!U§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§-w§ = null;
         var _loc5_:§-w§;
         if(!(_loc5_ = data[this.§6s§]))
         {
            return 0;
         }
         _loc5_.stars = param2;
         _loc5_.§'!j§ = param1;
         _loc5_.§=!w§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §3!G§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§7D§)
               {
                  if(_loc7_.§0v§ < _loc5_.§0v§)
                  {
                     if(_loc5_.§'!j§ > _loc7_.§'!j§ || _loc5_.§'!j§ == _loc7_.§'!j§ && _loc5_.§=!w§ > _loc7_.§=!w§)
                     {
                        param4.push(_loc7_);
                        --_loc5_.§0v§;
                        ++_loc7_.§0v§;
                        _loc7_.§6!s§ = true;
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
         return _loc5_.§0v§;
      }
   }
}
