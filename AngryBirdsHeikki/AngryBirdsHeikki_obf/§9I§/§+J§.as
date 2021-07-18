package §9I§
{
   import §!!7§.§"c§;
   import §@R§.Base64;
   
   public class §+J§
   {
       
      
      public function §+J§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §,!?§(param1:String) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_ || _loc3_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc5_)
               {
                  addr36:
                  §§push(§§newactivation());
                  §§push(response);
                  if(_loc5_ || param1)
                  {
                     addr55:
                     §§push(§§pop());
                  }
                  §§pop().§§slot[2] = §§pop();
               }
               try
               {
                  §§push(§§newactivation());
                  if(_loc5_ || param1)
                  {
                     §§push(Base64.§%!K§(decoded));
                     if(!_loc4_)
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
         §§goto(addr36);
      }
      
      public static function §;!+§(param1:String) : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§pop().§§slot[2] = null;
            if(_loc5_ || _loc3_)
            {
               addr35:
               var response:String = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc5_ || _loc3_)
               {
                  §§pop().§§slot[2] = §"c§.§%!K§(response);
                  addr94:
                  §§push(§§newactivation());
               }
               return §§pop().§§slot[2];
            }
            catch(error:Error)
            {
               if(!_loc4_)
               {
                  var userObject:Object = {"error":§1F§.CONNECTION_ERROR_RETRY};
               }
            }
            §§goto(addr94);
         }
         §§goto(addr35);
      }
   }
}
