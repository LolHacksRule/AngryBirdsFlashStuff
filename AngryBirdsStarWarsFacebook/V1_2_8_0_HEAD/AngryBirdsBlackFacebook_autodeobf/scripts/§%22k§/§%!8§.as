package §"k§
{
   import flash.net.URLLoader;
   
   public class §%!8§ extends §6!a§
   {
      
      public static var §-"a§:§]"V§;
      
      public static var §=!o§:Array = [];
      
      private static var §`B§:Object = {};
       
      
      protected var §>#T§:String;
      
      protected var §9#Y§:String;
      
      protected var §7!C§:Boolean = false;
      
      protected var §!!'§:int = -1;
      
      private var §5#&§:int = 0;
      
      public function §%!8§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         this.§>#T§ = param1;
         this.§9#Y§ = param2;
         this.§7!C§ = param4;
         super(param3);
         if(param5)
         {
            §4!0§ = new §6N§(0,param5.items.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            loadItems(0,0);
         }
      }
      
      public static function §2!c§(param1:String) : String
      {
         return §`B§[param1];
      }
      
      public function get §,"%§() : int
      {
         return this.§5#&§;
      }
      
      public function get §8$§() : int
      {
         return this.§!!'§;
      }
      
      protected function getFriendListItemFromServerObject(param1:Object) : §]"V§
      {
         return §]"V§.§[!b§(param1);
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§=!g§ = null;
         var _loc5_:§]"V§ = null;
         var _loc3_:Object = {"items":[]};
         this.§!!'§ = -1;
         var _loc4_:int = param1.items.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.getFriendListItemFromServerObject(param1.items[_loc4_])) is §=#W§ && §=!o§.indexOf(_loc5_.userId) != -1)
            {
               --this.§!!'§;
            }
            else
            {
               if(_loc5_ is §=!g§ && §=!o§.indexOf(_loc5_.userId) == -1)
               {
                  §=!o§.push(_loc5_.userId);
               }
               if(_loc5_.userId == this.§>#T§)
               {
                  this.§!!'§ = _loc4_;
                  §-"a§ = _loc5_;
               }
               if(_loc5_ is §=!g§)
               {
                  _loc2_ = _loc2_ || _loc5_ as §=!g§;
               }
               if(_loc5_.avatarString)
               {
                  §`B§[_loc5_.userId] = _loc5_.avatarString;
               }
               _loc3_.items.unshift(_loc5_);
            }
            _loc4_--;
         }
         if(this.§!!'§ < 0)
         {
            this.§!!'§ = !!_loc2_ ? int(_loc3_.items.indexOf(_loc2_) + 1) : 0;
            _loc3_.items.splice(this.§!!'§,0,this.createNewSelfUser(_loc2_));
         }
         _loc3_.totalItemCount = _loc3_.items.length;
         this.§5#&§ = §=!o§.length;
         if(§=!o§.indexOf(this.§>#T§) >= 0)
         {
            --this.§5#&§;
         }
         super.dataLoaded(_loc3_);
      }
      
      public function createNewSelfUser(param1:§=!g§) : §=!g§
      {
         if(this.§7!C§)
         {
            return new §-!i§(this.§>#T§,this.§9#Y§,!!§-"a§ ? §-"a§.avatarString : "",0,0,!!param1 ? int(param1.§9!<§ + 1) : 1);
         }
         return new §5"2§(this.§>#T§,this.§9#Y§,!!§-"a§ ? §-"a§.avatarString : "",0,0,0,!!param1 ? int(param1.§9!<§ + 1) : 1);
      }
      
      public function §]#S§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_] is §=!g§ && §=!g§(data[_loc2_]).userId == param1)
            {
               return §=!g§(data[_loc2_]).§9!<§;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §<!h§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_] is §5"2§ && §5"2§(data[_loc2_]).§9!<§ == 2)
            {
               return §5"2§(data[_loc2_]).§@"0§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §"!Z§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §5"2§).userId != this.§>#T§ && data[_loc3_] is §5"2§ && this.§>#T§ && (data[_loc3_] as §5"2§).§@"0§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §1!N§() : §5"2§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§]#S§(this.§>#T§);
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
            if(data[_loc2_] is §5"2§ && (data[_loc2_] as §5"2§).§9!<§ == _loc1_ - 1)
            {
               return data[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      override protected function parseResponse(param1:Object) : Object
      {
         return param1;
      }
      
      public function §="_§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§5"2§ = null;
         var _loc5_:§5"2§;
         if(!(_loc5_ = data[this.§!!'§]))
         {
            return 0;
         }
         _loc5_.§<L§ = param2;
         _loc5_.§@"0§ = param1;
         _loc5_.§3H§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(data[_loc6_] is §5"2§)
            {
               if((_loc7_ = data[_loc6_]).userId != this.§>#T§)
               {
                  if(_loc7_.§9!<§ <= _loc5_.§9!<§)
                  {
                     if(_loc5_.§@"0§ > _loc7_.§@"0§ || _loc5_.§@"0§ == _loc7_.§@"0§ && _loc5_.§3H§ > _loc7_.§3H§)
                     {
                        param4.push(_loc7_);
                        --_loc5_.§9!<§;
                        ++_loc7_.§9!<§;
                        _loc7_.§-!p§ = true;
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
         return _loc5_.§9!<§;
      }
   }
}
