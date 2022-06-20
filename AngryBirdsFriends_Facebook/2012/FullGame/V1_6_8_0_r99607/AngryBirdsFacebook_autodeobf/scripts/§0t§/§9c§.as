package §0t§
{
   import §2!,§.§3!S§;
   import §2!,§.§3T§;
   import §2!,§.§4!7§;
   import §2!,§.§9"$§;
   import §2!,§.§=n§;
   import §<!<§.§^!I§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §9c§ extends §<"&§
   {
      
      public static var §2!_§:§=n§;
      
      public static var §@!I§:Array = [];
      
      private static var §!!c§:Object = {};
       
      
      protected var §<!$§:String;
      
      protected var §&!w§:String;
      
      protected var §6D§:Boolean = false;
      
      protected var §0![§:int = -1;
      
      private var §>%§:int = 0;
      
      public function §9c§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         this.§<!$§ = param1;
         this.§&!w§ = param2;
         this.§6D§ = param4;
         super(param3);
         if(param5)
         {
            §`"+§ = new §4">§(0,param5.items.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            §4w§(0,0);
         }
      }
      
      public static function §^"&§(param1:String) : String
      {
         return §!!c§[param1];
      }
      
      public function get §^f§() : int
      {
         return this.§>%§;
      }
      
      public function get §>""§() : int
      {
         return this.§0![§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§3T§ = null;
         var _loc5_:§=n§ = null;
         var _loc3_:Object = {"items":[]};
         this.§0![§ = -1;
         var _loc4_:int = param1.items.length - 1;
         while(_loc4_ >= 0)
         {
            §"I§.§`!q§(new §1d§(param1.items[_loc4_].a,param1.items[_loc4_].u));
            if((_loc5_ = §=n§.§ N§(param1.items[_loc4_])) is §4!7§ && §@!I§.indexOf(_loc5_.userId) != -1)
            {
               --this.§0![§;
            }
            else
            {
               if(!(_loc5_ is §4!7§) && §@!I§.indexOf(_loc5_.userId) == -1)
               {
                  §@!I§.push(_loc5_.userId);
               }
               if(_loc5_.userId == this.§<!$§)
               {
                  this.§0![§ = _loc4_;
                  §2!_§ = _loc5_;
               }
               if(!(_loc5_ is §4!7§))
               {
                  _loc2_ = _loc2_ || _loc5_ as §3T§;
               }
               if(_loc5_.avatarString)
               {
                  §!!c§[_loc5_.userId] = _loc5_.avatarString;
               }
               _loc3_.items.unshift(_loc5_);
            }
            _loc4_--;
         }
         if(this.§0![§ < 0)
         {
            this.§0![§ = !!_loc2_ ? int(_loc3_.items.indexOf(_loc2_) + 1) : 0;
            _loc3_.items.splice(this.§0![§,0,this.§3a§(_loc2_));
         }
         _loc3_.totalItemCount = _loc3_.items.length;
         this.§>%§ = §@!I§.length;
         if(§@!I§.indexOf(this.§<!$§) >= 0)
         {
            --this.§>%§;
         }
         super.dataLoaded(_loc3_);
      }
      
      public function §3a§(param1:§3T§) : §3T§
      {
         if(this.§6D§)
         {
            return new §3!S§(this.§<!$§,this.§&!w§,!!§2!_§ ? §2!_§.avatarString : "",0,0,!!param1 ? int(param1.§]!S§ + 1) : 1);
         }
         return new §9"$§(this.§<!$§,this.§&!w§,!!§2!_§ ? §2!_§.avatarString : "",0,0,0,!!param1 ? int(param1.§]!S§ + 1) : 1);
      }
      
      public function § 6§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §4!7§) && (data[_loc2_] as §3T§).userId == param1)
            {
               return (data[_loc2_] as §3T§).§]!S§;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §[!O§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §4!7§) && (data[_loc2_] as §9"$§).§]!S§ == 2)
            {
               return (data[_loc2_] as §9"$§).§+!^§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §9!!§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §9"$§).userId != this.§<!$§ && !(data[_loc3_] is §4!7§) && this.§<!$§ && (data[_loc3_] as §9"$§).§+!^§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function § r§() : §9"$§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§ 6§(this.§<!$§);
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
            if((data[_loc2_] as §9"$§).§]!S§ == _loc1_ - 1)
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
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§^!I§.§50§);
         }
      }
      
      public function §-V§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§9"$§ = null;
         var _loc5_:§9"$§;
         if(!(_loc5_ = data[this.§0![§]))
         {
            return 0;
         }
         _loc5_.stars = param2;
         _loc5_.§+!^§ = param1;
         _loc5_.§^I§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §4!7§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§<!$§)
               {
                  if(_loc7_.§]!S§ <= _loc5_.§]!S§)
                  {
                     if(_loc5_.§+!^§ > _loc7_.§+!^§ || _loc5_.§+!^§ == _loc7_.§+!^§ && _loc5_.§^I§ > _loc7_.§^I§)
                     {
                        param4.push(_loc7_);
                        --_loc5_.§]!S§;
                        ++_loc7_.§]!S§;
                        _loc7_.§;-§ = true;
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
         return _loc5_.§]!S§;
      }
   }
}
