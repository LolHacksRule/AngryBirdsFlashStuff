package §=!N§
{
   public class §[!i§ implements §!"4§
   {
       
      
      private var §?@§:§!"4§;
      
      private var §9!U§:§!"4§;
      
      private var §["2§:§!"4§;
      
      private var §4!s§:§!"4§;
      
      private var §]!'§:Vector.<§!"4§>;
      
      private var §&J§:Object = null;
      
      public function §[!i§(param1:Object, param2:Vector.<§!"4§>)
      {
         var _loc4_:uint = 0;
         super();
         this.§&J§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§?@§ = param2[0];
            if(_loc3_ >= 2)
            {
               this.§9!U§ = param2[1];
               if(_loc3_ >= 3)
               {
                  this.§["2§ = param2[2];
                  if(_loc3_ >= 4)
                  {
                     this.§4!s§ = param2[3];
                     if(_loc3_ >= 5)
                     {
                        this.§]!'§ = new Vector.<§!"4§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           this.§]!'§[_loc4_ - 4] = param2[_loc4_];
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
         var _loc2_:Vector.<§!"4§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§?@§ != null)
         {
            this.§?@§.update(param1);
            if(this.§9!U§ != null)
            {
               this.§9!U§.update(param1);
               if(this.§["2§ != null)
               {
                  this.§["2§.update(param1);
                  if(this.§4!s§ != null)
                  {
                     this.§4!s§.update(param1);
                     if(this.§]!'§ != null)
                     {
                        _loc2_ = this.§]!'§;
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
         return this.§&J§;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function clone() : §!"4§
      {
         var _loc2_:Vector.<§!"4§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§!"4§> = new Vector.<§!"4§>();
         if(this.§?@§ != null)
         {
            _loc1_.push(this.§?@§.clone());
            if(this.§9!U§ != null)
            {
               _loc1_.push(this.§9!U§.clone());
               if(this.§["2§ != null)
               {
                  _loc1_.push(this.§["2§.clone());
                  if(this.§4!s§ != null)
                  {
                     _loc1_.push(this.§4!s§.clone());
                     if(this.§]!'§ != null)
                     {
                        _loc2_ = this.§]!'§;
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
         return new §[!i§(this.§&J§,_loc1_);
      }
      
      public function §[M§(param1:uint) : §!"4§
      {
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
         return this.§]!'§[param1 - 4];
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
         this.§&J§ = param1;
      }
   }
}
