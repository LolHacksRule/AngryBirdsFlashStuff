package §_-GS§
{
   import §_-LP§.§_-PH§;
   import §_-My§.§_-Ry§;
   import §_-My§.§_-hK§;
   import §_-My§.§package§;
   import §_-h2§.§_-CC§;
   
   public class §_-Ft§ extends §_-Ry§ implements §package§
   {
       
      
      private var §_-Rs§:§_-hK§;
      
      private var §_-R6§:Vector.<§_-hK§>;
      
      private var §_-3Z§:§_-hK§;
      
      private var §_-L6§:§_-hK§;
      
      private var §_-A5§:Number = 0;
      
      private var final:§_-hK§;
      
      public function §_-Ft§(param1:Array, param2:§_-CC§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§_-hK§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §_-Hr§ = 0;
         if(_loc4_ > 0)
         {
            this.§_-Rs§ = param1[0] as §_-hK§;
            §_-Hr§ += this.§_-Rs§.duration;
            if(_loc4_ > 1)
            {
               this.final = param1[1] as §_-hK§;
               §_-Hr§ += this.final.duration;
               if(_loc4_ > 2)
               {
                  this.§_-3Z§ = param1[2] as §_-hK§;
                  §_-Hr§ += this.§_-3Z§.duration;
                  if(_loc4_ > 3)
                  {
                     this.§_-L6§ = param1[3] as §_-hK§;
                     §_-Hr§ += this.§_-L6§.duration;
                     if(_loc4_ > 4)
                     {
                        this.§_-R6§ = new Vector.<§_-hK§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §_-hK§;
                           this.§_-R6§[_loc5_ - 4] = _loc6_;
                           §_-Hr§ += _loc6_.duration;
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §_-Zd§(param1:int) : §_-PH§
      {
         if(param1 < 0)
         {
            return null;
         }
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
         if(this.§_-R6§ != null)
         {
            if(param1 - 4 < this.§_-R6§.length)
            {
               return this.§_-R6§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         var _loc7_:§_-hK§ = null;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = this.§_-A5§;
         if(param1 - _loc4_ >= 0)
         {
            if(this.§_-Rs§ != null)
            {
               if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-Rs§.duration) && _loc3_ <= param1)
               {
                  this.§_-Rs§.update(param1 - _loc3_);
               }
               _loc3_ = _loc2_;
               if(this.final != null)
               {
                  if(_loc4_ <= (_loc2_ = _loc2_ + this.final.duration) && _loc3_ <= param1)
                  {
                     this.final.update(param1 - _loc3_);
                  }
                  _loc3_ = _loc2_;
                  if(this.§_-3Z§ != null)
                  {
                     if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-3Z§.duration) && _loc3_ <= param1)
                     {
                        this.§_-3Z§.update(param1 - _loc3_);
                     }
                     _loc3_ = _loc2_;
                     if(this.§_-L6§ != null)
                     {
                        if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-L6§.duration) && _loc3_ <= param1)
                        {
                           this.§_-L6§.update(param1 - _loc3_);
                        }
                        _loc3_ = _loc2_;
                        if(this.§_-R6§ != null)
                        {
                           _loc5_ = this.§_-R6§.length;
                           _loc6_ = 0;
                           while(_loc6_ < _loc5_)
                           {
                              _loc7_ = this.§_-R6§[_loc6_];
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
            _loc2_ = §_-Hr§;
            _loc3_ = _loc2_;
            if(this.§_-R6§ != null)
            {
               _loc6_ = this.§_-R6§.length - 1;
               while(_loc6_ >= 0)
               {
                  _loc7_ = this.§_-R6§[_loc6_];
                  if(_loc4_ >= (_loc2_ = _loc2_ - _loc7_.duration) && _loc3_ >= param1)
                  {
                     _loc7_.update(param1 - _loc2_);
                  }
                  _loc3_ = _loc2_;
                  _loc6_--;
               }
            }
            if(this.§_-L6§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-L6§.duration) && _loc3_ >= param1)
               {
                  this.§_-L6§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§_-3Z§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-3Z§.duration) && _loc3_ >= param1)
               {
                  this.§_-3Z§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.final != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.final.duration) && _loc3_ >= param1)
               {
                  this.final.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§_-Rs§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-Rs§.duration) && _loc3_ >= param1)
               {
                  this.§_-Rs§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
         }
         this.§_-A5§ = param1;
      }
      
      override protected function newInstance() : §_-Ry§
      {
         var _loc2_:Vector.<§_-hK§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§_-Rs§ != null)
         {
            _loc1_.push(this.§_-Rs§.clone());
         }
         if(this.final != null)
         {
            _loc1_.push(this.final.clone());
         }
         if(this.§_-3Z§ != null)
         {
            _loc1_.push(this.§_-3Z§.clone());
         }
         if(this.§_-L6§ != null)
         {
            _loc1_.push(this.§_-L6§.clone());
         }
         if(this.§_-R6§ != null)
         {
            _loc2_ = this.§_-R6§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §_-Ft§(_loc1_,§_-AY§,0);
      }
      
      public function §_-6N§(param1:§_-PH§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§_-Rs§ == param1)
         {
            return 0;
         }
         if(this.final == param1)
         {
            return 1;
         }
         if(this.§_-3Z§ == param1)
         {
            return 2;
         }
         if(this.§_-L6§ == param1)
         {
            return 3;
         }
         if(this.§_-R6§ != null)
         {
            _loc2_ = this.§_-R6§.indexOf(param1 as §_-hK§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§_-PH§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§_-Rs§ == param1)
         {
            return true;
         }
         if(this.final == param1)
         {
            return true;
         }
         if(this.§_-3Z§ == param1)
         {
            return true;
         }
         if(this.§_-L6§ == param1)
         {
            return true;
         }
         if(this.§_-R6§ != null)
         {
            return this.§_-R6§.indexOf(param1 as §_-hK§) != -1;
         }
         return false;
      }
   }
}
