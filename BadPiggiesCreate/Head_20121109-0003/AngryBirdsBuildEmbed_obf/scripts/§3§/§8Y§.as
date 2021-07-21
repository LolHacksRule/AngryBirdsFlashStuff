package §3§
{
   public class §8Y§ implements § null§
   {
       
      
      protected var §8!G§:Boolean = false;
      
      public function §8Y§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
         if(!_loc2_)
         {
            if(!this.§8!G§)
            {
               if(_loc3_ || this)
               {
                  this.resolveValues();
                  if(!(_loc2_ && _loc3_))
                  {
                     this.§8!G§ = true;
                     if(_loc3_ || _loc2_)
                     {
                        addr68:
                        this.updateObject(param1);
                     }
                  }
                  §§goto(addr68);
               }
               return;
            }
         }
         §§goto(addr68);
      }
      
      protected function newInstance() : §8Y§
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
      
      public function clone() : § null§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§8Y§ = this.newInstance();
         if(!(_loc3_ && _loc1_))
         {
            if(_loc1_ != null)
            {
               if(_loc2_)
               {
                  _loc1_.copyFrom(this);
               }
            }
         }
         return _loc1_;
      }
      
      protected function copyFrom(param1:§8Y§) : void
      {
      }
   }
}
