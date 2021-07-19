package §7!0§
{
   import §,!3§.§#"C§;
   import §0N§.Base64;
   import §9y§.§8"3§;
   
   public class §4!u§
   {
       
      
      public function §4!u§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §3!@§(param1:String) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc5_ && param1))
         {
            §§push(param1);
            if(_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc5_ && param1))
               {
                  addr40:
                  §§push(§§newactivation());
                  §§push(response);
                  if(_loc4_ || _loc2_)
                  {
                     addr59:
                     §§push(§§pop());
                  }
                  §§pop().§§slot[2] = §§pop();
               }
               try
               {
                  §§push(§§newactivation());
                  if(!(_loc5_ && §4!u§))
                  {
                     §§push(Base64.§+c§(decoded));
                     if(_loc4_)
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
            §§goto(addr59);
         }
         §§goto(addr40);
      }
      
      public static function §&"D§(param1:String) : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(!(_loc4_ && §4!u§))
            {
               addr35:
               var response:String = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(!_loc4_)
               {
                  §§pop().§§slot[2] = §#"C§.§+c§(response);
                  addr94:
                  §§push(§§newactivation());
               }
               return §§pop().§§slot[2];
            }
            catch(error:Error)
            {
               if(_loc5_ || §4!u§)
               {
                  var userObject:Object = {"error":§8"3§.CONNECTION_ERROR_RETRY};
               }
            }
            §§goto(addr94);
         }
         §§goto(addr35);
      }
   }
}
