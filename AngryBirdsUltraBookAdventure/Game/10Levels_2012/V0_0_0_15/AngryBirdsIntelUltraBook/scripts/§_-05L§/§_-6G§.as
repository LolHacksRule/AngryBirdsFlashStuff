package §_-05L§
{
   import flash.events.Event;
   
   public class §_-6G§ extends §_-wn§
   {
       
      
      public function §_-6G§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function updatePositions() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§_-K5§ = null;
         var _loc3_:* = NaN;
         var _loc4_:§_-p§ = null;
         var _loc1_:* = int(§_-2x§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  if(_loc6_ || _loc1_)
                  {
                     §§push(0);
                     if(!_loc5_)
                     {
                        break;
                     }
                     addr354:
                     if(§§pop() < §_-WB§.length)
                     {
                        §§push(§§findproperty(§_-03Q§));
                        §§push(_loc1_);
                        if(!_loc5_)
                        {
                           §§push(Number(§§pop().§_-03Q§(§§pop() + (§_-WB§[_loc1_].offset || 0))));
                           loop12:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr265:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop15:
                                    while(true)
                                    {
                                       §§push(§§pop() > -§_-gG§);
                                       if(_loc6_ || _loc1_)
                                       {
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                §§push(_loc3_);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   continue loop12;
                                                }
                                                continue loop15;
                                             }
                                             _loc4_ = §_-Dt§();
                                             if(!_loc5_)
                                             {
                                                §_-FQ§.addChild(_loc4_);
                                                _loc4_.data = §_-WB§[_loc1_];
                                                _loc4_.index = _loc1_;
                                                addr340:
                                                if(!_loc5_)
                                                {
                                                   addr298:
                                                   _loc4_.x = _loc3_;
                                                   if(_loc6_ || this)
                                                   {
                                                      if(_loc6_ || _loc1_)
                                                      {
                                                         §_-2x§.push(_loc4_);
                                                         if(!(_loc5_ && _loc1_))
                                                         {
                                                            addr296:
                                                            if(false)
                                                            {
                                                               §§goto(addr298);
                                                            }
                                                            _loc1_++;
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§goto(addr354);
                                                               }
                                                               addr357:
                                                               return;
                                                               addr353:
                                                            }
                                                            §§goto(addr357);
                                                         }
                                                         §§goto(addr298);
                                                      }
                                                   }
                                                   §§goto(addr340);
                                                }
                                                addr344:
                                                §§goto(addr344);
                                             }
                                             §§goto(addr296);
                                          }
                                       }
                                       §§goto(addr270);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr259);
                     }
                     §§goto(addr357);
                  }
                  §§goto(addr265);
               }
               else
               {
                  _loc2_ = §_-2x§[_loc1_] as §_-K5§;
                  if(_loc6_ || this)
                  {
                     _loc2_.x = §_-03Q§(_loc2_.index + (_loc2_.data.offset || 0));
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_.x >= §_-7S§);
                        if(!_loc5_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §_-FQ§.removeChild(_loc2_);
                                       addr106:
                                       while(true)
                                       {
                                          §_-2x§.splice(§_-2x§.indexOf(_loc2_),1);
                                          addr80:
                                          while(_loc6_ || _loc1_)
                                          {
                                             addr87:
                                             while(true)
                                             {
                                                §_-2D§(_loc2_);
                                                addr70:
                                                while(_loc5_)
                                                {
                                                   continue loop10;
                                                }
                                                §§goto(addr87);
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                    addr103:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc1_ = §§pop();
                                    if(_loc6_)
                                    {
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          if(_loc6_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr66);
                                          }
                                          §§goto(addr106);
                                       }
                                       §§goto(addr80);
                                    }
                                    §§goto(addr70);
                                 }
                                 continue loop0;
                                 addr124:
                                 §§push(_loc2_.x <= -§_-gG§);
                                 if(_loc6_ || _loc2_)
                                 {
                                    continue;
                                 }
                                 addr116:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop1;
                                    §§goto(addr124);
                                 }
                                 addr116:
                              }
                           }
                        }
                        §§goto(addr116);
                     }
                  }
                  §§goto(addr103);
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(!(_loc5_ && this))
         {
            §§goto(addr357);
         }
         §§goto(addr265);
      }
      
      override protected function onEnterFrame(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:* = NaN;
         var _loc2_:* = false;
         loop0:
         for each(_loc3_ in data)
         {
            if(!(_loc7_ && _loc2_))
            {
               if(_loc3_.offset != _loc3_.targetOffset)
               {
                  if(_loc3_.offset == undefined)
                  {
                     while(true)
                     {
                        _loc3_.offset = 0;
                        addr200:
                        while(true)
                        {
                        }
                        loop10:
                        for(; _loc8_ || param1; while(true)
                        {
                           if(!(_loc8_ || this))
                           {
                              continue loop10;
                           }
                           if(!_loc7_)
                           {
                              §§goto(addr44);
                           }
                           §§goto(addr186);
                        })
                        {
                           loop11:
                           while(true)
                           {
                              addr44:
                              loop12:
                              while(true)
                              {
                                 §§push(true);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    _loc2_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       continue loop10;
                                    }
                                    if(_loc8_)
                                    {
                                       if(_loc8_ || this)
                                       {
                                          if(!_loc8_)
                                          {
                                             break loop11;
                                             addr67:
                                          }
                                          while(false)
                                          {
                                             continue loop11;
                                          }
                                          continue loop0;
                                       }
                                       loop14:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc8_)
                                          {
                                             if(_loc8_ || _loc2_)
                                             {
                                                §§push(0.01);
                                                if(_loc8_ || _loc2_)
                                                {
                                                   addr107:
                                                   §§push(§§pop() < §§pop());
                                                   break loop12;
                                                }
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   break loop14;
                                                }
                                                addr164:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr164);
                                             }
                                             addr163:
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(0);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(!(_loc7_ && param1))
                                             {
                                                if(§§pop())
                                                {
                                                   addr176:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr177);
                                                   }
                                                   addr176:
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      _loc3_.offset += _loc4_;
                                                      continue loop10;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc7_ && this)
                                                         {
                                                            break;
                                                         }
                                                         _loc3_.offset = _loc3_.targetOffset;
                                                         continue loop10;
                                                      }
                                                      addr183:
                                                      while(true)
                                                      {
                                                         _loc3_.targetOffset = 0;
                                                         addr186:
                                                         loop5:
                                                         while(true)
                                                         {
                                                            addr143:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_.targetOffset - _loc3_.offset);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(8);
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr163);
                                                               continue loop5;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr200);
                                                }
                                                addr110:
                                             }
                                             §§goto(addr176);
                                          }
                                       }
                                       addr177:
                                    }
                                    §§goto(addr122);
                                 }
                                 break;
                              }
                              while(!_loc8_)
                              {
                                 §§goto(addr176);
                                 §§goto(addr107);
                              }
                              §§goto(addr110);
                           }
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     if(_loc3_.targetOffset == undefined)
                     {
                        §§goto(addr183);
                     }
                     §§goto(addr143);
                     §§goto(addr200);
                  }
               }
               §§goto(addr192);
            }
            §§goto(addr67);
         }
         if(!(_loc7_ && _loc3_))
         {
            if(§_-07x§ == §_-EM§)
            {
               if(_loc2_)
               {
                  if(!_loc7_)
                  {
                     this.updatePositions();
                  }
                  if(_loc8_)
                  {
                     if(!(_loc7_ && param1))
                     {
                        §§goto(addr223);
                     }
                     else
                     {
                        addr249:
                        super.onEnterFrame(param1);
                     }
                     §§goto(addr223);
                  }
               }
               addr223:
               return;
            }
         }
         §§goto(addr249);
      }
   }
}
