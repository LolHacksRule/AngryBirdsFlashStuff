package §_-V7§
{
   import §_-5y§.§_-Bf§;
   
   public class §_-FB§ implements §_-gL§
   {
       
      
      private var §_-yF§:§_-gL§;
      
      private var §_-sZ§:§_-gL§;
      
      private var §_-bd§:§_-gL§;
      
      private var §_-qK§:§_-gL§;
      
      private var §_-dw§:Vector.<§_-gL§>;
      
      private var §_-9Z§:Object = null;
      
      private var §_-7A§:Number = 0.0;
      
      public function §_-FB§(param1:Object, param2:Vector.<§_-gL§>)
      {
         var _loc4_:uint = 0;
         var _loc5_:§_-gL§ = null;
         super();
         this.§_-9Z§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§_-yF§ = param2[0];
            if(this.§_-7A§ < this.§_-yF§.duration)
            {
               this.§_-7A§ = this.§_-yF§.duration;
            }
            if(_loc3_ >= 2)
            {
               this.§_-sZ§ = param2[1];
               if(this.§_-7A§ < this.§_-sZ§.duration)
               {
                  this.§_-7A§ = this.§_-sZ§.duration;
               }
               if(_loc3_ >= 3)
               {
                  this.§_-bd§ = param2[2];
                  if(this.§_-7A§ < this.§_-bd§.duration)
                  {
                     this.§_-7A§ = this.§_-bd§.duration;
                  }
                  if(_loc3_ >= 4)
                  {
                     this.§_-qK§ = param2[3];
                     if(this.§_-7A§ < this.§_-qK§.duration)
                     {
                        this.§_-7A§ = this.§_-qK§.duration;
                     }
                     if(_loc3_ >= 5)
                     {
                        this.§_-dw§ = new Vector.<§_-gL§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           _loc5_ = param2[_loc4_];
                           this.§_-dw§[_loc4_ - 4] = _loc5_;
                           if(this.§_-7A§ < _loc5_.duration)
                           {
                              this.§_-7A§ = _loc5_.duration;
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
         var _loc2_:Vector.<§_-gL§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§_-yF§ != null)
         {
            this.§_-yF§.update(param1);
            if(this.§_-sZ§ != null)
            {
               this.§_-sZ§.update(param1);
               if(this.§_-bd§ != null)
               {
                  this.§_-bd§.update(param1);
                  if(this.§_-qK§ != null)
                  {
                     this.§_-qK§.update(param1);
                     if(this.§_-dw§ != null)
                     {
                        _loc2_ = this.§_-dw§;
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
         return this.§_-9Z§;
      }
      
      public function get duration() : Number
      {
         return this.§_-7A§;
      }
      
      public function set §_-5E§(param1:§_-Bf§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function §_-6Z§(param1:uint) : §_-gL§
      {
         if(param1 == 0)
         {
            return this.§_-yF§;
         }
         if(param1 == 1)
         {
            return this.§_-sZ§;
         }
         if(param1 == 2)
         {
            return this.§_-bd§;
         }
         if(param1 == 3)
         {
            return this.§_-qK§;
         }
         return this.§_-dw§[param1 - 4];
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-9Z§ = param1;
      }
      
      public function get §_-5E§() : §_-Bf§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-S1§
      {
         var _loc2_:Vector.<§_-gL§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§_-gL§> = new Vector.<§_-gL§>();
         if(this.§_-yF§ != null)
         {
            _loc1_.push(this.§_-yF§.clone());
            if(this.§_-sZ§ != null)
            {
               _loc1_.push(this.§_-sZ§.clone());
               if(this.§_-bd§ != null)
               {
                  _loc1_.push(this.§_-bd§.clone());
                  if(this.§_-qK§ != null)
                  {
                     _loc1_.push(this.§_-qK§.clone());
                     if(this.§_-dw§ != null)
                     {
                        _loc2_ = this.§_-dw§;
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
         return new §_-FB§(this.§_-9Z§,_loc1_);
      }
   }
}
