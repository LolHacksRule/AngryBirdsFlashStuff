package §_-lV§
{
   import §_-Wa§.§_-8X§;
   
   public class §_-MJ§ implements §_-v§
   {
       
      
      private var §_-Rs§:§_-v§;
      
      private var final:§_-v§;
      
      private var §_-3Z§:§_-v§;
      
      private var §_-L6§:§_-v§;
      
      private var §_-1v§:Vector.<§_-v§>;
      
      private var §_-YF§:Object = null;
      
      private var §_-Hr§:Number = 0.0;
      
      public function §_-MJ§(param1:Object, param2:Vector.<§_-v§>)
      {
         var _loc4_:uint = 0;
         var _loc5_:§_-v§ = null;
         super();
         this.§_-YF§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§_-Rs§ = param2[0];
            if(this.§_-Hr§ < this.§_-Rs§.duration)
            {
               this.§_-Hr§ = this.§_-Rs§.duration;
            }
            if(_loc3_ >= 2)
            {
               this.final = param2[1];
               if(this.§_-Hr§ < this.final.duration)
               {
                  this.§_-Hr§ = this.final.duration;
               }
               if(_loc3_ >= 3)
               {
                  this.§_-3Z§ = param2[2];
                  if(this.§_-Hr§ < this.§_-3Z§.duration)
                  {
                     this.§_-Hr§ = this.§_-3Z§.duration;
                  }
                  if(_loc3_ >= 4)
                  {
                     this.§_-L6§ = param2[3];
                     if(this.§_-Hr§ < this.§_-L6§.duration)
                     {
                        this.§_-Hr§ = this.§_-L6§.duration;
                     }
                     if(_loc3_ >= 5)
                     {
                        this.§_-1v§ = new Vector.<§_-v§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           _loc5_ = param2[_loc4_];
                           this.§_-1v§[_loc4_ - 4] = _loc5_;
                           if(this.§_-Hr§ < _loc5_.duration)
                           {
                              this.§_-Hr§ = _loc5_.duration;
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
         var _loc2_:Vector.<§_-v§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§_-Rs§ != null)
         {
            this.§_-Rs§.update(param1);
            if(this.final != null)
            {
               this.final.update(param1);
               if(this.§_-3Z§ != null)
               {
                  this.§_-3Z§.update(param1);
                  if(this.§_-L6§ != null)
                  {
                     this.§_-L6§.update(param1);
                     if(this.§_-1v§ != null)
                     {
                        _loc2_ = this.§_-1v§;
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
         return this.§_-YF§;
      }
      
      public function get duration() : Number
      {
         return this.§_-Hr§;
      }
      
      public function set §_-4g§(param1:§_-8X§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function §_-FT§(param1:uint) : §_-v§
      {
         if(param1 == 0)
         {
            return this.§_-Rs§;
         }
         if(param1 == 1)
         {
            return this.final;
         }
         if(param1 == 2)
         {
            return this.§_-3Z§;
         }
         if(param1 == 3)
         {
            return this.§_-L6§;
         }
         return this.§_-1v§[param1 - 4];
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-YF§ = param1;
      }
      
      public function get §_-4g§() : §_-8X§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-i2§
      {
         var _loc2_:Vector.<§_-v§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§_-v§> = new Vector.<§_-v§>();
         if(this.§_-Rs§ != null)
         {
            _loc1_.push(this.§_-Rs§.clone());
            if(this.final != null)
            {
               _loc1_.push(this.final.clone());
               if(this.§_-3Z§ != null)
               {
                  _loc1_.push(this.§_-3Z§.clone());
                  if(this.§_-L6§ != null)
                  {
                     _loc1_.push(this.§_-L6§.clone());
                     if(this.§_-1v§ != null)
                     {
                        _loc2_ = this.§_-1v§;
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
         return new §_-MJ§(this.§_-YF§,_loc1_);
      }
   }
}
