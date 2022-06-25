package §6!F§
{
   import §3a§.§7!+§;
   import §?!7§.§<M§;
   
   public class §@!'§
   {
       
      
      private var §9X§:Vector.<§3!>§>;
      
      public function §@!'§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_ || _loc2_)
            {
               addr43:
               this.§9X§ = new Vector.<§3!>§>();
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §8g§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§push(null);
            if(!_loc6_)
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  §§pop().§§slot[2] = §§pop();
                  if(!_loc6_)
                  {
                     §§push(§§newactivation());
                     if(_loc5_ || this)
                     {
                        addr40:
                        §§push(null);
                        if(_loc5_ || this)
                        {
                           addr48:
                           §§pop().§§slot[4] = §§pop();
                           if(_loc5_ || _loc2_)
                           {
                              §§push(§§newactivation());
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(null);
                                 if(_loc5_)
                                 {
                                    addr69:
                                    §§pop().§§slot[5] = §§pop();
                                    addr68:
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       addr77:
                                       §§push(§§newactivation());
                                       if(_loc5_)
                                       {
                                          addr81:
                                          §§pop().§§slot[6] = null;
                                          if(_loc5_ || _loc2_)
                                          {
                                             addr91:
                                             var responseObj:Object = param1;
                                          }
                                       }
                                       §§goto(addr91);
                                    }
                                    var _loc3_:* = 0;
                                    var _loc4_:* = responseObj;
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc6_)
                                                      {
                                                         if(§§pop().§§slot[1].json != null)
                                                         {
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               try
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §§pop().§§slot[4] = §<M§.decode(responseObj.json);
                                                                     if(_loc5_)
                                                                     {
                                                                        addr219:
                                                                        §§push(0);
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 _loc4_ = §§pop().§§slot[4];
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    loop1:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc4_,_loc3_));
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   addr353:
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§goto(addr356);
                                                                                                   }
                                                                                                   §§goto(addr382);
                                                                                                   addr339:
                                                                                                }
                                                                                                §§goto(addr442);
                                                                                             }
                                                                                             addr441:
                                                                                             §§goto(addr442);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§pop().§§slot[5] = §§nextname(_loc3_,_loc4_);
                                                                                                if(!(_loc5_ || _loc3_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(§7!+§);
                                                                                                §§push("RESPONSE KEY (json):");
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop().§§slot[5]);
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                         addr301:
                                                                                                         §§push(§§pop() + ", VALUE:");
                                                                                                         if(!(_loc6_ && param1))
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                         }
                                                                                                         §§pop().log(§§pop());
                                                                                                         if(_loc6_ && this)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            addr310:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr301);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop().§§slot[4][k2]);
                                                                                                }
                                                                                                §§goto(addr301);
                                                                                             }
                                                                                             §§goto(addr310);
                                                                                          }
                                                                                       }
                                                                                       break loop0;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr309);
                                                                              }
                                                                              §§goto(addr395);
                                                                           }
                                                                           §§goto(addr442);
                                                                        }
                                                                        §§goto(addr386);
                                                                     }
                                                                     §§goto(addr381);
                                                                  }
                                                               }
                                                               catch(e:Error)
                                                               {
                                                                  §§goto(addr353);
                                                               }
                                                               addr356:
                                                               §§pop().§§slot[3] = this.§0!&§(responseObj.C);
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(§§pop().§§slot[1].E)
                                                                     {
                                                                        this.§]i§(responseObj);
                                                                        return;
                                                                     }
                                                                     addr382:
                                                                     addr381:
                                                                     addr382:
                                                                     if(sc.§&!7§())
                                                                     {
                                                                        addr386:
                                                                        _loc3_ = 0;
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           addr395:
                                                                           _loc4_ = sc.§@Y§();
                                                                           if(_loc6_ && param1)
                                                                           {
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc4_,_loc3_));
                                                                              break loop0;
                                                                           }
                                                                           addr439:
                                                                        }
                                                                        addr442:
                                                                     }
                                                                     else
                                                                     {
                                                                        §7!+§.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                                     }
                                                                  }
                                                                  §§goto(addr382);
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         §§goto(addr353);
                                                      }
                                                      §§goto(addr382);
                                                   }
                                                   §§goto(addr219);
                                                }
                                                §§goto(addr395);
                                             }
                                             §§goto(addr441);
                                          }
                                          else
                                          {
                                             var k:String = §§nextname(_loc3_,_loc4_);
                                             if(!(_loc5_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             §§push(§7!+§);
                                             §§push("RESPONSE_KEY: ");
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(§§pop() + §§pop().§§slot[2]);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§push(§§pop() + ", VALUE: ");
                                                      if(!_loc6_)
                                                      {
                                                         addr144:
                                                         §§push(§§pop() + responseObj[k]);
                                                      }
                                                      §§pop().log(§§pop());
                                                      continue;
                                                   }
                                                }
                                             }
                                             §§goto(addr144);
                                          }
                                       }
                                       break;
                                    }
                                    for(; §§pop(); §§goto(addr439))
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                          if(!_loc5_)
                                          {
                                             continue;
                                          }
                                          §§push(§§newactivation());
                                       }
                                       §§pop().§§slot[6].call(null,responseObj);
                                    }
                                    §§goto(addr441);
                                 }
                                 §§goto(addr81);
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr77);
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr77);
               }
               §§goto(addr69);
            }
            §§goto(addr48);
         }
         §§goto(addr40);
      }
      
      public function §]i§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         if(!(_loc7_ && this))
         {
            param1.E = true;
         }
         var _loc2_:§3!>§ = this.§0!&§(param1.C);
         if(!_loc7_)
         {
            if(_loc2_.§&!7§())
            {
               addr50:
               for each(_loc3_ in _loc2_.§@Y§())
               {
                  if(_loc6_ || _loc2_)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(_loc7_ && param1)
               {
               }
            }
            else
            {
               §7!+§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §>!M§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§3!>§ = new §3!>§(param1,param2);
         if(!_loc5_)
         {
            this.§9X§.push(_loc3_);
            if(_loc4_)
            {
               §§push(§7!+§);
               §§push("[ResponseHandler] Command: ");
               if(!_loc5_)
               {
                  §§push(§§pop() + param1);
                  if(_loc4_ || this)
                  {
                     §§push(§§pop() + " added.");
                  }
               }
               §§pop().log(§§pop());
            }
         }
      }
      
      public function §9!'§() : Vector.<§3!>§>
      {
         return this.§9X§;
      }
      
      public function §0!&§(param1:String) : §3!>§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3!>§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§9X§)
         {
            if(!(_loc6_ && _loc3_))
            {
               if(_loc2_.§&D§() == param1)
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
