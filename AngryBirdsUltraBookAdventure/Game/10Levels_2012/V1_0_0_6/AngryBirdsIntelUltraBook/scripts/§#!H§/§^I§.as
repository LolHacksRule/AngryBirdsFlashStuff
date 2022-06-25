package §#!H§
{
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §^I§ extends MovieClip
   {
       
      
      private var §6!f§:§!q§;
      
      private var §+F§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §0!c§:Boolean = false;
      
      public function §^I§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
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
                  addr147:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(AngryBirdsFP11.§3l§);
                              while(true)
                              {
                                 §§push(§§pop().getAppWidth());
                                 addr115:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 loop15:
                                 while(true)
                                 {
                                    §§push(AngryBirdsFP11.§3l§);
                                    if(!(_loc9_ || this))
                                    {
                                       break;
                                    }
                                    §§push(§§pop().getAppHeight());
                                    if(_loc9_ || param2)
                                    {
                                       addr47:
                                       if(_loc8_ && this)
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             §§goto(addr47);
                                          }
                                          continue loop4;
                                          addr107:
                                       }
                                       addr54:
                                       if(!(_loc8_ && param3))
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc9_)
                                          {
                                             addr64:
                                             if(_loc9_ || param1)
                                             {
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr73:
                                                   while(true)
                                                   {
                                                      if(!(_loc8_ && this))
                                                      {
                                                         param6 = §§pop();
                                                         loop16:
                                                         while(_loc9_)
                                                         {
                                                            while(true)
                                                            {
                                                               super();
                                                               if(!_loc9_)
                                                               {
                                                                  continue loop16;
                                                               }
                                                               if(!_loc8_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(param6);
                                                                  addr86:
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        while(!(_loc8_ && param1))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr115);
                                                                        addr89:
                                                                     }
                                                                     break;
                                                                     §§goto(addr54);
                                                                  }
                                                                  addr118:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc8_ && param1))
                                                                     {
                                                                        if(!(_loc9_ || this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        param5 = §§pop();
                                                                        continue loop10;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            var _loc7_:ColorTransform;
                                                            (_loc7_ = new ColorTransform()).redOffset = param1;
                                                            if(_loc9_)
                                                            {
                                                               _loc7_.greenOffset = param2;
                                                               while(true)
                                                               {
                                                                  _loc7_.blueOffset = param3;
                                                                  addr283:
                                                                  while(true)
                                                                  {
                                                                     transform.colorTransform = _loc7_;
                                                                  }
                                                               }
                                                               addr287:
                                                            }
                                                            loop22:
                                                            while(true)
                                                            {
                                                               graphics.beginFill(0,1);
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     scaleX = 100;
                                                                     while(true)
                                                                     {
                                                                        scaleY = 100;
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           graphics.endFill();
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              if(_loc8_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              this.mNewAlpha = param4;
                                                                              loop28:
                                                                              do
                                                                              {
                                                                                 alpha = param4;
                                                                                 loop29:
                                                                                 while(!_loc8_)
                                                                                 {
                                                                                    this.mouseEnabled = true;
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop26;
                                                                                       }
                                                                                       continue loop29;
                                                                                       addr213:
                                                                                       AngryBirdsFP11.§3l§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          continue loop28;
                                                                                       }
                                                                                    }
                                                                                    continue loop26;
                                                                                 }
                                                                                 continue loop27;
                                                                              }
                                                                              while(!_loc9_);
                                                                              
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                              if(!_loc8_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              §§goto(addr287);
                                                                           }
                                                                           §§goto(addr283);
                                                                        }
                                                                        if(_loc9_ || param3)
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            continue loop4;
                                                         }
                                                         addr108:
                                                      }
                                                      §§goto(addr89);
                                                   }
                                                }
                                                addr71:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr118);
                                                §§goto(addr64);
                                             }
                                             addr117:
                                          }
                                          §§goto(addr73);
                                       }
                                       §§goto(addr86);
                                       §§goto(addr108);
                                    }
                                    §§goto(addr73);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr117);
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §7K§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(!this.§0!c§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§6!f§);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§6!f§);
                           addr167:
                           while(true)
                           {
                              §§pop().stop();
                              addr168:
                              while(true)
                              {
                              }
                           }
                        }
                        addr165:
                     }
                     loop2:
                     while(true)
                     {
                        this.§+F§ = new ColorTransform();
                        while(true)
                        {
                           this.§+F§.redOffset = transform.colorTransform.redOffset;
                           while(!_loc6_)
                           {
                              this.§+F§.greenOffset = transform.colorTransform.greenOffset;
                              while(_loc5_ || this)
                              {
                                 this.§+F§.blueOffset = transform.colorTransform.blueOffset;
                                 loop6:
                                 for(; _loc5_; if(_loc6_ && param3)
                                 {
                                    continue;
                                 },if(_loc6_ && this)
                                 {
                                    continue loop0;
                                 },§§goto(addr82))
                                 {
                                    if(_loc6_ && param1)
                                    {
                                       §§goto(addr172);
                                    }
                                    this.§6!f§ = §-!,§.§7!j§.§,!`§(this.§+F§,{
                                       "redOffset":param1,
                                       "greenOffset":param2,
                                       "blueOffset":param3
                                    },null,param4);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§6!f§);
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             break;
                                             addr56:
                                          }
                                          §§pop().onComplete = this.§@q§;
                                          while(_loc5_)
                                          {
                                             continue loop6;
                                          }
                                          §§push(this.§6!f§);
                                          addr82:
                                          continue loop7;
                                          if(_loc6_)
                                          {
                                             continue;
                                          }
                                          §§pop().play();
                                          loop10:
                                          while(_loc5_)
                                          {
                                             if(_loc5_ || param3)
                                             {
                                                while(true)
                                                {
                                                   this.§0!c§ = true;
                                                   if(_loc6_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr165);
                                                }
                                                return;
                                                continue;
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr56);
                                       }
                                       §§goto(addr167);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr167);
               }
            }
            addr172:
            return;
         }
         §§goto(addr47);
      }
      
      public function §%$§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.mNewAlpha = param1;
            do
            {
               alpha = param1;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function §;'§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§6!f§);
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§6!f§);
                     addr118:
                     while(true)
                     {
                        §§pop().stop();
                        addr119:
                        while(true)
                        {
                        }
                     }
                  }
                  addr116:
               }
               addr99:
               while(true)
               {
                  this.§6!f§ = §-!,§.§7!j§.§,!`§(this,{"mNewAlpha":param1},null,param2);
               }
               addr59:
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§pop().§]! § = false;
               loop9:
               for(; !_loc4_; §§pop().play(),if(!(_loc3_ || param2))
               {
                  continue;
               },if(_loc4_ && param2)
               {
                  §§goto(addr119);
               },return,addr43:)
               {
                  addr70:
                  §§push(this.§6!f§);
                  if(!_loc4_)
                  {
                     continue;
                  }
                  addr57:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr59);
                     }
                     else
                     {
                        while(!_loc4_)
                        {
                           §§pop().onComplete = this.§[V§;
                           break loop9;
                        }
                        §§goto(addr118);
                        addr74:
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr99);
               }
               loop7:
               while(true)
               {
                  if(!(_loc4_ && param1))
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr57);
                     §§push(this.§6!f§);
                  }
                  addr111:
                  while(true)
                  {
                     §§goto(addr74);
                     continue loop7;
                  }
                  §§goto(addr43);
               }
               §§goto(addr116);
            }
         }
         §§goto(addr111);
      }
      
      private function §[V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§^#§));
         }
      }
      
      private function §@q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§0!c§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§+F§)
            {
               while(true)
               {
                  transform.colorTransform = this.§+F§;
                  addr94:
                  while(true)
                  {
                     if(!this.§0!c§)
                     {
                        if(!_loc2_)
                        {
                           this.§+F§ = null;
                           addr86:
                           while(true)
                           {
                           }
                           addr86:
                        }
                        §§goto(addr86);
                     }
                  }
                  addr53:
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  alpha = this.mNewAlpha;
                  §§goto(addr74);
               }
            }
            while(true)
            {
               if(alpha != this.mNewAlpha)
               {
                  if(_loc3_)
                  {
                     if(!(_loc2_ && param1))
                     {
                        §§goto(addr53);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr74);
               }
               break;
               §§goto(addr86);
            }
            addr74:
            if(!_loc3_)
            {
               §§goto(addr86);
            }
            return;
         }
         §§goto(addr86);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            AngryBirdsFP11.§3l§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         loop0:
         while(true)
         {
            §§push(this.§6!f§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§6!f§);
                     addr71:
                     loop2:
                     while(true)
                     {
                        §§pop().stop();
                        while(!_loc1_)
                        {
                           this.§6!f§ = null;
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr71);
         }
      }
   }
}
