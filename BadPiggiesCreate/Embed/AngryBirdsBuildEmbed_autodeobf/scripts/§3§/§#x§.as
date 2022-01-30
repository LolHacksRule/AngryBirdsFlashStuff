package §3§
{
   public class §#x§ implements § null§
   {
       
      
      private var §-!o§:§ null§;
      
      private var §"!s§:§ null§;
      
      private var §7!H§:§ null§;
      
      private var §,!N§:§ null§;
      
      private var §+!_§:Vector.<§ null§>;
      
      private var §?!p§:Object = null;
      
      public function §#x§(param1:Object, param2:Vector.<§ null§>)
      {
         var _loc4_:uint = 0;
         super();
         this.§?!p§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§-!o§ = param2[0];
            if(_loc3_ >= 2)
            {
               this.§"!s§ = param2[1];
               if(_loc3_ >= 3)
               {
                  this.§7!H§ = param2[2];
                  if(_loc3_ >= 4)
                  {
                     this.§,!N§ = param2[3];
                     if(_loc3_ >= 5)
                     {
                        this.§+!_§ = new Vector.<§ null§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           this.§+!_§[_loc4_ - 4] = param2[_loc4_];
                           _loc4_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§ null§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§-!o§ != null)
         {
            this.§-!o§.update(param1);
            if(this.§"!s§ != null)
            {
               this.§"!s§.update(param1);
               if(this.§7!H§ != null)
               {
                  this.§7!H§.update(param1);
                  if(this.§,!N§ != null)
                  {
                     this.§,!N§.update(param1);
                     if(this.§+!_§ != null)
                     {
                        _loc2_ = this.§+!_§;
                        _loc3_ = _loc2_.length;
                        _loc4_ = 0;
                        while(_loc4_ < _loc3_)
                        {
                           _loc2_[_loc4_].update(param1);
                           _loc4_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function get target() : Object
      {
         return this.§?!p§;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function clone() : § null§
      {
         var _loc2_:Vector.<§ null§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§ null§> = new Vector.<§ null§>();
         if(this.§-!o§ != null)
         {
            _loc1_.push(this.§-!o§.clone());
            if(this.§"!s§ != null)
            {
               _loc1_.push(this.§"!s§.clone());
               if(this.§7!H§ != null)
               {
                  _loc1_.push(this.§7!H§.clone());
                  if(this.§,!N§ != null)
                  {
                     _loc1_.push(this.§,!N§.clone());
                     if(this.§+!_§ != null)
                     {
                        _loc2_ = this.§+!_§;
                        _loc3_ = _loc2_.length;
                        _loc4_ = 0;
                        while(_loc4_ < _loc3_)
                        {
                           _loc1_.push(_loc2_[_loc4_].clone());
                           _loc4_++;
                        }
                     }
                  }
               }
            }
         }
         return new §#x§(this.§?!p§,_loc1_);
      }
      
      public function § d§(param1:uint) : § null§
      {
         if(param1 == 0)
         {
            return this.§-!o§;
         }
         if(param1 == 1)
         {
            return this.§"!s§;
         }
         if(param1 == 2)
         {
            return this.§7!H§;
         }
         if(param1 == 3)
         {
            return this.§,!N§;
         }
         return this.§+!_§[param1 - 4];
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
         this.§?!p§ = param1;
      }
   }
}
