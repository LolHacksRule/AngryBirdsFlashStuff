package §;V§
{
   import §24§.;
   import flash.external.ExternalInterface;
   
   public class §%c§
   {
      
      public static var §#9§:Boolean = true;
      
      private static var §4"'§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §#9§ = true;
            do
            {
               §4"'§ = {};
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §%c§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         try
         {
            if(!§4"'§[param1])
            {
               if(!(_loc5_ && param2))
               {
                  §4"'§[param1] = new §-]§(param1);
                  if(!(_loc5_ && §%c§))
                  {
                     addr50:
                     (§4"'§[param1] as §-]§).addCallback(param2);
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr50);
         }
         catch(e:Error)
         {
         }
         addr79:
      }
      
      public static function §[u§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§-]§ = §4"'§[param1] as §-]§;
         if(_loc4_)
         {
            if(_loc3_)
            {
               loop0:
               while(true)
               {
                  _loc3_.§[u§(param2);
                  loop1:
                  while(_loc3_.§%!D§ == 0)
                  {
                     if(_loc4_)
                     {
                        _loc3_.dispose();
                     }
                     while(_loc4_ || §%c§)
                     {
                        continue loop0;
                        delete §4"'§[param1];
                        if(!(_loc5_ && §%c§))
                        {
                           break loop1;
                        }
                     }
                  }
               }
               addr84:
            }
            return;
         }
         §§goto(addr84);
      }
      
      public static function §6"§(param1:String, ... rest) : *
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               while(!_loc5_)
               {
                  §§pop().§§slot[2] = rest;
                  if(_loc6_)
                  {
                     §§push(§§newactivation());
                     if(_loc5_ && rest)
                     {
                        continue;
                     }
                     addr135:
                     addr137:
                     §§push("ExternalInterface call: " + call);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + "(");
                     }
                     §§pop().§§slot[3] = §§pop() + params.join(", ") + ");";
                     addr138:
                     §§push(§§newactivation());
                     if(!(_loc5_ && rest))
                     {
                        if(§§pop().§§slot[3].length > 300)
                        {
                           if(_loc6_ || param1)
                           {
                              addr83:
                              §§push(§§newactivation());
                              §§push(logStr.substr(0,300) + "[...]");
                              if(!_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    §§pop().§§slot[3] = §§pop();
                                    if(_loc6_ || rest)
                                    {
                                       addr54:
                                       §24§.§#7§.log(logStr);
                                       if(_loc6_)
                                       {
                                          §§push(Boolean(ExternalInterface.available));
                                          if(_loc6_ || rest)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   addr42:
                                                   §§pop();
                                                   if(!(_loc5_ && §%c§))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr54);
                                                         }
                                                         §§push(§#9§);
                                                         if(_loc5_ && §%c§)
                                                         {
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                      §§goto(addr138);
                                                   }
                                                   §§goto(addr162);
                                                }
                                             }
                                             addr161:
                                             if(§§pop())
                                             {
                                                try
                                                {
                                                   addr162:
                                                   params.unshift(call);
                                                   if(_loc6_ || §%c§)
                                                   {
                                                      return ExternalInterface.call.apply(null,params);
                                                   }
                                                }
                                                catch(e:Error)
                                                {
                                                   §§push(§24§.§#7§);
                                                   §§push("ExternalInterface call failed!\nCall was:" + call);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() + "\nError data:");
                                                   }
                                                   §§pop().log(§§pop() + e.toString());
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr42);
                                       }
                                       addr112:
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr54);
                     }
                     §§goto(addr83);
                     continue;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
   }
}
