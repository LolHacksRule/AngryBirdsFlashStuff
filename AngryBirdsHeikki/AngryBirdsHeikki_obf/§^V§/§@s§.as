package §^V§
{
   import §!!7§.§"c§;
   import §@R§.§4,§;
   
   public class §@s§
   {
       
      
      private var §"!L§:Vector.<§;a§>;
      
      public function §@s§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
         do
         {
            this.§"!L§ = new Vector.<§;a§>();
         }
         while(_loc2_);
         
      }
      
      public function §0!<§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr112:
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
                        addr107:
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(null);
                                 addr80:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc5_ && _loc2_)
                                    {
                                       break;
                                    }
                                    §§pop().§§slot[5] = §§pop();
                                    loop9:
                                    while(_loc6_ || this)
                                    {
                                       if(!(_loc6_ || _loc2_))
                                       {
                                          continue loop3;
                                       }
                                       do
                                       {
                                          §§push(§§newactivation());
                                          while(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop4;
                                       }
                                       while(false);
                                       
                                       var _loc3_:* = 0;
                                       var _loc4_:* = responseObj;
                                       addr154:
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             var k:String = §§nextname(_loc3_,_loc4_);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(§4,§);
                                                §§push("RESPONSE_KEY: " + k);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() + ", VALUE: ");
                                                   if(!_loc5_)
                                                   {
                                                      addr147:
                                                      §§push(§§pop() + responseObj[k]);
                                                   }
                                                   §§pop().log(§§pop());
                                                   §§goto(addr154);
                                                }
                                                §§goto(addr147);
                                             }
                                             §§goto(addr154);
                                          }
                                          if(_loc6_)
                                          {
                                             if(_loc6_)
                                             {
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(§§pop().§§slot[1].json != null)
                                                      {
                                                         if(_loc6_ || param1)
                                                         {
                                                            try
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc5_)
                                                               {
                                                                  §§pop().§§slot[4] = §"c§.§%!K§(responseObj.json);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc6_)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc6_)
                                                                           {
                                                                              _loc4_ = §§pop().§§slot[4];
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 addr305:
                                                                                 §§push(§§hasnext(_loc4_,_loc3_));
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr308:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr299:
                                                                                       var k2:String = §§nextname(_loc3_,_loc4_);
                                                                                       addr259:
                                                                                       addr304:
                                                                                       §§push(§4,§);
                                                                                       §§push("RESPONSE KEY (json):" + k2);
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop() + ", VALUE:");
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             addr281:
                                                                                             §§push(§§pop() + jsonObj[k2]);
                                                                                          }
                                                                                          §§pop().log(§§pop());
                                                                                          addr288:
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr259);
                                                                                                   }
                                                                                                   §§goto(addr305);
                                                                                                }
                                                                                                §§goto(addr288);
                                                                                             }
                                                                                             §§goto(addr299);
                                                                                          }
                                                                                          §§goto(addr304);
                                                                                       }
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr311:
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          addr319:
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             addr341:
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§pop().§§slot[3] = this.§,S§(responseObj.C);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr356:
                                                                                                      if(§§pop().§§slot[1].E)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            this.§=!U§(responseObj);
                                                                                                            if(!(_loc5_ && this))
                                                                                                            {
                                                                                                               §§goto(addr372);
                                                                                                            }
                                                                                                            §§goto(addr380);
                                                                                                         }
                                                                                                         §§goto(addr372);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr380);
                                                                                                }
                                                                                                §§goto(addr372);
                                                                                             }
                                                                                             addr380:
                                                                                             addr380:
                                                                                             if(sc.§+f§())
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   addr392:
                                                                                                   _loc3_ = 0;
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      addr401:
                                                                                                      _loc4_ = sc.§%!Y§();
                                                                                                      if(_loc5_ && this)
                                                                                                      {
                                                                                                      }
                                                                                                      addr435:
                                                                                                      if(§§hasnext(_loc4_,_loc3_))
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               addr430:
                                                                                                               fnc.call(null,responseObj);
                                                                                                            }
                                                                                                            §§goto(addr435);
                                                                                                         }
                                                                                                         §§goto(addr430);
                                                                                                      }
                                                                                                   }
                                                                                                   addr448:
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §4,§.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr455);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr448);
                                                                                 }
                                                                                 §§goto(addr435);
                                                                              }
                                                                              §§goto(addr299);
                                                                           }
                                                                           §§goto(addr401);
                                                                        }
                                                                        §§goto(addr448);
                                                                     }
                                                                     §§goto(addr392);
                                                                  }
                                                                  addr372:
                                                                  return;
                                                               }
                                                               §§goto(addr356);
                                                            }
                                                            catch(e:Error)
                                                            {
                                                               §§goto(addr341);
                                                            }
                                                            §§goto(addr341);
                                                         }
                                                         §§goto(addr380);
                                                      }
                                                      §§goto(addr341);
                                                   }
                                                   §§goto(addr380);
                                                }
                                                addr455:
                                                return;
                                             }
                                             §§goto(addr319);
                                          }
                                          §§goto(addr311);
                                       }
                                       §§goto(addr308);
                                       while(true)
                                       {
                                          if(!(_loc6_ || param1))
                                          {
                                             continue loop9;
                                          }
                                          §§push(§§newactivation());
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             continue loop7;
                                          }
                                          §§goto(addr51);
                                          addr38:
                                          §§pop().§§slot[1] = param1;
                                          if(!(_loc6_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          §§goto(addr47);
                                       }
                                       continue loop7;
                                    }
                                    continue loop6;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §=!U§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Function = null;
         if(!_loc6_)
         {
            param1.E = true;
         }
         var _loc2_:§;a§ = this.§,S§(param1.C);
         if(!(_loc6_ && this))
         {
            if(_loc2_.§+f§())
            {
               addr51:
               for each(_loc3_ in _loc2_.§%!Y§())
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
               §4,§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §-%§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§;a§ = new §;a§(param1,param2);
         if(_loc5_ || param1)
         {
            this.§"!L§.push(_loc3_);
            do
            {
               §§push(§4,§);
               §§push("[ResponseHandler] Command: " + param1);
               if(!_loc4_)
               {
                  §§push(§§pop() + " added.");
               }
               §§pop().log(§§pop());
            }
            while(!(_loc5_ || this));
            
         }
      }
      
      public function §#!U§() : Vector.<§;a§>
      {
         return this.§"!L§;
      }
      
      public function §,S§(param1:String) : §;a§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;a§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§"!L§)
         {
            if(!_loc5_)
            {
               if(_loc2_.§2!!§() == param1)
               {
                  if(!(_loc5_ && _loc3_))
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
