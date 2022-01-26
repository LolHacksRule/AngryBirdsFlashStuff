package §_-DH§
{
   import §_-kn§.§_-kA§;
   
   public class §_-Yt§ implements §_-Rt§
   {
       
      
      private var §_-jl§:§_-Rt§;
      
      private var §_-rN§:§_-Rt§;
      
      private var §_-HD§:§_-Rt§;
      
      private var §_-Xs§:§_-Rt§;
      
      private var §_-3w§:Vector.<§_-Rt§>;
      
      private var §_-lg§:Object = null;
      
      private var §_-jI§:Number = 0.0;
      
      public function §_-Yt§(param1:Object, param2:Vector.<§_-Rt§>)
      {
         var _loc4_:uint = 0;
         var _loc5_:§_-Rt§ = null;
         super();
         this.§_-lg§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§_-jl§ = param2[0];
            if(this.§_-jI§ < this.§_-jl§.duration)
            {
               this.§_-jI§ = this.§_-jl§.duration;
            }
            if(_loc3_ >= 2)
            {
               this.§_-rN§ = param2[1];
               if(this.§_-jI§ < this.§_-rN§.duration)
               {
                  this.§_-jI§ = this.§_-rN§.duration;
               }
               if(_loc3_ >= 3)
               {
                  this.§_-HD§ = param2[2];
                  if(this.§_-jI§ < this.§_-HD§.duration)
                  {
                     this.§_-jI§ = this.§_-HD§.duration;
                  }
                  if(_loc3_ >= 4)
                  {
                     this.§_-Xs§ = param2[3];
                     if(this.§_-jI§ < this.§_-Xs§.duration)
                     {
                        this.§_-jI§ = this.§_-Xs§.duration;
                     }
                     if(_loc3_ >= 5)
                     {
                        this.§_-3w§ = new Vector.<§_-Rt§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           _loc5_ = param2[_loc4_];
                           this.§_-3w§[_loc4_ - 4] = _loc5_;
                           if(this.§_-jI§ < _loc5_.duration)
                           {
                              this.§_-jI§ = _loc5_.duration;
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
         var _loc2_:Vector.<§_-Rt§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§_-jl§ != null)
         {
            this.§_-jl§.update(param1);
            if(this.§_-rN§ != null)
            {
               this.§_-rN§.update(param1);
               if(this.§_-HD§ != null)
               {
                  this.§_-HD§.update(param1);
                  if(this.§_-Xs§ != null)
                  {
                     this.§_-Xs§.update(param1);
                     if(this.§_-3w§ != null)
                     {
                        _loc2_ = this.§_-3w§;
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
         return this.§_-lg§;
      }
      
      public function get duration() : Number
      {
         return this.§_-jI§;
      }
      
      public function set §_-Bi§(param1:§_-kA§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function §_-AI§(param1:uint) : §_-Rt§
      {
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
         return this.§_-3w§[param1 - 4];
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-lg§ = param1;
      }
      
      public function get §_-Bi§() : §_-kA§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-AO§
      {
         var _loc2_:Vector.<§_-Rt§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§_-Rt§> = new Vector.<§_-Rt§>();
         if(this.§_-jl§ != null)
         {
            _loc1_.push(this.§_-jl§.clone());
            if(this.§_-rN§ != null)
            {
               _loc1_.push(this.§_-rN§.clone());
               if(this.§_-HD§ != null)
               {
                  _loc1_.push(this.§_-HD§.clone());
                  if(this.§_-Xs§ != null)
                  {
                     _loc1_.push(this.§_-Xs§.clone());
                     if(this.§_-3w§ != null)
                     {
                        _loc2_ = this.§_-3w§;
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
         return new §_-Yt§(this.§_-lg§,_loc1_);
      }
   }
}
