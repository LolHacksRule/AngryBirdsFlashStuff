package §3"H§
{
   import flash.utils.describeType;
   
   public class §<K§
   {
       
      
      public function §<K§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §^m§(param1:Object) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1 is Class)
            {
               if(!(_loc2_ && param1))
               {
                  §§goto(addr45);
               }
            }
            §§push("");
            if(_loc3_ || _loc2_)
            {
               return §§pop() + param1;
            }
         }
         addr45:
         return describeType(param1).@name.split("::").pop();
      }
   }
}
