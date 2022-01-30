package § !3§
{
   import §4!x§.§7"?§;
   
   public class §'R§ implements §5!e§
   {
       
      
      private var §39§:§5!e§;
      
      private var §;%§:§5!e§;
      
      private var §'w§:§5!e§;
      
      private var §<2§:§5!e§;
      
      private var §]L§:Vector.<§5!e§>;
      
      private var §-"7§:Object = null;
      
      private var §+6§:Number = 0.0;
      
      public function §'R§(param1:Object, param2:Vector.<§5!e§>)
      {
         var _loc4_:uint = 0;
         var _loc5_:§5!e§ = null;
         super();
         this.§-"7§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§39§ = param2[0];
            if(this.§+6§ < this.§39§.duration)
            {
               this.§+6§ = this.§39§.duration;
            }
            if(_loc3_ >= 2)
            {
               this.§;%§ = param2[1];
               if(this.§+6§ < this.§;%§.duration)
               {
                  this.§+6§ = this.§;%§.duration;
               }
               if(_loc3_ >= 3)
               {
                  this.§'w§ = param2[2];
                  if(this.§+6§ < this.§'w§.duration)
                  {
                     this.§+6§ = this.§'w§.duration;
                  }
                  if(_loc3_ >= 4)
                  {
                     this.§<2§ = param2[3];
                     if(this.§+6§ < this.§<2§.duration)
                     {
                        this.§+6§ = this.§<2§.duration;
                     }
                     if(_loc3_ >= 5)
                     {
                        this.§]L§ = new Vector.<§5!e§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           _loc5_ = param2[_loc4_];
                           this.§]L§[_loc4_ - 4] = _loc5_;
                           if(this.§+6§ < _loc5_.duration)
                           {
                              this.§+6§ = _loc5_.duration;
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
         var _loc2_:Vector.<§5!e§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§39§ != null)
         {
            this.§39§.update(param1);
            if(this.§;%§ != null)
            {
               this.§;%§.update(param1);
               if(this.§'w§ != null)
               {
                  this.§'w§.update(param1);
                  if(this.§<2§ != null)
                  {
                     this.§<2§.update(param1);
                     if(this.§]L§ != null)
                     {
                        _loc2_ = this.§]L§;
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
         return this.§-"7§;
      }
      
      public function get duration() : Number
      {
         return this.§+6§;
      }
      
      public function set §=&§(param1:§7"?§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function §;S§(param1:uint) : §5!e§
      {
         if(param1 == 0)
         {
            return this.§39§;
         }
         if(param1 == 1)
         {
            return this.§;%§;
         }
         if(param1 == 2)
         {
            return this.§'w§;
         }
         if(param1 == 3)
         {
            return this.§<2§;
         }
         return this.§]L§[param1 - 4];
      }
      
      public function set target(param1:Object) : void
      {
         this.§-"7§ = param1;
      }
      
      public function get §=&§() : §7"?§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §5"&§
      {
         var _loc2_:Vector.<§5!e§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§5!e§> = new Vector.<§5!e§>();
         if(this.§39§ != null)
         {
            _loc1_.push(this.§39§.clone());
            if(this.§;%§ != null)
            {
               _loc1_.push(this.§;%§.clone());
               if(this.§'w§ != null)
               {
                  _loc1_.push(this.§'w§.clone());
                  if(this.§<2§ != null)
                  {
                     _loc1_.push(this.§<2§.clone());
                     if(this.§]L§ != null)
                     {
                        _loc2_ = this.§]L§;
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
         return new §'R§(this.§-"7§,_loc1_);
      }
   }
}
