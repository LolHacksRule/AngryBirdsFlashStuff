package §4!<§
{
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §<T§.§4!N§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §1!"§ extends EventDispatcher
   {
       
      
      private var §%M§:Boolean;
      
      private var §4",§:§4!N§;
      
      private var §<!^§:§ "E§;
      
      private var §8!2§:Sprite;
      
      private var §'M§:int;
      
      private var §;z§:Number;
      
      private var §?E§:Number;
      
      private var §?!W§:Number;
      
      private var §3"%§:Number;
      
      private var §7!N§:Boolean;
      
      private var §53§:Boolean;
      
      private var §!"U§:Number;
      
      private var § !O§:Boolean = false;
      
      public function §1!"§(param1:String, param2:Sprite, param3:§'!S§, param4:Number, param5:Number, param6:Number, param7:Boolean = false, param8:Number = 0)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§4",§ = param3.animationManager.getAnimation(param1);
               loop1:
               while(true)
               {
                  this.§8!2§ = param2;
                  while(true)
                  {
                     this.setPosition(param4,param5);
                     addr82:
                     if(_loc10_ || this)
                     {
                        if(!_loc9_)
                        {
                           this.§7!N§ = param7;
                           while(!_loc9_)
                           {
                              this.§!"U§ = param8;
                              while(_loc10_ || param2)
                              {
                                 this.reset();
                                 if(_loc10_)
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                           loop4:
                           while(true)
                           {
                              if(!(_loc10_ || param3))
                              {
                                 while(true)
                                 {
                                    this.§?E§ = param6;
                                    continue loop4;
                                 }
                                 return;
                                 addr41:
                                 addr107:
                              }
                              §§goto(addr82);
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr107);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §§push(this.§!"U§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(this.§%M§);
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(this.§;z§);
                              loop2:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(0);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc5_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc4_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§pop();
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(this.§ !O§);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(_loc5_ || this)
                                                            {
                                                               while(§§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr373);
                                                               }
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§;z§);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() + param1);
                                                                  }
                                                                  §§pop().§;z§ = §§pop();
                                                                  if(_loc4_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  addr74:
                                                                  addr74:
                                                                  while(true)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               §§goto(addr410);
                                                               addr100:
                                                               addr47:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr160);
                                                            }
                                                         }
                                                         §§goto(addr238);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr427);
                                                }
                                                break loop1;
                                             }
                                             §§goto(addr100);
                                          }
                                          §§goto(addr428);
                                       }
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr409);
                           }
                           §§goto(addr420);
                        }
                        §§goto(addr220);
                     }
                     break;
                  }
                  if(_loc5_)
                  {
                     §§push(this);
                     §§push(this.§!"U§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§!"U§ = §§pop();
                     if(_loc5_)
                     {
                        addr160:
                        return true;
                     }
                     addr430:
                     addr430:
                     loop6:
                     while(true)
                     {
                        §§push(this.§'M§);
                        loop7:
                        while(true)
                        {
                           §§push(this.§4",§);
                           loop8:
                           while(true)
                           {
                              §§push(§§pop().getFrameCount());
                              loop9:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 loop10:
                                 while(true)
                                 {
                                    addr409:
                                    loop11:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr410:
                                          while(true)
                                          {
                                             this.§'M§ = 0;
                                             addr413:
                                             while(_loc5_ || _loc2_)
                                             {
                                                while(true)
                                                {
                                                }
                                             }
                                             continue loop6;
                                          }
                                          addr410:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§'M§);
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          §§push(this.§4",§);
                                          if(!_loc5_)
                                          {
                                             continue loop8;
                                          }
                                          §§push(§§pop().getFrameCount());
                                          if(!_loc5_)
                                          {
                                             continue loop9;
                                          }
                                          if(§§pop() != §§pop())
                                          {
                                             this.§<!^§ = new § "E§(this.§4",§.getFrame(this.§'M§).texture);
                                             loop15:
                                             while(true)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(this.§8!2§);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(this.§<!^§);
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         §§pop().addChild(§§pop());
                                                         loop16:
                                                         for(; !_loc4_; while(true)
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr319);
                                                               }
                                                               break;
                                                            }
                                                            continue loop16;
                                                         },§§goto(addr366))
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(this.§<!^§);
                                                               while(true)
                                                               {
                                                                  §§push(this.§?!W§);
                                                                  addr303:
                                                                  addr319:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§<!^§);
                                                                     addr305:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().width / 2);
                                                                        addr308:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           addr309:
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(this.§<!^§);
                                                                  if(_loc4_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(this.§3"%§);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(this.§53§)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(this.§<!^§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop().height / 2);
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    addr289:
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§pop().y = §§pop();
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             this.§0!k§();
                                                                                             addr366:
                                                                                             if(!(_loc4_ && param1))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr373:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr410);
                                                                                             }
                                                                                             addr390:
                                                                                          }
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             addr220:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§%M§);
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break loop28;
                                                                                                      }
                                                                                                      addr427:
                                                                                                      addr427:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         addr428:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               break loop1;
                                                                                                            }
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   break loop1;
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                          }
                                                                                          addr238:
                                                                                          return §§pop();
                                                                                       }
                                                                                       continue loop16;
                                                                                    }
                                                                                    §§goto(addr303);
                                                                                 }
                                                                                 §§goto(addr308);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr280:
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr289);
                                                                                    §§push(§§pop().height);
                                                                                 }
                                                                              }
                                                                              §§goto(addr305);
                                                                           }
                                                                           §§goto(addr289);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this.§<!^§);
                                                                        }
                                                                        §§goto(addr280);
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                                  §§goto(addr289);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr436:
                                                               while(true)
                                                               {
                                                                  §§push(this.§7!N§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr427);
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  break loop1;
                                                               }
                                                               addr436:
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      addr433:
                                                      while(true)
                                                      {
                                                         §§push(this.§<!^§);
                                                         break loop15;
                                                      }
                                                   }
                                                   §§goto(addr413);
                                                }
                                                else
                                                {
                                                   addr387:
                                                   this.§%M§ = false;
                                                }
                                                §§goto(addr390);
                                             }
                                             while(true)
                                             {
                                                §§pop().removeChild(§§pop());
                                                §§goto(addr436);
                                             }
                                          }
                                          §§goto(addr387);
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr430:
                  }
                  §§goto(addr436);
                  §§goto(addr220);
               }
               while(true)
               {
                  §§pop();
                  §§goto(addr430);
               }
            }
         }
         §§goto(addr74);
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§'M§ = 0;
            while(true)
            {
               this.§;z§ = 0;
               §§goto(addr47);
            }
         }
         addr47:
         while(true)
         {
            this.§%M§ = true;
            if(_loc2_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§?!W§ = param1;
         }
         do
         {
            this.§3"%§ = param2;
         }
         while(_loc4_);
         
      }
      
      public function §%"-§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§53§ = param1;
         }
      }
      
      public function §5p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            dispatchEvent(new Event(Event.ACTIVATE));
         }
      }
      
      public function §0!k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}
