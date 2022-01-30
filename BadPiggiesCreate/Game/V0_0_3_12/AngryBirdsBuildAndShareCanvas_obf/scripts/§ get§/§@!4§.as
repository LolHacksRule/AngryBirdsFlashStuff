package § get§
{
   public class §@!4§ implements §,B§
   {
       
      
      private var §[X§:§,B§;
      
      private var §19§:§,B§;
      
      private var §[!@§:§,B§;
      
      private var §]!F§:§,B§;
      
      private var §;!-§:Vector.<§,B§>;
      
      private var §<"$§:Object = null;
      
      public function §@!4§(param1:Object, param2:Vector.<§,B§>)
      {
         var _loc4_:uint = 0;
         super();
         this.§<"$§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§[X§ = param2[0];
            if(_loc3_ >= 2)
            {
               this.§19§ = param2[1];
               if(_loc3_ >= 3)
               {
                  this.§[!@§ = param2[2];
                  if(_loc3_ >= 4)
                  {
                     this.§]!F§ = param2[3];
                     if(_loc3_ >= 5)
                     {
                        this.§;!-§ = new Vector.<§,B§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           this.§;!-§[_loc4_ - 4] = param2[_loc4_];
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
         var _loc2_:Vector.<§,B§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§[X§ != null)
         {
            this.§[X§.update(param1);
            if(this.§19§ != null)
            {
               this.§19§.update(param1);
               if(this.§[!@§ != null)
               {
                  this.§[!@§.update(param1);
                  if(this.§]!F§ != null)
                  {
                     this.§]!F§.update(param1);
                     if(this.§;!-§ != null)
                     {
                        _loc2_ = this.§;!-§;
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
         return this.§<"$§;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function clone() : §,B§
      {
         var _loc2_:Vector.<§,B§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§,B§> = new Vector.<§,B§>();
         if(this.§[X§ != null)
         {
            _loc1_.push(this.§[X§.clone());
            if(this.§19§ != null)
            {
               _loc1_.push(this.§19§.clone());
               if(this.§[!@§ != null)
               {
                  _loc1_.push(this.§[!@§.clone());
                  if(this.§]!F§ != null)
                  {
                     _loc1_.push(this.§]!F§.clone());
                     if(this.§;!-§ != null)
                     {
                        _loc2_ = this.§;!-§;
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
         return new §@!4§(this.§<"$§,_loc1_);
      }
      
      public function §`V§(param1:uint) : §,B§
      {
         if(param1 == 0)
         {
            return this.§[X§;
         }
         if(param1 == 1)
         {
            return this.§19§;
         }
         if(param1 == 2)
         {
            return this.§[!@§;
         }
         if(param1 == 3)
         {
            return this.§]!F§;
         }
         return this.§;!-§[param1 - 4];
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
         this.§<"$§ = param1;
      }
   }
}
