package §`!o§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class §+"k§ extends §2,§
   {
      
      protected static var §4#Y§:String;
      
      protected static var §]"1§:Function;
       
      
      public function §+"k§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      public static function get §!x§() : String
      {
         return §4#Y§;
      }
      
      public static function set §-!w§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §]"1§ = param1;
         }
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§pop().§§slot[1] = param1;
            §§push(§]"1§ == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           if(_loc5_ || param1)
                           {
                              §§push(§§newactivation());
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(§§pop().§§slot[1] is ErrorEvent);
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc5_ || this))
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr78:
                                                §]"1§(e);
                                                §§push(true);
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                addr62:
                                                addr62:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(_loc6_ && this)
                                                      {
                                                         break;
                                                      }
                                                      continue loop8;
                                                   }
                                                   §§goto(addr78);
                                                }
                                                continue loop1;
                                             }
                                             addr144:
                                             addr144:
                                             if(e.type == Event.COMPLETE)
                                             {
                                                break loop3;
                                             }
                                             loop27:
                                             while(true)
                                             {
                                                §§push(super.dispatchEvent(e));
                                                if(!(_loc5_ || _loc3_))
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                            addr457:
                                                         }
                                                         addr420:
                                                      }
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     if(data.st != undefined)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 §4#Y§ = data.st;
                                                                                 loop17:
                                                                                 for(; !(_loc6_ && _loc3_); while(true)
                                                                                 {
                                                                                    this.initData();
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop17;
                                                                                 },while(true)
                                                                                 {
                                                                                    continue loop27;
                                                                                 })
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       addr400:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr435:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       addr435:
                                                                                    }
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr425:
                                                                                 addr425:
                                                                                 while(true)
                                                                                 {
                                                                                    §]"1§(new ErrorEvent(ErrorEvent.ERROR,false,false,data.error));
                                                                                    §§goto(addr435);
                                                                                 }
                                                                                 addr391:
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    super.load(§^!y§);
                                                                                    addr485:
                                                                                    break loop14;
                                                                                    addr485:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    addr437:
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(data.error));
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr448:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   break loop16;
                                                                                                }
                                                                                             }
                                                                                             continue loop22;
                                                                                          }
                                                                                          addr447:
                                                                                       }
                                                                                       §§goto(addr449);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr391);
                                                                     }
                                                                     §§goto(addr360);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc5_ || _loc3_))
                                                                     {
                                                                        break loop14;
                                                                     }
                                                                     §§goto(addr457);
                                                                  }
                                                               }
                                                               §§goto(addr425);
                                                            }
                                                         }
                                                         §§goto(addr449);
                                                         §§goto(addr420);
                                                      }
                                                      addr478:
                                                   }
                                                   §§goto(addr412);
                                                }
                                                §§goto(addr460);
                                             }
                                          }
                                          continue;
                                       }
                                       while(true)
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop3;
                                          §§goto(addr62);
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 addr95:
                              }
                              §§goto(addr144);
                           }
                           break;
                        }
                        try
                        {
                           if(super.data == "")
                           {
                              if(_loc5_)
                              {
                                 data = {};
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(Boolean(data.error));
                                    if(_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                §§pop();
                                                if(_loc5_ || this)
                                                {
                                                   §§push(Boolean(data.retryAfterSeconds));
                                                   if(!_loc6_)
                                                   {
                                                      addr285:
                                                      §§push(§§pop());
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§pop();
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(§`"m§ > 0);
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     addr314:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           var _loc3_:*;
                                                                           var _loc4_:* = (_loc3_ = §§findproperty(§`"m§)).§`"m§ - 1;
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              _loc3_.§`"m§ = _loc4_;
                                                                           }
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              §7!+§ = data.retryAfterSeconds * 1000;
                                                                              §§goto(addr485);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr463);
                                                                           }
                                                                        }
                                                                        §§goto(addr400);
                                                                     }
                                                                     §§goto(addr437);
                                                                  }
                                                                  §§goto(addr460);
                                                               }
                                                               §§goto(addr370);
                                                            }
                                                            §§goto(addr460);
                                                         }
                                                         §§goto(addr314);
                                                      }
                                                      §§goto(addr448);
                                                   }
                                                   §§goto(addr447);
                                                }
                                                §§goto(addr435);
                                             }
                                             addr412:
                                             return §§pop();
                                          }
                                          §§goto(addr285);
                                       }
                                       §§goto(addr448);
                                    }
                                    addr460:
                                    if(!_loc6_)
                                    {
                                       return §§pop();
                                    }
                                    return §§pop();
                                    addr179:
                                 }
                                 §§goto(addr425);
                              }
                           }
                           else
                           {
                              data = JSON.parse(super.data);
                              if(!(_loc6_ && param1))
                              {
                                 §§goto(addr179);
                              }
                           }
                        }
                        catch(err:SyntaxError)
                        {
                           err = new SyntaxError(e.toString() + "\n" + super.data);
                           while(§]"1§ != null)
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 §]"1§(err);
                              }
                              if(!_loc6_)
                              {
                                 return true;
                              }
                           }
                           throw err;
                        }
                        §§goto(addr485);
                     }
                     §§goto(addr95);
                  }
               }
            }
         }
         §§goto(addr144);
      }
      
      protected function initData() : void
      {
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§8e§(param1);
         }
         do
         {
            super.load(param1);
         }
         while(_loc2_ && param1);
         
      }
      
      private function §8e§(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(§4#Y§)
            {
               while(true)
               {
                  if(param1.url.indexOf("?") == -1)
                  {
                     if(_loc3_)
                     {
                        param1.url += "?st=" + §4#Y§;
                        break;
                     }
                     break;
                  }
                  param1.url += "&st=" + §4#Y§;
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(_loc2_)
                  {
                     continue;
                  }
                  addr25:
                  return;
                  addr54:
               }
            }
            §§goto(addr25);
         }
         §§goto(addr54);
      }
   }
}
