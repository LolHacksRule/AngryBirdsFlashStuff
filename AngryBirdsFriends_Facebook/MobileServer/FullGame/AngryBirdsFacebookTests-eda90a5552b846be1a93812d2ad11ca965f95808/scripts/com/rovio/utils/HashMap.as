package com.rovio.utils
{
   public dynamic class HashMap
   {
       
      
      public function HashMap(sourceObject:Object = null)
      {
         var key:* = null;
         super();
         if(sourceObject)
         {
            for(key in sourceObject)
            {
               this[key] = sourceObject[key];
            }
         }
      }
   }
}
