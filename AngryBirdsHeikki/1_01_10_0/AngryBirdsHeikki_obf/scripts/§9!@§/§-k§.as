package §9!@§
{
   import §5!1§.§"!X§;
   import §5!1§.§&[§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §-k§ extends MovieClip
   {
       
      
      private var §'V§:§&[§;
      
      private var §3!4§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §@!'§:Boolean = false;
      
      public function §-k§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Number = NaN, param7:Number = NaN)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!(_loc10_ && param3))
         {
            §§push(param6);
            loop0:
            while(true)
            {
               §§push(Number(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr142:
                           while(true)
                           {
                              §§push(§,L§.§1'§);
                              addr123:
                              while(true)
                              {
                                 §§push(2);
                                 addr124:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr125:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                           }
                        }
                        addr141:
                     }
                     while(true)
                     {
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           continue loop0;
                           addr64:
                           if(!(_loc9_ || this))
                           {
                              continue;
                           }
                           if(_loc10_ && this)
                           {
                              continue loop1;
                           }
                           loop16:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop17:
                              while(true)
                              {
                                 if(_loc9_)
                                 {
                                    if(!_loc9_)
                                    {
                                       continue loop0;
                                    }
                                    param7 = §§pop();
                                    while(true)
                                    {
                                       super();
                                       if(!_loc9_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc10_ && this))
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          loop15:
                                          while(true)
                                          {
                                             §§push(§,L§.§!!d§);
                                             if(_loc9_)
                                             {
                                                §§push(2);
                                                if(_loc9_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc9_)
                                                   {
                                                      continue loop17;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc9_ || param2))
                                                   {
                                                      continue loop17;
                                                   }
                                                   addr57:
                                                   if(_loc9_ || param2)
                                                   {
                                                      §§goto(addr64);
                                                   }
                                                   else
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc9_ || param2))
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               continue loop16;
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr115:
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  addr136:
                                                                  while(true)
                                                                  {
                                                                     §§push(param7);
                                                                     if(_loc10_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        continue loop12;
                                                                     }
                                                                     §§goto(addr125);
                                                                  }
                                                               }
                                                               §§goto(addr123);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr141);
                                                         }
                                                      }
                                                      §§goto(addr142);
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr123);
                                          }
                                          §§goto(addr124);
                                       }
                                       §§goto(addr115);
                                    }
                                    var _loc8_:ColorTransform;
                                    (_loc8_ = new ColorTransform()).redOffset = param1;
                                    if(_loc9_)
                                    {
                                       _loc8_.greenOffset = param2;
                                       loop19:
                                       while(true)
                                       {
                                          _loc8_.blueOffset = param3;
                                          loop20:
                                          while(true)
                                          {
                                             transform.colorTransform = _loc8_;
                                             loop21:
                                             while(true)
                                             {
                                                if(param5)
                                                {
                                                   loop34:
                                                   while(true)
                                                   {
                                                      graphics.beginFill(0,1);
                                                      loop35:
                                                      while(true)
                                                      {
                                                         graphics.drawRect(-param6,-param7,param6 * 2,param7 * 2);
                                                         do
                                                         {
                                                            scaleX = 100;
                                                            scaleY = 100;
                                                         }
                                                         while(!_loc9_);
                                                         
                                                         addr329:
                                                         graphics.endFill();
                                                         loop25:
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ || param2))
                                                            {
                                                               continue loop35;
                                                            }
                                                            loop26:
                                                            while(true)
                                                            {
                                                               this.mNewAlpha = param4;
                                                               loop27:
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     alpha = param4;
                                                                     loop28:
                                                                     for(; !_loc10_; if(!(_loc10_ && param2))
                                                                     {
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           continue loop34;
                                                                        }
                                                                        continue loop27;
                                                                     })
                                                                     {
                                                                        this.mouseEnabled = true;
                                                                        loop29:
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_ || param2)
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           loop32:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr243:
                                                                                 if(!(_loc9_ || param2))
                                                                                 {
                                                                                    break loop27;
                                                                                 }
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    continue loop26;
                                                                                 }
                                                                                 §§goto(addr327);
                                                                              }
                                                                              addr266:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    break loop29;
                                                                                 }
                                                                                 graphics.endFill();
                                                                                 continue loop32;
                                                                              }
                                                                           }
                                                                           addr223:
                                                                           addEventListener(Event.ENTER_FRAME,this.§&!7§);
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              continue loop28;
                                                                           }
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                     continue loop20;
                                                                  }
                                                                  addr296:
                                                                  while(true)
                                                                  {
                                                                     graphics.beginFill(0,1);
                                                                     break loop27;
                                                                  }
                                                               }
                                                               while(!(_loc10_ && param3))
                                                               {
                                                                  graphics.drawRect(-param6 / 2,-param7 / 2,param6,param7);
                                                                  §§goto(addr266);
                                                                  §§goto(addr243);
                                                               }
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  if(_loc10_ && this)
                                                                  {
                                                                     continue loop25;
                                                                  }
                                                                  loop36:
                                                                  while(true)
                                                                  {
                                                                     §§push(§,L§.§!!d§);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc9_ || param3)
                                                                        {
                                                                           param7 = §§pop();
                                                                           §§goto(addr296);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           continue loop36;
                                                                        }
                                                                        addr302:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        param6 = §§pop();
                                                                        continue loop24;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(§,L§.§1'§);
                                                }
                                                §§goto(addr302);
                                             }
                                          }
                                          if(_loc9_ || this)
                                          {
                                             return;
                                          }
                                       }
                                    }
                                    §§goto(addr311);
                                 }
                                 §§goto(addr114);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §'3§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(!this.§@!'§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§'V§);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        addr173:
                        while(true)
                        {
                           §§push(this.§'V§);
                           addr175:
                           while(true)
                           {
                              §§pop().stop();
                              addr176:
                              while(true)
                              {
                                 if(!(_loc5_ || param2))
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        addr173:
                     }
                     while(true)
                     {
                        this.§3!4§ = new ColorTransform();
                        while(_loc5_ || param2)
                        {
                           this.§3!4§.redOffset = transform.colorTransform.redOffset;
                           while(!_loc6_)
                           {
                              this.§3!4§.greenOffset = transform.colorTransform.greenOffset;
                              loop4:
                              while(true)
                              {
                                 this.§3!4§.blueOffset = transform.colorTransform.blueOffset;
                                 while(true)
                                 {
                                    this.§'V§ = §"!X§.§ s§.§%!;§(this.§3!4§,{
                                       "redOffset":param1,
                                       "greenOffset":param2,
                                       "blueOffset":param3
                                    },null,param4);
                                    loop6:
                                    while(true)
                                    {
                                       if(_loc5_ || param2)
                                       {
                                          if(!(_loc5_ || param2))
                                          {
                                             break;
                                          }
                                          §§push(this.§'V§);
                                          while(true)
                                          {
                                             §§pop().onComplete = this.§2@§;
                                             §§push(this.§'V§);
                                             addr85:
                                             continue loop6;
                                             if(_loc6_ && param3)
                                             {
                                                continue;
                                             }
                                             if(_loc5_)
                                             {
                                                §§pop().play();
                                                continue loop4;
                                             }
                                             §§goto(addr175);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr173);
                                       }
                                    }
                                    addr197:
                                    return;
                                    if(!(_loc5_ || param1))
                                    {
                                       continue;
                                    }
                                    §§goto(addr85);
                                 }
                              }
                              if(_loc5_ || param2)
                              {
                                 return;
                              }
                           }
                        }
                        §§goto(addr176);
                     }
                     continue;
                  }
                  §§goto(addr175);
               }
            }
            §§goto(addr197);
         }
         §§goto(addr173);
      }
      
      public function §import§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.mNewAlpha = param1;
            do
            {
               alpha = param1;
            }
            while(_loc3_);
            
         }
      }
      
      public function §4!?§(param1:Number, param2:Number = 0.5, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            §§push(this.§'V§);
            while(true)
            {
               if(§§pop() != null)
               {
                  addr113:
                  while(true)
                  {
                     §§push(this.§'V§);
                     addr115:
                     while(true)
                     {
                        §§pop().stop();
                        addr116:
                        while(true)
                        {
                        }
                     }
                  }
                  addr113:
               }
               while(true)
               {
                  this.§'V§ = §"!X§.§ s§.§%!;§(this,{"mNewAlpha":param1},null,param2,param3);
                  loop2:
                  while(true)
                  {
                     §§push(this.§'V§);
                     while(true)
                     {
                        §§pop().onComplete = this.§;<§;
                        loop4:
                        while(_loc5_)
                        {
                           §§push(this.§'V§);
                           loop5:
                           while(true)
                           {
                              §§pop().§<!-§ = false;
                              addr71:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr116);
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      private function §;<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.override));
         }
      }
      
      private function §2@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§@!'§ = false;
         }
      }
      
      private function §&!7§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§3!4§)
            {
               loop0:
               while(true)
               {
                  transform.colorTransform = this.§3!4§;
                  loop1:
                  while(true)
                  {
                     if(this.§@!'§)
                     {
                        loop4:
                        while(alpha != this.mNewAlpha)
                        {
                           if(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 alpha = this.mNewAlpha;
                              }
                           }
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              addr53:
                              if(!(_loc3_ && _loc3_))
                              {
                                 break loop4;
                              }
                              addr65:
                              while(true)
                              {
                                 this.§3!4§ = null;
                                 continue loop0;
                                 §§goto(addr53);
                              }
                           }
                        }
                        return;
                        addr28:
                     }
                     §§goto(addr65);
                  }
               }
            }
            §§goto(addr28);
         }
         §§goto(addr37);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            removeEventListener(Event.ENTER_FRAME,this.§&!7§);
         }
         while(true)
         {
            §§push(this.§'V§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     if(_loc2_)
                     {
                        §§push(this.§'V§);
                        break;
                     }
                     continue;
                  }
                  do
                  {
                     this.§'V§ = null;
                  }
                  while(!(_loc2_ || _loc1_));
                  
                  addr79:
               }
               return;
            }
            break;
         }
         §§pop().stop();
         §§goto(addr79);
      }
   }
}
