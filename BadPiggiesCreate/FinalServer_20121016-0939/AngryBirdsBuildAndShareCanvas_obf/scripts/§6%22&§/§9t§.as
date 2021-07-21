package §6"&§
{
   public class §9t§
   {
       
      
      private var §4!C§:int;
      
      private var §3!e§:Object;
      
      public function §9t§(param1:int = -1, param2:Object = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super();
         }
         while(true)
         {
            this.§4!C§ = param1;
            while(!_loc3_)
            {
               this.§3!e§ = param2;
               if(_loc4_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function get type() : int
      {
         return this.§4!C§;
      }
      
      public function set type(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§4!C§ = param1;
         }
      }
      
      public function get value() : Object
      {
         return this.§3!e§;
      }
      
      public function set value(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§3!e§ = param1;
         }
      }
   }
}
