package §>'§
{
   public class §#s§
   {
       
      
      private var §,!v§:int;
      
      private var §8!0§:Object;
      
      public function §#s§(param1:int = -1, param2:Object = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super();
            while(true)
            {
               this.§,!v§ = param1;
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§8!0§ = param2;
                     if(_loc4_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function get type() : int
      {
         return this.§,!v§;
      }
      
      public function set type(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!v§ = param1;
         }
      }
      
      public function get value() : Object
      {
         return this.§8!0§;
      }
      
      public function set value(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8!0§ = param1;
         }
      }
   }
}
