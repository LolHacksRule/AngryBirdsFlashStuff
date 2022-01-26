package §_-6M§
{
   import §_-Kj§.§_-8u§;
   import §_-SJ§.§_-Q5§;
   import §_-sN§.§_-b8§;
   import §_-sN§.§_-vj§;
   import §_-sN§.§_-x5§;
   
   public class §_-hl§ extends §_-b8§ implements §_-vj§
   {
       
      
      private var §_-1t§:§_-x5§;
      
      private var §_-el§:Vector.<§_-x5§>;
      
      private var §_-vc§:§_-x5§;
      
      private var §_-Pp§:§_-x5§;
      
      private var §_-m0§:Number = 0;
      
      private var §_-K2§:§_-x5§;
      
      public function §_-hl§(param1:Array, param2:§_-Q5§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§_-x5§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §_-sA§ = 0;
         if(_loc4_ > 0)
         {
            this.§_-1t§ = param1[0] as §_-x5§;
            §_-sA§ += this.§_-1t§.duration;
            if(_loc4_ > 1)
            {
               this.§_-K2§ = param1[1] as §_-x5§;
               §_-sA§ += this.§_-K2§.duration;
               if(_loc4_ > 2)
               {
                  this.§_-vc§ = param1[2] as §_-x5§;
                  §_-sA§ += this.§_-vc§.duration;
                  if(_loc4_ > 3)
                  {
                     this.§_-Pp§ = param1[3] as §_-x5§;
                     §_-sA§ += this.§_-Pp§.duration;
                     if(_loc4_ > 4)
                     {
                        this.§_-el§ = new Vector.<§_-x5§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §_-x5§;
                           this.§_-el§[_loc5_ - 4] = _loc6_;
                           §_-sA§ += _loc6_.duration;
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §_-gN§(param1:int) : §_-8u§
      {
         if(param1 < 0)
         {
            return null;
         }
         if(param1 == 0)
         {
            return this.§_-1t§;
         }
         if(param1 == 1)
         {
            return this.§_-K2§;
         }
         if(param1 == 2)
         {
            return this.§_-vc§;
         }
         if(param1 == 3)
         {
            return this.§_-Pp§;
         }
         if(this.§_-el§ != null)
         {
            if(param1 - 4 < this.§_-el§.length)
            {
               return this.§_-el§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         var _loc7_:§_-x5§ = null;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = this.§_-m0§;
         if(param1 - _loc4_ >= 0)
         {
            if(this.§_-1t§ != null)
            {
               if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-1t§.duration) && _loc3_ <= param1)
               {
                  this.§_-1t§.update(param1 - _loc3_);
               }
               _loc3_ = _loc2_;
               if(this.§_-K2§ != null)
               {
                  if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-K2§.duration) && _loc3_ <= param1)
                  {
                     this.§_-K2§.update(param1 - _loc3_);
                  }
                  _loc3_ = _loc2_;
                  if(this.§_-vc§ != null)
                  {
                     if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-vc§.duration) && _loc3_ <= param1)
                     {
                        this.§_-vc§.update(param1 - _loc3_);
                     }
                     _loc3_ = _loc2_;
                     if(this.§_-Pp§ != null)
                     {
                        if(_loc4_ <= (_loc2_ = _loc2_ + this.§_-Pp§.duration) && _loc3_ <= param1)
                        {
                           this.§_-Pp§.update(param1 - _loc3_);
                        }
                        _loc3_ = _loc2_;
                        if(this.§_-el§ != null)
                        {
                           _loc5_ = this.§_-el§.length;
                           _loc6_ = 0;
                           while(_loc6_ < _loc5_)
                           {
                              _loc7_ = this.§_-el§[_loc6_];
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
            _loc2_ = §_-sA§;
            _loc3_ = _loc2_;
            if(this.§_-el§ != null)
            {
               _loc6_ = this.§_-el§.length - 1;
               while(_loc6_ >= 0)
               {
                  _loc7_ = this.§_-el§[_loc6_];
                  if(_loc4_ >= (_loc2_ = _loc2_ - _loc7_.duration) && _loc3_ >= param1)
                  {
                     _loc7_.update(param1 - _loc2_);
                  }
                  _loc3_ = _loc2_;
                  _loc6_--;
               }
            }
            if(this.§_-Pp§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-Pp§.duration) && _loc3_ >= param1)
               {
                  this.§_-Pp§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§_-vc§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-vc§.duration) && _loc3_ >= param1)
               {
                  this.§_-vc§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§_-K2§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-K2§.duration) && _loc3_ >= param1)
               {
                  this.§_-K2§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§_-1t§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§_-1t§.duration) && _loc3_ >= param1)
               {
                  this.§_-1t§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
         }
         this.§_-m0§ = param1;
      }
      
      override protected function newInstance() : §_-b8§
      {
         var _loc2_:Vector.<§_-x5§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§_-1t§ != null)
         {
            _loc1_.push(this.§_-1t§.clone());
         }
         if(this.§_-K2§ != null)
         {
            _loc1_.push(this.§_-K2§.clone());
         }
         if(this.§_-vc§ != null)
         {
            _loc1_.push(this.§_-vc§.clone());
         }
         if(this.§_-Pp§ != null)
         {
            _loc1_.push(this.§_-Pp§.clone());
         }
         if(this.§_-el§ != null)
         {
            _loc2_ = this.§_-el§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §_-hl§(_loc1_,§_-ti§,0);
      }
      
      public function §_-Zm§(param1:§_-8u§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§_-1t§ == param1)
         {
            return 0;
         }
         if(this.§_-K2§ == param1)
         {
            return 1;
         }
         if(this.§_-vc§ == param1)
         {
            return 2;
         }
         if(this.§_-Pp§ == param1)
         {
            return 3;
         }
         if(this.§_-el§ != null)
         {
            _loc2_ = this.§_-el§.indexOf(param1 as §_-x5§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§_-8u§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§_-1t§ == param1)
         {
            return true;
         }
         if(this.§_-K2§ == param1)
         {
            return true;
         }
         if(this.§_-vc§ == param1)
         {
            return true;
         }
         if(this.§_-Pp§ == param1)
         {
            return true;
         }
         if(this.§_-el§ != null)
         {
            return this.§_-el§.indexOf(param1 as §_-x5§) != -1;
         }
         return false;
      }
   }
}
