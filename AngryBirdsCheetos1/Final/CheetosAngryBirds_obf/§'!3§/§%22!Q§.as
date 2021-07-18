package §'!3§
{
   import § !G§.Base64;
   import §=A§.§5r§;
   
   public class §"!Q§
   {
       
      
      public function §"!Q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §5!2§(param1:String) : String
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
                  addr36:
                  §§push(§§newactivation());
                  §§push(response);
                  if(_loc5_ || §"!Q§)
                  {
                     addr56:
                     §§pop().§§slot[2] = §§pop();
                  }
                  §§goto(addr56);
               }
               try
               {
                  §§push(§§newactivation());
                  if(_loc5_ || §"!Q§)
                  {
                     §§push(Base64.§6! §(decoded));
                     if(!(_loc4_ && §"!Q§))
                     {
                        §§push(§§pop());
                     }
                     §§pop().§§slot[2] = §§pop();
                     addr102:
                     §§push(§§newactivation());
                  }
               }
               catch(b64Error:Error)
               {
                  §§goto(addr102);
               }
               return §§pop().§§slot[2];
            }
            §§goto(addr56);
         }
         §§goto(addr36);
      }
      
      public static function §!i§(param1:String) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc5_ && _loc2_))
         {
            §§pop().§§slot[2] = null;
            if(_loc4_)
            {
               addr34:
               var response:String = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  §§pop().§§slot[2] = §5r§.§6! §(response);
                  addr92:
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
            §§goto(addr92);
         }
         §§goto(addr34);
      }
   }
}
