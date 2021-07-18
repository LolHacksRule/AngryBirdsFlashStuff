package §1!`§
{
   import §;K§.§&s§;
   import each.§!!'§;
   
   public class §4"+§
   {
       
      
      private var §"!@§:Vector.<§2!<§>;
      
      public function §4"+§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            do
            {
               this.§"!@§ = new Vector.<§2!<§>();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §+!0§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
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
                     while(true)
                     {
                        §§push(null);
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(null);
                                 addr78:
                                 while(!(_loc5_ && param1))
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ || this)
                                       {
                                          §§pop().§§slot[5] = §§pop();
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                break;
                                                addr53:
                                             }
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                continue loop7;
                                             }
                                             addr44:
                                             if(!(_loc6_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             if(false)
                                             {
                                                §§goto(addr53);
                                             }
                                             else
                                             {
                                                var _loc3_:* = 0;
                                                var _loc4_:* = responseObj;
                                                addr154:
                                                §§push(§§hasnext(_loc4_,_loc3_));
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      var k:String = §§nextname(_loc3_,_loc4_);
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§push(§!!'§);
                                                         §§push("RESPONSE_KEY: " + k);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() + ", VALUE: ");
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§push(§§pop() + responseObj[k]);
                                                            }
                                                         }
                                                         §§pop().log(§§pop());
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                   if(_loc6_ || this)
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§push(§§newactivation());
                                                            if(_loc6_ || this)
                                                            {
                                                               if(§§pop().§§slot[1].json != null)
                                                               {
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     try
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           §§pop().§§slot[4] = §&s§.§>7§(responseObj.json);
                                                                           addr213:
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       _loc4_ = §§pop().§§slot[4];
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          addr320:
                                                                                          §§push(§§hasnext(_loc4_,_loc3_));
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr314:
                                                                                                var k2:String = §§nextname(_loc3_,_loc4_);
                                                                                                addr279:
                                                                                                addr319:
                                                                                                §§push(§!!'§);
                                                                                                §§push("RESPONSE KEY (json):" + k2);
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() + ", VALUE:");
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      addr301:
                                                                                                      §§push(§§pop() + jsonObj[k2]);
                                                                                                   }
                                                                                                   §§pop().log(§§pop());
                                                                                                   addr308:
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                      {
                                                                                                         §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            addr277:
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr279);
                                                                                                            }
                                                                                                            §§goto(addr320);
                                                                                                         }
                                                                                                         §§goto(addr308);
                                                                                                      }
                                                                                                      §§goto(addr314);
                                                                                                   }
                                                                                                   §§goto(addr319);
                                                                                                }
                                                                                                §§goto(addr301);
                                                                                             }
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§goto(addr334);
                                                                                                }
                                                                                                §§goto(addr405);
                                                                                             }
                                                                                             §§goto(addr442);
                                                                                          }
                                                                                          §§goto(addr430);
                                                                                       }
                                                                                       §§goto(addr277);
                                                                                    }
                                                                                    §§goto(addr406);
                                                                                 }
                                                                                 addr334:
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    addr356:
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§pop().§§slot[3] = this.§-!6§(responseObj.C);
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr376:
                                                                                             if(§§pop().§§slot[1].E)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   this.§=7§(responseObj);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§goto(addr387);
                                                                                                   }
                                                                                                   addr402:
                                                                                                   _loc3_ = 0;
                                                                                                   addr401:
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr406:
                                                                                                      _loc4_ = sc.§7!+§();
                                                                                                      addr405:
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         addr430:
                                                                                                         if(§§hasnext(_loc4_,_loc3_))
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  addr425:
                                                                                                                  fnc.call(null,responseObj);
                                                                                                               }
                                                                                                               §§goto(addr430);
                                                                                                            }
                                                                                                            §§goto(addr425);
                                                                                                         }
                                                                                                         addr443:
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            addr450:
                                                                                                            return;
                                                                                                            addr446:
                                                                                                         }
                                                                                                         §§goto(addr450);
                                                                                                         addr442:
                                                                                                      }
                                                                                                      §§goto(addr425);
                                                                                                   }
                                                                                                   §§goto(addr443);
                                                                                                }
                                                                                                §§goto(addr387);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr396:
                                                                                                if(sc.§4!E§())
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§goto(addr401);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §!!'§.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr450);
                                                                                          }
                                                                                          §§goto(addr396);
                                                                                       }
                                                                                       §§goto(addr446);
                                                                                    }
                                                                                    §§goto(addr376);
                                                                                 }
                                                                                 §§goto(addr387);
                                                                              }
                                                                              §§goto(addr402);
                                                                           }
                                                                           §§goto(addr450);
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     catch(e:Error)
                                                                     {
                                                                        §§goto(addr356);
                                                                     }
                                                                     §§goto(addr356);
                                                                  }
                                                                  §§goto(addr396);
                                                               }
                                                               §§goto(addr356);
                                                            }
                                                            §§goto(addr213);
                                                         }
                                                         addr387:
                                                         return;
                                                      }
                                                   }
                                                   §§goto(addr443);
                                                }
                                                §§goto(addr430);
                                             }
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
            if(_loc5_ && this)
            {
               continue;
            }
            §§pop().§§slot[1] = param1;
            if(!_loc5_)
            {
               §§goto(addr44);
            }
            §§goto(addr72);
         }
      }
      
      public function §=7§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         if(!_loc7_)
         {
            param1.E = true;
         }
         var _loc2_:§2!<§ = this.§-!6§(param1.C);
         if(!_loc7_)
         {
            if(_loc2_.§4!E§())
            {
               addr45:
               for each(_loc3_ in _loc2_.§7!+§())
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
               §!!'§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §;!$§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§2!<§ = new §2!<§(param1,param2);
         if(_loc4_ || this)
         {
            this.§"!@§.push(_loc3_);
         }
         do
         {
            §§push(§!!'§);
            §§push("[ResponseHandler] Command: " + param1);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() + " added.");
            }
            §§pop().log(§§pop());
         }
         while(_loc5_);
         
      }
      
      public function §5!r§() : Vector.<§2!<§>
      {
         return this.§"!@§;
      }
      
      public function §-!6§(param1:String) : §2!<§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§2!<§ = null;
         for each(_loc2_ in this.§"!@§)
         {
            if(!_loc6_)
            {
               if(_loc2_.§0" §() == param1)
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
