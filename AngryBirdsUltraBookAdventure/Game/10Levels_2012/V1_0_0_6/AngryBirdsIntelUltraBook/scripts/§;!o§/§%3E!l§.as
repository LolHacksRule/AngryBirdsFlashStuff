package §;!o§
{
   import §"x§.§-8§;
   import flash.external.ExternalInterface;
   
   public class §>!l§
   {
      
      public static var §@!3§:Boolean = true;
      
      private static var §`q§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §@!3§ = true;
         }
         do
         {
            §`q§ = {};
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §>!l§()
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
            if(!§`q§[param1])
            {
               if(_loc5_ || _loc3_)
               {
                  §`q§[param1] = new §9l§(param1);
                  if(_loc5_ || param2)
                  {
                     addr61:
                     (§`q§[param1] as §9l§).addCallback(param2);
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr61);
         }
         catch(e:Error)
         {
         }
         addr80:
      }
      
      public static function §&!0§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(§`q§[param1])
            {
               if(!_loc4_)
               {
                  addr24:
                  (§`q§[param1] as §9l§).§&!0§(param2);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public static function § a§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               for(; _loc7_; while(!(_loc6_ && _loc3_))
               {
                  §§pop().§§slot[2] = rest;
                  §§goto(addr67);
               })
               {
                  §§push(param1);
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     addr74:
                     while(true)
                     {
                        addr56:
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop2;
                        }
                        continue loop1;
                     }
                     addr31:
                     §§push(call);
                     if(!(_loc7_ || rest))
                     {
                        continue;
                     }
                     §§pop().§§slot[3] = §§pop() + "(";
                     if(!_loc7_)
                     {
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(_loc6_ && §>!l§)
                           {
                              break;
                           }
                           §§goto(addr31);
                        }
                        continue loop2;
                        addr67:
                     }
                     if(_loc7_ || §>!l§)
                     {
                        if(_loc6_)
                        {
                           continue loop1;
                        }
                        if(true)
                        {
                           var _loc4_:int = 0;
                           var _loc5_:* = params;
                           addr193:
                           if(§§hasnext(_loc5_,_loc4_))
                           {
                              addr187:
                              var obj:Object = §§nextvalue(_loc4_,_loc5_);
                              addr192:
                              §§push(§§newactivation());
                              if(_loc7_ || param1)
                              {
                                 if(§§pop().§§slot[4] != null)
                                 {
                                    if(!_loc6_)
                                    {
                                       addr180:
                                       §§push(§§newactivation());
                                       §§push(debugStr);
                                       if(_loc7_)
                                       {
                                          addr179:
                                          §§push(§§pop() + (obj.toString() + ", "));
                                       }
                                       §§pop().§§slot[3] = §§pop();
                                    }
                                    addr181:
                                    if(_loc7_)
                                    {
                                       §§goto(addr193);
                                    }
                                    §§goto(addr192);
                                 }
                                 §§push(§§newactivation());
                                 if(_loc7_ || rest)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop().§§slot[3]);
                                          if(_loc7_ || §>!l§)
                                          {
                                             §§push("null");
                                             if(_loc7_ || §>!l§)
                                             {
                                                §§push(§§pop() + ", ");
                                             }
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_ || §>!l§)
                                                {
                                                   addr132:
                                                   §§push(§§pop());
                                                   if(_loc7_)
                                                   {
                                                      §§pop().§§slot[3] = §§pop();
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr192);
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   §§goto(addr180);
                                                }
                                             }
                                             §§goto(addr179);
                                          }
                                          §§goto(addr132);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr187);
                           }
                           if(_loc7_)
                           {
                              §§push(§§newactivation());
                              if(_loc7_)
                              {
                                 §§pop().§§slot[3] = debugStr + ");";
                                 §§goto(addr220);
                              }
                              §§goto(addr261);
                           }
                           addr220:
                           §§push(§-8§);
                           §§push("ExternalInterface call: ");
                           if(_loc7_ || _loc3_)
                           {
                              §§push(§§pop() + debugStr);
                           }
                           §§pop().log(§§pop());
                           addr247:
                           if(_loc7_)
                           {
                              if(!_loc6_)
                              {
                                 §§push(Boolean(ExternalInterface.available));
                                 if(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && rest))
                                       {
                                          §§pop();
                                          if(_loc7_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr220);
                                             }
                                             §§push(§@!3§);
                                             if(_loc7_ || param1)
                                             {
                                                §§goto(addr257);
                                             }
                                             addr257:
                                             §§goto(addr256);
                                          }
                                          §§goto(addr260);
                                       }
                                       addr256:
                                       if(§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             try
                                             {
                                                addr261:
                                                params.unshift(call);
                                                addr260:
                                                if(!(_loc6_ && §>!l§))
                                                {
                                                   §§goto(addr272);
                                                }
                                             }
                                             catch(e:Error)
                                             {
                                                §§push(§-8§);
                                                §§push("ExternalInterface call failed!\nCall was:");
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(§§pop() + call);
                                                   if(_loc6_ && rest)
                                                   {
                                                   }
                                                   addr322:
                                                   §§pop().log(§§pop() + e.toString());
                                                }
                                                §§goto(addr322);
                                             }
                                          }
                                          §§goto(addr272);
                                       }
                                       return;
                                    }
                                 }
                                 §§goto(addr257);
                              }
                              §§goto(addr247);
                           }
                           addr272:
                           return ExternalInterface.call.apply(null,params);
                        }
                     }
                     else
                     {
                        §§goto(addr74);
                     }
                     §§goto(addr56);
                  }
               }
               continue loop0;
            }
         }
      }
   }
}
