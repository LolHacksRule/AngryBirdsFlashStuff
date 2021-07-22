package §<w§
{
   import §,l§.§!"T§;
   import §,l§.§"6§;
   import §,l§.§#!>§;
   import §,l§.§;!O§;
   import §,l§.§<"W§;
   import §,l§.§in §;
   import §9@§.§1!j§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §8p§ extends § ,§
   {
      
      public static var §+m§:§#!>§;
      
      public static var §,!n§:Array = [];
      
      private static var §-"A§:Object = {};
       
      
      protected var §'F§:String;
      
      protected var §[!D§:String;
      
      protected var §?"1§:Boolean = false;
      
      protected var §,!"§:int = -1;
      
      private var §7w§:int = 0;
      
      public function §8p§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         this.§'F§ = param1;
         this.§[!D§ = param2;
         this.§?"1§ = param4;
         super(param3);
         if(param5)
         {
            §83§ = new §@L§(0,param5.items.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            §`!I§(0,0);
         }
      }
      
      public static function §["E§(param1:String) : String
      {
         return §-"A§[param1];
      }
      
      public function get §&"U§() : int
      {
         return this.§7w§;
      }
      
      public function get §8#§() : int
      {
         return this.§,!"§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§in § = null;
         var _loc5_:§#!>§ = null;
         param1 = §;!O§.§>k§(param1,"items",param1.level);
         var _loc3_:Object = {"items":[]};
         this.§,!"§ = -1;
         var _loc4_:int = param1.items.length - 1;
         while(_loc4_ >= 0)
         {
            §9"?§.§"!V§(new §`h§(param1.items[_loc4_].a,param1.items[_loc4_].u));
            if((_loc5_ = §#!>§.§?$§(param1.items[_loc4_])) is §!"T§ && §,!n§.indexOf(_loc5_.userId) != -1)
            {
               --this.§,!"§;
            }
            else
            {
               if(!(_loc5_ is §!"T§) && §,!n§.indexOf(_loc5_.userId) == -1)
               {
                  §,!n§.push(_loc5_.userId);
               }
               if(_loc5_.userId == this.§'F§)
               {
                  this.§,!"§ = _loc4_;
                  §+m§ = _loc5_;
               }
               if(!(_loc5_ is §!"T§))
               {
                  _loc2_ = _loc2_ || _loc5_ as §in §;
               }
               if(_loc5_.avatarString)
               {
                  §-"A§[_loc5_.userId] = _loc5_.avatarString;
               }
               _loc3_.items.unshift(_loc5_);
            }
            _loc4_--;
         }
         if(this.§,!"§ < 0)
         {
            this.§,!"§ = !!_loc2_ ? int(_loc3_.items.indexOf(_loc2_) + 1) : 0;
            _loc3_.items.splice(this.§,!"§,0,this.§<!l§(_loc2_));
         }
         _loc3_.totalItemCount = _loc3_.items.length;
         this.§7w§ = §,!n§.length;
         if(§,!n§.indexOf(this.§'F§) >= 0)
         {
            --this.§7w§;
         }
         super.dataLoaded(_loc3_);
      }
      
      public function §<!l§(param1:§in §) : §in §
      {
         if(this.§?"1§)
         {
            return new §"6§(this.§'F§,this.§[!D§,!!§+m§ ? §+m§.avatarString : "",0,0,!!param1 ? int(param1.§'Q§ + 1) : 1);
         }
         return new §<"W§(this.§'F§,this.§[!D§,!!§+m§ ? §+m§.avatarString : "",0,0,0,!!param1 ? int(param1.§'Q§ + 1) : 1);
      }
      
      public function §2v§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §!"T§) && (data[_loc2_] as §in §).userId == param1)
            {
               return (data[_loc2_] as §in §).§'Q§;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §,"E§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §!"T§) && (data[_loc2_] as §<"W§).§'Q§ == 2)
            {
               return (data[_loc2_] as §<"W§).§,y§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §<J§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §<"W§).userId != this.§'F§ && !(data[_loc3_] is §!"T§) && this.§'F§ && (data[_loc3_] as §<"W§).§,y§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §!_§() : §<"W§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§2v§(this.§'F§);
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
            if(data[_loc2_] is §<"W§ && (data[_loc2_] as §<"W§).§'Q§ == _loc1_ - 1)
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
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§1!j§.§%e§);
         }
      }
      
      public function §1"<§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§<"W§ = null;
         var _loc5_:§<"W§;
         if(!(_loc5_ = data[this.§,!"§]))
         {
            return 0;
         }
         _loc5_.stars = param2;
         _loc5_.§,y§ = param1;
         _loc5_.§5"§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §!"T§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§'F§)
               {
                  if(_loc7_.§'Q§ <= _loc5_.§'Q§)
                  {
                     if(_loc5_.§,y§ > _loc7_.§,y§ || _loc5_.§,y§ == _loc7_.§,y§ && _loc5_.§5"§ > _loc7_.§5"§)
                     {
                        param4.push(_loc7_);
                        --_loc5_.§'Q§;
                        ++_loc7_.§'Q§;
                        _loc7_.§0!m§ = true;
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
         return _loc5_.§'Q§;
      }
      
      public function §^!H§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §"6§).userId == param1)
               {
                  return (data[_loc2_] as §"6§).§[![§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
      
      public function §`N§(param1:String) : Number
      {
         var _loc2_:int = 0;
         if(data)
         {
            _loc2_ = 0;
            while(_loc2_ < data.length)
            {
               if((data[_loc2_] as §<"W§).userId == param1)
               {
                  return (data[_loc2_] as §<"W§).§,y§;
               }
               _loc2_++;
            }
         }
         return 0;
      }
   }
}
