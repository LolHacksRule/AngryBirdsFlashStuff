package §_-D8§
{
   import §_-7X§.§_-R-§;
   
   public class §_-TK§ implements §_-mB§
   {
       
      
      private var §_-qn§:§_-mB§;
      
      private var §_-v§:§_-mB§;
      
      private var §import§:§_-mB§;
      
      private var §_-gj§:§_-mB§;
      
      private var §_-3O§:Vector.<§_-mB§>;
      
      private var §_-x7§:Object = null;
      
      private var §_-hZ§:Number = 0.0;
      
      public function §_-TK§(param1:Object, param2:Vector.<§_-mB§>)
      {
         var _loc4_:uint = 0;
         var _loc5_:§_-mB§ = null;
         super();
         this.§_-x7§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§_-qn§ = param2[0];
            if(this.§_-hZ§ < this.§_-qn§.duration)
            {
               this.§_-hZ§ = this.§_-qn§.duration;
            }
            if(_loc3_ >= 2)
            {
               this.§_-v§ = param2[1];
               if(this.§_-hZ§ < this.§_-v§.duration)
               {
                  this.§_-hZ§ = this.§_-v§.duration;
               }
               if(_loc3_ >= 3)
               {
                  this.§import§ = param2[2];
                  if(this.§_-hZ§ < this.§import§.duration)
                  {
                     this.§_-hZ§ = this.§import§.duration;
                  }
                  if(_loc3_ >= 4)
                  {
                     this.§_-gj§ = param2[3];
                     if(this.§_-hZ§ < this.§_-gj§.duration)
                     {
                        this.§_-hZ§ = this.§_-gj§.duration;
                     }
                     if(_loc3_ >= 5)
                     {
                        this.§_-3O§ = new Vector.<§_-mB§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           _loc5_ = param2[_loc4_];
                           this.§_-3O§[_loc4_ - 4] = _loc5_;
                           if(this.§_-hZ§ < _loc5_.duration)
                           {
                              this.§_-hZ§ = _loc5_.duration;
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
         var _loc2_:Vector.<§_-mB§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§_-qn§ != null)
         {
            this.§_-qn§.update(param1);
            if(this.§_-v§ != null)
            {
               this.§_-v§.update(param1);
               if(this.§import§ != null)
               {
                  this.§import§.update(param1);
                  if(this.§_-gj§ != null)
                  {
                     this.§_-gj§.update(param1);
                     if(this.§_-3O§ != null)
                     {
                        _loc2_ = this.§_-3O§;
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
         return this.§_-x7§;
      }
      
      public function get duration() : Number
      {
         return this.§_-hZ§;
      }
      
      public function set §_-HB§(param1:§_-R-§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function §_-fm§(param1:uint) : §_-mB§
      {
         if(param1 == 0)
         {
            return this.§_-qn§;
         }
         if(param1 == 1)
         {
            return this.§_-v§;
         }
         if(param1 == 2)
         {
            return this.§import§;
         }
         if(param1 == 3)
         {
            return this.§_-gj§;
         }
         return this.§_-3O§[param1 - 4];
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-x7§ = param1;
      }
      
      public function get §_-HB§() : §_-R-§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-LY§
      {
         var _loc2_:Vector.<§_-mB§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§_-mB§> = new Vector.<§_-mB§>();
         if(this.§_-qn§ != null)
         {
            _loc1_.push(this.§_-qn§.clone());
            if(this.§_-v§ != null)
            {
               _loc1_.push(this.§_-v§.clone());
               if(this.§import§ != null)
               {
                  _loc1_.push(this.§import§.clone());
                  if(this.§_-gj§ != null)
                  {
                     _loc1_.push(this.§_-gj§.clone());
                     if(this.§_-3O§ != null)
                     {
                        _loc2_ = this.§_-3O§;
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
         return new §_-TK§(this.§_-x7§,_loc1_);
      }
   }
}
