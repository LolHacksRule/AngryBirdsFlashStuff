package §;!2§
{
   public class §%>§
   {
       
      
      private var §8'§:int;
      
      private var §^!C§:Object;
      
      public function §%>§(param1:int = -1, param2:Object = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super();
            while(true)
            {
               this.§8'§ = param1;
               while(_loc4_)
               {
                  this.§^!C§ = param2;
                  if(!_loc3_)
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function get type() : int
      {
         return this.§8'§;
      }
      
      public function set type(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§8'§ = param1;
         }
      }
      
      public function get value() : Object
      {
         return this.§^!C§;
      }
      
      public function set value(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§^!C§ = param1;
         }
      }
   }
}
