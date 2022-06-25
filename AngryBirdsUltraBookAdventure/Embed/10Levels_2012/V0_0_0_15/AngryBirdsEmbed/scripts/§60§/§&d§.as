package §60§
{
   public class §&d§
   {
       
      
      private var §]!@§:int;
      
      private var _value:Object;
      
      public function §&d§(param1:int = -1, param2:Object = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            if(!_loc3_)
            {
               addr23:
               this.§]!@§ = param1;
               if(!_loc3_)
               {
                  this._value = param2;
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function get type() : int
      {
         return this.§]!@§;
      }
      
      public function set type(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§]!@§ = param1;
         }
      }
      
      public function get value() : Object
      {
         return this._value;
      }
      
      public function set value(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this._value = param1;
         }
      }
   }
}
