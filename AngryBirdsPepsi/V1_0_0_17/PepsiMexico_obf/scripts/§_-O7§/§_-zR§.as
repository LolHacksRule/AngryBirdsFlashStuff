package §_-O7§
{
   import §_-e3§.§_-54§;
   import flash.external.ExternalInterface;
   
   public class §_-zR§
   {
      
      public static var §_-lZ§:Boolean = true;
      
      private static var §_-k2§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-lZ§ = true;
            if(_loc1_ || _loc2_)
            {
               addr32:
               §_-k2§ = new Array();
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function §_-zR§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §_-HF§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-HB§ = null;
         if(_loc5_ || param1)
         {
            §§push(Boolean(ExternalInterface.available));
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc5_ || §_-zR§)
                  {
                     addr38:
                     §§pop();
                     if(!_loc4_)
                     {
                        §§push(§_-lZ§);
                        if(_loc5_ || param2)
                        {
                        }
                        §§goto(addr57);
                     }
                     §§goto(addr79);
                  }
                  §§push(Boolean(§§pop()));
               }
               addr57:
               if(§§pop())
               {
                  if(_loc5_ || param1)
                  {
                     if(§_-k2§ == null)
                     {
                        if(_loc5_ || param1)
                        {
                           §_-k2§ = new Array();
                           addr79:
                           _loc3_ = new §_-HB§(param1);
                           if(_loc5_ || _loc3_)
                           {
                              _loc3_.addCallback(param2);
                           }
                        }
                     }
                  }
                  §§goto(addr79);
               }
               return;
            }
            §§goto(addr38);
         }
         §§goto(addr79);
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§_-HB§ = null;
         if(!(_loc7_ && §_-zR§))
         {
            §§push(§_-k2§ == null);
            if(_loc6_ || §_-zR§)
            {
               §§push(!§§pop());
               if(!(_loc7_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                     }
                  }
                  §§goto(addr59);
               }
               §§pop();
               if(!_loc7_)
               {
                  §§push(§_-lZ§);
                  if(!_loc7_)
                  {
                     §§push(Boolean(§§pop()));
                  }
               }
               §§goto(addr60);
            }
            addr59:
            if(§§pop())
            {
               §§goto(addr60);
            }
            return;
         }
         addr60:
         var _loc4_:int = 0;
         var _loc5_:* = §_-k2§;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(_loc6_)
               {
                  if(_loc3_.§_-wA§ == param1)
                  {
                     if(_loc7_ && _loc3_)
                     {
                        break;
                     }
                     addr85:
                     _loc3_.addCallback(param2);
                     if(_loc6_ || §_-zR§)
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr85);
            }
         }
      }
      
      public static function §_-6c§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§pop().§§slot[4] = null;
            if(_loc6_ || §_-zR§)
            {
               §§push(§§newactivation());
               if(_loc6_ || rest)
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     §§pop().§§slot[1] = §§pop();
                     if(!_loc7_)
                     {
                        addr44:
                        §§push(§§newactivation());
                        if(!(_loc7_ && §_-zR§))
                        {
                           addr52:
                           §§pop().§§slot[2] = rest;
                           addr67:
                           if(_loc6_ || rest)
                           {
                              §§push(§§newactivation());
                           }
                           var _loc4_:int = 0;
                           var _loc5_:* = params;
                           while(§§hasnext(_loc5_,_loc4_))
                           {
                              §§push(§§newactivation());
                              if(_loc6_ || §_-zR§)
                              {
                                 §§pop().§§slot[4] = §§nextvalue(_loc4_,_loc5_);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc6_)
                                    {
                                       if(§§pop().§§slot[4])
                                       {
                                          if(_loc6_)
                                          {
                                             addr102:
                                             §§push(§§newactivation());
                                             if(_loc6_ || §_-zR§)
                                             {
                                                addr110:
                                                §§push(§§newactivation());
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop().§§slot[3]);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(obj.toString() + ", ");
                                                      if(_loc6_ || rest)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§pop().§§slot[3] = §§pop();
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  addr159:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr175:
                                                               §§pop().§§slot[3] = §§pop();
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr175);
                                                      }
                                                      else
                                                      {
                                                         addr173:
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§goto(addr175);
                                                      §§push(§§pop());
                                                   }
                                                   else
                                                   {
                                                      addr170:
                                                      §§push("null" + ", ");
                                                   }
                                                   §§goto(addr173);
                                                }
                                                else
                                                {
                                                   addr162:
                                                   §§push(§§pop().§§slot[3]);
                                                   if(!(_loc7_ && rest))
                                                   {
                                                      §§goto(addr170);
                                                   }
                                                }
                                                §§goto(addr175);
                                             }
                                             else
                                             {
                                                addr161:
                                                §§push(§§newactivation());
                                             }
                                             §§goto(addr162);
                                          }
                                          §§goto(addr159);
                                       }
                                       else
                                       {
                                          §§push(§§newactivation());
                                       }
                                    }
                                    §§goto(addr161);
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr110);
                           }
                           §§push(§§newactivation());
                           if(_loc6_ || rest)
                           {
                              §§pop().§§slot[3] = debugStr + ");";
                              §_-54§.log("ExternalInterface call: " + debugStr);
                              if(_loc6_)
                              {
                                 §§push(Boolean(ExternalInterface.available));
                                 if(!(_loc7_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc7_ && rest))
                                       {
                                          addr220:
                                          §§pop();
                                          §§push(§_-lZ§);
                                          if(!_loc7_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          try
                                          {
                                             addr229:
                                             params.unshift(call);
                                             if(_loc6_ || param1)
                                             {
                                                return ExternalInterface.call.apply(null,params);
                                             }
                                             addr247:
                                          }
                                          catch(e:Error)
                                          {
                                             §§push(§_-54§);
                                             §§push("ExternalInterface call failed!\nCall was:" + call);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() + "\nError data:");
                                             }
                                             §§pop().log(§§pop() + e.toString());
                                          }
                                       }
                                       §§goto(addr247);
                                    }
                                    return;
                                 }
                                 §§goto(addr220);
                              }
                              §§goto(addr247);
                           }
                           §§goto(addr229);
                        }
                        addr64:
                        §§pop().§§slot[3] = call + "(";
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr64);
               }
               §§goto(addr52);
            }
            §§goto(addr44);
         }
         §§goto(addr52);
      }
   }
}
