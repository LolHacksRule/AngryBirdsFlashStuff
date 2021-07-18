package §&N§
{
   import §"!"§.§&z§;
   import §;8§.§3f§;
   
   public class §=§
   {
       
      
      private var §?p§:Vector.<§"!7§>;
      
      public function §=§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
         do
         {
            this.§?p§ = new Vector.<§"!7§>();
         }
         while(!(_loc2_ || this));
         
      }
      
      public function §7Q§(param1:Object) : void
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
                              while(true)
                              {
                                 §§push(null);
                                 loop8:
                                 while(!_loc6_)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_)
                                    {
                                       continue loop2;
                                    }
                                    §§pop().§§slot[5] = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          loop11:
                                          while(!_loc6_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§push(null);
                                                if(!_loc6_)
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§pop().§§slot[6] = §§pop();
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(!(_loc5_ || param1))
                                                            {
                                                               break;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop8;
                                             }
                                             continue loop0;
                                          }
                                          continue loop7;
                                       }
                                       var _loc3_:* = 0;
                                       var _loc4_:* = responseObj;
                                       addr147:
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(!_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             var k:String = §§nextname(_loc3_,_loc4_);
                                             if(_loc5_ || this)
                                             {
                                                §§push(§3f§);
                                                §§push("RESPONSE_KEY: ");
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() + §§pop().§§slot[2]);
                                                      if(_loc5_ || this)
                                                      {
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
                                                }
                                                §§goto(addr140);
                                             }
                                             §§goto(addr147);
                                          }
                                          if(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   if(§§pop().§§slot[1].json != null)
                                                   {
                                                      try
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§pop().§§slot[4] = §&z§.decode(responseObj.json);
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               §§push(0);
                                                               if(!_loc6_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(!_loc6_)
                                                                     {
                                                                        _loc4_ = §§pop().§§slot[4];
                                                                        if(_loc5_)
                                                                        {
                                                                           addr283:
                                                                           §§push(§§hasnext(_loc4_,_loc3_));
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr286:
                                                                              if(§§pop())
                                                                              {
                                                                                 addr277:
                                                                                 var k2:String = §§nextname(_loc3_,_loc4_);
                                                                                 addr245:
                                                                                 addr282:
                                                                                 §§push(§3f§);
                                                                                 §§push("RESPONSE KEY (json):");
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop().§§slot[5]);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr262:
                                                                                          §§push(§§pop() + ", VALUE:");
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr266:
                                                                                             §§push(§§pop() + jsonObj[k2]);
                                                                                          }
                                                                                          §§pop().log(§§pop());
                                                                                          addr273:
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   addr243:
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr245);
                                                                                                   }
                                                                                                   §§goto(addr283);
                                                                                                }
                                                                                                §§goto(addr282);
                                                                                             }
                                                                                             §§goto(addr273);
                                                                                          }
                                                                                          §§goto(addr277);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr266);
                                                                                 }
                                                                                 §§goto(addr262);
                                                                              }
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr319:
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr322:
                                                                                          §§pop().§§slot[3] = this.§4G§(responseObj.C);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr357);
                                                                                          }
                                                                                          §§goto(addr344);
                                                                                       }
                                                                                       if(§§pop().§§slot[1].E)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§goto(addr344);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr357:
                                                                                          if(§§pop().§§slot[3].§9N§())
                                                                                          {
                                                                                             addr361:
                                                                                             _loc3_ = 0;
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr365:
                                                                                                _loc4_ = sc.§ !"§();
                                                                                                addr364:
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                }
                                                                                                addr414:
                                                                                                if(§§hasnext(_loc4_,_loc3_))
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                                                      if(_loc5_ || _loc2_)
                                                                                                      {
                                                                                                         addr409:
                                                                                                         fnc.call(null,responseObj);
                                                                                                      }
                                                                                                      §§goto(addr414);
                                                                                                   }
                                                                                                   §§goto(addr409);
                                                                                                }
                                                                                                addr417:
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                }
                                                                                                addr416:
                                                                                             }
                                                                                             §§goto(addr417);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §3f§.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                                                          }
                                                                                          return;
                                                                                          §§push(§§newactivation());
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr344);
                                                                                 }
                                                                                 §§goto(addr364);
                                                                              }
                                                                              §§goto(addr416);
                                                                           }
                                                                           §§goto(addr414);
                                                                        }
                                                                        §§goto(addr243);
                                                                     }
                                                                  }
                                                                  §§goto(addr365);
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                            addr344:
                                                            this.§6f§(responseObj);
                                                            return;
                                                         }
                                                         §§goto(addr322);
                                                      }
                                                      catch(e:Error)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr319);
                                                }
                                                §§goto(addr357);
                                             }
                                          }
                                          §§goto(addr365);
                                       }
                                       §§goto(addr286);
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §6f§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Function = null;
         if(!_loc6_)
         {
            param1.E = true;
         }
         var _loc2_:§"!7§ = this.§4G§(param1.C);
         if(!(_loc6_ && _loc3_))
         {
            if(_loc2_.§9N§())
            {
               for each(_loc3_ in _loc2_.§ !"§())
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(_loc6_)
               {
               }
               addr51:
            }
            else
            {
               §3f§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §2w§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§"!7§ = new §"!7§(param1,param2);
         if(!_loc4_)
         {
            this.§?p§.push(_loc3_);
            do
            {
               §§push(§3f§);
               §§push("[ResponseHandler] Command: ");
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop() + param1);
                  if(_loc5_ || param1)
                  {
                     §§push(§§pop() + " added.");
                  }
               }
               §§pop().log(§§pop());
            }
            while(!(_loc5_ || _loc3_));
            
         }
      }
      
      public function §>v§() : Vector.<§"!7§>
      {
         return this.§?p§;
      }
      
      public function §4G§(param1:String) : §"!7§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§"!7§ = null;
         for each(_loc2_ in this.§?p§)
         {
            if(_loc6_)
            {
               if(_loc2_.§2m§() == param1)
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
