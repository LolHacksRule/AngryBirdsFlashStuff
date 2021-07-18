package §7'§
{
   import flash.system.ApplicationDomain;
   
   public class §!y§
   {
       
      
      public function §!y§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §+!]§(param1:String, param2:Class) : void
      {
      }
      
      public static function §+,§(param1:String) : Boolean
      {
         return ApplicationDomain.currentDomain.hasDefinition(param1);
      }
      
      public static function §%!C§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         if(!_loc4_)
         {
            if(!ApplicationDomain.currentDomain.hasDefinition(param1))
            {
               loop0:
               while(true)
               {
                  §§push("Class \'" + param1);
                  if(_loc5_)
                  {
                     §§push(§§pop() + "\' not found.");
                  }
                  _loc3_ = §§pop();
                  while(param2)
                  {
                     if(!(_loc4_ && §!y§))
                     {
                        if(_loc5_ || §!y§)
                        {
                           throw new Error(_loc3_);
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
                  addr33:
                  return null;
               }
            }
         }
         return Class(ApplicationDomain.currentDomain.getDefinition(param1));
      }
   }
}
