package §6!F§
{
   import §7"+§.§]F§;
   
   public class §!!p§ implements §1!]§
   {
       
      
      private var §>-§:§1!]§;
      
      private var §^"1§:§1!]§;
      
      private var §6?§:§1!]§;
      
      private var §=G§:§1!]§;
      
      private var §#"7§:Vector.<§1!]§>;
      
      private var §>!C§:Object = null;
      
      private var §4!V§:Number = 0.0;
      
      public function §!!p§(param1:Object, param2:Vector.<§1!]§>)
      {
         var _loc4_:uint = 0;
         var _loc5_:§1!]§ = null;
         super();
         this.§>!C§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§>-§ = param2[0];
            if(this.§4!V§ < this.§>-§.duration)
            {
               this.§4!V§ = this.§>-§.duration;
            }
            if(_loc3_ >= 2)
            {
               this.§^"1§ = param2[1];
               if(this.§4!V§ < this.§^"1§.duration)
               {
                  this.§4!V§ = this.§^"1§.duration;
               }
               if(_loc3_ >= 3)
               {
                  this.§6?§ = param2[2];
                  if(this.§4!V§ < this.§6?§.duration)
                  {
                     this.§4!V§ = this.§6?§.duration;
                  }
                  if(_loc3_ >= 4)
                  {
                     this.§=G§ = param2[3];
                     if(this.§4!V§ < this.§=G§.duration)
                     {
                        this.§4!V§ = this.§=G§.duration;
                     }
                     if(_loc3_ >= 5)
                     {
                        this.§#"7§ = new Vector.<§1!]§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           _loc5_ = param2[_loc4_];
                           this.§#"7§[_loc4_ - 4] = _loc5_;
                           if(this.§4!V§ < _loc5_.duration)
                           {
                              this.§4!V§ = _loc5_.duration;
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
         var _loc2_:Vector.<§1!]§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§>-§ != null)
         {
            this.§>-§.update(param1);
            if(this.§^"1§ != null)
            {
               this.§^"1§.update(param1);
               if(this.§6?§ != null)
               {
                  this.§6?§.update(param1);
                  if(this.§=G§ != null)
                  {
                     this.§=G§.update(param1);
                     if(this.§#"7§ != null)
                     {
                        _loc2_ = this.§#"7§;
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
         return this.§>!C§;
      }
      
      public function get duration() : Number
      {
         return this.§4!V§;
      }
      
      public function set §-5§(param1:§]F§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function §0&§(param1:uint) : §1!]§
      {
         if(param1 == 0)
         {
            return this.§>-§;
         }
         if(param1 == 1)
         {
            return this.§^"1§;
         }
         if(param1 == 2)
         {
            return this.§6?§;
         }
         if(param1 == 3)
         {
            return this.§=G§;
         }
         return this.§#"7§[param1 - 4];
      }
      
      public function set target(param1:Object) : void
      {
         this.§>!C§ = param1;
      }
      
      public function get §-5§() : §]F§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §8w§
      {
         var _loc2_:Vector.<§1!]§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§1!]§> = new Vector.<§1!]§>();
         if(this.§>-§ != null)
         {
            _loc1_.push(this.§>-§.clone());
            if(this.§^"1§ != null)
            {
               _loc1_.push(this.§^"1§.clone());
               if(this.§6?§ != null)
               {
                  _loc1_.push(this.§6?§.clone());
                  if(this.§=G§ != null)
                  {
                     _loc1_.push(this.§=G§.clone());
                     if(this.§#"7§ != null)
                     {
                        _loc2_ = this.§#"7§;
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
         return new §!!p§(this.§>!C§,_loc1_);
      }
   }
}
