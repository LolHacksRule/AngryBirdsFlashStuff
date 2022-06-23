package §+?§
{
   import §+!"§.§5!<§;
   import §60§.§>-§;
   
   public class §#!?§
   {
       
      
      private var §&!$§:Vector.<§8T§>;
      
      public function §#!?§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               addr23:
               this.§&!$§ = new Vector.<§8T§>();
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function §'C§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(null);
            if(!_loc6_)
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  §§pop().§§slot[2] = §§pop();
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(§§newactivation());
                     if(_loc5_ || this)
                     {
                        addr45:
                        §§push(null);
                        if(!(_loc6_ && _loc2_))
                        {
                           §§pop().§§slot[4] = §§pop();
                           if(_loc5_ || _loc2_)
                           {
                              §§push(§§newactivation());
                              if(!_loc6_)
                              {
                                 §§push(null);
                                 if(_loc5_)
                                 {
                                    addr69:
                                    §§pop().§§slot[5] = §§pop();
                                    if(!_loc6_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc5_)
                                       {
                                          addr76:
                                          §§pop().§§slot[6] = null;
                                          addr83:
                                          addr75:
                                          if(_loc5_)
                                          {
                                             addr80:
                                             §§push(§§newactivation());
                                          }
                                          var _loc3_:* = 0;
                                          var _loc4_:* = responseObj;
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             if(_loc5_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop().§§slot[1].json != null)
                                                            {
                                                               try
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     §§pop().§§slot[4] = §>-§.decode(responseObj.json);
                                                                     §§goto(addr340);
                                                                  }
                                                               }
                                                               catch(e:Error)
                                                               {
                                                                  break;
                                                               }
                                                               addr329:
                                                               if(§§pop().§§slot[3].§]v§())
                                                               {
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     addr340:
                                                                     §§push(0);
                                                                     if(!_loc6_)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           addr179:
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              _loc4_ = §§pop().§§slot[4];
                                                                              if(_loc6_)
                                                                              {
                                                                              }
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc4_,_loc3_));
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             addr279:
                                                                                             if(!(_loc6_ && _loc2_))
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             §§goto(addr391);
                                                                                          }
                                                                                          §§goto(addr390);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§pop().§§slot[5] = §§nextname(_loc3_,_loc4_);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             §§push(§5!<§);
                                                                                             §§push("RESPONSE KEY (json):");
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop().§§slot[5]);
                                                                                                   if(_loc5_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop() + ", VALUE:");
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr250:
                                                                                                      §§pop().log(§§pop());
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         addr259:
                                                                                                         responseObj[k2] = jsonObj[k2];
                                                                                                      }
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                }
                                                                                                §§push(§§pop() + §§pop().§§slot[4][k2]);
                                                                                             }
                                                                                             §§goto(addr250);
                                                                                          }
                                                                                          §§goto(addr259);
                                                                                       }
                                                                                    }
                                                                                    addr271:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              loop5:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr390:
                                                                                    §§goto(addr391);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                                       if(!(_loc5_ || this))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§§slot[6].call(null,responseObj);
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr349:
                                                                           _loc4_ = §§pop().§§slot[3].§%!A§();
                                                                           if(_loc5_)
                                                                           {
                                                                              §§goto(addr388);
                                                                           }
                                                                           §§goto(addr382);
                                                                        }
                                                                        addr348:
                                                                        §§goto(addr349);
                                                                        §§push(§§newactivation());
                                                                     }
                                                                     _loc3_ = §§pop();
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§goto(addr348);
                                                                     }
                                                                     addr391:
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        addr399:
                                                                     }
                                                                     return;
                                                                     §§push(0);
                                                                  }
                                                                  §§goto(addr399);
                                                               }
                                                               else
                                                               {
                                                                  §5!<§.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                               }
                                                               §§goto(addr391);
                                                            }
                                                            break;
                                                         }
                                                         addr320:
                                                         if(§§pop().§§slot[1].E)
                                                         {
                                                            this.§@!3§(responseObj);
                                                            return;
                                                         }
                                                         §§goto(addr329);
                                                         §§push(§§newactivation());
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                   §§goto(addr279);
                                                }
                                                else
                                                {
                                                   var k:String = §§nextname(_loc3_,_loc4_);
                                                   if(!_loc5_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§5!<§);
                                                   §§push("RESPONSE_KEY: ");
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() + §§pop().§§slot[2]);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() + ", VALUE: ");
                                                            if(!_loc5_)
                                                            {
                                                            }
                                                            addr125:
                                                            §§pop().log(§§pop());
                                                            continue;
                                                         }
                                                         §§push(§§newactivation());
                                                      }
                                                      §§push(§§pop() + §§pop().§§slot[1][k]);
                                                   }
                                                   §§goto(addr125);
                                                }
                                             }
                                             §§goto(addr271);
                                          }
                                          §§push(§§newactivation());
                                          if(!_loc6_)
                                          {
                                             §§pop().§§slot[3] = this.§9n§(responseObj.C);
                                             §§push(§§newactivation());
                                             if(!(_loc6_ && param1))
                                             {
                                                §§goto(addr320);
                                             }
                                             §§goto(addr329);
                                          }
                                          §§goto(addr320);
                                       }
                                    }
                                    §§goto(addr80);
                                 }
                                 §§goto(addr76);
                              }
                              §§pop().§§slot[1] = param1;
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr80);
               }
               §§goto(addr69);
            }
            §§goto(addr76);
         }
         §§goto(addr45);
      }
      
      public function §@!3§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         if(_loc6_ || param1)
         {
            param1.E = true;
         }
         var _loc2_:§8T§ = this.§9n§(param1.C);
         if(_loc6_ || _loc2_)
         {
            if(_loc2_.§]v§())
            {
               addr65:
               for each(_loc3_ in _loc2_.§%!A§())
               {
                  if(_loc6_)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(_loc7_)
               {
               }
            }
            else
            {
               §5!<§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function §7j§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§8T§ = new §8T§(param1,param2);
         if(_loc4_)
         {
            this.§&!$§.push(_loc3_);
            if(!(_loc5_ && param1))
            {
               addr45:
               §§push(§5!<§);
               §§push("[ResponseHandler] Command: ");
               if(_loc4_)
               {
                  §§push(§§pop() + param1);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + " added.");
                  }
               }
               §§pop().log(§§pop());
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §59§() : Vector.<§8T§>
      {
         return this.§&!$§;
      }
      
      public function §9n§(param1:String) : §8T§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§8T§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§&!$§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ && _loc3_)
               {
                  break;
               }
               if(_loc2_.§2<§() == param1)
               {
                  if(!(_loc5_ && param1))
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
