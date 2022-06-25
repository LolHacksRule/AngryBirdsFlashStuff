package §6!a§
{
   import §6b§.Log;
   import §?!G§.§8!-§;
   
   public class ResponseHandler
   {
       
      
      private var §%!%§:Vector.<ServerCommand>;
      
      public function ResponseHandler()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
         do
         {
            this.§%!%§ = new Vector.<ServerCommand>();
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function §>8§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               loop2:
               while(true)
               {
                  §§pop().§§slot[2] = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     for(; !_loc5_; while(_loc6_ || _loc2_)
                     {
                        §§goto(addr71);
                        §§push(null);
                        §§goto(addr41);
                     })
                     {
                        §§push(null);
                        loop5:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              break;
                              addr97:
                           }
                           §§pop().§§slot[4] = §§pop();
                           while(!(_loc5_ && this))
                           {
                              §§push(§§newactivation());
                              continue loop4;
                           }
                           continue loop3;
                           addr71:
                           loop8:
                           while(true)
                           {
                              if(!(_loc6_ || _loc2_))
                              {
                                 continue loop5;
                              }
                              §§push(§§pop());
                              if(!(_loc6_ || this))
                              {
                                 break;
                              }
                              §§pop().§§slot[5] = §§pop();
                              while(true)
                              {
                                 addr39:
                                 addr30:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    addr41:
                                    while(!(_loc5_ && this))
                                    {
                                       continue loop8;
                                    }
                                    continue loop4;
                                 }
                                 if(_loc5_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    §§goto(addr39);
                                 }
                                 else
                                 {
                                    var _loc3_:* = 0;
                                    var _loc4_:* = responseObj;
                                    addr175:
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    if(_loc6_ || param1)
                                    {
                                       if(§§pop())
                                       {
                                          var k:String = §§nextname(_loc3_,_loc4_);
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(Log);
                                             §§push("RESPONSE_KEY: ");
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(§§newactivation());
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§push(§§pop() + §§pop().§§slot[2]);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§push(§§pop() + ", VALUE: ");
                                                      if(_loc5_ && _loc2_)
                                                      {
                                                      }
                                                      addr173:
                                                      §§pop().log(§§pop());
                                                      §§goto(addr175);
                                                   }
                                                   §§push(§§newactivation());
                                                }
                                                §§push(§§pop() + §§pop().§§slot[1][k]);
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr175);
                                       }
                                       if(_loc6_)
                                       {
                                          if(_loc6_)
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc6_)
                                                {
                                                   if(§§pop().§§slot[1].json != null)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         try
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§pop().§§slot[4] = §8!-§.§9N§(responseObj.json);
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc5_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc6_)
                                                                        {
                                                                           _loc4_ = §§pop().§§slot[4];
                                                                           if(_loc6_)
                                                                           {
                                                                              addr323:
                                                                              §§push(§§hasnext(_loc4_,_loc3_));
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr317:
                                                                                    var k2:String = §§nextname(_loc3_,_loc4_);
                                                                                    addr276:
                                                                                    addr322:
                                                                                    §§push(Log);
                                                                                    §§push("RESPONSE KEY (json):");
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop().§§slot[5]);
                                                                                          if(_loc6_ || _loc2_)
                                                                                          {
                                                                                             addr299:
                                                                                             §§push(§§pop() + ", VALUE:");
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr304:
                                                                                                §§push(§§pop() + jsonObj[k2]);
                                                                                             }
                                                                                          }
                                                                                          §§pop().log(§§pop());
                                                                                          addr311:
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr276);
                                                                                                   }
                                                                                                   §§goto(addr323);
                                                                                                }
                                                                                                §§goto(addr311);
                                                                                             }
                                                                                             §§goto(addr317);
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       §§goto(addr304);
                                                                                    }
                                                                                    §§goto(addr299);
                                                                                 }
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr334:
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       addr342:
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          addr364:
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§goto(addr367);
                                                                                          }
                                                                                          §§goto(addr389);
                                                                                          addr350:
                                                                                       }
                                                                                       §§goto(addr423);
                                                                                    }
                                                                                    §§goto(addr476);
                                                                                 }
                                                                                 §§goto(addr475);
                                                                              }
                                                                              §§goto(addr473);
                                                                           }
                                                                           §§goto(addr317);
                                                                        }
                                                                        §§goto(addr428);
                                                                     }
                                                                     §§goto(addr342);
                                                                  }
                                                                  §§goto(addr424);
                                                               }
                                                               §§goto(addr428);
                                                            }
                                                         }
                                                         catch(e:Error)
                                                         {
                                                            §§goto(addr364);
                                                         }
                                                         §§goto(addr413);
                                                      }
                                                      §§goto(addr350);
                                                   }
                                                   §§goto(addr364);
                                                }
                                                addr367:
                                                §§pop().§§slot[3] = this.§-!T§(responseObj.C);
                                                if(_loc6_ || param1)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc5_ && this))
                                                   {
                                                      addr389:
                                                      §§push(Boolean(§§pop().§§slot[1].E));
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr402:
                                                               this.§0W§(responseObj);
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr409);
                                                               }
                                                               addr424:
                                                               _loc3_ = 0;
                                                               addr423:
                                                               if(!_loc5_)
                                                               {
                                                                  addr428:
                                                                  _loc4_ = sc.§"!-§();
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                  }
                                                                  addr473:
                                                                  if(§§hasnext(_loc4_,_loc3_))
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                        if(_loc6_)
                                                                        {
                                                                           addr467:
                                                                           fnc.call(null,responseObj);
                                                                        }
                                                                        §§goto(addr473);
                                                                     }
                                                                     §§goto(addr467);
                                                                  }
                                                                  addr476:
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                  }
                                                                  return;
                                                                  addr475:
                                                               }
                                                               §§goto(addr476);
                                                            }
                                                            addr484:
                                                            §§goto(addr476);
                                                         }
                                                         else
                                                         {
                                                            addr413:
                                                            §§push(sc.§4Y§());
                                                         }
                                                         §§goto(addr476);
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_ || param1)
                                                         {
                                                            §§goto(addr423);
                                                         }
                                                         §§goto(addr484);
                                                      }
                                                      else
                                                      {
                                                         Log.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                         §§goto(addr476);
                                                      }
                                                   }
                                                   §§goto(addr413);
                                                }
                                                addr409:
                                                return;
                                             }
                                             §§goto(addr402);
                                          }
                                          §§goto(addr428);
                                       }
                                       §§goto(addr334);
                                    }
                                    §§goto(addr428);
                                 }
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §0W§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         if(!_loc7_)
         {
            param1.E = true;
         }
         var _loc2_:ServerCommand = this.§-!T§(param1.C);
         if(!(_loc7_ && _loc3_))
         {
            if(_loc2_.§4Y§())
            {
               addr50:
               for each(_loc3_ in _loc2_.§"!-§())
               {
                  if(_loc6_)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(_loc7_ && param1)
               {
               }
            }
            else
            {
               Log.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §&H§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:ServerCommand = new ServerCommand(param1,param2);
         if(_loc4_)
         {
            this.§%!%§.push(_loc3_);
         }
         do
         {
            §§push(Log);
            §§push("[ResponseHandler] Command: ");
            if(!(_loc5_ && param2))
            {
               §§push(§§pop() + param1);
               if(_loc5_ && param1)
               {
                  continue;
               }
            }
         }
         while(§§pop().log(§§pop()), !(_loc4_ || this));
         
      }
      
      public function §7G§() : Vector.<ServerCommand>
      {
         return this.§%!%§;
      }
      
      public function §-!T§(param1:String) : ServerCommand
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:ServerCommand = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§%!%§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc5_)
               {
                  break;
               }
               if(_loc2_.§-!`§() == param1)
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            throw new Error("[ResponseHandler] Command not found: " + param1);
         }
         return _loc2_;
      }
   }
}
