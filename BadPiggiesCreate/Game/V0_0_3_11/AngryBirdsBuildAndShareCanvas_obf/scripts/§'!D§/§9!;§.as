package §'!D§
{
   import §1&§.§!!W§;
   import §1&§.§?!i§;
   import §1&§.§[!2§;
   import §4s§.§>P§;
   import §8!X§.§7'§;
   
   public class §9!;§ extends §?!i§ implements §[!2§
   {
       
      
      private var §?@§:§!!W§;
      
      private var §<!s§:Vector.<§!!W§>;
      
      private var §["2§:§!!W§;
      
      private var §4!s§:§!!W§;
      
      private var §?!j§:Number = 0;
      
      private var §9!U§:§!!W§;
      
      public function §9!;§(param1:Array, param2:§7'§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§!!W§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §['§ = 0;
         if(_loc4_ > 0)
         {
            this.§?@§ = param1[0] as §!!W§;
            §['§ += this.§?@§.duration;
            if(_loc4_ > 1)
            {
               this.§9!U§ = param1[1] as §!!W§;
               §['§ += this.§9!U§.duration;
               if(_loc4_ > 2)
               {
                  this.§["2§ = param1[2] as §!!W§;
                  §['§ += this.§["2§.duration;
                  if(_loc4_ > 3)
                  {
                     this.§4!s§ = param1[3] as §!!W§;
                     §['§ += this.§4!s§.duration;
                     if(_loc4_ > 4)
                     {
                        this.§<!s§ = new Vector.<§!!W§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §!!W§;
                           this.§<!s§[_loc5_ - 4] = _loc6_;
                           §['§ += _loc6_.duration;
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §[a§(param1:int) : §>P§
      {
         if(param1 < 0)
         {
            return null;
         }
         if(param1 == 0)
         {
            return this.§?@§;
         }
         if(param1 == 1)
         {
            return this.§9!U§;
         }
         if(param1 == 2)
         {
            return this.§["2§;
         }
         if(param1 == 3)
         {
            return this.§4!s§;
         }
         if(this.§<!s§ != null)
         {
            if(param1 - 4 < this.§<!s§.length)
            {
               return this.§<!s§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         var _loc7_:§!!W§ = null;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = this.§?!j§;
         if(param1 - _loc4_ >= 0)
         {
            if(this.§?@§ != null)
            {
               if(_loc4_ <= (_loc2_ = _loc2_ + this.§?@§.duration) && _loc3_ <= param1)
               {
                  this.§?@§.update(param1 - _loc3_);
               }
               _loc3_ = _loc2_;
               if(this.§9!U§ != null)
               {
                  if(_loc4_ <= (_loc2_ = _loc2_ + this.§9!U§.duration) && _loc3_ <= param1)
                  {
                     this.§9!U§.update(param1 - _loc3_);
                  }
                  _loc3_ = _loc2_;
                  if(this.§["2§ != null)
                  {
                     if(_loc4_ <= (_loc2_ = _loc2_ + this.§["2§.duration) && _loc3_ <= param1)
                     {
                        this.§["2§.update(param1 - _loc3_);
                     }
                     _loc3_ = _loc2_;
                     if(this.§4!s§ != null)
                     {
                        if(_loc4_ <= (_loc2_ = _loc2_ + this.§4!s§.duration) && _loc3_ <= param1)
                        {
                           this.§4!s§.update(param1 - _loc3_);
                        }
                        _loc3_ = _loc2_;
                        if(this.§<!s§ != null)
                        {
                           _loc5_ = this.§<!s§.length;
                           _loc6_ = 0;
                           while(_loc6_ < _loc5_)
                           {
                              _loc7_ = this.§<!s§[_loc6_];
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
            _loc2_ = §['§;
            _loc3_ = _loc2_;
            if(this.§<!s§ != null)
            {
               _loc6_ = this.§<!s§.length - 1;
               while(_loc6_ >= 0)
               {
                  _loc7_ = this.§<!s§[_loc6_];
                  if(_loc4_ >= (_loc2_ = _loc2_ - _loc7_.duration) && _loc3_ >= param1)
                  {
                     _loc7_.update(param1 - _loc2_);
                  }
                  _loc3_ = _loc2_;
                  _loc6_--;
               }
            }
            if(this.§4!s§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§4!s§.duration) && _loc3_ >= param1)
               {
                  this.§4!s§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§["2§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§["2§.duration) && _loc3_ >= param1)
               {
                  this.§["2§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§9!U§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§9!U§.duration) && _loc3_ >= param1)
               {
                  this.§9!U§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§?@§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§?@§.duration) && _loc3_ >= param1)
               {
                  this.§?@§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
         }
         this.§?!j§ = param1;
      }
      
      override protected function newInstance() : §?!i§
      {
         var _loc2_:Vector.<§!!W§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§?@§ != null)
         {
            _loc1_.push(this.§?@§.clone());
         }
         if(this.§9!U§ != null)
         {
            _loc1_.push(this.§9!U§.clone());
         }
         if(this.§["2§ != null)
         {
            _loc1_.push(this.§["2§.clone());
         }
         if(this.§4!s§ != null)
         {
            _loc1_.push(this.§4!s§.clone());
         }
         if(this.§<!s§ != null)
         {
            _loc2_ = this.§<!s§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §9!;§(_loc1_,§!H§,0);
      }
      
      public function §^B§(param1:§>P§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§?@§ == param1)
         {
            return 0;
         }
         if(this.§9!U§ == param1)
         {
            return 1;
         }
         if(this.§["2§ == param1)
         {
            return 2;
         }
         if(this.§4!s§ == param1)
         {
            return 3;
         }
         if(this.§<!s§ != null)
         {
            _loc2_ = this.§<!s§.indexOf(param1 as §!!W§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§>P§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§?@§ == param1)
         {
            return true;
         }
         if(this.§9!U§ == param1)
         {
            return true;
         }
         if(this.§["2§ == param1)
         {
            return true;
         }
         if(this.§4!s§ == param1)
         {
            return true;
         }
         if(this.§<!s§ != null)
         {
            return this.§<!s§.indexOf(param1 as §!!W§) != -1;
         }
         return false;
      }
   }
}
