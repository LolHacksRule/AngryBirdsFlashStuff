package §_-60§
{
   import §_-lT§.§_-g7§;
   
   public class §_-I7§ implements §_-HC§
   {
       
      
      private var §_-qa§:§_-HC§;
      
      private var §_-Bz§:§_-HC§;
      
      private var §_-He§:§_-HC§;
      
      private var §_-j1§:§_-HC§;
      
      private var §_-Jc§:Vector.<§_-HC§>;
      
      private var §_-Db§:Object = null;
      
      private var §_-tU§:Number = 0.0;
      
      public function §_-I7§(param1:Object, param2:Vector.<§_-HC§>)
      {
         var _loc4_:uint = 0;
         var _loc5_:§_-HC§ = null;
         super();
         this.§_-Db§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§_-qa§ = param2[0];
            if(this.§_-tU§ < this.§_-qa§.duration)
            {
               this.§_-tU§ = this.§_-qa§.duration;
            }
            if(_loc3_ >= 2)
            {
               this.§_-Bz§ = param2[1];
               if(this.§_-tU§ < this.§_-Bz§.duration)
               {
                  this.§_-tU§ = this.§_-Bz§.duration;
               }
               if(_loc3_ >= 3)
               {
                  this.§_-He§ = param2[2];
                  if(this.§_-tU§ < this.§_-He§.duration)
                  {
                     this.§_-tU§ = this.§_-He§.duration;
                  }
                  if(_loc3_ >= 4)
                  {
                     this.§_-j1§ = param2[3];
                     if(this.§_-tU§ < this.§_-j1§.duration)
                     {
                        this.§_-tU§ = this.§_-j1§.duration;
                     }
                     if(_loc3_ >= 5)
                     {
                        this.§_-Jc§ = new Vector.<§_-HC§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           _loc5_ = param2[_loc4_];
                           this.§_-Jc§[_loc4_ - 4] = _loc5_;
                           if(this.§_-tU§ < _loc5_.duration)
                           {
                              this.§_-tU§ = _loc5_.duration;
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
         var _loc2_:Vector.<§_-HC§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§_-qa§ != null)
         {
            this.§_-qa§.update(param1);
            if(this.§_-Bz§ != null)
            {
               this.§_-Bz§.update(param1);
               if(this.§_-He§ != null)
               {
                  this.§_-He§.update(param1);
                  if(this.§_-j1§ != null)
                  {
                     this.§_-j1§.update(param1);
                     if(this.§_-Jc§ != null)
                     {
                        _loc2_ = this.§_-Jc§;
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
         return this.§_-Db§;
      }
      
      public function get duration() : Number
      {
         return this.§_-tU§;
      }
      
      public function set §_-H9§(param1:§_-g7§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function §_-0w§(param1:uint) : §_-HC§
      {
         if(param1 == 0)
         {
            return this.§_-qa§;
         }
         if(param1 == 1)
         {
            return this.§_-Bz§;
         }
         if(param1 == 2)
         {
            return this.§_-He§;
         }
         if(param1 == 3)
         {
            return this.§_-j1§;
         }
         return this.§_-Jc§[param1 - 4];
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-Db§ = param1;
      }
      
      public function get §_-H9§() : §_-g7§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-he§
      {
         var _loc2_:Vector.<§_-HC§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§_-HC§> = new Vector.<§_-HC§>();
         if(this.§_-qa§ != null)
         {
            _loc1_.push(this.§_-qa§.clone());
            if(this.§_-Bz§ != null)
            {
               _loc1_.push(this.§_-Bz§.clone());
               if(this.§_-He§ != null)
               {
                  _loc1_.push(this.§_-He§.clone());
                  if(this.§_-j1§ != null)
                  {
                     _loc1_.push(this.§_-j1§.clone());
                     if(this.§_-Jc§ != null)
                     {
                        _loc2_ = this.§_-Jc§;
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
         return new §_-I7§(this.§_-Db§,_loc1_);
      }
   }
}
