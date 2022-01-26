package §_-60§
{
   public class §_-mt§ implements §_-he§
   {
       
      
      private var §_-qa§:§_-he§;
      
      private var §_-Bz§:§_-he§;
      
      private var §_-He§:§_-he§;
      
      private var §_-j1§:§_-he§;
      
      private var §_-Jc§:Vector.<§_-he§>;
      
      private var §_-Db§:Object = null;
      
      public function §_-mt§(param1:Object, param2:Vector.<§_-he§>)
      {
         var _loc4_:uint = 0;
         super();
         this.§_-Db§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§_-qa§ = param2[0];
            if(_loc3_ >= 2)
            {
               this.§_-Bz§ = param2[1];
               if(_loc3_ >= 3)
               {
                  this.§_-He§ = param2[2];
                  if(_loc3_ >= 4)
                  {
                     this.§_-j1§ = param2[3];
                     if(_loc3_ >= 5)
                     {
                        this.§_-Jc§ = new Vector.<§_-he§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           this.§_-Jc§[_loc4_ - 4] = param2[_loc4_];
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
         var _loc2_:Vector.<§_-he§> = null;
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
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function clone() : §_-he§
      {
         var _loc2_:Vector.<§_-he§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§_-he§> = new Vector.<§_-he§>();
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
         return new §_-mt§(this.§_-Db§,_loc1_);
      }
      
      public function §_-0w§(param1:uint) : §_-he§
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
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-Db§ = param1;
      }
   }
}
