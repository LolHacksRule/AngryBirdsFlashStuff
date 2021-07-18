package §"!+§
{
   import §,!D§.§5E§;
   import §@,§.Base64;
   
   public class §2!U§
   {
       
      
      public function §2!U§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §`m§(param1:String) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc4_ && param1))
         {
            §§push(param1);
            if(_loc5_ || _loc2_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  addr51:
                  §§push(§§newactivation());
                  §§push(response);
                  if(_loc5_)
                  {
                     addr55:
                     §§push(§§pop());
                  }
                  §§pop().§§slot[2] = §§pop();
               }
               try
               {
                  §§push(§§newactivation());
                  if(_loc5_)
                  {
                     §§push(Base64.§,§(decoded));
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop());
                     }
                     §§pop().§§slot[2] = §§pop();
                     addr97:
                     §§push(§§newactivation());
                  }
               }
               catch(b64Error:Error)
               {
                  §§goto(addr97);
               }
               return §§pop().§§slot[2];
            }
            §§goto(addr55);
         }
         §§goto(addr51);
      }
      
      public static function §1!#§(param1:String) : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc4_ && §2!U§))
         {
            §§pop().§§slot[2] = null;
            if(_loc5_ || param1)
            {
               addr40:
               var response:String = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc5_ || §2!U§)
               {
                  §§pop().§§slot[2] = §5E§.§,§(response);
                  addr103:
                  §§push(§§newactivation());
               }
            }
            catch(error:Error)
            {
               if(_loc5_ || _loc2_)
               {
                  var userObject:Object = {"error":"Error"};
               }
               §§goto(addr103);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr40);
      }
   }
}
