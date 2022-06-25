package §7X§
{
   import §!e§.§function§;
   import §"x§.§-8§;
   
   public class §-!w§
   {
       
      
      private var §0B§:Vector.<§1!u§>;
      
      public function §-!w§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
         do
         {
            this.§0B§ = new Vector.<§1!u§>();
         }
         while(_loc2_);
         
      }
      
      public function §%z§(param1:Object) : void
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
                     for(; !_loc5_; loop11:
                     while(_loc6_ || _loc2_)
                     {
                        §§push(null);
                        if(_loc6_)
                        {
                           if(!_loc5_)
                           {
                              §§pop().§§slot[6] = §§pop();
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                    continue loop11;
                                 }
                                 §§goto(addr69);
                              }
                              §§goto(addr62);
                           }
                           else
                           {
                              §§goto(addr77);
                           }
                        }
                        §§goto(addr63);
                     })
                     {
                        §§push(null);
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           addr79:
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              addr62:
                              while(true)
                              {
                                 §§push(null);
                                 addr63:
                                 while(_loc6_)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_)
                                    {
                                       §§pop().§§slot[5] = §§pop();
                                       while(_loc6_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             continue loop4;
                                             addr32:
                                             if(!(_loc6_ || _loc2_))
                                             {
                                                break;
                                             }
                                             if(false)
                                             {
                                                continue;
                                             }
                                             var _loc3_:* = 0;
                                             var _loc4_:* = responseObj;
                                             addr143:
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             if(!_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   var k:String = §§nextname(_loc3_,_loc4_);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      §§push(§-8§);
                                                      §§push("RESPONSE_KEY: ");
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() + §§pop().§§slot[2]);
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               §§push(§§pop() + ", VALUE: ");
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  addr136:
                                                                  §§push(§§pop() + responseObj[k]);
                                                               }
                                                               §§pop().log(§§pop());
                                                               §§goto(addr143);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                   §§goto(addr143);
                                                }
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc5_)
                                                         {
                                                            if(§§pop().§§slot[1].json != null)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  try
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§pop().§§slot[4] = §function§.§8!^§(responseObj.json);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc5_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    _loc4_ = §§pop().§§slot[4];
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       addr288:
                                                                                       §§push(§§hasnext(_loc4_,_loc3_));
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          addr296:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr282:
                                                                                             var k2:String = §§nextname(_loc3_,_loc4_);
                                                                                             addr243:
                                                                                             addr287:
                                                                                             §§push(§-8§);
                                                                                             §§push("RESPONSE KEY (json):");
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop().§§slot[5]);
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop() + ", VALUE:");
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr270:
                                                                                                         §§push(§§pop() + jsonObj[k2]);
                                                                                                      }
                                                                                                   }
                                                                                                   §§pop().log(§§pop());
                                                                                                   addr276:
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr243);
                                                                                                            }
                                                                                                            §§goto(addr288);
                                                                                                         }
                                                                                                         §§goto(addr276);
                                                                                                      }
                                                                                                      §§goto(addr282);
                                                                                                      addr278:
                                                                                                   }
                                                                                                   §§goto(addr287);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr270);
                                                                                          }
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!(_loc5_ && _loc2_))
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   addr329:
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr332:
                                                                                                      §§pop().§§slot[3] = this.§9w§(responseObj.C);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr341:
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            addr344:
                                                                                                            if(§§pop().§§slot[1].E)
                                                                                                            {
                                                                                                               if(_loc6_ || _loc3_)
                                                                                                               {
                                                                                                                  this.§&!§(responseObj);
                                                                                                                  if(_loc5_ && _loc3_)
                                                                                                                  {
                                                                                                                     §§goto(addr438);
                                                                                                                  }
                                                                                                               }
                                                                                                               return;
                                                                                                            }
                                                                                                            addr368:
                                                                                                            addr369:
                                                                                                            if(sc.§ g§())
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  addr375:
                                                                                                                  _loc3_ = 0;
                                                                                                                  addr374:
                                                                                                                  if(_loc6_ || param1)
                                                                                                                  {
                                                                                                                     addr384:
                                                                                                                     _loc4_ = sc.§^!^§();
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        addr423:
                                                                                                                        if(§§hasnext(_loc4_,_loc3_))
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                                                                              if(_loc6_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr418:
                                                                                                                                 fnc.call(null,responseObj);
                                                                                                                              }
                                                                                                                              §§goto(addr423);
                                                                                                                           }
                                                                                                                           §§goto(addr418);
                                                                                                                        }
                                                                                                                        addr426:
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           addr434:
                                                                                                                           §§goto(addr438);
                                                                                                                        }
                                                                                                                        addr438:
                                                                                                                        return;
                                                                                                                        addr425:
                                                                                                                     }
                                                                                                                     §§goto(addr418);
                                                                                                                  }
                                                                                                                  §§goto(addr426);
                                                                                                               }
                                                                                                               §§goto(addr434);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §-8§.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                                                                            }
                                                                                                            §§goto(addr438);
                                                                                                         }
                                                                                                         §§goto(addr369);
                                                                                                      }
                                                                                                      §§goto(addr374);
                                                                                                   }
                                                                                                   §§goto(addr369);
                                                                                                }
                                                                                                §§goto(addr341);
                                                                                             }
                                                                                             §§goto(addr426);
                                                                                          }
                                                                                          §§goto(addr425);
                                                                                       }
                                                                                       §§goto(addr423);
                                                                                    }
                                                                                    §§goto(addr278);
                                                                                 }
                                                                                 §§goto(addr384);
                                                                              }
                                                                              §§goto(addr426);
                                                                           }
                                                                           §§goto(addr375);
                                                                        }
                                                                        §§goto(addr369);
                                                                     }
                                                                  }
                                                                  catch(e:Error)
                                                                  {
                                                                     _loc3_ = e;
                                                                  }
                                                                  §§goto(addr344);
                                                               }
                                                               §§goto(addr368);
                                                            }
                                                            §§goto(addr329);
                                                         }
                                                         §§goto(addr332);
                                                      }
                                                      §§goto(addr368);
                                                   }
                                                }
                                                §§goto(addr426);
                                             }
                                             §§goto(addr296);
                                          }
                                          continue loop3;
                                       }
                                       continue loop6;
                                       addr69:
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §&!§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         if(_loc6_ || param1)
         {
            param1.E = true;
         }
         var _loc2_:§1!u§ = this.§9w§(param1.C);
         if(!_loc7_)
         {
            if(_loc2_.§ g§())
            {
               for each(_loc3_ in _loc2_.§^!^§())
               {
                  if(_loc6_ || _loc3_)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(_loc7_)
               {
               }
               addr50:
            }
            else
            {
               §-8§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §^!J§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§1!u§ = new §1!u§(param1,param2);
         if(!_loc4_)
         {
            this.§0B§.push(_loc3_);
            do
            {
               §§push(§-8§);
               §§push("[ResponseHandler] Command: ");
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() + param1);
                  if(_loc4_ && param2)
                  {
                     continue;
                  }
               }
            }
            while(§§pop().log(§§pop()), _loc4_);
            
         }
      }
      
      public function §]!V§() : Vector.<§1!u§>
      {
         return this.§0B§;
      }
      
      public function §9w§(param1:String) : §1!u§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§1!u§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§0B§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || param1))
               {
                  break;
               }
               if(_loc2_.§@t§() == param1)
               {
                  if(!_loc6_)
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
