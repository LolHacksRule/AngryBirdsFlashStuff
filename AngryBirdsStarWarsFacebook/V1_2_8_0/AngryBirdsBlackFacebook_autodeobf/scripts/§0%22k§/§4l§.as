package §0"k§
{
   import flash.net.URLLoader;
   
   public class §4l§ extends §85§
   {
      
      public static var §6"A§:§&L§;
      
      public static var §<!=§:Array = [];
      
      private static var §""@§:Object = {};
       
      
      protected var §3!u§:String;
      
      protected var §0!=§:String;
      
      protected var §`S§:Boolean = false;
      
      protected var §-!i§:int = -1;
      
      private var §`!>§:int = 0;
      
      public function §4l§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         this.§3!u§ = param1;
         this.§0!=§ = param2;
         this.§`S§ = param4;
         super(param3);
         if(param5)
         {
            §]!k§ = new §2!c§(0,param5.items.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            loadItems(0,0);
         }
      }
      
      public static function §6#§(param1:String) : String
      {
         return §""@§[param1];
      }
      
      public function get §+"s§() : int
      {
         return this.§`!>§;
      }
      
      public function get §=!j§() : int
      {
         return this.§-!i§;
      }
      
      protected function getFriendListItemFromServerObject(param1:Object) : §&L§
      {
         return §&L§.§5"#§(param1);
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§ F§ = null;
         var _loc5_:§&L§ = null;
         var _loc3_:Object = {"items":[]};
         this.§-!i§ = -1;
         var _loc4_:int = param1.items.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.getFriendListItemFromServerObject(param1.items[_loc4_])) is §,=§ && §<!=§.indexOf(_loc5_.userId) != -1)
            {
               --this.§-!i§;
            }
            else
            {
               if(_loc5_ is § F§ && §<!=§.indexOf(_loc5_.userId) == -1)
               {
                  §<!=§.push(_loc5_.userId);
               }
               if(_loc5_.userId == this.§3!u§)
               {
                  this.§-!i§ = _loc4_;
                  §6"A§ = _loc5_;
               }
               if(_loc5_ is § F§)
               {
                  _loc2_ = _loc2_ || _loc5_ as § F§;
               }
               if(_loc5_.avatarString)
               {
                  §""@§[_loc5_.userId] = _loc5_.avatarString;
               }
               _loc3_.items.unshift(_loc5_);
            }
            _loc4_--;
         }
         if(this.§-!i§ < 0)
         {
            this.§-!i§ = !!_loc2_ ? int(_loc3_.items.indexOf(_loc2_) + 1) : 0;
            _loc3_.items.splice(this.§-!i§,0,this.createNewSelfUser(_loc2_));
         }
         _loc3_.totalItemCount = _loc3_.items.length;
         this.§`!>§ = §<!=§.length;
         if(§<!=§.indexOf(this.§3!u§) >= 0)
         {
            --this.§`!>§;
         }
         super.dataLoaded(_loc3_);
      }
      
      public function createNewSelfUser(param1:§ F§) : § F§
      {
         if(this.§`S§)
         {
            return new §6!v§(this.§3!u§,this.§0!=§,!!§6"A§ ? §6"A§.avatarString : "",0,0,!!param1 ? int(param1.§5!b§ + 1) : 1);
         }
         return new §-"[§(this.§3!u§,this.§0!=§,!!§6"A§ ? §6"A§.avatarString : "",0,0,0,!!param1 ? int(param1.§5!b§ + 1) : 1);
      }
      
      public function §]!W§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_] is § F§ && § F§(data[_loc2_]).userId == param1)
            {
               return § F§(data[_loc2_]).§5!b§;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §8M§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(data[_loc2_] is §-"[§ && §-"[§(data[_loc2_]).§5!b§ == 2)
            {
               return §-"[§(data[_loc2_]).§2!2§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §?!G§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §-"[§).userId != this.§3!u§ && data[_loc3_] is §-"[§ && this.§3!u§ && (data[_loc3_] as §-"[§).§2!2§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §+!c§() : §-"[§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§]!W§(this.§3!u§);
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
            if(data[_loc2_] is §-"[§ && (data[_loc2_] as §-"[§).§5!b§ == _loc1_ - 1)
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
      
      public function §%!0§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§-"[§ = null;
         var _loc5_:§-"[§;
         if(!(_loc5_ = data[this.§-!i§]))
         {
            return 0;
         }
         _loc5_.§`-§ = param2;
         _loc5_.§2!2§ = param1;
         _loc5_.§<!M§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(data[_loc6_] is §-"[§)
            {
               if((_loc7_ = data[_loc6_]).userId != this.§3!u§)
               {
                  if(_loc7_.§5!b§ <= _loc5_.§5!b§)
                  {
                     if(_loc5_.§2!2§ > _loc7_.§2!2§ || _loc5_.§2!2§ == _loc7_.§2!2§ && _loc5_.§<!M§ > _loc7_.§<!M§)
                     {
                        param4.push(_loc7_);
                        --_loc5_.§5!b§;
                        ++_loc7_.§5!b§;
                        _loc7_.§2!N§ = true;
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
         return _loc5_.§5!b§;
      }
   }
}
