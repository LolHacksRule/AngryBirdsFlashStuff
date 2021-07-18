package §;f§
{
   import §;!2§.§,>§;
   import §`K§.§ L§;
   
   public class §1p§
   {
       
      
      private var §8!+§:Vector.<§+!@§>;
      
      public function §1p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         do
         {
            this.§8!+§ = new Vector.<§+!@§>();
         }
         while(_loc2_ && this);
         
      }
      
      public function §!T§(param1:Object) : void
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
                     while(true)
                     {
                        §§push(null);
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              for(; !_loc5_; if(_loc5_ && _loc3_)
                              {
                                 continue;
                              },if(!_loc6_)
                              {
                                 continue loop4;
                              },§§pop().§§slot[1] = param1,if(_loc6_)
                              {
                                 §§goto(addr39);
                              },§§goto(addr62))
                              {
                                 §§push(null);
                                 loop8:
                                 for(; _loc6_ || this; while(true)
                                 {
                                    §§push(null);
                                    if(_loc5_ && _loc2_)
                                    {
                                       continue loop8;
                                    }
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    §§pop().§§slot[6] = §§pop();
                                    §§goto(addr62);
                                 },continue loop5)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc5_ && this))
                                    {
                                       §§pop().§§slot[5] = §§pop();
                                       loop9:
                                       while(!_loc5_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             continue loop8;
                                             addr39:
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
                                             addr153:
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(§§pop())
                                                {
                                                   var k:String = §§nextname(_loc3_,_loc4_);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      §§push(§ L§);
                                                      §§push("RESPONSE_KEY: ");
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc6_ || this)
                                                         {
                                                            §§push(§§pop() + §§pop().§§slot[2]);
                                                            if(!_loc5_)
                                                            {
                                                               addr152:
                                                               §§push(§§pop() + ", VALUE: ");
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§newactivation());
                                                               }
                                                               §§pop().log(§§pop());
                                                               §§goto(addr153);
                                                            }
                                                            §§goto(addr152);
                                                         }
                                                         §§push(§§pop() + §§pop().§§slot[1][k]);
                                                      }
                                                      §§goto(addr152);
                                                   }
                                                   §§goto(addr153);
                                                }
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc6_)
                                                         {
                                                            if(§§pop().§§slot[1].json != null)
                                                            {
                                                               try
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr190:
                                                                     §§pop().§§slot[4] = §,>§.§]t§(responseObj.json);
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        §§push(0);
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr225:
                                                                              §§push(§§newactivation());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 _loc4_ = §§pop().§§slot[4];
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr311:
                                                                                    §§push(§§hasnext(_loc4_,_loc3_));
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr305:
                                                                                          var k2:String = §§nextname(_loc3_,_loc4_);
                                                                                          addr256:
                                                                                          addr310:
                                                                                          §§push(§ L§);
                                                                                          §§push("RESPONSE KEY (json):");
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop().§§slot[5]);
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() + ", VALUE:");
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr293:
                                                                                                   §§pop().log(§§pop());
                                                                                                   addr294:
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                                         if(!(_loc5_ && param1))
                                                                                                         {
                                                                                                            addr254:
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr256);
                                                                                                            }
                                                                                                            §§goto(addr311);
                                                                                                         }
                                                                                                         §§goto(addr294);
                                                                                                      }
                                                                                                      §§goto(addr305);
                                                                                                   }
                                                                                                   §§goto(addr310);
                                                                                                }
                                                                                                §§push(§§newactivation());
                                                                                             }
                                                                                             §§push(§§pop() + §§pop().§§slot[4][k2]);
                                                                                          }
                                                                                          §§goto(addr293);
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!(_loc5_ && _loc2_))
                                                                                          {
                                                                                             addr340:
                                                                                             §§push(§§newactivation());
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§pop().§§slot[3] = this.§1!P§(responseObj.C);
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr378);
                                                                                             }
                                                                                             if(§§pop().§§slot[1].E)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr358:
                                                                                                   this.§>§(responseObj);
                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr377:
                                                                                                   addr378:
                                                                                                   if(§§pop().§§slot[3].§%-§())
                                                                                                   {
                                                                                                      addr382:
                                                                                                      _loc3_ = 0;
                                                                                                      if(_loc6_ || _loc3_)
                                                                                                      {
                                                                                                         addr391:
                                                                                                         _loc4_ = sc.§'!"§();
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                         }
                                                                                                         addr425:
                                                                                                         if(§§hasnext(_loc4_,_loc3_))
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  addr420:
                                                                                                                  fnc.call(null,responseObj);
                                                                                                               }
                                                                                                               §§goto(addr425);
                                                                                                            }
                                                                                                            §§goto(addr420);
                                                                                                         }
                                                                                                         addr428:
                                                                                                         addr390:
                                                                                                         addr427:
                                                                                                      }
                                                                                                      §§goto(addr428);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      § L§.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                                                                   }
                                                                                                   return;
                                                                                                   §§push(§§newactivation());
                                                                                                }
                                                                                                §§goto(addr378);
                                                                                             }
                                                                                             §§goto(addr377);
                                                                                          }
                                                                                          §§goto(addr390);
                                                                                       }
                                                                                       §§goto(addr427);
                                                                                    }
                                                                                    §§goto(addr425);
                                                                                 }
                                                                                 §§goto(addr254);
                                                                              }
                                                                           }
                                                                           §§goto(addr391);
                                                                        }
                                                                        §§goto(addr382);
                                                                     }
                                                                     §§goto(addr358);
                                                                  }
                                                                  §§goto(addr378);
                                                               }
                                                               catch(e:Error)
                                                               {
                                                                  _loc3_ = e;
                                                               }
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr358);
                                                   }
                                                   §§goto(addr225);
                                                }
                                             }
                                             §§goto(addr391);
                                          }
                                          continue loop3;
                                          while(true)
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(§§newactivation());
                                                if(_loc6_)
                                                {
                                                   continue loop7;
                                                }
                                                continue loop8;
                                             }
                                             continue loop9;
                                          }
                                          continue loop7;
                                       }
                                       continue loop6;
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
            }
         }
      }
      
      public function §>§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Function = null;
         if(_loc7_)
         {
            param1.E = true;
         }
         var _loc2_:§+!@§ = this.§1!P§(param1.C);
         if(!(_loc6_ && this))
         {
            if(_loc2_.§%-§())
            {
               addr51:
               for each(_loc3_ in _loc2_.§'!"§())
               {
                  if(_loc7_)
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
               § L§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §-e§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§+!@§ = new §+!@§(param1,param2);
         if(!_loc5_)
         {
            this.§8!+§.push(_loc3_);
         }
         do
         {
            §§push(§ L§);
            §§push("[ResponseHandler] Command: ");
            if(!(_loc5_ && param2))
            {
               §§push(§§pop() + param1);
               if(!_loc4_)
               {
                  continue;
               }
            }
         }
         while(§§pop().log(§§pop()), !_loc4_);
         
      }
      
      public function §2p§() : Vector.<§+!@§>
      {
         return this.§8!+§;
      }
      
      public function §1!P§(param1:String) : §+!@§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§+!@§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§8!+§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc5_)
               {
                  break;
               }
               if(_loc2_.§[U§() == param1)
               {
                  if(!(_loc6_ && _loc3_))
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
