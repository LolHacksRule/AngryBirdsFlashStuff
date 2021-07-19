package §_-V7§
{
   public class §_-rJ§ implements §_-S1§
   {
       
      
      protected var §_-C8§:Boolean = false;
      
      public function §_-rJ§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.§_-C8§)
            {
               if(_loc3_ || this)
               {
                  this.resolveValues();
                  if(!_loc2_)
                  {
                     this.§_-C8§ = true;
                     if(_loc3_ || this)
                     {
                        addr59:
                        this.updateObject(param1);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      protected function newInstance() : §_-rJ§
      {
         return null;
      }
      
      protected function resolveValues() : void
      {
      }
      
      protected function updateObject(param1:Number) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §_-S1§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-rJ§ = this.newInstance();
         if(!(_loc2_ && this))
         {
            if(_loc1_ != null)
            {
               if(!_loc2_)
               {
                  _loc1_.copyFrom(this);
               }
            }
         }
         return _loc1_;
      }
      
      protected function copyFrom(param1:§_-rJ§) : void
      {
      }
   }
}
