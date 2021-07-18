package §_-Bt§
{
   import §_-20§.§_-j5§;
   import §_-Xz§.§_-Ps§;
   import §_-xo§.§_-E-§;
   import §_-xo§.§_-Lk§;
   import §_-xo§.§_-z7§;
   
   public class §_-wX§ extends §_-E-§ implements §_-z7§
   {
       
      
      private var §_-yF§:§_-Lk§;
      
      private var §_-fe§:Vector.<§_-Lk§>;
      
      private var §_-bd§:§_-Lk§;
      
      private var §_-qK§:§_-Lk§;
      
      private var §_-8x§:Number = 0;
      
      private var §_-sZ§:§_-Lk§;
      
      public function §_-wX§(param1:Array, param2:§_-Ps§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§_-Lk§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §_-7A§ = 0;
         if(_loc4_ > 0)
         {
            this.§_-yF§ = param1[0] as §_-Lk§;
            §_-7A§ += this.§_-yF§.duration;
            if(_loc4_ > 1)
            {
               this.§_-sZ§ = param1[1] as §_-Lk§;
               §_-7A§ += this.§_-sZ§.duration;
               if(_loc4_ > 2)
               {
                  this.§_-bd§ = param1[2] as §_-Lk§;
                  §_-7A§ += this.§_-bd§.duration;
                  if(_loc4_ > 3)
                  {
                     this.§_-qK§ = param1[3] as §_-Lk§;
                     §_-7A§ += this.§_-qK§.duration;
                     if(_loc4_ > 4)
                     {
                        this.§_-fe§ = new Vector.<§_-Lk§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §_-Lk§;
                           this.§_-fe§[_loc5_ - 4] = _loc6_;
                           §_-7A§ += _loc6_.duration;
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §_-CT§(param1:int) : §_-j5§
      {
         if(param1 < 0)
         {
            return null;
         }
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
         if(this.§_-fe§ != null)
         {
            if(param1 - 4 < this.§_-fe§.length)
            {
               return this.§_-fe§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         var _loc7_:§_-Lk§ = null;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = this.§_-8x§;
         if(param1 - _loc4_ >= 0)
         {
            if(this.§_-yF§ != null)
            {
               if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-yF§.duration) && _loc3_ <= param1)
               {
                  this.§_-yF§.update(param1 - _loc3_);
               }
               _loc3_ = _loc2_;
               if(this.§_-sZ§ != null)
               {
                  if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-sZ§.duration) && _loc3_ <= param1)
                  {
                     this.§_-sZ§.update(param1 - _loc3_);
                  }
                  _loc3_ = _loc2_;
                  if(this.§_-bd§ != null)
                  {
                     if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-bd§.duration) && _loc3_ <= param1)
                     {
                        this.§_-bd§.update(param1 - _loc3_);
                     }
                     _loc3_ = _loc2_;
                     if(this.§_-qK§ != null)
                     {
                        if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-qK§.duration) && _loc3_ <= param1)
                        {
                           this.§_-qK§.update(param1 - _loc3_);
                        }
                        _loc3_ = _loc2_;
                        if(this.§_-fe§ != null)
                        {
                           _loc5_ = this.§_-fe§.length;
                           _loc6_ = 0;
                           while(_loc6_ < _loc5_)
                           {
                              _loc7_ = this.§_-fe§[_loc6_];
                              if(_loc4_ <= (_loc2_ = _loc2_ + _loc7_.duration) && _loc3_ <= param1)
                              {
                                 _loc7_.update(param1 - _loc3_);
                              }
                              _loc3_ = _loc2_;
                              _loc6_++;
                           }
                        }
                     }
                  }
               }
            }
         }
         else
         {
            _loc2_ = §_-7A§;
            _loc3_ = _loc2_;
            if(this.§_-fe§ != null)
            {
               _loc6_ = this.§_-fe§.length - 1;
               while(_loc6_ >= 0)
               {
                  _loc7_ = this.§_-fe§[_loc6_];
                  if(_loc4_ >= (_loc2_ = _loc2_ - _loc7_.duration) && _loc3_ >= param1)
                  {
                     _loc7_.update(param1 - _loc2_);
                  }
                  _loc3_ = _loc2_;
                  _loc6_--;
               }
            }
            if(this.§_-qK§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-qK§.duration) && _loc3_ >= param1)
               {
                  this.§_-qK§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§_-bd§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-bd§.duration) && _loc3_ >= param1)
               {
                  this.§_-bd§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§_-sZ§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-sZ§.duration) && _loc3_ >= param1)
               {
                  this.§_-sZ§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§_-yF§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-yF§.duration) && _loc3_ >= param1)
               {
                  this.§_-yF§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
         }
         this.§_-8x§ = param1;
      }
      
      override protected function newInstance() : §_-E-§
      {
         var _loc2_:Vector.<§_-Lk§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§_-yF§ != null)
         {
            _loc1_.push(this.§_-yF§.clone());
         }
         if(this.§_-sZ§ != null)
         {
            _loc1_.push(this.§_-sZ§.clone());
         }
         if(this.§_-bd§ != null)
         {
            _loc1_.push(this.§_-bd§.clone());
         }
         if(this.§_-qK§ != null)
         {
            _loc1_.push(this.§_-qK§.clone());
         }
         if(this.§_-fe§ != null)
         {
            _loc2_ = this.§_-fe§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §_-wX§(_loc1_,§_-Pj§,0);
      }
      
      public function §_-IK§(param1:§_-j5§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§_-yF§ == param1)
         {
            return 0;
         }
         if(this.§_-sZ§ == param1)
         {
            return 1;
         }
         if(this.§_-bd§ == param1)
         {
            return 2;
         }
         if(this.§_-qK§ == param1)
         {
            return 3;
         }
         if(this.§_-fe§ != null)
         {
            _loc2_ = this.§_-fe§.indexOf(param1 as §_-Lk§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§_-j5§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§_-yF§ == param1)
         {
            return true;
         }
         if(this.§_-sZ§ == param1)
         {
            return true;
         }
         if(this.§_-bd§ == param1)
         {
            return true;
         }
         if(this.§_-qK§ == param1)
         {
            return true;
         }
         if(this.§_-fe§ != null)
         {
            return this.§_-fe§.indexOf(param1 as §_-Lk§) != -1;
         }
         return false;
      }
   }
}
