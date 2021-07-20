package com.rovio.utils
{
   public class XMLUtils
   {
       
      
      public function XMLUtils()
      {
         super();
      }
      
      public static function copyNodesBetweenTrees(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(_loc5_ in param3)
         {
            for each(_loc6_ in param1[_loc5_].§*§)
            {
               if(param4)
               {
                  delete param2[_loc5_][_loc6_.name()];
               }
               if(param2[_loc5_].length() == 0)
               {
                  param2.appendChild(new XML("<" + _loc5_ + "/>"));
               }
               if(param2[_loc5_])
               {
                  param2[_loc5_].appendChild(_loc6_);
               }
            }
         }
      }
   }
}
