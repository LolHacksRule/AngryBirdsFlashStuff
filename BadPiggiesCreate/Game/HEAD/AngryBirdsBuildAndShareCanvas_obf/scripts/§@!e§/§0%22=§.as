package §@!e§
{
   import §%!n§.§;!'§;
   import §]6§.§[f§;
   import §`!#§.§;D§;
   import §`!#§.§?f§;
   import §`!#§.§[!O§;
   
   public class §0"=§ extends §[!O§ implements §;D§
   {
       
      
      private var §2!+§:§?f§;
      
      private var §2!c§:Vector.<§?f§>;
      
      private var §%!O§:§?f§;
      
      private var §5I§:§?f§;
      
      private var §@!2§:Number = 0;
      
      private var §2c§:§?f§;
      
      public function §0"=§(param1:Array, param2:§;!'§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§?f§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §!"-§ = 0;
         if(_loc4_ > 0)
         {
            this.§2!+§ = param1[0] as §?f§;
            §!"-§ += this.§2!+§.duration;
            if(_loc4_ > 1)
            {
               this.§2c§ = param1[1] as §?f§;
               §!"-§ += this.§2c§.duration;
               if(_loc4_ > 2)
               {
                  this.§%!O§ = param1[2] as §?f§;
                  §!"-§ += this.§%!O§.duration;
                  if(_loc4_ > 3)
                  {
                     this.§5I§ = param1[3] as §?f§;
                     §!"-§ += this.§5I§.duration;
                     if(_loc4_ > 4)
                     {
                        this.§2!c§ = new Vector.<§?f§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §?f§;
                           this.§2!c§[_loc5_ - 4] = _loc6_;
                           §!"-§ += _loc6_.duration;
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §2!K§(param1:int) : §[f§
      {
         if(param1 < 0)
         {
            return null;
         }
         if(param1 == 0)
         {
            return this.§2!+§;
         }
         if(param1 == 1)
         {
            return this.§2c§;
         }
         if(param1 == 2)
         {
            return this.§%!O§;
         }
         if(param1 == 3)
         {
            return this.§5I§;
         }
         if(this.§2!c§ != null)
         {
            if(param1 - 4 < this.§2!c§.length)
            {
               return this.§2!c§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         var _loc7_:§?f§ = null;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = this.§@!2§;
         if(param1 - _loc4_ >= 0)
         {
            if(this.§2!+§ != null)
            {
               if(_loc4_ <= (_loc2_ = _loc2_ + this.§2!+§.duration) && _loc3_ <= param1)
               {
                  this.§2!+§.update(param1 - _loc3_);
               }
               _loc3_ = _loc2_;
               if(this.§2c§ != null)
               {
                  if(_loc4_ <= (_loc2_ = _loc2_ + this.§2c§.duration) && _loc3_ <= param1)
                  {
                     this.§2c§.update(param1 - _loc3_);
                  }
                  _loc3_ = _loc2_;
                  if(this.§%!O§ != null)
                  {
                     if(_loc4_ <= (_loc2_ = _loc2_ + this.§%!O§.duration) && _loc3_ <= param1)
                     {
                        this.§%!O§.update(param1 - _loc3_);
                     }
                     _loc3_ = _loc2_;
                     if(this.§5I§ != null)
                     {
                        if(_loc4_ <= (_loc2_ = _loc2_ + this.§5I§.duration) && _loc3_ <= param1)
                        {
                           this.§5I§.update(param1 - _loc3_);
                        }
                        _loc3_ = _loc2_;
                        if(this.§2!c§ != null)
                        {
                           _loc5_ = this.§2!c§.length;
                           _loc6_ = 0;
                           while(_loc6_ < _loc5_)
                           {
                              _loc7_ = this.§2!c§[_loc6_];
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
            _loc2_ = §!"-§;
            _loc3_ = _loc2_;
            if(this.§2!c§ != null)
            {
               _loc6_ = this.§2!c§.length - 1;
               while(_loc6_ >= 0)
               {
                  _loc7_ = this.§2!c§[_loc6_];
                  if(_loc4_ >= (_loc2_ = _loc2_ - _loc7_.duration) && _loc3_ >= param1)
                  {
                     _loc7_.update(param1 - _loc2_);
                  }
                  _loc3_ = _loc2_;
                  _loc6_--;
               }
            }
            if(this.§5I§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§5I§.duration) && _loc3_ >= param1)
               {
                  this.§5I§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§%!O§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§%!O§.duration) && _loc3_ >= param1)
               {
                  this.§%!O§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§2c§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§2c§.duration) && _loc3_ >= param1)
               {
                  this.§2c§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§2!+§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§2!+§.duration) && _loc3_ >= param1)
               {
                  this.§2!+§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
         }
         this.§@!2§ = param1;
      }
      
      override protected function newInstance() : §[!O§
      {
         var _loc2_:Vector.<§?f§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§2!+§ != null)
         {
            _loc1_.push(this.§2!+§.clone());
         }
         if(this.§2c§ != null)
         {
            _loc1_.push(this.§2c§.clone());
         }
         if(this.§%!O§ != null)
         {
            _loc1_.push(this.§%!O§.clone());
         }
         if(this.§5I§ != null)
         {
            _loc1_.push(this.§5I§.clone());
         }
         if(this.§2!c§ != null)
         {
            _loc2_ = this.§2!c§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §0"=§(_loc1_,§!"$§,0);
      }
      
      public function §^!0§(param1:§[f§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§2!+§ == param1)
         {
            return 0;
         }
         if(this.§2c§ == param1)
         {
            return 1;
         }
         if(this.§%!O§ == param1)
         {
            return 2;
         }
         if(this.§5I§ == param1)
         {
            return 3;
         }
         if(this.§2!c§ != null)
         {
            _loc2_ = this.§2!c§.indexOf(param1 as §?f§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§[f§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§2!+§ == param1)
         {
            return true;
         }
         if(this.§2c§ == param1)
         {
            return true;
         }
         if(this.§%!O§ == param1)
         {
            return true;
         }
         if(this.§5I§ == param1)
         {
            return true;
         }
         if(this.§2!c§ != null)
         {
            return this.§2!c§.indexOf(param1 as §?f§) != -1;
         }
         return false;
      }
   }
}
