package §do §
{
   import §_-12§.§_-7l§;
   import §_-8p§.§_-dW§;
   import §_-wo§.§_-3U§;
   import §_-wo§.§_-Ff§;
   import §_-wo§.§_-g0§;
   
   public class §_-Hy§ extends §_-g0§ implements §_-3U§
   {
       
      
      private var §_-jl§:§_-Ff§;
      
      private var §_-Z5§:Vector.<§_-Ff§>;
      
      private var §_-HD§:§_-Ff§;
      
      private var §_-Xs§:§_-Ff§;
      
      private var §_-pv§:Number = 0;
      
      private var §_-rN§:§_-Ff§;
      
      public function §_-Hy§(param1:Array, param2:§_-dW§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§_-Ff§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §_-jI§ = 0;
         if(_loc4_ > 0)
         {
            this.§_-jl§ = param1[0] as §_-Ff§;
            §_-jI§ += this.§_-jl§.duration;
            if(_loc4_ > 1)
            {
               this.§_-rN§ = param1[1] as §_-Ff§;
               §_-jI§ += this.§_-rN§.duration;
               if(_loc4_ > 2)
               {
                  this.§_-HD§ = param1[2] as §_-Ff§;
                  §_-jI§ += this.§_-HD§.duration;
                  if(_loc4_ > 3)
                  {
                     this.§_-Xs§ = param1[3] as §_-Ff§;
                     §_-jI§ += this.§_-Xs§.duration;
                     if(_loc4_ > 4)
                     {
                        this.§_-Z5§ = new Vector.<§_-Ff§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §_-Ff§;
                           this.§_-Z5§[_loc5_ - 4] = _loc6_;
                           §_-jI§ += _loc6_.duration;
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §_-yW§(param1:int) : §_-7l§
      {
         if(param1 < 0)
         {
            return null;
         }
         if(param1 == 0)
         {
            return this.§_-jl§;
         }
         if(param1 == 1)
         {
            return this.§_-rN§;
         }
         if(param1 == 2)
         {
            return this.§_-HD§;
         }
         if(param1 == 3)
         {
            return this.§_-Xs§;
         }
         if(this.§_-Z5§ != null)
         {
            if(param1 - 4 < this.§_-Z5§.length)
            {
               return this.§_-Z5§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         var _loc7_:§_-Ff§ = null;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = this.§_-pv§;
         if(param1 - _loc4_ >= 0)
         {
            if(this.§_-jl§ != null)
            {
               if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-jl§.duration) && _loc3_ <= param1)
               {
                  this.§_-jl§.update(param1 - _loc3_);
               }
               _loc3_ = _loc2_;
               if(this.§_-rN§ != null)
               {
                  if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-rN§.duration) && _loc3_ <= param1)
                  {
                     this.§_-rN§.update(param1 - _loc3_);
                  }
                  _loc3_ = _loc2_;
                  if(this.§_-HD§ != null)
                  {
                     if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-HD§.duration) && _loc3_ <= param1)
                     {
                        this.§_-HD§.update(param1 - _loc3_);
                     }
                     _loc3_ = _loc2_;
                     if(this.§_-Xs§ != null)
                     {
                        if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-Xs§.duration) && _loc3_ <= param1)
                        {
                           this.§_-Xs§.update(param1 - _loc3_);
                        }
                        _loc3_ = _loc2_;
                        if(this.§_-Z5§ != null)
                        {
                           _loc5_ = this.§_-Z5§.length;
                           _loc6_ = 0;
                           while(_loc6_ < _loc5_)
                           {
                              _loc7_ = this.§_-Z5§[_loc6_];
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
            _loc2_ = §_-jI§;
            _loc3_ = _loc2_;
            if(this.§_-Z5§ != null)
            {
               _loc6_ = this.§_-Z5§.length - 1;
               while(_loc6_ >= 0)
               {
                  _loc7_ = this.§_-Z5§[_loc6_];
                  if(_loc4_ >= (_loc2_ = _loc2_ - _loc7_.duration) && _loc3_ >= param1)
                  {
                     _loc7_.update(param1 - _loc2_);
                  }
                  _loc3_ = _loc2_;
                  _loc6_--;
               }
            }
            if(this.§_-Xs§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-Xs§.duration) && _loc3_ >= param1)
               {
                  this.§_-Xs§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§_-HD§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-HD§.duration) && _loc3_ >= param1)
               {
                  this.§_-HD§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§_-rN§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-rN§.duration) && _loc3_ >= param1)
               {
                  this.§_-rN§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§_-jl§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-jl§.duration) && _loc3_ >= param1)
               {
                  this.§_-jl§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
         }
         this.§_-pv§ = param1;
      }
      
      override protected function newInstance() : §_-g0§
      {
         var _loc2_:Vector.<§_-Ff§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§_-jl§ != null)
         {
            _loc1_.push(this.§_-jl§.clone());
         }
         if(this.§_-rN§ != null)
         {
            _loc1_.push(this.§_-rN§.clone());
         }
         if(this.§_-HD§ != null)
         {
            _loc1_.push(this.§_-HD§.clone());
         }
         if(this.§_-Xs§ != null)
         {
            _loc1_.push(this.§_-Xs§.clone());
         }
         if(this.§_-Z5§ != null)
         {
            _loc2_ = this.§_-Z5§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §_-Hy§(_loc1_,§_-mw§,0);
      }
      
      public function §_-OI§(param1:§_-7l§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§_-jl§ == param1)
         {
            return 0;
         }
         if(this.§_-rN§ == param1)
         {
            return 1;
         }
         if(this.§_-HD§ == param1)
         {
            return 2;
         }
         if(this.§_-Xs§ == param1)
         {
            return 3;
         }
         if(this.§_-Z5§ != null)
         {
            _loc2_ = this.§_-Z5§.indexOf(param1 as §_-Ff§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§_-7l§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§_-jl§ == param1)
         {
            return true;
         }
         if(this.§_-rN§ == param1)
         {
            return true;
         }
         if(this.§_-HD§ == param1)
         {
            return true;
         }
         if(this.§_-Xs§ == param1)
         {
            return true;
         }
         if(this.§_-Z5§ != null)
         {
            return this.§_-Z5§.indexOf(param1 as §_-Ff§) != -1;
         }
         return false;
      }
   }
}
