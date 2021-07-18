package §`!o§
{
   import §5t§.Log;
   import §`#@§.§'"y§;
   
   public class §4"0§
   {
       
      
      private var §^&§:Vector.<§return§>;
      
      public function §4"0§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            do
            {
               this.§^&§ = new Vector.<§return§>();
            }
            while(!_loc1_);
            
         }
      }
      
      public function §,!-§(param1:Object) : void
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
                     while(!_loc6_)
                     {
                        §§push(null);
                        while(_loc5_)
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
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc5_ || _loc3_))
                                    {
                                       break;
                                    }
                                    §§pop().§§slot[5] = §§pop();
                                    while(true)
                                    {
                                       addr47:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          continue loop7;
                                       }
                                       addr34:
                                       continue loop3;
                                       if(!(_loc5_ || param1))
                                       {
                                          continue;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc6_)
                                       {
                                          continue loop3;
                                       }
                                       if(false)
                                       {
                                          §§goto(addr47);
                                       }
                                       else
                                       {
                                          var _loc3_:* = 0;
                                          var _loc4_:* = responseObj;
                                          addr143:
                                          §§push(§§hasnext(_loc4_,_loc3_));
                                          if(_loc5_)
                                          {
                                             if(§§pop())
                                             {
                                                var k:String = §§nextname(_loc3_,_loc4_);
                                                if(_loc5_)
                                                {
                                                   §§push(Log);
                                                   §§push("RESPONSE_KEY: " + k);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() + ", VALUE: ");
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         §§push(§§pop() + responseObj[k]);
                                                      }
                                                   }
                                                   §§pop().log(§§pop());
                                                }
                                                §§goto(addr143);
                                             }
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc5_ || this)
                                                      {
                                                         if(§§pop().§§slot[1].json != null)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               try
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     addr177:
                                                                     §§pop().§§slot[4] = §'"y§.§!"T§(responseObj.json);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(0);
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              addr202:
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 _loc4_ = §§pop().§§slot[4];
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr289:
                                                                                    §§push(§§hasnext(_loc4_,_loc3_));
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr283:
                                                                                          var k2:String = §§nextname(_loc3_,_loc4_);
                                                                                          addr250:
                                                                                          addr288:
                                                                                          §§push(Log);
                                                                                          §§push("RESPONSE KEY (json):" + k2);
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop() + ", VALUE:");
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                addr272:
                                                                                                §§push(§§pop() + jsonObj[k2]);
                                                                                             }
                                                                                             §§pop().log(§§pop());
                                                                                             addr279:
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr250);
                                                                                                      }
                                                                                                      §§goto(addr289);
                                                                                                   }
                                                                                                   §§goto(addr288);
                                                                                                }
                                                                                                §§goto(addr279);
                                                                                             }
                                                                                             §§goto(addr283);
                                                                                          }
                                                                                          §§goto(addr272);
                                                                                       }
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr303:
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                addr325:
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§pop().§§slot[3] = this.§0"2§(responseObj.C);
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                         addr350:
                                                                                                         if(§§pop().§§slot[1].E)
                                                                                                         {
                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                            {
                                                                                                               this.§^""§(responseObj);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§goto(addr366);
                                                                                                               }
                                                                                                               addr440:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr376:
                                                                                                               _loc3_ = 0;
                                                                                                               addr375:
                                                                                                               if(!(_loc6_ && this))
                                                                                                               {
                                                                                                                  addr385:
                                                                                                                  _loc4_ = sc.§[z§();
                                                                                                                  addr384:
                                                                                                                  if(_loc6_ && _loc3_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr419:
                                                                                                                  if(§§hasnext(_loc4_,_loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           addr414:
                                                                                                                           fnc.call(null,responseObj);
                                                                                                                        }
                                                                                                                        §§goto(addr419);
                                                                                                                     }
                                                                                                                     §§goto(addr414);
                                                                                                                  }
                                                                                                               }
                                                                                                               if(!(_loc6_ && param1))
                                                                                                               {
                                                                                                                  §§goto(addr440);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr370:
                                                                                                            if(sc.§6!h§())
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  §§goto(addr375);
                                                                                                               }
                                                                                                               §§goto(addr440);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               Log.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr370);
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr350);
                                                                                             }
                                                                                             §§goto(addr440);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr384);
                                                                                    }
                                                                                    §§goto(addr419);
                                                                                 }
                                                                                 §§goto(addr279);
                                                                              }
                                                                              §§goto(addr385);
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     §§goto(addr366);
                                                                  }
                                                                  §§goto(addr370);
                                                               }
                                                               catch(e:Error)
                                                               {
                                                                  _loc3_ = e;
                                                               }
                                                            }
                                                            §§goto(addr366);
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   addr366:
                                                   return;
                                                }
                                                §§goto(addr202);
                                             }
                                          }
                                          §§goto(addr385);
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           if(_loc6_ && this)
                           {
                              continue;
                           }
                           §§pop().§§slot[6] = §§pop();
                           while(true)
                           {
                              §§push(§§newactivation());
                              if(_loc5_ || param1)
                              {
                                 §§pop().§§slot[1] = param1;
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr34);
                              }
                              break;
                           }
                           §§goto(addr49);
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §^""§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         if(!(_loc7_ && param1))
         {
            param1.E = true;
         }
         var _loc2_:§return§ = this.§0"2§(param1.C);
         if(!(_loc7_ && this))
         {
            if(_loc2_.§6!h§())
            {
               addr55:
               for each(_loc3_ in _loc2_.§[z§())
               {
                  if(_loc6_)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(_loc6_ || param1)
               {
               }
            }
            else
            {
               Log.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §%C§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§return§ = new §return§(param1,param2);
         if(_loc5_)
         {
            this.§^&§.push(_loc3_);
         }
         do
         {
            §§push(Log);
            §§push("[ResponseHandler] Command: " + param1);
            if(!(_loc4_ && param2))
            {
               §§push(§§pop() + " added.");
            }
            §§pop().log(§§pop());
         }
         while(!_loc5_);
         
      }
      
      public function §!!E§() : Vector.<§return§>
      {
         return this.§^&§;
      }
      
      public function §0"2§(param1:String) : §return§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§return§ = null;
         for each(_loc2_ in this.§^&§)
         {
            if(!(_loc6_ && this))
            {
               if(_loc2_.§86§() == param1)
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
