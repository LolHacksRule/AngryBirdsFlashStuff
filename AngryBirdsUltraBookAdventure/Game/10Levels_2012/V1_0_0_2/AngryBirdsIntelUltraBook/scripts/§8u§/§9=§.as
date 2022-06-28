package §8u§
{
   import §0X§.§%'§;
   import §6!M§.§-!?§;
   import §6!M§.§1t§;
   import §6!M§.§4W§;
   import §6!M§.§7!m§;
   import §6!M§.§9!d§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §9=§ extends §=!!§
   {
      
      public static var §=K§:§9!d§;
      
      public static var §"!Y§:Array = [];
      
      private static var §-c§:Object = {};
       
      
      protected var § u§:String;
      
      protected var §&i§:String;
      
      protected var §-!G§:Boolean = false;
      
      protected var §8!R§:int = -1;
      
      private var §3!@§:int = 0;
      
      public function §9=§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         this.§ u§ = param1;
         this.§&i§ = param2;
         this.§-!G§ = param4;
         super(param3);
         if(param5)
         {
            §8H§ = new § ! §(0,param5.items.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            §'!w§(0,0);
         }
      }
      
      public static function §!W§(param1:String) : String
      {
         return §-c§[param1];
      }
      
      public function get §5O§() : int
      {
         return this.§3!@§;
      }
      
      public function get §#l§() : int
      {
         return this.§8!R§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§1t§ = null;
         var _loc5_:§9!d§ = null;
         var _loc3_:Object = {"items":[]};
         this.§8!R§ = -1;
         var _loc4_:int = param1.items.length - 1;
         while(_loc4_ >= 0)
         {
            §3?§.§!`§(new §2!A§(param1.items[_loc4_].a,param1.items[_loc4_].u));
            if((_loc5_ = §9!d§.§3!x§(param1.items[_loc4_])) is §4W§ && §"!Y§.indexOf(_loc5_.userId) != -1)
            {
               --this.§8!R§;
            }
            else
            {
               if(!(_loc5_ is §4W§) && §"!Y§.indexOf(_loc5_.userId) == -1)
               {
                  §"!Y§.push(_loc5_.userId);
               }
               if(_loc5_.userId == this.§ u§)
               {
                  this.§8!R§ = _loc4_;
                  §=K§ = _loc5_;
               }
               if(!(_loc5_ is §4W§))
               {
                  _loc2_ = _loc2_ || _loc5_ as §1t§;
               }
               if(_loc5_.avatarString)
               {
                  §-c§[_loc5_.userId] = _loc5_.avatarString;
               }
               _loc3_.items.unshift(_loc5_);
            }
            _loc4_--;
         }
         if(this.§8!R§ < 0)
         {
            this.§8!R§ = !!_loc2_ ? int(_loc3_.items.indexOf(_loc2_) + 1) : 0;
            _loc3_.items.splice(this.§8!R§,0,this.§9d§(_loc2_));
         }
         _loc3_.totalItemCount = _loc3_.items.length;
         this.§3!@§ = §"!Y§.length;
         if(§"!Y§.indexOf(this.§ u§) >= 0)
         {
            --this.§3!@§;
         }
         super.dataLoaded(_loc3_);
      }
      
      public function §9d§(param1:§1t§) : §1t§
      {
         if(this.§-!G§)
         {
            return new §7!m§(this.§ u§,this.§&i§,!!§=K§ ? §=K§.avatarString : "",0,0,!!param1 ? int(param1.§ N§ + 1) : 1,0);
         }
         return new §-!?§(this.§ u§,this.§&i§,!!§=K§ ? §=K§.avatarString : "",0,0,0,!!param1 ? int(param1.§ N§ + 1) : 1);
      }
      
      public function §@g§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §4W§) && (data[_loc2_] as §1t§).userId == param1)
            {
               return (data[_loc2_] as §1t§).§ N§;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §=!+§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §4W§) && (data[_loc2_] as §-!?§).§ N§ == 2)
            {
               return (data[_loc2_] as §-!?§).§0!F§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §4F§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §-!?§).userId != this.§ u§ && !(data[_loc3_] is §4W§) && this.§ u§ && (data[_loc3_] as §-!?§).§0!F§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §=>§() : §-!?§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§@g§(this.§ u§);
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
            if((data[_loc2_] as §-!?§).§ N§ == _loc1_ - 1)
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
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§%'§.§<!D§);
         }
      }
      
      public function §6!B§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§-!?§ = null;
         var _loc5_:§-!?§;
         if(!(_loc5_ = data[this.§8!R§]))
         {
            return 0;
         }
         _loc5_.stars = param2;
         _loc5_.§0!F§ = param1;
         _loc5_.§?!d§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §4W§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§ u§)
               {
                  if(_loc7_.§ N§ < _loc5_.§ N§)
                  {
                     if(_loc5_.§0!F§ > _loc7_.§0!F§ || _loc5_.§0!F§ == _loc7_.§0!F§ && _loc5_.§?!d§ > _loc7_.§?!d§)
                     {
                        param4.push(_loc7_);
                        --_loc5_.§ N§;
                        ++_loc7_.§ N§;
                        _loc7_.§+!3§ = true;
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
         return _loc5_.§ N§;
      }
   }
}
