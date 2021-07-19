package §6g§
{
   import §;!2§.§,>§;
   import §`K§.Base64;
   
   public class §[!@§
   {
       
      
      public function §[!@§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §%?§(param1:String) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc4_ && param1))
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc4_ && _loc2_))
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
                  if(!_loc4_)
                  {
                     §§push(Base64.§]t§(decoded));
                     if(!(_loc4_ && _loc2_))
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
      
      public static function §'!N§(param1:String) : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§pop().§§slot[2] = null;
            if(_loc5_ || param1)
            {
               addr45:
               var response:String = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc5_)
               {
                  §§pop().§§slot[2] = §,>§.§]t§(response);
                  addr89:
                  §§push(§§newactivation());
               }
            }
            catch(error:Error)
            {
               if(_loc5_)
               {
                  var userObject:Object = {"error":§3-§.CONNECTION_ERROR_RETRY};
               }
               §§goto(addr89);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr45);
      }
   }
}
