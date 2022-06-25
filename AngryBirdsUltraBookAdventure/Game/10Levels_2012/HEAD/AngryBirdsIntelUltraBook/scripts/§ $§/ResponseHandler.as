package § $§
{
   import §'N§.Log;
   import §?!f§.§]!f§;
   
   public class ResponseHandler
   {
       
      
      private var §=!R§:Vector.<ServerCommand>;
      
      public function ResponseHandler()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
         do
         {
            this.§=!R§ = new Vector.<ServerCommand>();
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function each(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            addr111:
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
                     while(true)
                     {
                        §§push(null);
                        addr99:
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           loop6:
                           while(_loc5_ || _loc3_)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(null);
                                 addr84:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_ && param1)
                                    {
                                       break;
                                       addr93:
                                    }
                                    §§pop().§§slot[5] = §§pop();
                                    while(!_loc6_)
                                    {
                                       do
                                       {
                                          §§push(§§newactivation());
                                          continue loop7;
                                       }
                                       while(false);
                                       
                                       var _loc3_:* = 0;
                                       var _loc4_:* = responseObj;
                                       addr169:
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(_loc5_)
                                       {
                                          if(§§pop())
                                          {
                                             var k:String = §§nextname(_loc3_,_loc4_);
                                             if(_loc5_ || this)
                                             {
                                                §§push(Log);
                                                §§push("RESPONSE_KEY: ");
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(§§pop() + §§pop().§§slot[2]);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() + ", VALUE: ");
                                                         if(!_loc6_)
                                                         {
                                                            addr161:
                                                            §§push(§§pop() + responseObj[k]);
                                                         }
                                                         §§pop().log(§§pop());
                                                         §§goto(addr169);
                                                      }
                                                   }
                                                }
                                                §§goto(addr161);
                                             }
                                             §§goto(addr169);
                                          }
                                          if(_loc5_)
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc6_)
                                                   {
                                                      if(§§pop().§§slot[1].json != null)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            try
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  §§pop().§§slot[4] = §]!f§.§ !5§(responseObj.json);
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              _loc4_ = §§pop().§§slot[4];
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr332:
                                                                                 §§push(§§hasnext(_loc4_,_loc3_));
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    addr340:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr326:
                                                                                       var k2:String = §§nextname(_loc3_,_loc4_);
                                                                                       addr285:
                                                                                       addr331:
                                                                                       §§push(Log);
                                                                                       §§push("RESPONSE KEY (json):");
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop().§§slot[5]);
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                addr303:
                                                                                                §§push(§§pop() + ", VALUE:");
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr308:
                                                                                                   §§push(§§pop() + jsonObj[k2]);
                                                                                                }
                                                                                             }
                                                                                             §§pop().log(§§pop());
                                                                                             addr315:
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                                   if(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr285);
                                                                                                      }
                                                                                                      §§goto(addr332);
                                                                                                   }
                                                                                                   §§goto(addr315);
                                                                                                }
                                                                                                §§goto(addr326);
                                                                                             }
                                                                                             §§goto(addr331);
                                                                                          }
                                                                                          §§goto(addr308);
                                                                                       }
                                                                                       §§goto(addr303);
                                                                                    }
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr343:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             addr368:
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                addr376:
                                                                                                §§pop().§§slot[3] = this.§5>§(responseObj.C);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc6_ && _loc3_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr412:
                                                                                                   if(§§pop().§§slot[3].§!K§())
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         addr418:
                                                                                                         _loc3_ = 0;
                                                                                                         addr417:
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            addr422:
                                                                                                            _loc4_ = sc.§ !#§();
                                                                                                            if(_loc6_ && param1)
                                                                                                            {
                                                                                                            }
                                                                                                            addr462:
                                                                                                            if(§§hasnext(_loc4_,_loc3_))
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr456:
                                                                                                                     fnc.call(null,responseObj);
                                                                                                                  }
                                                                                                                  §§goto(addr462);
                                                                                                               }
                                                                                                               §§goto(addr456);
                                                                                                            }
                                                                                                            addr465:
                                                                                                            if(_loc5_ || _loc2_)
                                                                                                            {
                                                                                                            }
                                                                                                            return;
                                                                                                            addr464:
                                                                                                         }
                                                                                                         §§goto(addr465);
                                                                                                      }
                                                                                                      addr473:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      Log.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                                                                   }
                                                                                                   §§goto(addr465);
                                                                                                }
                                                                                                addr411:
                                                                                                §§goto(addr412);
                                                                                                §§push(§§newactivation());
                                                                                             }
                                                                                             §§push(Boolean(§§pop().§§slot[1].E));
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr401:
                                                                                                      this.§]-§(responseObj);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr417);
                                                                                                   }
                                                                                                   §§goto(addr473);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr411);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr412);
                                                                                          }
                                                                                          §§goto(addr411);
                                                                                       }
                                                                                       §§goto(addr465);
                                                                                    }
                                                                                    §§goto(addr464);
                                                                                 }
                                                                                 §§goto(addr462);
                                                                              }
                                                                              §§goto(addr326);
                                                                           }
                                                                        }
                                                                        §§goto(addr422);
                                                                     }
                                                                  }
                                                                  §§goto(addr418);
                                                               }
                                                            }
                                                            catch(e:Error)
                                                            {
                                                               _loc3_ = e;
                                                               §§goto(addr368);
                                                            }
                                                            §§goto(addr376);
                                                         }
                                                         §§goto(addr401);
                                                      }
                                                      §§goto(addr368);
                                                   }
                                                   §§goto(addr412);
                                                }
                                                §§goto(addr376);
                                             }
                                             §§goto(addr422);
                                          }
                                          §§goto(addr343);
                                       }
                                       §§goto(addr340);
                                    }
                                    continue loop6;
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            if(!(_loc5_ || _loc3_))
            {
               continue;
            }
            §§push(null);
            if(!(_loc6_ && _loc2_))
            {
               if(_loc5_ || _loc2_)
               {
                  if(_loc5_ || this)
                  {
                     §§pop().§§slot[6] = §§pop();
                     while(!_loc6_)
                     {
                        §§push(§§newactivation());
                        if(_loc5_ || param1)
                        {
                           §§pop().§§slot[1] = param1;
                           if(_loc6_)
                           {
                              continue;
                           }
                           §§goto(addr34);
                        }
                        §§goto(addr38);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr111);
               }
               §§goto(addr99);
            }
            §§goto(addr84);
         }
      }
      
      public function §]-§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         if(_loc6_)
         {
            param1.E = true;
         }
         var _loc2_:ServerCommand = this.§5>§(param1.C);
         if(_loc6_)
         {
            if(_loc2_.§!K§())
            {
               addr45:
               for each(_loc3_ in _loc2_.§ !#§())
               {
                  if(!_loc7_)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(_loc6_ || this)
               {
               }
            }
            else
            {
               Log.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §8>§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:ServerCommand = new ServerCommand(param1,param2);
         if(!_loc4_)
         {
            this.§=!R§.push(_loc3_);
            do
            {
               §§push(Log);
               §§push("[ResponseHandler] Command: ");
               if(!_loc4_)
               {
                  §§push(§§pop() + param1);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() + " added.");
                  }
               }
               §§pop().log(§§pop());
            }
            while(!(_loc5_ || _loc3_));
            
         }
      }
      
      public function §&! §() : Vector.<ServerCommand>
      {
         return this.§=!R§;
      }
      
      public function §5>§(param1:String) : ServerCommand
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:ServerCommand = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§=!R§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(_loc2_.§<[§() == param1)
               {
                  if(_loc6_)
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
