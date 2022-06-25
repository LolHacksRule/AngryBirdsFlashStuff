package §_-Y8§
{
   import §_-0BH§.§_-FK§;
   import flash.external.ExternalInterface;
   
   public class §_-05J§
   {
      
      public static var §_-XG§:Boolean = true;
      
      private static var §_-aq§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-XG§ = true;
            do
            {
               §_-aq§ = {};
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function §_-05J§()
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         try
         {
            if(!§_-aq§[param1])
            {
               if(_loc5_)
               {
                  §_-aq§[param1] = new §_-qc§(param1);
                  if(_loc5_)
                  {
                     addr51:
                     (§_-aq§[param1] as §_-qc§).addCallback(param2);
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr51);
         }
         catch(e:Error)
         {
         }
         addr70:
      }
      
      public static function §_-tG§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(§_-aq§[param1])
            {
               if(_loc3_)
               {
                  (§_-aq§[param1] as §_-qc§).§_-tG§(param2);
               }
            }
         }
      }
      
      public static function §_-0At§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§push(param1);
                  addr66:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     addr67:
                     while(!(_loc6_ && §_-05J§))
                     {
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop2;
                           addr47:
                           if(_loc6_)
                           {
                              break;
                           }
                           if(true)
                           {
                              var _loc4_:int = 0;
                              var _loc5_:* = params;
                              addr183:
                              if(§§hasnext(_loc5_,_loc4_))
                              {
                                 addr177:
                                 var obj:Object = §§nextvalue(_loc4_,_loc5_);
                                 addr182:
                                 §§push(§§newactivation());
                                 if(!_loc6_)
                                 {
                                    if(!(_loc6_ && rest))
                                    {
                                       if(§§pop().§§slot[4] != null)
                                       {
                                          if(!(_loc6_ && rest))
                                          {
                                             if(_loc7_)
                                             {
                                                addr172:
                                                addr147:
                                                addr146:
                                                §§push(§§newactivation());
                                                §§push(debugStr);
                                                if(!(_loc6_ && rest))
                                                {
                                                   addr171:
                                                   §§push(§§pop() + (obj.toString() + ", "));
                                                }
                                                §§pop().§§slot[3] = §§pop();
                                                addr173:
                                                §§goto(addr183);
                                                addr173:
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr173);
                                       }
                                       §§push(§§newactivation());
                                       if(_loc7_)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop().§§slot[3]);
                                             if(!_loc6_)
                                             {
                                                §§push("null");
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() + ", ");
                                                }
                                                if(_loc7_ || param1)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      addr115:
                                                      §§push(§§pop());
                                                      if(_loc7_)
                                                      {
                                                         §§pop().§§slot[3] = §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr182);
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr115);
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr172);
                              }
                              if(_loc7_)
                              {
                                 §§push(§§newactivation());
                                 if(!_loc6_)
                                 {
                                    §§pop().§§slot[3] = debugStr + ");";
                                    if(_loc7_ || §_-05J§)
                                    {
                                       §§goto(addr222);
                                    }
                                    §§goto(addr284);
                                 }
                                 §§goto(addr271);
                              }
                              addr222:
                              §§push(§_-FK§);
                              §§push("ExternalInterface call: ");
                              if(!(_loc6_ && §_-05J§))
                              {
                                 §§push(§§pop() + debugStr);
                              }
                           }
                           continue;
                           §§pop().log(§§pop());
                           addr236:
                           §§push(Boolean(ExternalInterface.available));
                           if(!(_loc6_ && rest))
                           {
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§pop();
                                    if(_loc7_ || _loc3_)
                                    {
                                       if(_loc7_ || §_-05J§)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr222);
                                          }
                                          §§push(§_-XG§);
                                          if(_loc6_ && rest)
                                          {
                                          }
                                          §§goto(addr262);
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr277);
                                 }
                              }
                           }
                           addr262:
                           if(§§pop())
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 try
                                 {
                                    addr271:
                                    params.unshift(call);
                                    if(!_loc6_)
                                    {
                                       addr277:
                                       return ExternalInterface.call.apply(null,params);
                                    }
                                    addr284:
                                 }
                                 catch(e:Error)
                                 {
                                    §§push(§_-FK§);
                                    §§push("ExternalInterface call failed!\nCall was:");
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + call);
                                       if(_loc7_ || §_-05J§)
                                       {
                                          §§push(§§pop() + "\nError data:");
                                       }
                                    }
                                    §§pop().log(§§pop() + e.toString());
                                 }
                              }
                              §§goto(addr284);
                           }
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
   }
}
