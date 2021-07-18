package §]!6§
{
   import flash.system.ApplicationDomain;
   
   public class §false§
   {
       
      
      public function §false§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §4!U§(param1:String, param2:Class) : void
      {
      }
      
      public static function §-1§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function §5#§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         if(_loc5_ || param1)
         {
            if(!ApplicationDomain.currentDomain.hasDefinition(param1))
            {
               §§push("Class \'" + param1);
               if(_loc5_ || param2)
               {
                  §§push(§§pop() + "\' not found.");
               }
               _loc3_ = §§pop();
               while(param2)
               {
                  if(!(_loc4_ && param1))
                  {
                     throw new Error(_loc3_);
                  }
                  if(_loc5_ || param1)
                  {
                     addr77:
                     break;
                  }
               }
               return null;
            }
            return Class(ApplicationDomain.currentDomain.getDefinition(param1));
         }
         §§goto(addr77);
      }
   }
}
