package §;!5§
{
   import §;<§.§4!d§;
   import §^_§.§!>§;
   
   public class §!+§
   {
       
      
      private var §"!0§:Vector.<§,e§>;
      
      public function §!+§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.§"!0§ = new Vector.<§,e§>();
         }
         while(!(_loc1_ || this));
         
      }
      
      public function §2>§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
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
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        addr86:
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           addr88:
                           while(true)
                           {
                              §§push(§§newactivation());
                              addr68:
                              while(!_loc6_)
                              {
                                 §§push(null);
                                 while(_loc5_ || _loc3_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc5_)
                                    {
                                       continue loop2;
                                    }
                                    §§pop().§§slot[5] = §§pop();
                                    while(true)
                                    {
                                       addr40:
                                       addr31:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          continue loop4;
                                       }
                                       if(!(_loc5_ || param1))
                                       {
                                          continue;
                                       }
                                       if(false)
                                       {
                                          §§goto(addr40);
                                       }
                                       else
                                       {
                                          var _loc3_:* = 0;
                                          var _loc4_:* = responseObj;
                                          addr147:
                                          §§push(§§hasnext(_loc4_,_loc3_));
                                          if(_loc5_)
                                          {
                                             if(§§pop())
                                             {
                                                var k:String = §§nextname(_loc3_,_loc4_);
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§push(§!>§);
                                                   §§push("RESPONSE_KEY: ");
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(§§pop() + §§pop().§§slot[2]);
                                                         if(!_loc6_)
                                                         {
                                                            addr136:
                                                            §§push(§§pop() + ", VALUE: ");
                                                            if(_loc5_)
                                                            {
                                                               addr140:
                                                               §§push(§§pop() + responseObj[k]);
                                                            }
                                                            §§pop().log(§§pop());
                                                            §§goto(addr147);
                                                         }
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                   §§goto(addr136);
                                                }
                                                §§goto(addr147);
                                             }
                                             if(_loc5_ || this)
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc6_ && _loc2_))
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
                                                                     §§pop().§§slot[4] = §4!d§.§6!p§(responseObj.json);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 _loc4_ = §§pop().§§slot[4];
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    addr307:
                                                                                    §§push(§§hasnext(_loc4_,_loc3_));
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr310:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr301:
                                                                                          var k2:String = §§nextname(_loc3_,_loc4_);
                                                                                          addr257:
                                                                                          addr306:
                                                                                          §§push(§!>§);
                                                                                          §§push("RESPONSE KEY (json):");
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop().§§slot[5]);
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   addr289:
                                                                                                   §§push(§§pop() + ", VALUE:");
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                   }
                                                                                                   §§pop().log(§§pop());
                                                                                                   addr290:
                                                                                                   if(!(_loc6_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr255:
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr257);
                                                                                                            }
                                                                                                            §§goto(addr307);
                                                                                                         }
                                                                                                         §§goto(addr290);
                                                                                                      }
                                                                                                      §§goto(addr301);
                                                                                                   }
                                                                                                   §§goto(addr306);
                                                                                                }
                                                                                                §§goto(addr289);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop().§§slot[4][k2]);
                                                                                          }
                                                                                          §§goto(addr289);
                                                                                       }
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr313:
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             addr321:
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                addr343:
                                                                                                §§push(§§newactivation());
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr346:
                                                                                                   §§pop().§§slot[3] = this.§6!0§(responseObj.C);
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr388:
                                                                                                      if(§§pop().§§slot[3].§#@§())
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr394:
                                                                                                            _loc3_ = 0;
                                                                                                            addr393:
                                                                                                            if(!(_loc6_ && param1))
                                                                                                            {
                                                                                                               addr403:
                                                                                                               _loc4_ = sc.§#!R§();
                                                                                                               addr402:
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr447:
                                                                                                                  if(§§hasnext(_loc4_,_loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!(_loc6_ && param1))
                                                                                                                     {
                                                                                                                        §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr442:
                                                                                                                           fnc.call(null,responseObj);
                                                                                                                        }
                                                                                                                        §§goto(addr447);
                                                                                                                     }
                                                                                                                     §§goto(addr442);
                                                                                                                  }
                                                                                                                  addr450:
                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                     addr462:
                                                                                                                     return;
                                                                                                                     addr458:
                                                                                                                  }
                                                                                                                  §§goto(addr462);
                                                                                                                  addr449:
                                                                                                               }
                                                                                                               §§goto(addr442);
                                                                                                            }
                                                                                                            §§goto(addr450);
                                                                                                         }
                                                                                                         §§goto(addr458);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §!>§.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr462);
                                                                                                }
                                                                                                if(§§pop().§§slot[1].E)
                                                                                                {
                                                                                                   if(!(_loc6_ && _loc2_))
                                                                                                   {
                                                                                                      addr373:
                                                                                                      this.§3'§(responseObj);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr379);
                                                                                                      }
                                                                                                      §§goto(addr393);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr387:
                                                                                                      §§goto(addr388);
                                                                                                      §§push(§§newactivation());
                                                                                                   }
                                                                                                   §§goto(addr462);
                                                                                                }
                                                                                                §§goto(addr387);
                                                                                             }
                                                                                             §§goto(addr373);
                                                                                          }
                                                                                          §§goto(addr402);
                                                                                       }
                                                                                       §§goto(addr449);
                                                                                    }
                                                                                    §§goto(addr447);
                                                                                 }
                                                                                 §§goto(addr255);
                                                                              }
                                                                              §§goto(addr403);
                                                                           }
                                                                           §§goto(addr321);
                                                                        }
                                                                        §§goto(addr394);
                                                                     }
                                                                  }
                                                               }
                                                               catch(e:Error)
                                                               {
                                                                  §§goto(addr343);
                                                               }
                                                               §§goto(addr346);
                                                            }
                                                            addr379:
                                                            return;
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                      §§goto(addr388);
                                                   }
                                                   §§goto(addr462);
                                                }
                                                §§goto(addr403);
                                             }
                                             §§goto(addr313);
                                          }
                                          §§goto(addr310);
                                       }
                                    }
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
      
      public function §3'§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         if(!_loc7_)
         {
            param1.E = true;
         }
         var _loc2_:§,e§ = this.§6!0§(param1.C);
         if(!_loc7_)
         {
            if(_loc2_.§#@§())
            {
               for each(_loc3_ in _loc2_.§#!R§())
               {
                  if(!_loc7_)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(_loc6_ || param1)
               {
               }
               addr45:
            }
            else
            {
               §!>§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §7Y§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§,e§ = new §,e§(param1,param2);
         if(_loc4_)
         {
            this.§"!0§.push(_loc3_);
         }
         do
         {
            §§push(§!>§);
            §§push("[ResponseHandler] Command: ");
            if(_loc4_)
            {
               §§push(§§pop() + param1);
               if(!_loc4_)
               {
                  continue;
               }
            }
         }
         while(§§pop().log(§§pop()), _loc5_);
         
      }
      
      public function §8!P§() : Vector.<§,e§>
      {
         return this.§"!0§;
      }
      
      public function §6!0§(param1:String) : §,e§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§,e§ = null;
         for each(_loc2_ in this.§"!0§)
         {
            if(!(_loc5_ && _loc2_))
            {
               if(_loc2_.§>q§() == param1)
               {
                  if(_loc6_)
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
