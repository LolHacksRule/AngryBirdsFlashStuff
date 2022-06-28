package §6!Y§
{
   import §#&§.§+!5§;
   import §#&§.§35§;
   import §#&§.§9!o§;
   import §#&§.§]!B§;
   import §#&§.§`S§;
   import §]+§.§&!$§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §0!x§ extends §9!?§
   {
      
      public static var §`!6§:§`S§;
      
      public static var §,6§:Array = [];
      
      private static var §'b§:Object = {};
       
      
      protected var §^o§:String;
      
      protected var §<!t§:String;
      
      protected var §<E§:Boolean = false;
      
      protected var §^!D§:int = -1;
      
      private var §66§:int = 0;
      
      public function §0!x§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         this.§^o§ = param1;
         this.§<!t§ = param2;
         this.§<E§ = param4;
         super(param3);
         if(param5)
         {
            §;s§ = new §5t§(0,param5.items.length,new URLLoader(),null);
            this.dataLoaded(param5);
         }
         else
         {
            §-#§(0,0);
         }
      }
      
      public static function §>!U§(param1:String) : String
      {
         return §'b§[param1];
      }
      
      public function get §-b§() : int
      {
         return this.§66§;
      }
      
      public function get §%X§() : int
      {
         return this.§^!D§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:§+!5§ = null;
         var _loc5_:§`S§ = null;
         var _loc3_:Object = {"items":[]};
         this.§^!D§ = -1;
         var _loc4_:int = param1.items.length - 1;
         while(_loc4_ >= 0)
         {
            §!o§.§[b§(new §8;§(param1.items[_loc4_].a,param1.items[_loc4_].u));
            if((_loc5_ = §`S§.§2!L§(param1.items[_loc4_])) is §]!B§ && §,6§.indexOf(_loc5_.userId) != -1)
            {
               --this.§^!D§;
            }
            else
            {
               if(!(_loc5_ is §]!B§) && §,6§.indexOf(_loc5_.userId) == -1)
               {
                  §,6§.push(_loc5_.userId);
               }
               if(_loc5_.userId == this.§^o§)
               {
                  this.§^!D§ = _loc4_;
                  §`!6§ = _loc5_;
               }
               if(!(_loc5_ is §]!B§))
               {
                  _loc2_ = _loc2_ || _loc5_ as §+!5§;
               }
               if(_loc5_.avatarString)
               {
                  §'b§[_loc5_.userId] = _loc5_.avatarString;
               }
               _loc3_.items.unshift(_loc5_);
            }
            _loc4_--;
         }
         if(this.§^!D§ < 0)
         {
            this.§^!D§ = !!_loc2_ ? int(_loc3_.items.indexOf(_loc2_) + 1) : 0;
            _loc3_.items.splice(this.§^!D§,0,this.§6!q§(_loc2_));
         }
         _loc3_.totalItemCount = _loc3_.items.length;
         this.§66§ = §,6§.length;
         if(§,6§.indexOf(this.§^o§) >= 0)
         {
            --this.§66§;
         }
         super.dataLoaded(_loc3_);
      }
      
      public function §6!q§(param1:§+!5§) : §+!5§
      {
         if(this.§<E§)
         {
            return new §35§(this.§^o§,this.§<!t§,!!§`!6§ ? §`!6§.avatarString : "",0,0,!!param1 ? int(param1.§&d§ + 1) : 1,0);
         }
         return new §9!o§(this.§^o§,this.§<!t§,!!§`!6§ ? §`!6§.avatarString : "",0,0,0,!!param1 ? int(param1.§&d§ + 1) : 1);
      }
      
      public function §^n§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §]!B§) && (data[_loc2_] as §+!5§).userId == param1)
            {
               return (data[_loc2_] as §+!5§).§&d§;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §6G§(param1:int) : Number
      {
         var _loc2_:int = 0;
         while(_loc2_ < data.length)
         {
            if(!(data[_loc2_] is §]!B§) && (data[_loc2_] as §9!o§).§&d§ == 2)
            {
               return (data[_loc2_] as §9!o§).§#!6§;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public function §-l§(param1:Number) : Object
      {
         if(!data)
         {
            return null;
         }
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < data.length)
         {
            if((data[_loc3_] as §9!o§).userId != this.§^o§ && !(data[_loc3_] is §]!B§) && this.§^o§ && (data[_loc3_] as §9!o§).§#!6§ > param1)
            {
               _loc2_ = data[_loc3_];
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §'![§() : §9!o§
      {
         if(!data || data.length == 0)
         {
            return null;
         }
         var _loc1_:int = this.§^n§(this.§^o§);
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
            if((data[_loc2_] as §9!o§).§&d§ == _loc1_ - 1)
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
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§&!$§.§1!`§);
         }
      }
      
      public function §@&§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc7_:§9!o§ = null;
         var _loc5_:§9!o§;
         if(!(_loc5_ = data[this.§^!D§]))
         {
            return 0;
         }
         _loc5_.stars = param2;
         _loc5_.§#!6§ = param1;
         _loc5_.§-s§ = param3;
         var _loc6_:int = data.length - 1;
         while(_loc6_ >= 0)
         {
            if(!(data[_loc6_] is §]!B§))
            {
               if((_loc7_ = data[_loc6_]).userId != this.§^o§)
               {
                  if(_loc7_.§&d§ < _loc5_.§&d§)
                  {
                     if(_loc5_.§#!6§ > _loc7_.§#!6§ || _loc5_.§#!6§ == _loc7_.§#!6§ && _loc5_.§-s§ > _loc7_.§-s§)
                     {
                        param4.push(_loc7_);
                        --_loc5_.§&d§;
                        ++_loc7_.§&d§;
                        _loc7_.§+!Z§ = true;
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
         return _loc5_.§&d§;
      }
   }
}
