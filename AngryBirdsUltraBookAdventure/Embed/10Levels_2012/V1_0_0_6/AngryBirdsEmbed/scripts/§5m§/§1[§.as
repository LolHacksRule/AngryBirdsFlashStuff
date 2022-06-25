package §5m§
{
   import §>K§.§9X§;
   import §?2§.§?!&§;
   
   public class §1[§
   {
       
      
      private var §[M§:Vector.<§=!G§>;
      
      public function §1[§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr22:
               this.§[M§ = new Vector.<§=!G§>();
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function §1X§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || this)
         {
            §§push(null);
            if(!_loc5_)
            {
               §§push(§§pop());
               if(!(_loc5_ && _loc2_))
               {
                  §§pop().§§slot[2] = §§pop();
                  if(_loc6_)
                  {
                     §§push(§§newactivation());
                     if(!_loc5_)
                     {
                        §§push(null);
                        if(!_loc5_)
                        {
                           §§pop().§§slot[4] = §§pop();
                           if(!_loc5_)
                           {
                              addr53:
                              §§push(§§newactivation());
                              if(_loc6_)
                              {
                                 addr56:
                                 §§push(null);
                                 if(_loc6_ || _loc2_)
                                 {
                                    addr65:
                                    §§pop().§§slot[5] = §§pop();
                                    addr64:
                                    if(!_loc5_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc6_ || _loc2_)
                                       {
                                          addr77:
                                          §§pop().§§slot[6] = null;
                                          if(_loc6_ || this)
                                          {
                                          }
                                          §§goto(addr89);
                                       }
                                       §§goto(addr87);
                                    }
                                    addr87:
                                    §§pop().§§slot[1] = param1;
                                    addr89:
                                    var _loc3_:* = 0;
                                    var _loc4_:* = responseObj;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(_loc6_ || param1)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                if(_loc6_ || _loc2_)
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc5_)
                                                      {
                                                         if(§§pop().§§slot[1].json != null)
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               try
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc6_)
                                                                  {
                                                                     addr176:
                                                                     §§pop().§§slot[4] = §?!&§.decode(responseObj.json);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr185:
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
                                                                                 if(_loc5_)
                                                                                 {
                                                                                 }
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc4_,_loc3_));
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                addr301:
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   §§goto(addr309);
                                                                                                }
                                                                                                §§goto(addr429);
                                                                                             }
                                                                                             addr428:
                                                                                             §§goto(addr429);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                §§pop().§§slot[5] = §§nextname(_loc3_,_loc4_);
                                                                                                if(_loc5_ && this)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                §§push(§9X§);
                                                                                                §§push("RESPONSE KEY (json):");
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop().§§slot[5]);
                                                                                                      if(!(_loc5_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() + ", VALUE:");
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            addr267:
                                                                                                            §§push(§§pop() + jsonObj[k2]);
                                                                                                         }
                                                                                                      }
                                                                                                      §§pop().log(§§pop());
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         addr276:
                                                                                                         responseObj[k2] = jsonObj[k2];
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr267);
                                                                                             }
                                                                                             §§goto(addr276);
                                                                                          }
                                                                                       }
                                                                                       addr293:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 for(; §§pop(); §§goto(addr426))
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                                       if(_loc5_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr420);
                                                                                    }
                                                                                    §§goto(addr421);
                                                                                 }
                                                                                 §§goto(addr428);
                                                                              }
                                                                              §§goto(addr382);
                                                                           }
                                                                           §§goto(addr309);
                                                                        }
                                                                        §§goto(addr373);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr309);
                                                               }
                                                               catch(e:Error)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      §§goto(addr176);
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr382);
                                             }
                                             §§goto(addr301);
                                          }
                                          else
                                          {
                                             var k:String = §§nextname(_loc3_,_loc4_);
                                             if(!_loc6_)
                                             {
                                                continue;
                                             }
                                             §§push(§9X§);
                                             §§push("RESPONSE_KEY: ");
                                             if(!_loc5_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() + §§pop().§§slot[2]);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() + ", VALUE: ");
                                                      if(_loc5_)
                                                      {
                                                      }
                                                      addr126:
                                                      §§pop().log(§§pop());
                                                      continue;
                                                   }
                                                   §§push(§§newactivation());
                                                }
                                                §§push(§§pop() + §§pop().§§slot[1][k]);
                                             }
                                             §§goto(addr126);
                                          }
                                       }
                                       §§goto(addr293);
                                    }
                                    addr326:
                                    §§push(§§newactivation());
                                    if(!_loc5_)
                                    {
                                       §§pop().§§slot[3] = this.§`k§(responseObj.C);
                                       §§push(§§newactivation());
                                       if(!(_loc5_ && param1))
                                       {
                                          if(§§pop().§§slot[1].E)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                this.§ do§(responseObj);
                                                return;
                                             }
                                             §§goto(addr372);
                                          }
                                          else
                                          {
                                             §§goto(addr309);
                                          }
                                       }
                                    }
                                    addr309:
                                    if(!_loc5_)
                                    {
                                       break loop0;
                                    }
                                    if(sc.§"M§())
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          addr373:
                                          _loc3_ = 0;
                                          addr372:
                                          if(_loc6_ || param1)
                                          {
                                             addr382:
                                             _loc4_ = sc.§]a§();
                                             if(_loc6_)
                                             {
                                                addr426:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc4_,_loc3_));
                                                   break loop1;
                                                }
                                                addr426:
                                             }
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                addr421:
                                                while(true)
                                                {
                                                   §§pop().§§slot[6].call(null,responseObj);
                                                   §§goto(addr426);
                                                }
                                             }
                                             addr420:
                                          }
                                          addr429:
                                          if(_loc5_ && param1)
                                          {
                                          }
                                          §§goto(addr441);
                                       }
                                    }
                                    else
                                    {
                                       §9X§.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                    }
                                    addr441:
                                    return;
                                    §§push(§§newactivation());
                                 }
                                 §§goto(addr77);
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr77);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr53);
               }
            }
            §§goto(addr65);
         }
         §§goto(addr56);
      }
      
      public function § do§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Function = null;
         if(!(_loc6_ && _loc3_))
         {
            param1.E = true;
         }
         var _loc2_:§=!G§ = this.§`k§(param1.C);
         if(!(_loc6_ && param1))
         {
            if(_loc2_.§"M§())
            {
               addr56:
               for each(_loc3_ in _loc2_.§]a§())
               {
                  if(_loc7_)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(_loc7_ || _loc3_)
               {
               }
            }
            else
            {
               §9X§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function §]K§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§=!G§ = new §=!G§(param1,param2);
         if(_loc4_)
         {
            this.§[M§.push(_loc3_);
            if(_loc4_)
            {
               addr40:
               §§push(§9X§);
               §§push("[ResponseHandler] Command: ");
               if(!_loc5_)
               {
                  §§push(§§pop() + param1);
                  if(_loc4_)
                  {
                     §§push(§§pop() + " added.");
                  }
               }
               §§pop().log(§§pop());
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function §>=§() : Vector.<§=!G§>
      {
         return this.§[M§;
      }
      
      public function §`k§(param1:String) : §=!G§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§=!G§ = null;
         for each(_loc2_ in this.§[M§)
         {
            if(_loc6_ || param1)
            {
               if(_loc2_.§[]§() == param1)
               {
                  if(_loc6_ || this)
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
