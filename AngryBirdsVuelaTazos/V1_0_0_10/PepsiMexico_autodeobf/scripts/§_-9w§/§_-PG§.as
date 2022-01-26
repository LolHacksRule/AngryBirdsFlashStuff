package §_-9w§
{
   import §_-JU§.§_-Is§;
   
   public class §_-PG§ implements §_-HK§
   {
       
      
      private var §_-1t§:§_-HK§;
      
      private var §_-K2§:§_-HK§;
      
      private var §_-vc§:§_-HK§;
      
      private var §_-Pp§:§_-HK§;
      
      private var §_-6J§:Vector.<§_-HK§>;
      
      private var §_-CB§:Object = null;
      
      private var §_-sA§:Number = 0.0;
      
      public function §_-PG§(param1:Object, param2:Vector.<§_-HK§>)
      {
         var _loc4_:uint = 0;
         var _loc5_:§_-HK§ = null;
         super();
         this.§_-CB§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§_-1t§ = param2[0];
            if(this.§_-sA§ < this.§_-1t§.duration)
            {
               this.§_-sA§ = this.§_-1t§.duration;
            }
            if(_loc3_ >= 2)
            {
               this.§_-K2§ = param2[1];
               if(this.§_-sA§ < this.§_-K2§.duration)
               {
                  this.§_-sA§ = this.§_-K2§.duration;
               }
               if(_loc3_ >= 3)
               {
                  this.§_-vc§ = param2[2];
                  if(this.§_-sA§ < this.§_-vc§.duration)
                  {
                     this.§_-sA§ = this.§_-vc§.duration;
                  }
                  if(_loc3_ >= 4)
                  {
                     this.§_-Pp§ = param2[3];
                     if(this.§_-sA§ < this.§_-Pp§.duration)
                     {
                        this.§_-sA§ = this.§_-Pp§.duration;
                     }
                     if(_loc3_ >= 5)
                     {
                        this.§_-6J§ = new Vector.<§_-HK§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           _loc5_ = param2[_loc4_];
                           this.§_-6J§[_loc4_ - 4] = _loc5_;
                           if(this.§_-sA§ < _loc5_.duration)
                           {
                              this.§_-sA§ = _loc5_.duration;
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
         var _loc2_:Vector.<§_-HK§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§_-1t§ != null)
         {
            this.§_-1t§.update(param1);
            if(this.§_-K2§ != null)
            {
               this.§_-K2§.update(param1);
               if(this.§_-vc§ != null)
               {
                  this.§_-vc§.update(param1);
                  if(this.§_-Pp§ != null)
                  {
                     this.§_-Pp§.update(param1);
                     if(this.§_-6J§ != null)
                     {
                        _loc2_ = this.§_-6J§;
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
         return this.§_-CB§;
      }
      
      public function get duration() : Number
      {
         return this.§_-sA§;
      }
      
      public function set §_-gl§(param1:§_-Is§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function §_-fA§(param1:uint) : §_-HK§
      {
         if(param1 == 0)
         {
            return this.§_-1t§;
         }
         if(param1 == 1)
         {
            return this.§_-K2§;
         }
         if(param1 == 2)
         {
            return this.§_-vc§;
         }
         if(param1 == 3)
         {
            return this.§_-Pp§;
         }
         return this.§_-6J§[param1 - 4];
      }
      
      public function set target(param1:Object) : void
      {
         this.§_-CB§ = param1;
      }
      
      public function get §_-gl§() : §_-Is§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-l2§
      {
         var _loc2_:Vector.<§_-HK§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§_-HK§> = new Vector.<§_-HK§>();
         if(this.§_-1t§ != null)
         {
            _loc1_.push(this.§_-1t§.clone());
            if(this.§_-K2§ != null)
            {
               _loc1_.push(this.§_-K2§.clone());
               if(this.§_-vc§ != null)
               {
                  _loc1_.push(this.§_-vc§.clone());
                  if(this.§_-Pp§ != null)
                  {
                     _loc1_.push(this.§_-Pp§.clone());
                     if(this.§_-6J§ != null)
                     {
                        _loc2_ = this.§_-6J§;
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
         return new §_-PG§(this.§_-CB§,_loc1_);
      }
   }
}
