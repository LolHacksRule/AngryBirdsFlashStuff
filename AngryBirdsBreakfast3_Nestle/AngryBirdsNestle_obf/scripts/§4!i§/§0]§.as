package §4!i§
{
   public dynamic class §0]§
   {
       
      
      public function §0]§(param1:Object = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_ || this)
         {
            super();
            if(!(_loc5_ && _loc3_))
            {
               §§goto(addr46);
            }
            §§goto(addr48);
         }
         addr46:
         if(param1)
         {
            addr48:
            for(_loc2_ in param1)
            {
               if(!(_loc5_ && param1))
               {
                  this[_loc2_] = param1[_loc2_];
               }
            }
         }
      }
   }
}
