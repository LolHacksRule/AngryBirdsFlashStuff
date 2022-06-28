package §_-0EZ§
{
   import §_-01E§.§_-00n§;
   import §_-01E§.§_-0El§;
   import §_-01E§.§_-5b§;
   import §_-01E§.§_-5z§;
   import §_-01E§.§_-M3§;
   import §_-eS§.§_-4E§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §_-48§ extends §_-SI§
   {
      
      public static var §in §:§_-M3§;
      
      public static var §_-L0§:Array = [];
      
      private static var §_-084§:Object = {};
       
      
      protected var §_-ck§:String;
      
      protected var §_-TT§:String;
      
      protected var §_-Ei§:Boolean = false;
      
      protected var §_-0Cu§:int = -1;
      
      private var §_-hx§:int = 0;
      
      public function §_-48§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         this.§_-ck§ = param1;
         this.§_-TT§ = param2;
         this.§_-Ei§ = param4;
         super(param3);
         if(param5)
         {
            §_-U5§ = new §_-UE§(0,param5.items.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            §_-0-C§(0,0);
         }
      }
      
      public static function §_-nV§(param1:String) : String
      {
         return §_-084§[param1];
      }
      
      public function get §_-wX§() : int
      {
         return this.§_-hx§;
      }
      
      public function get §_-tm§() : int
      {
         return this.§_-0Cu§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§_-0El§ = null;
         var _loc5_:§_-M3§ = null;
         var _loc3_:Object = {"items":[]};
         this.§_-0Cu§ = -1;
         var _loc4_:int = param1.items.length - 1;
         while(_loc4_ >= 0)
         {
            §_-Dk§.§_-86§(new §_-HV§(param1.items[_loc4_].a,param1.items[_loc4_].u));
            if((_loc5_ = §_-M3§.§_-Ej§(param1.items[_loc4_])) is §_-5z§ && §_-L0§.indexOf(_loc5_.userId) != -1)
            {
               --this.§_-0Cu§;
            }
            else
            {
               if(!(_loc5_ is §_-5z§) && §_-L0§.indexOf(_loc5_.userId) == -1)
               {
                  §_-L0§.push(_loc5_.userId);
               }
               if(_loc5_.userId == this.§_-ck§)
               {
                  this.§_-0Cu§ = _loc4_;
                  §in § = _loc5_;
               }
               if(!(_loc5_ is §_-5z§))
               {
                  _loc2_ = _loc2_ || _loc5_ as §_-0El§;
               }
               if(_loc5_.avatarString)
               {
                  §_-084§[_loc5_.userId] = _loc5_.avatarString;
               }
               _loc3_.items.unshift(_loc5_);
            }
            _loc4_--;
         }
         if(this.§_-0Cu§ < 0)
         {
            this.§_-0Cu§ = !!_loc2_ ? int(_loc3_.items.indexOf(_loc2_) + 1) : 0;
            _loc3_.items.splice(this.§_-0Cu§,0,this.§_-kF§(_loc2_));
         }
         _loc3_.totalItemCount = _loc3_.items.length;
         this.§_-hx§ = §_-L0§.length;
         if(§_-L0§.indexOf(this.§_-ck§) >= 0)
         {
            --this.§_-hx§;
         }
         super.dataLoaded(_loc3_);
      }
      
      public function §_-kF§(param1:§_-0El§) : §_-0El§
      {
         if(this.§_-Ei§)
         {
            return new §_-00n§(this.§_-ck§,this.§_-TT§,!!§in § ? §in §.avatarString : "",0,0,!!param1 ? int(param1.§_-0Ef§ + 1) : 1,0);
         }
         return new §_-5b§(this.§_-ck§,this.§_-TT§,!!§in § ? §in §.avatarString : "",0,0,0,!!param1 ? int(param1.§_-0Ef§ + 1) : 1);
      }
      
      public function §_-091§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §_-5z§) && (data[_loc2_] as §_-0El§).userId == param1)
            {
               return (data[_loc2_] as §_-0El§).§_-0Ef§;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §_-p-§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §_-5z§) && (data[_loc2_] as §_-5b§).§_-0Ef§ == 2)
            {
               return (data[_loc2_] as §_-5b§).§_-04F§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §var §(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §_-5b§).userId != this.§_-ck§ && !(data[_loc3_] is §_-5z§) && this.§_-ck§ && (data[_loc3_] as §_-5b§).§_-04F§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §_-YX§() : §_-5b§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§_-091§(this.§_-ck§);
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
            if((data[_loc2_] as §_-5b§).§_-0Ef§ == _loc1_ - 1)
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
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§_-4E§.§_-ju§);
         }
      }
      
      public function §_-R0§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§_-5b§ = null;
         var _loc5_:§_-5b§;
         if(!(_loc5_ = data[this.§_-0Cu§]))
         {
            return 0;
         }
         _loc5_.stars = param2;
         _loc5_.§_-04F§ = param1;
         _loc5_.§_-GM§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §_-5z§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§_-ck§)
               {
                  if(_loc7_.§_-0Ef§ < _loc5_.§_-0Ef§)
                  {
                     if(_loc5_.§_-04F§ > _loc7_.§_-04F§ || _loc5_.§_-04F§ == _loc7_.§_-04F§ && _loc5_.§_-GM§ > _loc7_.§_-GM§)
                     {
                        param4.push(_loc7_);
                        --_loc5_.§_-0Ef§;
                        ++_loc7_.§_-0Ef§;
                        _loc7_.§_-07d§ = true;
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
         return _loc5_.§_-0Ef§;
      }
   }
}
