package §8=§
{
   import §2p§.§1>§;
   
   public class §<!@§ implements §36§
   {
       
      
      private var §[<§:§36§;
      
      private var §<U§:§36§;
      
      private var §%!-§:§36§;
      
      private var §#M§:§36§;
      
      private var §=2§:Vector.<§36§>;
      
      private var §"!c§:Object = null;
      
      private var §[m§:Number = 0.0;
      
      public function §<!@§(param1:Object, param2:Vector.<§36§>)
      {
         var _loc4_:uint = 0;
         var _loc5_:§36§ = null;
         super();
         this.§"!c§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§[<§ = param2[0];
            if(this.§[m§ < this.§[<§.duration)
            {
               this.§[m§ = this.§[<§.duration;
            }
            if(_loc3_ >= 2)
            {
               this.§<U§ = param2[1];
               if(this.§[m§ < this.§<U§.duration)
               {
                  this.§[m§ = this.§<U§.duration;
               }
               if(_loc3_ >= 3)
               {
                  this.§%!-§ = param2[2];
                  if(this.§[m§ < this.§%!-§.duration)
                  {
                     this.§[m§ = this.§%!-§.duration;
                  }
                  if(_loc3_ >= 4)
                  {
                     this.§#M§ = param2[3];
                     if(this.§[m§ < this.§#M§.duration)
                     {
                        this.§[m§ = this.§#M§.duration;
                     }
                     if(_loc3_ >= 5)
                     {
                        this.§=2§ = new Vector.<§36§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           _loc5_ = param2[_loc4_];
                           this.§=2§[_loc4_ - 4] = _loc5_;
                           if(this.§[m§ < _loc5_.duration)
                           {
                              this.§[m§ = _loc5_.duration;
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
         var _loc2_:Vector.<§36§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§[<§ != null)
         {
            this.§[<§.update(param1);
            if(this.§<U§ != null)
            {
               this.§<U§.update(param1);
               if(this.§%!-§ != null)
               {
                  this.§%!-§.update(param1);
                  if(this.§#M§ != null)
                  {
                     this.§#M§.update(param1);
                     if(this.§=2§ != null)
                     {
                        _loc2_ = this.§=2§;
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
         return this.§"!c§;
      }
      
      public function get duration() : Number
      {
         return this.§[m§;
      }
      
      public function set §!!T§(param1:§1>§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function §"!Y§(param1:uint) : §36§
      {
         if(param1 == 0)
         {
            return this.§[<§;
         }
         if(param1 == 1)
         {
            return this.§<U§;
         }
         if(param1 == 2)
         {
            return this.§%!-§;
         }
         if(param1 == 3)
         {
            return this.§#M§;
         }
         return this.§=2§[param1 - 4];
      }
      
      public function set target(param1:Object) : void
      {
         this.§"!c§ = param1;
      }
      
      public function get §!!T§() : §1>§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §+?§
      {
         var _loc2_:Vector.<§36§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§36§> = new Vector.<§36§>();
         if(this.§[<§ != null)
         {
            _loc1_.push(this.§[<§.clone());
            if(this.§<U§ != null)
            {
               _loc1_.push(this.§<U§.clone());
               if(this.§%!-§ != null)
               {
                  _loc1_.push(this.§%!-§.clone());
                  if(this.§#M§ != null)
                  {
                     _loc1_.push(this.§#M§.clone());
                     if(this.§=2§ != null)
                     {
                        _loc2_ = this.§=2§;
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
         return new §<!@§(this.§"!c§,_loc1_);
      }
   }
}
