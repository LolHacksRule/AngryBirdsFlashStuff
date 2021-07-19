package §9!=§
{
   import § !G§.§ #§;
   import §=A§.§5r§;
   
   public class §"#§
   {
       
      
      private var §63§:Vector.<§5z§>;
      
      public function §"#§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.§63§ = new Vector.<§5z§>();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §do§(param1:Object) : void
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
                           while(!_loc6_)
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
                                    if(!_loc6_)
                                    {
                                       §§pop().§§slot[5] = §§pop();
                                       while(_loc5_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             loop11:
                                             while(!_loc6_)
                                             {
                                                §§push(null);
                                                if(!_loc6_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§pop().§§slot[6] = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc5_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop8;
                                             }
                                             continue loop0;
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             if(false)
                                             {
                                                continue;
                                             }
                                             var _loc3_:* = 0;
                                             var _loc4_:* = responseObj;
                                             addr108:
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             if(!_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   var k:String = §§nextname(_loc3_,_loc4_);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§ #§);
                                                      §§push("RESPONSE_KEY: " + k);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() + ", VALUE: ");
                                                         if(_loc5_)
                                                         {
                                                            addr101:
                                                            §§push(§§pop() + responseObj[k]);
                                                         }
                                                         §§pop().log(§§pop());
                                                         §§goto(addr108);
                                                      }
                                                      §§goto(addr101);
                                                   }
                                                   §§goto(addr108);
                                                }
                                                if(_loc5_ || param1)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop().§§slot[1].json != null)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  try
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc5_)
                                                                     {
                                                                        addr142:
                                                                        §§pop().§§slot[4] = §5r§.§6! §(responseObj.json);
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           addr156:
                                                                           §§push(0);
                                                                           if(!_loc6_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    _loc4_ = §§pop().§§slot[4];
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr249:
                                                                                       §§push(§§hasnext(_loc4_,_loc3_));
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr243:
                                                                                             var k2:String = §§nextname(_loc3_,_loc4_);
                                                                                             addr208:
                                                                                             addr248:
                                                                                             §§push(§ #§);
                                                                                             §§push("RESPONSE KEY (json):" + k2);
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                §§push(§§pop() + ", VALUE:");
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr225:
                                                                                                   §§push(§§pop() + jsonObj[k2]);
                                                                                                }
                                                                                                §§pop().log(§§pop());
                                                                                                addr232:
                                                                                                if(_loc5_ || param1)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc6_ && _loc2_))
                                                                                                   {
                                                                                                      §§pop().§§slot[1][k2] = jsonObj[k2];
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr208);
                                                                                                         }
                                                                                                         §§goto(addr249);
                                                                                                      }
                                                                                                      §§goto(addr232);
                                                                                                   }
                                                                                                   §§goto(addr243);
                                                                                                   addr239:
                                                                                                }
                                                                                                §§goto(addr248);
                                                                                             }
                                                                                             §§goto(addr225);
                                                                                          }
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             addr260:
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr263:
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§goto(addr280);
                                                                                                }
                                                                                                §§goto(addr310);
                                                                                             }
                                                                                             §§goto(addr387);
                                                                                          }
                                                                                          §§goto(addr386);
                                                                                       }
                                                                                       §§goto(addr374);
                                                                                    }
                                                                                    §§goto(addr239);
                                                                                 }
                                                                                 §§goto(addr340);
                                                                              }
                                                                              §§goto(addr263);
                                                                           }
                                                                           §§goto(addr336);
                                                                        }
                                                                        §§goto(addr302);
                                                                     }
                                                                  }
                                                                  catch(e:Error)
                                                                  {
                                                                     _loc3_ = e;
                                                                     addr280:
                                                                     §§push(§§newactivation());
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§pop().§§slot[3] = this.§;!!§(responseObj.C);
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           addr302:
                                                                           §§push(§§newactivation());
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(§§pop().§§slot[1].E)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr310:
                                                                                    this.§!!Y§(responseObj);
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr330);
                                                                        }
                                                                        §§goto(addr390);
                                                                     }
                                                                     §§goto(addr330);
                                                                  }
                                                                  addr330:
                                                                  if(sc.§0!X§())
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr336:
                                                                        _loc3_ = 0;
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr340:
                                                                           _loc4_ = sc.§&,§();
                                                                           if(_loc6_ && _loc2_)
                                                                           {
                                                                           }
                                                                           addr374:
                                                                           if(§§hasnext(_loc4_,_loc3_))
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 §§pop().§§slot[6] = §§nextvalue(_loc3_,_loc4_);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr369:
                                                                                    fnc.call(null,responseObj);
                                                                                 }
                                                                                 §§goto(addr374);
                                                                              }
                                                                              §§goto(addr369);
                                                                           }
                                                                           addr387:
                                                                           if(_loc5_)
                                                                           {
                                                                              addr390:
                                                                           }
                                                                           addr386:
                                                                        }
                                                                        §§goto(addr387);
                                                                     }
                                                                     §§goto(addr390);
                                                                  }
                                                                  else
                                                                  {
                                                                     § #§.log("[ResponseHandler] Got message for disabled command, ignoring message");
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr156);
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                      §§goto(addr310);
                                                   }
                                                   §§goto(addr340);
                                                }
                                                §§goto(addr260);
                                             }
                                             §§goto(addr340);
                                          }
                                       }
                                       continue loop6;
                                    }
                                    continue loop2;
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §!!Y§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Function = null;
         if(_loc7_)
         {
            param1.E = true;
         }
         var _loc2_:§5z§ = this.§;!!§(param1.C);
         if(_loc7_)
         {
            if(_loc2_.§0!X§())
            {
               addr46:
               for each(_loc3_ in _loc2_.§&,§())
               {
                  if(_loc7_ || this)
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
               § #§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §%!G§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§5z§ = new §5z§(param1,param2);
         if(_loc4_ || param1)
         {
            this.§63§.push(_loc3_);
            do
            {
               §§push(§ #§);
               §§push("[ResponseHandler] Command: " + param1);
               if(!_loc5_)
               {
                  §§push(§§pop() + " added.");
               }
               §§pop().log(§§pop());
            }
            while(_loc5_);
            
         }
      }
      
      public function §>T§() : Vector.<§5z§>
      {
         return this.§63§;
      }
      
      public function §;!!§(param1:String) : §5z§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§5z§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§63§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ && this)
               {
                  break;
               }
               if(_loc2_.§5![§() == param1)
               {
                  if(!(_loc6_ && this))
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
