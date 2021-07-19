package § !Y§
{
   public dynamic class §[!%§
   {
       
      
      public function §[!%§(param1:Object = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_ || _loc3_)
         {
            super();
            if(!(_loc6_ && this))
            {
               §§goto(addr45);
            }
            §§goto(addr47);
         }
         addr45:
         if(param1)
         {
            addr47:
            for(_loc2_ in param1)
            {
               if(!(_loc6_ && _loc2_))
               {
                  this[_loc2_] = param1[_loc2_];
               }
            }
         }
      }
   }
}
