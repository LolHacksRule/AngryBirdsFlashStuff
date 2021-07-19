package §;K§
{
   public class §9!L§
   {
       
      
      private var _type:int;
      
      private var §`!<§:Object;
      
      public function §9!L§(param1:int = -1, param2:Object = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
         }
         while(true)
         {
            this._type = param1;
            while(!(_loc4_ && param2))
            {
               this.§`!<§ = param2;
               if(_loc3_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this._type = param1;
         }
      }
      
      public function get value() : Object
      {
         return this.§`!<§;
      }
      
      public function set value(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§`!<§ = param1;
         }
      }
   }
}
