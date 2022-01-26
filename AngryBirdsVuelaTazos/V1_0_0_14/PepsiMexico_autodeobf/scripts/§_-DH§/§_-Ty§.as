package §_-DH§
{
   public class §_-Ty§ implements §_-AO§
   {
       
      
      private var §_-jl§:§_-AO§;
      
      private var §_-rN§:§_-AO§;
      
      private var §_-HD§:§_-AO§;
      
      private var §_-Xs§:§_-AO§;
      
      private var §_-3w§:Vector.<§_-AO§>;
      
      private var §_-lg§:Object = null;
      
      public function §_-Ty§(param1:Object, param2:Vector.<§_-AO§>)
      {
         var _loc4_:uint = 0;
         super();
         this.§_-lg§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§_-jl§ = param2[0];
            if(_loc3_ >= 2)
            {
               this.§_-rN§ = param2[1];
               if(_loc3_ >= 3)
               {
                  this.§_-HD§ = param2[2];
                  if(_loc3_ >= 4)
                  {
                     this.§_-Xs§ = param2[3];
                     if(_loc3_ >= 5)
                     {
                        this.§_-3w§ = new Vector.<§_-AO§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           this.§_-3w§[_loc4_ - 4] = param2[_loc4_];
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
         var _loc2_:Vector.<§_-AO§> = null;
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
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function clone() : §_-AO§
      {
         var _loc2_:Vector.<§_-AO§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§_-AO§> = new Vector.<§_-AO§>();
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
         return new §_-Ty§(this.§_-lg§,_loc1_);
      }
      
      public function §_-AI§(param1:uint) : §_-AO§
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
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-lg§ = param1;
      }
   }
}
