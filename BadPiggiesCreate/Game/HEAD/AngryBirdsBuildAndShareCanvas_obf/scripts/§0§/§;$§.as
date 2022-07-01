package §0§
{
   public class §;$§ implements §-!G§
   {
       
      
      private var §2!+§:§-!G§;
      
      private var §2c§:§-!G§;
      
      private var §%!O§:§-!G§;
      
      private var §5I§:§-!G§;
      
      private var §-B§:Vector.<§-!G§>;
      
      private var §[l§:Object = null;
      
      public function §;$§(param1:Object, param2:Vector.<§-!G§>)
      {
         var _loc4_:uint = 0;
         super();
         this.§[l§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§2!+§ = param2[0];
            if(_loc3_ >= 2)
            {
               this.§2c§ = param2[1];
               if(_loc3_ >= 3)
               {
                  this.§%!O§ = param2[2];
                  if(_loc3_ >= 4)
                  {
                     this.§5I§ = param2[3];
                     if(_loc3_ >= 5)
                     {
                        this.§-B§ = new Vector.<§-!G§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           this.§-B§[_loc4_ - 4] = param2[_loc4_];
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
         var _loc2_:Vector.<§-!G§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§2!+§ != null)
         {
            this.§2!+§.update(param1);
            if(this.§2c§ != null)
            {
               this.§2c§.update(param1);
               if(this.§%!O§ != null)
               {
                  this.§%!O§.update(param1);
                  if(this.§5I§ != null)
                  {
                     this.§5I§.update(param1);
                     if(this.§-B§ != null)
                     {
                        _loc2_ = this.§-B§;
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
         return this.§[l§;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function clone() : §-!G§
      {
         var _loc2_:Vector.<§-!G§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§-!G§> = new Vector.<§-!G§>();
         if(this.§2!+§ != null)
         {
            _loc1_.push(this.§2!+§.clone());
            if(this.§2c§ != null)
            {
               _loc1_.push(this.§2c§.clone());
               if(this.§%!O§ != null)
               {
                  _loc1_.push(this.§%!O§.clone());
                  if(this.§5I§ != null)
                  {
                     _loc1_.push(this.§5I§.clone());
                     if(this.§-B§ != null)
                     {
                        _loc2_ = this.§-B§;
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
         return new §;$§(this.§[l§,_loc1_);
      }
      
      public function §2!v§(param1:uint) : §-!G§
      {
         if(param1 == 0)
         {
            return this.§2!+§;
         }
         if(param1 == 1)
         {
            return this.§2c§;
         }
         if(param1 == 2)
         {
            return this.§%!O§;
         }
         if(param1 == 3)
         {
            return this.§5I§;
         }
         return this.§-B§[param1 - 4];
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
         this.§[l§ = param1;
      }
   }
}
