package §4H§
{
   import §'!D§.§&s§;
   import §'!D§.§9!W§;
   import §'!D§.§<!y§;
   import §["6§.§@D§;
   import §]!N§.§7"3§;
   
   public class §8r§ extends §9!W§ implements §<!y§
   {
       
      
      private var §>-§:§&s§;
      
      private var §7!<§:Vector.<§&s§>;
      
      private var §6?§:§&s§;
      
      private var §=G§:§&s§;
      
      private var §4S§:Number = 0;
      
      private var §^"1§:§&s§;
      
      public function §8r§(param1:Array, param2:§@D§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§&s§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §4!V§ = 0;
         if(_loc4_ > 0)
         {
            this.§>-§ = param1[0] as §&s§;
            §4!V§ += this.§>-§.duration;
            if(_loc4_ > 1)
            {
               this.§^"1§ = param1[1] as §&s§;
               §4!V§ += this.§^"1§.duration;
               if(_loc4_ > 2)
               {
                  this.§6?§ = param1[2] as §&s§;
                  §4!V§ += this.§6?§.duration;
                  if(_loc4_ > 3)
                  {
                     this.§=G§ = param1[3] as §&s§;
                     §4!V§ += this.§=G§.duration;
                     if(_loc4_ > 4)
                     {
                        this.§7!<§ = new Vector.<§&s§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §&s§;
                           this.§7!<§[_loc5_ - 4] = _loc6_;
                           §4!V§ += _loc6_.duration;
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §4!@§(param1:int) : §7"3§
      {
         if(param1 < 0)
         {
            return null;
         }
         if(param1 == 0)
         {
            return this.§>-§;
         }
         if(param1 == 1)
         {
            return this.§^"1§;
         }
         if(param1 == 2)
         {
            return this.§6?§;
         }
         if(param1 == 3)
         {
            return this.§=G§;
         }
         if(this.§7!<§ != null)
         {
            if(param1 - 4 < this.§7!<§.length)
            {
               return this.§7!<§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         var _loc7_:§&s§ = null;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = this.§4S§;
         if(param1 - _loc4_ >= 0)
         {
            if(this.§>-§ != null)
            {
               if(_loc4_ <= (_loc2_ = _loc2_ + this.§>-§.duration) && _loc3_ <= param1)
               {
                  this.§>-§.update(param1 - _loc3_);
               }
               _loc3_ = _loc2_;
               if(this.§^"1§ != null)
               {
                  if(_loc4_ <= (_loc2_ = _loc2_ + this.§^"1§.duration) && _loc3_ <= param1)
                  {
                     this.§^"1§.update(param1 - _loc3_);
                  }
                  _loc3_ = _loc2_;
                  if(this.§6?§ != null)
                  {
                     if(_loc4_ <= (_loc2_ = _loc2_ + this.§6?§.duration) && _loc3_ <= param1)
                     {
                        this.§6?§.update(param1 - _loc3_);
                     }
                     _loc3_ = _loc2_;
                     if(this.§=G§ != null)
                     {
                        if(_loc4_ <= (_loc2_ = _loc2_ + this.§=G§.duration) && _loc3_ <= param1)
                        {
                           this.§=G§.update(param1 - _loc3_);
                        }
                        _loc3_ = _loc2_;
                        if(this.§7!<§ != null)
                        {
                           _loc5_ = this.§7!<§.length;
                           _loc6_ = 0;
                           while(_loc6_ < _loc5_)
                           {
                              _loc7_ = this.§7!<§[_loc6_];
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
            _loc2_ = §4!V§;
            _loc3_ = _loc2_;
            if(this.§7!<§ != null)
            {
               _loc6_ = this.§7!<§.length - 1;
               while(_loc6_ >= 0)
               {
                  _loc7_ = this.§7!<§[_loc6_];
                  if(_loc4_ >= (_loc2_ = _loc2_ - _loc7_.duration) && _loc3_ >= param1)
                  {
                     _loc7_.update(param1 - _loc2_);
                  }
                  _loc3_ = _loc2_;
                  _loc6_--;
               }
            }
            if(this.§=G§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§=G§.duration) && _loc3_ >= param1)
               {
                  this.§=G§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§6?§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§6?§.duration) && _loc3_ >= param1)
               {
                  this.§6?§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§^"1§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§^"1§.duration) && _loc3_ >= param1)
               {
                  this.§^"1§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§>-§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§>-§.duration) && _loc3_ >= param1)
               {
                  this.§>-§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
         }
         this.§4S§ = param1;
      }
      
      override protected function newInstance() : §9!W§
      {
         var _loc2_:Vector.<§&s§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§>-§ != null)
         {
            _loc1_.push(this.§>-§.clone());
         }
         if(this.§^"1§ != null)
         {
            _loc1_.push(this.§^"1§.clone());
         }
         if(this.§6?§ != null)
         {
            _loc1_.push(this.§6?§.clone());
         }
         if(this.§=G§ != null)
         {
            _loc1_.push(this.§=G§.clone());
         }
         if(this.§7!<§ != null)
         {
            _loc2_ = this.§7!<§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §8r§(_loc1_,§%!H§,0);
      }
      
      public function §!!A§(param1:§7"3§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§>-§ == param1)
         {
            return 0;
         }
         if(this.§^"1§ == param1)
         {
            return 1;
         }
         if(this.§6?§ == param1)
         {
            return 2;
         }
         if(this.§=G§ == param1)
         {
            return 3;
         }
         if(this.§7!<§ != null)
         {
            _loc2_ = this.§7!<§.indexOf(param1 as §&s§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§7"3§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§>-§ == param1)
         {
            return true;
         }
         if(this.§^"1§ == param1)
         {
            return true;
         }
         if(this.§6?§ == param1)
         {
            return true;
         }
         if(this.§=G§ == param1)
         {
            return true;
         }
         if(this.§7!<§ != null)
         {
            return this.§7!<§.indexOf(param1 as §&s§) != -1;
         }
         return false;
      }
   }
}
