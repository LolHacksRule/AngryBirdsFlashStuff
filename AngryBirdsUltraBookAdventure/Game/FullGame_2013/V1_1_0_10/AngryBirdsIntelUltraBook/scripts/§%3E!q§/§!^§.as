package §>!q§
{
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §!^§ extends MovieClip
   {
       
      
      private var §1!n§:§^v§;
      
      private var §?f§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §'!R§:Boolean = false;
      
      public function §!^§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            §§push(param5);
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
                        loop3:
                        while(true)
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(AngryBirdsFP11.§'!g§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().getAppWidth());
                                 loop6:
                                 while(_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc8_ || this)
                                    {
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       addr112:
                                    }
                                    loop7:
                                    while(_loc8_ || param3)
                                    {
                                       param5 = §§pop();
                                       while(true)
                                       {
                                          §§push(param6);
                                          loop9:
                                          while(true)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(_loc9_ && param3)
                                                {
                                                   break;
                                                }
                                                §§push(Number(§§pop()));
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc9_ && param3)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      loop11:
                                                      for(; !_loc9_; if(_loc9_ && param1)
                                                      {
                                                         continue;
                                                      },if(!_loc8_)
                                                      {
                                                         continue loop10;
                                                      })
                                                      {
                                                         §§pop();
                                                         loop12:
                                                         while(true)
                                                         {
                                                            addr42:
                                                            while(true)
                                                            {
                                                               §§push(AngryBirdsFP11.§'!g§);
                                                               if(_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop().getAppHeight());
                                                               if(_loc9_ && param1)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§push(Number(§§pop()));
                                                               if(_loc8_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               addr69:
                                                               while(true)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr69);
                                                   }
                                                }
                                                continue loop2;
                                             }
                                             continue loop7;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr112);
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public function §,n§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(!this.§'!R§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§1!n§);
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(_loc5_)
                        {
                           §§push(this.§1!n§);
                           loop3:
                           while(true)
                           {
                              §§pop().stop();
                              addr163:
                              addr49:
                              while(true)
                              {
                              }
                              if(_loc6_ && param3)
                              {
                                 continue;
                              }
                              if(_loc6_ && param2)
                              {
                                 continue loop1;
                              }
                              §§pop().play();
                              loop14:
                              while(!_loc6_)
                              {
                                 this.§'!R§ = true;
                                 if(!(_loc6_ && param1))
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          return;
                                          addr38:
                                       }
                                       else
                                       {
                                          §§goto(addr163);
                                       }
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             while(!_loc6_)
                                             {
                                                this.§?f§.blueOffset = transform.colorTransform.blueOffset;
                                                while(true)
                                                {
                                                   this.§1!n§ = §`!G§.§[U§.§-]§(this.§?f§,{
                                                      "redOffset":param1,
                                                      "greenOffset":param2,
                                                      "blueOffset":param3
                                                   },null,param4);
                                                   addr107:
                                                   while(!_loc6_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(this.§1!n§);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§?f§.redOffset = transform.colorTransform.redOffset;
                                                            break loop14;
                                                         }
                                                         addr153:
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop0;
                                             addr137:
                                          }
                                          if(!_loc5_)
                                          {
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             §§push(this.§1!n§);
                                             if(_loc5_ || param1)
                                             {
                                                §§goto(addr49);
                                             }
                                          }
                                          §§goto(addr38);
                                          addr89:
                                          while(true)
                                          {
                                             §§pop().onComplete = this.§=!d§;
                                             continue loop12;
                                             §§goto(addr89);
                                          }
                                       }
                                       §§goto(addr107);
                                    }
                                    continue loop3;
                                 }
                              }
                              while(true)
                              {
                                 this.§?f§.greenOffset = transform.colorTransform.greenOffset;
                                 §§goto(addr137);
                              }
                           }
                        }
                        §§goto(addr167);
                     }
                     while(true)
                     {
                        this.§?f§ = new ColorTransform();
                        §§goto(addr153);
                     }
                  }
               }
            }
            addr167:
            return;
         }
         §§goto(addr89);
      }
      
      public function §!0§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mNewAlpha = param1;
         }
         do
         {
            alpha = param1;
         }
         while(!_loc3_);
         
      }
      
      public function §^p§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.§1!n§);
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§1!n§);
                     addr119:
                     while(true)
                     {
                        §§pop().stop();
                        addr120:
                        while(true)
                        {
                        }
                     }
                  }
                  addr117:
               }
               while(true)
               {
                  this.§1!n§ = §`!G§.§[U§.§-]§(this,{"mNewAlpha":param1},null,param2);
                  addr110:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        §§push(this.§1!n§);
                        while(true)
                        {
                           §§pop().onComplete = this.§-!P§;
                        }
                        addr94:
                     }
                     else
                     {
                        §§goto(addr117);
                     }
                  }
                  §§goto(addr119);
               }
               addr43:
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
               §§pop().play();
               if(_loc4_ || param2)
               {
                  if(_loc3_)
                  {
                     §§goto(addr120);
                  }
                  return;
                  addr70:
               }
               loop9:
               while(true)
               {
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        §§push(this.§1!n§);
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              if(_loc4_ || this)
                              {
                                 §§goto(addr43);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr94);
                        }
                        while(true)
                        {
                           §§pop().§^!5§ = false;
                           continue loop9;
                           §§goto(addr80);
                        }
                        addr80:
                        addr74:
                     }
                     break;
                  }
                  addr97:
                  while(true)
                  {
                     §§goto(addr74);
                  }
                  §§goto(addr70);
               }
               §§goto(addr110);
            }
         }
         §§goto(addr97);
      }
      
      private function §-!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§&G§));
         }
      }
      
      private function §=!d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§'!R§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§?f§)
            {
               loop0:
               while(true)
               {
                  transform.colorTransform = this.§?f§;
                  while(true)
                  {
                     if(!this.§'!R§)
                     {
                        if(!_loc2_)
                        {
                           this.§?f§ = null;
                        }
                        loop2:
                        while(_loc3_)
                        {
                           while(true)
                           {
                              if(!(_loc2_ && param1))
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                        }
                        continue;
                     }
                  }
               }
            }
            while(alpha != this.mNewAlpha)
            {
               if(!_loc2_)
               {
                  while(true)
                  {
                     alpha = this.mNewAlpha;
                  }
                  addr41:
               }
               §§goto(addr45);
            }
            §§goto(addr20);
         }
         §§goto(addr41);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            AngryBirdsFP11.§'!g§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            while(true)
            {
               §§push(this.§1!n§);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        continue;
                     }
                     addr84:
                     do
                     {
                        this.§1!n§ = null;
                     }
                     while(_loc1_ && this);
                     
                  }
                  return;
               }
               break;
            }
            §§pop().stop();
         }
         §§goto(addr84);
      }
   }
}
