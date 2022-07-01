package §"c§
{
   import §6!!§.§,!B§;
   import §6!!§.§5",§;
   import §6!!§.§?t§;
   import §=!^§.§9!V§;
   import §^b§.§ E§;
   
   public class §0l§ extends §?t§ implements §5",§
   {
       
      
      private var §5z§:§,!B§;
      
      private var §!!x§:Vector.<§,!B§>;
      
      private var §^",§:§,!B§;
      
      private var §?b§:§,!B§;
      
      private var §%d§:Number = 0;
      
      private var §3t§:§,!B§;
      
      public function §0l§(param1:Array, param2:§ E§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§,!B§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §4!1§ = 0;
         if(_loc4_ > 0)
         {
            this.§5z§ = param1[0] as §,!B§;
            §4!1§ += this.§5z§.duration;
            if(_loc4_ > 1)
            {
               this.§3t§ = param1[1] as §,!B§;
               §4!1§ += this.§3t§.duration;
               if(_loc4_ > 2)
               {
                  this.§^",§ = param1[2] as §,!B§;
                  §4!1§ += this.§^",§.duration;
                  if(_loc4_ > 3)
                  {
                     this.§?b§ = param1[3] as §,!B§;
                     §4!1§ += this.§?b§.duration;
                     if(_loc4_ > 4)
                     {
                        this.§!!x§ = new Vector.<§,!B§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §,!B§;
                           this.§!!x§[_loc5_ - 4] = _loc6_;
                           §4!1§ += _loc6_.duration;
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §^H§(param1:int) : §9!V§
      {
         if(param1 < 0)
         {
            return null;
         }
         if(param1 == 0)
         {
            return this.§5z§;
         }
         if(param1 == 1)
         {
            return this.§3t§;
         }
         if(param1 == 2)
         {
            return this.§^",§;
         }
         if(param1 == 3)
         {
            return this.§?b§;
         }
         if(this.§!!x§ != null)
         {
            if(param1 - 4 < this.§!!x§.length)
            {
               return this.§!!x§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         var _loc7_:§,!B§ = null;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = this.§%d§;
         if(param1 - _loc4_ >= 0)
         {
            if(this.§5z§ != null)
            {
               if(_loc4_ <= (_loc2_ = _loc2_ + this.§5z§.duration) && _loc3_ <= param1)
               {
                  this.§5z§.update(param1 - _loc3_);
               }
               _loc3_ = _loc2_;
               if(this.§3t§ != null)
               {
                  if(_loc4_ <= (_loc2_ = _loc2_ + this.§3t§.duration) && _loc3_ <= param1)
                  {
                     this.§3t§.update(param1 - _loc3_);
                  }
                  _loc3_ = _loc2_;
                  if(this.§^",§ != null)
                  {
                     if(_loc4_ <= (_loc2_ = _loc2_ + this.§^",§.duration) && _loc3_ <= param1)
                     {
                        this.§^",§.update(param1 - _loc3_);
                     }
                     _loc3_ = _loc2_;
                     if(this.§?b§ != null)
                     {
                        if(_loc4_ <= (_loc2_ = _loc2_ + this.§?b§.duration) && _loc3_ <= param1)
                        {
                           this.§?b§.update(param1 - _loc3_);
                        }
                        _loc3_ = _loc2_;
                        if(this.§!!x§ != null)
                        {
                           _loc5_ = this.§!!x§.length;
                           _loc6_ = 0;
                           while(_loc6_ < _loc5_)
                           {
                              _loc7_ = this.§!!x§[_loc6_];
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
            _loc2_ = §4!1§;
            _loc3_ = _loc2_;
            if(this.§!!x§ != null)
            {
               _loc6_ = this.§!!x§.length - 1;
               while(_loc6_ >= 0)
               {
                  _loc7_ = this.§!!x§[_loc6_];
                  if(_loc4_ >= (_loc2_ = _loc2_ - _loc7_.duration) && _loc3_ >= param1)
                  {
                     _loc7_.update(param1 - _loc2_);
                  }
                  _loc3_ = _loc2_;
                  _loc6_--;
               }
            }
            if(this.§?b§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§?b§.duration) && _loc3_ >= param1)
               {
                  this.§?b§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§^",§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§^",§.duration) && _loc3_ >= param1)
               {
                  this.§^",§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§3t§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§3t§.duration) && _loc3_ >= param1)
               {
                  this.§3t§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
            if(this.§5z§ != null)
            {
               if(_loc4_ >= (_loc2_ = _loc2_ - this.§5z§.duration) && _loc3_ >= param1)
               {
                  this.§5z§.update(param1 - _loc2_);
               }
               _loc3_ = _loc2_;
            }
         }
         this.§%d§ = param1;
      }
      
      override protected function newInstance() : §?t§
      {
         var _loc2_:Vector.<§,!B§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§5z§ != null)
         {
            _loc1_.push(this.§5z§.clone());
         }
         if(this.§3t§ != null)
         {
            _loc1_.push(this.§3t§.clone());
         }
         if(this.§^",§ != null)
         {
            _loc1_.push(this.§^",§.clone());
         }
         if(this.§?b§ != null)
         {
            _loc1_.push(this.§?b§.clone());
         }
         if(this.§!!x§ != null)
         {
            _loc2_ = this.§!!x§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §0l§(_loc1_,§>8§,0);
      }
      
      public function §<!+§(param1:§9!V§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§5z§ == param1)
         {
            return 0;
         }
         if(this.§3t§ == param1)
         {
            return 1;
         }
         if(this.§^",§ == param1)
         {
            return 2;
         }
         if(this.§?b§ == param1)
         {
            return 3;
         }
         if(this.§!!x§ != null)
         {
            _loc2_ = this.§!!x§.indexOf(param1 as §,!B§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§9!V§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§5z§ == param1)
         {
            return true;
         }
         if(this.§3t§ == param1)
         {
            return true;
         }
         if(this.§^",§ == param1)
         {
            return true;
         }
         if(this.§?b§ == param1)
         {
            return true;
         }
         if(this.§!!x§ != null)
         {
            return this.§!!x§.indexOf(param1 as §,!B§) != -1;
         }
         return false;
      }
   }
}
