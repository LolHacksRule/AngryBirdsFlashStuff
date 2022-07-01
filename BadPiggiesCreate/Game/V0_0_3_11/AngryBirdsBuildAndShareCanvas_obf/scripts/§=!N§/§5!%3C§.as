package §=!N§
{
   import §4"4§.§-!G§;
   
   public class §5!<§ implements §]k§
   {
       
      
      private var §?@§:§]k§;
      
      private var §9!U§:§]k§;
      
      private var §["2§:§]k§;
      
      private var §4!s§:§]k§;
      
      private var §]!'§:Vector.<§]k§>;
      
      private var §&J§:Object = null;
      
      private var §['§:Number = 0.0;
      
      public function §5!<§(param1:Object, param2:Vector.<§]k§>)
      {
         var _loc4_:uint = 0;
         var _loc5_:§]k§ = null;
         super();
         this.§&J§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§?@§ = param2[0];
            if(this.§['§ < this.§?@§.duration)
            {
               this.§['§ = this.§?@§.duration;
            }
            if(_loc3_ >= 2)
            {
               this.§9!U§ = param2[1];
               if(this.§['§ < this.§9!U§.duration)
               {
                  this.§['§ = this.§9!U§.duration;
               }
               if(_loc3_ >= 3)
               {
                  this.§["2§ = param2[2];
                  if(this.§['§ < this.§["2§.duration)
                  {
                     this.§['§ = this.§["2§.duration;
                  }
                  if(_loc3_ >= 4)
                  {
                     this.§4!s§ = param2[3];
                     if(this.§['§ < this.§4!s§.duration)
                     {
                        this.§['§ = this.§4!s§.duration;
                     }
                     if(_loc3_ >= 5)
                     {
                        this.§]!'§ = new Vector.<§]k§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           _loc5_ = param2[_loc4_];
                           this.§]!'§[_loc4_ - 4] = _loc5_;
                           if(this.§['§ < _loc5_.duration)
                           {
                              this.§['§ = _loc5_.duration;
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
         var _loc2_:Vector.<§]k§> = null;
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
      
      public function get duration() : Number
      {
         return this.§['§;
      }
      
      public function set §2!U§(param1:§-!G§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function §[M§(param1:uint) : §]k§
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
      
      public function set target(param1:Object) : void
      {
         this.§&J§ = param1;
      }
      
      public function get §2!U§() : §-!G§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §!"4§
      {
         var _loc2_:Vector.<§]k§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§]k§> = new Vector.<§]k§>();
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
         return new §5!<§(this.§&J§,_loc1_);
      }
   }
}
