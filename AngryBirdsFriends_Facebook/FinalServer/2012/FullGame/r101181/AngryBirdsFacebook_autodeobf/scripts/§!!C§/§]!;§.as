package §!!C§
{
   import §<a§.§!!m§;
   import §]!>§.§"!w§;
   import §]!>§.§#"1§;
   import §]!>§.§2!W§;
   import §]!>§.§;!e§;
   import §]!>§.§>+§;
   import §]!>§.§@"+§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §]!;§ extends §=!S§
   {
      
      public static var §-!k§:§#"1§;
      
      public static var §!!"§:Array = [];
      
      private static var § "4§:Object = {};
       
      
      protected var §"S§:String;
      
      protected var §]!e§:String;
      
      protected var §;_§:Boolean = false;
      
      protected var §`Q§:int = -1;
      
      private var §6!S§:int = 0;
      
      public function §]!;§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         this.§"S§ = param1;
         this.§]!e§ = param2;
         this.§;_§ = param4;
         super(param3);
         if(param5)
         {
            §7"F§ = new §#!^§(0,param5.items.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            §%!e§(0,0);
         }
      }
      
      public static function §<T§(param1:String) : String
      {
         return § "4§[param1];
      }
      
      public function get §%!=§() : int
      {
         return this.§6!S§;
      }
      
      public function get §8"?§() : int
      {
         return this.§`Q§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§@"+§ = null;
         var _loc5_:§#"1§ = null;
         param1 = §"!w§.§1!C§(param1,"items",param1.level);
         var _loc3_:Object = {"items":[]};
         this.§`Q§ = -1;
         var _loc4_:int = param1.items.length - 1;
         while(_loc4_ >= 0)
         {
            §!H§.§^!;§(new §^!b§(param1.items[_loc4_].a,param1.items[_loc4_].u));
            if((_loc5_ = §#"1§.§!!t§(param1.items[_loc4_])) is §;!e§ && §!!"§.indexOf(_loc5_.userId) != -1)
            {
               --this.§`Q§;
            }
            else
            {
               if(!(_loc5_ is §;!e§) && §!!"§.indexOf(_loc5_.userId) == -1)
               {
                  §!!"§.push(_loc5_.userId);
               }
               if(_loc5_.userId == this.§"S§)
               {
                  this.§`Q§ = _loc4_;
                  §-!k§ = _loc5_;
               }
               if(!(_loc5_ is §;!e§))
               {
                  _loc2_ = _loc2_ || _loc5_ as §@"+§;
               }
               if(_loc5_.avatarString)
               {
                  § "4§[_loc5_.userId] = _loc5_.avatarString;
               }
               _loc3_.items.unshift(_loc5_);
            }
            _loc4_--;
         }
         if(this.§`Q§ < 0)
         {
            this.§`Q§ = !!_loc2_ ? int(_loc3_.items.indexOf(_loc2_) + 1) : 0;
            _loc3_.items.splice(this.§`Q§,0,this.§9"0§(_loc2_));
         }
         _loc3_.totalItemCount = _loc3_.items.length;
         this.§6!S§ = §!!"§.length;
         if(§!!"§.indexOf(this.§"S§) >= 0)
         {
            --this.§6!S§;
         }
         super.dataLoaded(_loc3_);
      }
      
      public function §9"0§(param1:§@"+§) : §@"+§
      {
         if(this.§;_§)
         {
            return new §>+§(this.§"S§,this.§]!e§,!!§-!k§ ? §-!k§.avatarString : "",0,0,!!param1 ? int(param1.§9!Y§ + 1) : 1);
         }
         return new §2!W§(this.§"S§,this.§]!e§,!!§-!k§ ? §-!k§.avatarString : "",0,0,0,!!param1 ? int(param1.§9!Y§ + 1) : 1);
      }
      
      public function §+[§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §;!e§) && (data[_loc2_] as §@"+§).userId == param1)
            {
               return (data[_loc2_] as §@"+§).§9!Y§;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §4!X§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §;!e§) && (data[_loc2_] as §2!W§).§9!Y§ == 2)
            {
               return (data[_loc2_] as §2!W§).§ "3§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §>"D§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §2!W§).userId != this.§"S§ && !(data[_loc3_] is §;!e§) && this.§"S§ && (data[_loc3_] as §2!W§).§ "3§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §3"=§() : §2!W§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§+[§(this.§"S§);
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
            if(data[_loc2_] is §2!W§ && (data[_loc2_] as §2!W§).§9!Y§ == _loc1_ - 1)
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
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§!!m§.§4H§);
         }
      }
      
      public function §&]§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§2!W§ = null;
         var _loc5_:§2!W§;
         if(!(_loc5_ = data[this.§`Q§]))
         {
            return 0;
         }
         _loc5_.stars = param2;
         _loc5_.§ "3§ = param1;
         _loc5_.§69§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §;!e§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§"S§)
               {
                  if(_loc7_.§9!Y§ <= _loc5_.§9!Y§)
                  {
                     if(_loc5_.§ "3§ > _loc7_.§ "3§ || _loc5_.§ "3§ == _loc7_.§ "3§ && _loc5_.§69§ > _loc7_.§69§)
                     {
                        param4.push(_loc7_);
                        --_loc5_.§9!Y§;
                        ++_loc7_.§9!Y§;
                        _loc7_.§7!X§ = true;
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
         return _loc5_.§9!Y§;
      }
   }
}
