package §!e§
{
   public class §]!W§
   {
       
      
      private var §default§:int;
      
      private var § -§:Object;
      
      public function §]!W§(param1:int = -1, param2:Object = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§default§ = param1;
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§ -§ = param2;
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr47);
      }
      
      public function get type() : int
      {
         return this.§default§;
      }
      
      public function set type(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§default§ = param1;
         }
      }
      
      public function get value() : Object
      {
         return this.§ -§;
      }
      
      public function set value(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§ -§ = param1;
         }
      }
   }
}
