package com.angrybirds.utils
{
   import §,j§.§'u§;
   import §24§.Base64;
   import §[!5§.§2p§;
   
   public class §2!N§
   {
       
      
      public function §2!N§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §^"3§(param1:String) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc4_ && §2!N§))
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc4_ && _loc3_))
               {
                  addr51:
                  §§push(§§newactivation());
                  §§push(response);
                  if(!(_loc4_ && §2!N§))
                  {
                     addr60:
                     §§push(§§pop());
                  }
                  §§pop().§§slot[2] = §§pop();
               }
               try
               {
                  §§push(§§newactivation());
                  if(_loc5_)
                  {
                     §§push(Base64.§&!Z§(decoded));
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                     }
                     §§pop().§§slot[2] = §§pop();
                     addr97:
                     §§push(§§newactivation());
                  }
                  return §§pop().§§slot[2];
               }
               catch(b64Error:Error)
               {
               }
               §§goto(addr97);
            }
            §§goto(addr60);
         }
         §§goto(addr51);
      }
      
      public static function §6l§(param1:String) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || _loc3_)
         {
            §§pop().§§slot[2] = null;
            if(!_loc5_)
            {
               addr34:
               var response:String = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(!(_loc5_ && §2!N§))
               {
                  §§pop().§§slot[2] = §'u§.§&!Z§(response);
                  addr98:
                  §§push(§§newactivation());
               }
               return §§pop().§§slot[2];
            }
            catch(error:Error)
            {
               if(_loc4_ || _loc2_)
               {
                  var userObject:Object = {"error":§2p§.CONNECTION_ERROR_RETRY};
               }
            }
            §§goto(addr98);
         }
         §§goto(addr34);
      }
   }
}
