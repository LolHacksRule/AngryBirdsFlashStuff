package §]0§
{
   import §%_§.§"!!§;
   import §;K§.§&s§;
   import each.Base64;
   
   public class §5!p§
   {
       
      
      public function §5!p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §49§(param1:String) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc5_)
               {
                  addr30:
                  §§push(§§newactivation());
                  §§push(response);
                  if(_loc4_)
                  {
                     addr35:
                     §§pop().§§slot[2] = §§pop();
                  }
                  §§goto(addr35);
               }
               try
               {
                  §§push(§§newactivation());
                  if(_loc4_ || §5!p§)
                  {
                     §§push(Base64.§>7§(decoded));
                     if(_loc4_ || §5!p§)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§§slot[2] = §§pop();
                     addr91:
                     §§push(§§newactivation());
                  }
               }
               catch(b64Error:Error)
               {
                  §§goto(addr91);
               }
               return §§pop().§§slot[2];
            }
            §§goto(addr35);
         }
         §§goto(addr30);
      }
      
      public static function §0>§(param1:String) : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§pop().§§slot[2] = null;
            if(_loc5_)
            {
               addr30:
               var response:String = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc5_ || _loc2_)
               {
                  §§pop().§§slot[2] = §&s§.§>7§(response);
                  addr94:
                  §§push(§§newactivation());
               }
               return §§pop().§§slot[2];
            }
            catch(error:Error)
            {
               if(_loc5_ || §5!p§)
               {
                  var userObject:Object = {"error":§"!!§.CONNECTION_ERROR_RETRY};
               }
            }
            §§goto(addr94);
         }
         §§goto(addr30);
      }
   }
}
