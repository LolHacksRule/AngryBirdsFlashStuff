package §[h§
{
   import §;!]§.§`!V§;
   import §>^§.Base64;
   
   public class §[!U§
   {
       
      
      public function §[!U§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §+!C§(param1:String) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || §[!U§)
         {
            §§push(param1);
            if(_loc4_ || §[!U§)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc5_)
               {
                  addr40:
                  §§push(§§newactivation());
                  §§push(response);
                  if(_loc4_)
                  {
                     addr54:
                     §§push(§§pop());
                  }
                  §§pop().§§slot[2] = §§pop();
               }
               try
               {
                  §§push(§§newactivation());
                  if(!(_loc5_ && param1))
                  {
                     §§push(Base64.§>X§(decoded));
                     if(!(_loc5_ && param1))
                     {
                        §§push(§§pop());
                     }
                     §§pop().§§slot[2] = §§pop();
                     addr101:
                     §§push(§§newactivation());
                  }
               }
               catch(b64Error:Error)
               {
                  §§goto(addr101);
               }
               return §§pop().§§slot[2];
            }
            §§goto(addr54);
         }
         §§goto(addr40);
      }
      
      public static function § !=§(param1:String) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc5_ && param1))
         {
            §§pop().§§slot[2] = null;
            if(!(_loc5_ && _loc3_))
            {
               var response:String = param1;
               addr39:
            }
            try
            {
               §§push(§§newactivation());
               if(_loc4_)
               {
                  §§pop().§§slot[2] = §`!V§.§>X§(response);
                  addr97:
                  §§push(§§newactivation());
               }
               return §§pop().§§slot[2];
            }
            catch(error:Error)
            {
               if(!(_loc5_ && _loc2_))
               {
                  var userObject:Object = {"error":"Error"};
               }
            }
            §§goto(addr97);
         }
         §§goto(addr39);
      }
   }
}
