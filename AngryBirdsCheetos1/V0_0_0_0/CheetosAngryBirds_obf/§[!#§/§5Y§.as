package §[!#§
{
   import §,!D§.§5E§;
   import §@,§.§4h§;
   
   public class §5Y§
   {
       
      
      private var §<P§:Vector.<§-Z§>;
      
      public function §5Y§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            do
            {
               this.§<P§ = new Vector.<§-Z§>();
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function §try §(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr92:
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
                     while(true)
                     {
                        §§push(null);
                        addr87:
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(!_loc5_)
                              {
                                 §§push(null);
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc5_ && _loc3_)
                                    {
                                       break;
                                    }
                                    §§pop().§§slot[5] = §§pop();
                                    while(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             addr41:
                                             while(_loc6_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop7;
                                             addr35:
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             if(false)
                                             {
                                                continue;
                                             }
                                             var _loc3_:* = 0;
                                             var _loc4_:* = responseObj;
                                             addr139:
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             if(_loc6_ || this)
                                             {
                                                if(§§pop())
                                                {
                                                   var k:String = §§nextname(_loc3_,_loc4_);
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§push(§4h§);
                                                      §§push("RESPONSE_KEY: " + k);
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         §§push(§§pop() + ", VALUE: ");
                                                         if(!_loc5_)
                                                         {
                                                            addr132:
                                                            §§push(§§pop() + responseObj[k]);
                                                         }
                                                         §§pop().log(§§pop());
                                                         §§goto(addr139);
                                                      }
                                                      §§goto(addr132);
                                                   }
                                                   §§goto(addr139);
                                                }
                                                if(_loc6_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            if(§§pop().§§slot[1].json != null)
                                                            {
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  try
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        §§pop().§§slot[4] = §5E§.§,§(responseObj.json);
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc6_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    _loc4_ = §§pop().§§slot[4];
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr290:
                                                                                       §§push(§§hasnext(_loc4_,_loc3_));
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          addr298:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr284:
                                                                                             var k2:String = §§nextname(_loc3_,_loc4_);
                                                                                             addr261:
                                                                                             addr289:
                                                                                             §§push(§4h§);
                                                                                             §§push("RESPONSE KEY (json):" + k2);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(§§pop() + ", VALUE:");
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr273:
                                                                                                   §§push(§§pop() + jsonObj[k2]);
                                                                                                }
                                                                                                §§pop().log(§§pop());
                                                                                                addr280:
                                                                                                §§push(§§newactivation());
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr261);
                                                                                                         }
                                                                                                         §§goto(addr290);
                                                                                                      }
                                                                                                      §§goto(addr289);
                                                                                                   }
                                                                                                   §§goto(addr280);
                                                                                                }
                                                                                                §§goto(addr284);
                                                                                             }
                                                                                             §§goto(addr273);
                                                                                          }
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr326:
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      §§pop().§§slot[3] = this.§=y§(responseObj.C);
                                                                                                      if(_loc6_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            addr351:
                                                                                                            if(§§pop().§§slot[1].E)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  addr356:
                                                                                                                  this.§#!S§(responseObj);
                                                                                                                  if(_loc6_ || param1)
                                                                                                                  {
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  addr381:
                                                                                                                  addr382:
                                                                                                                  _loc3_ = 0;
                                                                                                                  addr381:
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     addr386:
                                                                                                                     _loc4_ = sc.§=!@§();
                                                                                                                     addr385:
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr415:
                                                                                                                        if(§§hasnext(_loc4_,_loc3_))
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 addr410:
                                                                                                                                 fnc.call(null,responseObj);
                                                                                                                              }
                                                                                                                              §§goto(addr415);
                                                                                                                           }
                                                                                                                           §§goto(addr410);
                                                                                                                        }
                                                                                                                        addr428:
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           addr435:
                                                                                                                           return;
                                                                                                                           addr431:
                                                                                                                        }
                                                                                                                        §§goto(addr435);
                                                                                                                        addr427:
                                                                                                                     }
                                                                                                                     §§goto(addr410);
                                                                                                                  }
                                                                                                                  §§goto(addr428);
                                                                                                               }
                                                                                                               §§goto(addr431);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr376:
                                                                                                               if(sc.§@_§())
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§goto(addr381);
                                                                                                                  }
                                                                                                                  §§goto(addr435);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §4h§.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr435);
                                                                                                         }
                                                                                                         §§goto(addr376);
                                                                                                      }
                                                                                                      §§goto(addr356);
                                                                                                   }
                                                                                                   §§goto(addr351);
                                                                                                }
                                                                                                §§goto(addr376);
                                                                                             }
                                                                                             §§goto(addr385);
                                                                                          }
                                                                                          §§goto(addr427);
                                                                                       }
                                                                                       §§goto(addr415);
                                                                                    }
                                                                                    §§goto(addr284);
                                                                                 }
                                                                              }
                                                                              §§goto(addr386);
                                                                           }
                                                                           §§goto(addr382);
                                                                        }
                                                                     }
                                                                     §§goto(addr351);
                                                                  }
                                                                  catch(e:Error)
                                                                  {
                                                                     §§goto(addr326);
                                                                  }
                                                                  §§goto(addr326);
                                                               }
                                                               §§goto(addr376);
                                                            }
                                                            §§goto(addr326);
                                                         }
                                                         §§goto(addr351);
                                                      }
                                                      §§goto(addr381);
                                                   }
                                                }
                                                §§goto(addr428);
                                             }
                                             §§goto(addr298);
                                          }
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    continue loop6;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §#!S§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Function = null;
         if(_loc7_)
         {
            param1.E = true;
         }
         var _loc2_:§-Z§ = this.§=y§(param1.C);
         if(!_loc6_)
         {
            if(_loc2_.§@_§())
            {
               addr46:
               for each(_loc3_ in _loc2_.§=!@§())
               {
                  if(!(_loc6_ && param1))
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(!_loc7_)
               {
               }
            }
            else
            {
               §4h§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §9!D§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§-Z§ = new §-Z§(param1,param2);
         if(_loc5_)
         {
            this.§<P§.push(_loc3_);
            do
            {
               §§push(§4h§);
               §§push("[ResponseHandler] Command: " + param1);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() + " added.");
               }
               §§pop().log(§§pop());
            }
            while(!_loc5_);
            
         }
      }
      
      public function §"!Y§() : Vector.<§-Z§>
      {
         return this.§<P§;
      }
      
      public function §=y§(param1:String) : §-Z§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§-Z§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§<P§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.§5!$§() == param1)
               {
                  if(_loc6_ || _loc2_)
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
