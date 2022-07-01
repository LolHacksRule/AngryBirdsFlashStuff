package §>O§
{
   public class §0E§ implements §18§
   {
       
      
      private var §7_§:§18§;
      
      private var §`!§:§18§;
      
      private var §1%§:§18§;
      
      private var §#!,§:§18§;
      
      private var §'!_§:Vector.<§18§>;
      
      private var §,@§:Object = null;
      
      public function §0E§(param1:Object, param2:Vector.<§18§>)
      {
         var _loc4_:uint = 0;
         super();
         this.§,@§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§7_§ = param2[0];
            if(_loc3_ >= 2)
            {
               this.§`!§ = param2[1];
               if(_loc3_ >= 3)
               {
                  this.§1%§ = param2[2];
                  if(_loc3_ >= 4)
                  {
                     this.§#!,§ = param2[3];
                     if(_loc3_ >= 5)
                     {
                        this.§'!_§ = new Vector.<§18§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           this.§'!_§[_loc4_ - 4] = param2[_loc4_];
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
         var _loc2_:Vector.<§18§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§7_§ != null)
         {
            this.§7_§.update(param1);
            if(this.§`!§ != null)
            {
               this.§`!§.update(param1);
               if(this.§1%§ != null)
               {
                  this.§1%§.update(param1);
                  if(this.§#!,§ != null)
                  {
                     this.§#!,§.update(param1);
                     if(this.§'!_§ != null)
                     {
                        _loc2_ = this.§'!_§;
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
         return this.§,@§;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function clone() : §18§
      {
         var _loc2_:Vector.<§18§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§18§> = new Vector.<§18§>();
         if(this.§7_§ != null)
         {
            _loc1_.push(this.§7_§.clone());
            if(this.§`!§ != null)
            {
               _loc1_.push(this.§`!§.clone());
               if(this.§1%§ != null)
               {
                  _loc1_.push(this.§1%§.clone());
                  if(this.§#!,§ != null)
                  {
                     _loc1_.push(this.§#!,§.clone());
                     if(this.§'!_§ != null)
                     {
                        _loc2_ = this.§'!_§;
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
         return new §0E§(this.§,@§,_loc1_);
      }
      
      public function §^!Y§(param1:uint) : §18§
      {
         if(param1 == 0)
         {
            return this.§7_§;
         }
         if(param1 == 1)
         {
            return this.§`!§;
         }
         if(param1 == 2)
         {
            return this.§1%§;
         }
         if(param1 == 3)
         {
            return this.§#!,§;
         }
         return this.§'!_§[param1 - 4];
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
         this.§,@§ = param1;
      }
   }
}
