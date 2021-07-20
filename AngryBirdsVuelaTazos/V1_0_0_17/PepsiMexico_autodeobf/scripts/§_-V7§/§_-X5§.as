package §_-V7§
{
   public class §_-X5§ implements §_-S1§
   {
       
      
      private var §_-yF§:§_-S1§;
      
      private var §_-sZ§:§_-S1§;
      
      private var §_-bd§:§_-S1§;
      
      private var §_-qK§:§_-S1§;
      
      private var §_-dw§:Vector.<§_-S1§>;
      
      private var §_-9Z§:Object = null;
      
      public function §_-X5§(param1:Object, param2:Vector.<§_-S1§>)
      {
         var _loc4_:uint = 0;
         super();
         this.§_-9Z§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§_-yF§ = param2[0];
            if(_loc3_ >= 2)
            {
               this.§_-sZ§ = param2[1];
               if(_loc3_ >= 3)
               {
                  this.§_-bd§ = param2[2];
                  if(_loc3_ >= 4)
                  {
                     this.§_-qK§ = param2[3];
                     if(_loc3_ >= 5)
                     {
                        this.§_-dw§ = new Vector.<§_-S1§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           this.§_-dw§[_loc4_ - 4] = param2[_loc4_];
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
         var _loc2_:Vector.<§_-S1§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§_-yF§ != null)
         {
            this.§_-yF§.update(param1);
            if(this.§_-sZ§ != null)
            {
               this.§_-sZ§.update(param1);
               if(this.§_-bd§ != null)
               {
                  this.§_-bd§.update(param1);
                  if(this.§_-qK§ != null)
                  {
                     this.§_-qK§.update(param1);
                     if(this.§_-dw§ != null)
                     {
                        _loc2_ = this.§_-dw§;
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
         return this.§_-9Z§;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function clone() : §_-S1§
      {
         var _loc2_:Vector.<§_-S1§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§_-S1§> = new Vector.<§_-S1§>();
         if(this.§_-yF§ != null)
         {
            _loc1_.push(this.§_-yF§.clone());
            if(this.§_-sZ§ != null)
            {
               _loc1_.push(this.§_-sZ§.clone());
               if(this.§_-bd§ != null)
               {
                  _loc1_.push(this.§_-bd§.clone());
                  if(this.§_-qK§ != null)
                  {
                     _loc1_.push(this.§_-qK§.clone());
                     if(this.§_-dw§ != null)
                     {
                        _loc2_ = this.§_-dw§;
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
         return new §_-X5§(this.§_-9Z§,_loc1_);
      }
      
      public function §_-6Z§(param1:uint) : §_-S1§
      {
         if(param1 == 0)
         {
            return this.§_-yF§;
         }
         if(param1 == 1)
         {
            return this.§_-sZ§;
         }
         if(param1 == 2)
         {
            return this.§_-bd§;
         }
         if(param1 == 3)
         {
            return this.§_-qK§;
         }
         return this.§_-dw§[param1 - 4];
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-9Z§ = param1;
      }
   }
}
