package §_-bz§
{
   import §_-e3§.§_-54§;
   import §_-hq§.§_-AD§;
   
   public class §_-aP§
   {
       
      
      private var §_-w-§:Vector.<§_-BW§>;
      
      public function §_-aP§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
               addr31:
               this.§_-w-§ = new Vector.<§_-BW§>();
            }
            return;
         }
         §§goto(addr31);
      }
      
      public function §_-n1§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || this)
         {
            §§push(null);
            if(_loc6_)
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  §§pop().§§slot[2] = §§pop();
                  if(_loc6_)
                  {
                     §§push(§§newactivation());
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(null);
                        if(!(_loc5_ && param1))
                        {
                           addr51:
                           §§pop().§§slot[4] = §§pop();
                           if(_loc6_ || _loc2_)
                           {
                              §§push(§§newactivation());
                              if(_loc6_ || _loc3_)
                              {
                                 addr68:
                                 §§push(null);
                                 if(!_loc5_)
                                 {
                                    addr72:
                                    §§pop().§§slot[5] = §§pop();
                                    addr71:
                                    if(!_loc5_)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc5_)
                                       {
                                          addr79:
                                          §§pop().§§slot[6] = null;
                                          addr86:
                                          addr78:
                                          if(_loc6_)
                                          {
                                             addr83:
                                             §§push(§§newactivation());
                                          }
                                          var _loc3_:* = 0;
                                          var _loc4_:* = responseObj;
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(§§pop())
                                                {
                                                   var k:String = §§nextname(_loc3_,_loc4_);
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      §§push(§_-54§);
                                                      §§push("RESPONSE_KEY: " + k);
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         §§push(§§pop() + ", VALUE: ");
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            §§push(§§pop() + responseObj[k]);
                                                         }
                                                      }
                                                      §§pop().log(§§pop());
                                                   }
                                                   continue;
                                                }
                                                if(_loc6_ || _loc3_)
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         if(§§pop().§§slot[1].json != null)
                                                         {
                                                            try
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc6_)
                                                               {
                                                                  §§pop().§§slot[4] = §_-AD§.§_-Ae§(responseObj.json);
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc6_)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              _loc4_ = §§pop().§§slot[4];
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc4_,_loc3_));
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr283:
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   addr291:
                                                                                                   break loop0;
                                                                                                }
                                                                                                addr348:
                                                                                                _loc4_ = sc.§_-ir§();
                                                                                                if(_loc6_ || _loc2_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc4_,_loc3_));
                                                                                                      break loop6;
                                                                                                   }
                                                                                                   addr397:
                                                                                                   return;
                                                                                                   addr389:
                                                                                                   addr391:
                                                                                                   addr392:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   addr377:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().§§slot[6].call(null,responseObj);
                                                                                                      §§goto(addr389);
                                                                                                   }
                                                                                                }
                                                                                                addr376:
                                                                                             }
                                                                                             §§goto(addr391);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                §§pop().§§slot[5] = §§nextname(_loc3_,_loc4_);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(§_-54§);
                                                                                                   §§push("RESPONSE KEY (json):" + k2);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop() + ", VALUE:");
                                                                                                      if(!(_loc5_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() + jsonObj[k2]);
                                                                                                      }
                                                                                                   }
                                                                                                   §§pop().log(§§pop());
                                                                                                   if(!(_loc6_ || this))
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                   }
                                                                                                   addr267:
                                                                                                }
                                                                                                §§goto(addr267);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                                continue loop6;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr280:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§goto(addr389);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr376);
                                                                                       }
                                                                                       §§goto(addr377);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr267);
                                                                           }
                                                                           §§goto(addr348);
                                                                        }
                                                                        §§goto(addr392);
                                                                     }
                                                                     addr339:
                                                                     _loc3_ = §§pop();
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§goto(addr348);
                                                                     }
                                                                     §§goto(addr389);
                                                                  }
                                                                  §§goto(addr329);
                                                               }
                                                            }
                                                            catch(e:Error)
                                                            {
                                                               break;
                                                            }
                                                            addr335:
                                                            if(§§pop().§§slot[3].§_-jv§())
                                                            {
                                                               §§goto(addr339);
                                                               §§push(0);
                                                            }
                                                            else
                                                            {
                                                               §_-54§.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                            }
                                                            §§goto(addr397);
                                                         }
                                                         break;
                                                      }
                                                      addr309:
                                                      §§pop().§§slot[3] = this.§_-qh§(responseObj.C);
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            addr326:
                                                            if(§§pop().§§slot[1].E)
                                                            {
                                                               addr329:
                                                               this.§_-Yr§(responseObj);
                                                               return;
                                                            }
                                                            addr334:
                                                            §§push(§§newactivation());
                                                         }
                                                         §§goto(addr335);
                                                      }
                                                      §§goto(addr334);
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr283);
                                             }
                                             §§goto(addr280);
                                          }
                                          §§push(§§newactivation());
                                          if(!_loc5_)
                                          {
                                             §§goto(addr309);
                                          }
                                          §§goto(addr326);
                                       }
                                       §§pop().§§slot[1] = param1;
                                    }
                                    §§goto(addr86);
                                 }
                                 §§goto(addr79);
                              }
                              §§goto(addr78);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr71);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr79);
               }
               §§goto(addr72);
            }
            §§goto(addr51);
         }
         §§goto(addr79);
      }
      
      public function §_-Yr§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         if(_loc6_ || this)
         {
            param1.E = true;
         }
         var _loc2_:§_-BW§ = this.§_-qh§(param1.C);
         if(!_loc7_)
         {
            if(_loc2_.§_-jv§())
            {
               addr44:
               for each(_loc3_ in _loc2_.§_-ir§())
               {
                  if(!_loc7_)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(!_loc6_)
               {
               }
            }
            else
            {
               §_-54§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §_-RY§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-BW§ = new §_-BW§(param1,param2);
         if(_loc5_ || param2)
         {
            this.§_-w-§.push(_loc3_);
            if(!(_loc4_ && param2))
            {
               §§push(§_-54§);
               §§push("[ResponseHandler] Command: " + param1);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() + " added.");
               }
               §§pop().log(§§pop());
            }
         }
      }
      
      public function §_-w0§() : Vector.<§_-BW§>
      {
         return this.§_-w-§;
      }
      
      public function §_-qh§(param1:String) : §_-BW§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-BW§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§_-w-§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ && param1)
               {
                  break;
               }
               if(_loc2_.§_-nt§() == param1)
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
