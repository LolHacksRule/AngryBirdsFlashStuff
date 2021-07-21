package §3§
{
   import §4!r§.§[!m§;
   
   public class § R§ implements §`A§
   {
       
      
      private var §-!o§:§`A§;
      
      private var §"!s§:§`A§;
      
      private var §7!H§:§`A§;
      
      private var §,!N§:§`A§;
      
      private var §+!_§:Vector.<§`A§>;
      
      private var §?!p§:Object = null;
      
      private var §1J§:Number = 0.0;
      
      public function § R§(param1:Object, param2:Vector.<§`A§>)
      {
         var _loc4_:uint = 0;
         var _loc5_:§`A§ = null;
         super();
         this.§?!p§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§-!o§ = param2[0];
            if(this.§1J§ < this.§-!o§.duration)
            {
               this.§1J§ = this.§-!o§.duration;
            }
            if(_loc3_ >= 2)
            {
               this.§"!s§ = param2[1];
               if(this.§1J§ < this.§"!s§.duration)
               {
                  this.§1J§ = this.§"!s§.duration;
               }
               if(_loc3_ >= 3)
               {
                  this.§7!H§ = param2[2];
                  if(this.§1J§ < this.§7!H§.duration)
                  {
                     this.§1J§ = this.§7!H§.duration;
                  }
                  if(_loc3_ >= 4)
                  {
                     this.§,!N§ = param2[3];
                     if(this.§1J§ < this.§,!N§.duration)
                     {
                        this.§1J§ = this.§,!N§.duration;
                     }
                     if(_loc3_ >= 5)
                     {
                        this.§+!_§ = new Vector.<§`A§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           _loc5_ = param2[_loc4_];
                           this.§+!_§[_loc4_ - 4] = _loc5_;
                           if(this.§1J§ < _loc5_.duration)
                           {
                              this.§1J§ = _loc5_.duration;
                           }
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
         var _loc2_:Vector.<§`A§> = null;
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
      
      public function get duration() : Number
      {
         return this.§1J§;
      }
      
      public function set §-;§(param1:§[!m§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function § d§(param1:uint) : §`A§
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
      
      public function set target(param1:Object) : void
      {
         this.§?!p§ = param1;
      }
      
      public function get §-;§() : §[!m§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : § null§
      {
         var _loc2_:Vector.<§`A§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§`A§> = new Vector.<§`A§>();
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
         return new § R§(this.§?!p§,_loc1_);
      }
   }
}
