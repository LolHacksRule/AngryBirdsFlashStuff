package §_-zL§
{
   import §_-e3§.Base64;
   import §_-hq§.§_-AD§;
   
   public class §_-Rv§
   {
       
      
      public function §_-Rv§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §_-SN§(param1:String) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_ || param1)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc5_)
               {
                  addr33:
                  §§push(§§newactivation());
                  §§push(response);
                  if(!(_loc4_ && param1))
                  {
                     addr49:
                     §§push(§§pop());
                  }
                  §§pop().§§slot[2] = §§pop();
               }
               try
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && §_-Rv§))
                  {
                     §§push(Base64.§_-Ae§(decoded));
                     if(_loc5_ || §_-Rv§)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§§slot[2] = §§pop();
                     addr93:
                     §§push(§§newactivation());
                  }
                  return §§pop().§§slot[2];
               }
               catch(b64Error:Error)
               {
               }
               §§goto(addr93);
            }
            §§goto(addr49);
         }
         §§goto(addr33);
      }
      
      public static function §_-3a§(param1:String) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || _loc2_)
         {
            §§pop().§§slot[2] = null;
            if(_loc4_)
            {
               addr31:
               var response:String = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc4_)
               {
                  §§pop().§§slot[2] = §_-AD§.§_-Ae§(response);
                  addr80:
                  §§push(§§newactivation());
               }
            }
            catch(error:Error)
            {
               if(_loc4_)
               {
                  var userObject:Object = {"error":§_-5B§.§_-X8§.CONNECTION_ERROR_RETRY};
               }
               §§goto(addr80);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr31);
      }
   }
}
