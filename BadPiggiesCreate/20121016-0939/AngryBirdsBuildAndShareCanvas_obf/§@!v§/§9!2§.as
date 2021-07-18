package §@!v§
{
   import §6"&§.§8R§;
   import §=!M§.§9!P§;
   
   public class §9!2§
   {
       
      
      private var §#F§:Vector.<§3y§>;
      
      public function §9!2§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         do
         {
            this.§#F§ = new Vector.<§3y§>();
         }
         while(!(_loc1_ || this));
         
      }
      
      public function §"p§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
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
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        addr101:
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
                                 addr79:
                                 while(!(_loc6_ && _loc2_))
                                 {
                                    §§push(§§pop());
                                    if(_loc5_ || this)
                                    {
                                       §§pop().§§slot[5] = §§pop();
                                       while(_loc5_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             addr40:
                                             while(!_loc6_)
                                             {
                                                continue loop4;
                                             }
                                             addr34:
                                             continue loop7;
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             if(false)
                                             {
                                                continue;
                                             }
                                             var _loc3_:* = 0;
                                             var _loc4_:* = responseObj;
                                             addr158:
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             if(!(_loc6_ && param1))
                                             {
                                                if(§§pop())
                                                {
                                                   var k:String = §§nextname(_loc3_,_loc4_);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§push(§9!P§);
                                                      §§push("RESPONSE_KEY: " + k);
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         §§push(§§pop() + ", VALUE: ");
                                                         if(_loc5_ || param1)
                                                         {
                                                            addr151:
                                                            §§push(§§pop() + responseObj[k]);
                                                         }
                                                         §§pop().log(§§pop());
                                                         §§goto(addr158);
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                   §§goto(addr158);
                                                }
                                                if(_loc5_)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc5_)
                                                         {
                                                            if(§§pop().§§slot[1].json != null)
                                                            {
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  try
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        §§pop().§§slot[4] = §8R§.§0!L§(responseObj.json);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr237:
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    _loc4_ = §§pop().§§slot[4];
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr309:
                                                                                       §§push(§§hasnext(_loc4_,_loc3_));
                                                                                       if(!(_loc6_ && _loc2_))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr303:
                                                                                             var k2:String = §§nextname(_loc3_,_loc4_);
                                                                                             addr268:
                                                                                             addr308:
                                                                                             §§push(§9!P§);
                                                                                             §§push("RESPONSE KEY (json):" + k2);
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                §§push(§§pop() + ", VALUE:");
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr285:
                                                                                                   §§push(§§pop() + jsonObj[k2]);
                                                                                                }
                                                                                                §§pop().log(§§pop());
                                                                                                addr292:
                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr268);
                                                                                                         }
                                                                                                         §§goto(addr309);
                                                                                                      }
                                                                                                      §§goto(addr292);
                                                                                                   }
                                                                                                   §§goto(addr303);
                                                                                                }
                                                                                                §§goto(addr308);
                                                                                             }
                                                                                             §§goto(addr285);
                                                                                          }
                                                                                          if(!(_loc6_ && _loc2_))
                                                                                          {
                                                                                             addr325:
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                addr333:
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr350:
                                                                                                   §§push(§§newactivation());
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr353:
                                                                                                      §§pop().§§slot[3] = this.§&m§(responseObj.C);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr365:
                                                                                                            if(§§pop().§§slot[1].E)
                                                                                                            {
                                                                                                               if(_loc5_ || this)
                                                                                                               {
                                                                                                                  this.§0d§(responseObj);
                                                                                                                  if(_loc5_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§goto(addr386);
                                                                                                                  }
                                                                                                                  addr406:
                                                                                                                  _loc3_ = 0;
                                                                                                                  addr405:
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr410:
                                                                                                                     _loc4_ = sc.§`'§();
                                                                                                                     addr409:
                                                                                                                     if(_loc5_ || param1)
                                                                                                                     {
                                                                                                                        addr449:
                                                                                                                        if(§§hasnext(_loc4_,_loc3_))
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                           {
                                                                                                                              §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr444:
                                                                                                                                 fnc.call(null,responseObj);
                                                                                                                              }
                                                                                                                              §§goto(addr449);
                                                                                                                           }
                                                                                                                           §§goto(addr444);
                                                                                                                        }
                                                                                                                        addr462:
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           addr469:
                                                                                                                           return;
                                                                                                                           addr465:
                                                                                                                        }
                                                                                                                        §§goto(addr469);
                                                                                                                        addr461:
                                                                                                                     }
                                                                                                                     §§goto(addr444);
                                                                                                                  }
                                                                                                                  §§goto(addr462);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr394:
                                                                                                                  §§push(§§newactivation());
                                                                                                               }
                                                                                                               §§goto(addr469);
                                                                                                            }
                                                                                                            §§goto(addr394);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr465);
                                                                                                   }
                                                                                                   if(§§pop().§§slot[3].§%!0§())
                                                                                                   {
                                                                                                      if(_loc5_ || _loc2_)
                                                                                                      {
                                                                                                         §§goto(addr405);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §9!P§.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr469);
                                                                                             }
                                                                                             §§goto(addr409);
                                                                                          }
                                                                                          §§goto(addr461);
                                                                                       }
                                                                                       §§goto(addr449);
                                                                                    }
                                                                                    §§goto(addr303);
                                                                                 }
                                                                                 §§goto(addr410);
                                                                              }
                                                                              §§goto(addr333);
                                                                           }
                                                                           §§goto(addr406);
                                                                        }
                                                                        §§goto(addr469);
                                                                     }
                                                                  }
                                                                  catch(e:Error)
                                                                  {
                                                                     §§goto(addr350);
                                                                  }
                                                                  §§goto(addr365);
                                                               }
                                                               §§goto(addr394);
                                                            }
                                                            §§goto(addr350);
                                                         }
                                                         §§goto(addr353);
                                                      }
                                                      addr386:
                                                      return;
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr325);
                                             }
                                             §§goto(addr449);
                                          }
                                          continue loop3;
                                          for(; !(_loc6_ && _loc2_); §§pop().§§slot[1] = param1,if(!(_loc5_ || _loc3_))
                                          {
                                             continue;
                                          },§§goto(addr34))
                                          {
                                             §§push(§§newactivation());
                                             if(_loc5_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr40);
                                          }
                                       }
                                       continue loop6;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
            if(!(_loc5_ || _loc2_))
            {
               continue;
            }
            §§push(null);
            if(!(_loc6_ && _loc3_))
            {
               if(!_loc6_)
               {
                  §§pop().§§slot[6] = §§pop();
                  §§goto(addr68);
               }
               §§goto(addr101);
            }
            §§goto(addr79);
         }
      }
      
      public function §0d§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Function = null;
         if(_loc7_)
         {
            param1.E = true;
         }
         var _loc2_:§3y§ = this.§&m§(param1.C);
         if(_loc7_)
         {
            if(_loc2_.§%!0§())
            {
               addr46:
               for each(_loc3_ in _loc2_.§`'§())
               {
                  if(!_loc6_)
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
               §9!P§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §>c§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§3y§ = new §3y§(param1,param2);
         if(_loc4_ || this)
         {
            this.§#F§.push(_loc3_);
         }
         do
         {
            §§push(§9!P§);
            §§push("[ResponseHandler] Command: " + param1);
            if(!_loc5_)
            {
               §§push(§§pop() + " added.");
            }
            §§pop().log(§§pop());
         }
         while(_loc5_);
         
      }
      
      public function §`!x§() : Vector.<§3y§>
      {
         return this.§#F§;
      }
      
      public function §&m§(param1:String) : §3y§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§3y§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§#F§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.§]]§() == param1)
               {
                  if(_loc6_)
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
