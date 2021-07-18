package §&!0§
{
   import § !r§.§`![§;
   import §]!Z§.§@!j§;
   
   public class §%>§
   {
       
      
      private var §6!M§:Vector.<§?M§>;
      
      public function §%>§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               this.§6!M§ = new Vector.<§?M§>();
            }
         }
      }
      
      public function §<!p§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || _loc3_)
         {
            §§push(null);
            if(!_loc6_)
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  §§pop().§§slot[2] = §§pop();
                  if(_loc5_ || param1)
                  {
                     §§push(§§newactivation());
                     if(_loc5_)
                     {
                        §§push(null);
                        if(_loc5_)
                        {
                           §§pop().§§slot[4] = §§pop();
                           if(_loc5_)
                           {
                              §§push(§§newactivation());
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr60:
                                 §§push(null);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    addr69:
                                    §§pop().§§slot[5] = §§pop();
                                    addr68:
                                    if(_loc5_)
                                    {
                                       addr72:
                                       §§push(§§newactivation());
                                       if(!_loc6_)
                                       {
                                          addr76:
                                          §§pop().§§slot[6] = null;
                                          if(!_loc6_)
                                          {
                                             addr81:
                                             var responseObj:Object = param1;
                                          }
                                       }
                                       §§goto(addr81);
                                    }
                                    var _loc3_:* = 0;
                                    var _loc4_:* = responseObj;
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc5_ || _loc3_)
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(§§pop().§§slot[1].json != null)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            try
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc6_)
                                                               {
                                                                  §§pop().§§slot[4] = §@!j§.decode(responseObj.json);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr182:
                                                                     §§push(0);
                                                                     if(_loc5_)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              _loc4_ = §§pop().§§slot[4];
                                                                              if(!_loc6_)
                                                                              {
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc4_,_loc3_));
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                addr291:
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   addr313:
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                   {
                                                                                                      §§pop().§§slot[3] = this.§50§(responseObj.C);
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr338:
                                                                                                            if(§§pop().§§slot[1].E)
                                                                                                            {
                                                                                                               this.§=P§(responseObj);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  return;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr351);
                                                                                                      }
                                                                                                      addr351:
                                                                                                      if(§§pop().§§slot[3].§=^§())
                                                                                                      {
                                                                                                         if(_loc5_ || param1)
                                                                                                         {
                                                                                                            addr362:
                                                                                                            _loc3_ = 0;
                                                                                                            addr361:
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr366:
                                                                                                               _loc4_ = sc.§!K§();
                                                                                                               addr365:
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§hasnext(_loc4_,_loc3_));
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                               addr405:
                                                                                                            }
                                                                                                            addr408:
                                                                                                            if(_loc5_ || param1)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §`![§.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                                                                      }
                                                                                                      §§goto(addr420);
                                                                                                      §§push(§§newactivation());
                                                                                                   }
                                                                                                   §§goto(addr351);
                                                                                                }
                                                                                                §§goto(addr420);
                                                                                             }
                                                                                             §§goto(addr365);
                                                                                          }
                                                                                          addr407:
                                                                                          §§goto(addr408);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§pop().§§slot[5] = §§nextname(_loc3_,_loc4_);
                                                                                             if(!(_loc5_ || _loc3_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§`![§);
                                                                                             §§push("RESPONSE KEY (json):");
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop().§§slot[5]);
                                                                                                   if(_loc5_ || param1)
                                                                                                   {
                                                                                                      addr249:
                                                                                                      §§push(§§pop() + ", VALUE:");
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         addr254:
                                                                                                         §§push(§§pop() + jsonObj[k2]);
                                                                                                      }
                                                                                                   }
                                                                                                   §§pop().log(§§pop());
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      addr263:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr254);
                                                                                             }
                                                                                             §§goto(addr249);
                                                                                          }
                                                                                          §§goto(addr263);
                                                                                       }
                                                                                    }
                                                                                    break loop0;
                                                                                 }
                                                                              }
                                                                              §§goto(addr262);
                                                                           }
                                                                           §§goto(addr366);
                                                                        }
                                                                        §§goto(addr291);
                                                                     }
                                                                     §§goto(addr362);
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                            }
                                                            catch(e:Error)
                                                            {
                                                               _loc3_ = e;
                                                               §§goto(addr313);
                                                            }
                                                            §§goto(addr338);
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      §§goto(addr313);
                                                   }
                                                   §§goto(addr351);
                                                }
                                                §§goto(addr366);
                                             }
                                             §§goto(addr407);
                                          }
                                          else
                                          {
                                             var k:String = §§nextname(_loc3_,_loc4_);
                                             if(!(_loc5_ || this))
                                             {
                                                continue;
                                             }
                                             §§push(§`![§);
                                             §§push("RESPONSE_KEY: ");
                                             if(_loc5_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() + §§pop().§§slot[2]);
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      addr130:
                                                      §§push(§§pop() + ", VALUE: ");
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§newactivation());
                                                      }
                                                      §§pop().log(§§pop());
                                                      continue;
                                                   }
                                                   §§goto(addr130);
                                                }
                                                §§push(§§pop() + §§pop().§§slot[1][k]);
                                             }
                                             §§goto(addr130);
                                          }
                                       }
                                       break;
                                    }
                                    for(; §§pop(); §§goto(addr405))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc5_ || this)
                                       {
                                          §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                          if(!_loc5_)
                                          {
                                             continue;
                                          }
                                          §§push(§§newactivation());
                                       }
                                       §§pop().§§slot[6].call(null,responseObj);
                                    }
                                    §§goto(addr407);
                                 }
                                 §§goto(addr76);
                              }
                              §§goto(addr81);
                           }
                           §§goto(addr72);
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr81);
               }
               §§goto(addr69);
            }
            §§goto(addr76);
         }
         §§goto(addr60);
      }
      
      public function §=P§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         if(_loc6_ || _loc2_)
         {
            param1.E = true;
         }
         var _loc2_:§?M§ = this.§50§(param1.C);
         if(!(_loc7_ && this))
         {
            if(_loc2_.§=^§())
            {
               addr55:
               for each(_loc3_ in _loc2_.§!K§())
               {
                  if(!_loc7_)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(_loc6_ || _loc3_)
               {
               }
            }
            else
            {
               §`![§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §7!E§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§?M§ = new §?M§(param1,param2);
         if(_loc5_ || this)
         {
            this.§6!M§.push(_loc3_);
            if(!(_loc4_ && param1))
            {
               §§push(§`![§);
               §§push("[ResponseHandler] Command: ");
               if(_loc5_ || this)
               {
                  §§push(§§pop() + param1);
                  if(!_loc4_)
                  {
                     addr74:
                     §§push(§§pop() + " added.");
                  }
                  §§pop().log(§§pop());
                  §§goto(addr77);
               }
               §§goto(addr74);
            }
         }
         addr77:
      }
      
      public function §9#§() : Vector.<§?M§>
      {
         return this.§6!M§;
      }
      
      public function §50§(param1:String) : §?M§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§?M§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§6!M§)
         {
            if(!(_loc6_ && _loc3_))
            {
               if(_loc2_.§!;§() == param1)
               {
                  if(!_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
