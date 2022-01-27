package §`!b§
{
   import flash.net.URLLoader;
   
   public class §9!=§ extends §<!9§
   {
      
      public static var §`#"§:§"#6§;
      
      public static var §9!q§:Array = [];
      
      private static var §]J§:Object = {};
       
      
      protected var §!!B§:String;
      
      protected var §+?§:String;
      
      protected var §0!a§:Boolean = false;
      
      protected var §7!%§:int = -1;
      
      private var §8"k§:int = 0;
      
      public function §9!=§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         this.§!!B§ = param1;
         this.§+?§ = param2;
         this.§0!a§ = param4;
         super(param3);
         if(param5)
         {
            §8X§ = new § v§(0,param5.items.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            loadItems(0,0);
         }
      }
      
      public static function §>!7§(param1:String) : String
      {
         return §]J§[param1];
      }
      
      public function get §[!s§() : int
      {
         return this.§8"k§;
      }
      
      public function get §"#0§() : int
      {
         return this.§7!%§;
      }
      
      protected function getFriendListItemFromServerObject(param1:Object) : §"#6§
      {
         return §"#6§.§5!G§(param1);
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§ each§ = null;
         var _loc5_:§"#6§ = null;
         var _loc3_:Object = {"items":[]};
         this.§7!%§ = -1;
         var _loc4_:int = param1.items.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.getFriendListItemFromServerObject(param1.items[_loc4_])) is §-"P§ && §9!q§.indexOf(_loc5_.userId) != -1)
            {
               --this.§7!%§;
            }
            else
            {
               if(_loc5_ is § each§ && §9!q§.indexOf(_loc5_.userId) == -1)
               {
                  §9!q§.push(_loc5_.userId);
               }
               if(_loc5_.userId == this.§!!B§)
               {
                  this.§7!%§ = _loc4_;
                  §`#"§ = _loc5_;
               }
               if(_loc5_ is § each§)
               {
                  _loc2_ = _loc2_ || _loc5_ as § each§;
               }
               if(_loc5_.avatarString)
               {
                  §]J§[_loc5_.userId] = _loc5_.avatarString;
               }
               _loc3_.items.unshift(_loc5_);
            }
            _loc4_--;
         }
         if(this.§7!%§ < 0)
         {
            this.§7!%§ = !!_loc2_ ? int(_loc3_.items.indexOf(_loc2_) + 1) : 0;
            _loc3_.items.splice(this.§7!%§,0,this.createNewSelfUser(_loc2_));
         }
         _loc3_.totalItemCount = _loc3_.items.length;
         this.§8"k§ = §9!q§.length;
         if(§9!q§.indexOf(this.§!!B§) >= 0)
         {
            --this.§8"k§;
         }
         super.dataLoaded(_loc3_);
      }
      
      public function createNewSelfUser(param1:§ each§) : § each§
      {
         if(this.§0!a§)
         {
            return new §?"S§(this.§!!B§,this.§+?§,!!§`#"§ ? §`#"§.avatarString : "",0,0,!!param1 ? int(param1.§["Q§ + 1) : 1);
         }
         return new §>"h§(this.§!!B§,this.§+?§,!!§`#"§ ? §`#"§.avatarString : "",0,0,0,!!param1 ? int(param1.§["Q§ + 1) : 1);
      }
      
      public function §2"a§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_] is § each§ && § each§(data[_loc2_]).userId == param1)
            {
               return § each§(data[_loc2_]).§["Q§;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §#"F§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_] is §>"h§ && §>"h§(data[_loc2_]).§["Q§ == 2)
            {
               return §>"h§(data[_loc2_]).§#!W§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §["r§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §>"h§).userId != this.§!!B§ && data[_loc3_] is §>"h§ && this.§!!B§ && (data[_loc3_] as §>"h§).§#!W§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §7#1§() : §>"h§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§2"a§(this.§!!B§);
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
            if(data[_loc2_] is §>"h§ && (data[_loc2_] as §>"h§).§["Q§ == _loc1_ - 1)
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
      
      public function §`"9§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§>"h§ = null;
         var _loc5_:§>"h§;
         if(!(_loc5_ = data[this.§7!%§]))
         {
            return 0;
         }
         _loc5_.§",§ = param2;
         _loc5_.§#!W§ = param1;
         _loc5_.§&"8§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(data[_loc6_] is §>"h§)
            {
               if((_loc7_ = data[_loc6_]).userId != this.§!!B§)
               {
                  if(_loc7_.§["Q§ <= _loc5_.§["Q§)
                  {
                     if(_loc5_.§#!W§ > _loc7_.§#!W§ || _loc5_.§#!W§ == _loc7_.§#!W§ && _loc5_.§&"8§ > _loc7_.§&"8§)
                     {
                        param4.push(_loc7_);
                        --_loc5_.§["Q§;
                        ++_loc7_.§["Q§;
                        _loc7_.§'!s§ = true;
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
         return _loc5_.§["Q§;
      }
   }
}
