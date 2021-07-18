package §3§#7
{
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §<w§.§^!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §4! § extends MovieClip
   {
       
      
      private var §7!l§:§[#R§;
      
      private var §^"K§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §#!7§:Boolean = false;
      
      public function §4! §(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param5);
            loop0:
            while(true)
            {
               §§push(Number(§§pop()));
               if(!_loc8_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr119:
                           loop13:
                           while(true)
                           {
                              §§push(§4#;§.singleton);
                              addr104:
                              while(true)
                              {
                                 §§push(§§pop().getAppWidth());
                                 addr105:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr106:
                                    while(_loc9_)
                                    {
                                    }
                                    continue loop13;
                                 }
                              }
                           }
                        }
                        addr118:
                     }
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop3:
                        while(true)
                        {
                           param5 = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param6);
                              loop5:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop11:
                                          while(true)
                                          {
                                             if(_loc8_ && param1)
                                             {
                                                continue loop3;
                                             }
                                             if(_loc9_)
                                             {
                                                param6 = §§pop();
                                                while(true)
                                                {
                                                   super();
                                                   if(!_loc9_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc9_ || param2)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(§4#;§.singleton);
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop().getAppHeight());
                                                               if(_loc8_ && this)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               addr49:
                                                               if(!(_loc8_ && param3))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(_loc8_ && param2)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr106);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr98:
                                                                     while(!_loc8_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     continue loop4;
                                                                     §§goto(addr49);
                                                                  }
                                                                  addr97:
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr104);
                                                      }
                                                      §§goto(addr119);
                                                   }
                                                   §§goto(addr98);
                                                }
                                                var _loc7_:ColorTransform;
                                                (_loc7_ = new ColorTransform()).redOffset = param1;
                                                if(_loc9_ || this)
                                                {
                                                   _loc7_.greenOffset = param2;
                                                   loop18:
                                                   while(true)
                                                   {
                                                      _loc7_.blueOffset = param3;
                                                      loop19:
                                                      while(true)
                                                      {
                                                         transform.colorTransform = _loc7_;
                                                         loop20:
                                                         while(true)
                                                         {
                                                            graphics.beginFill(0,1);
                                                            while(true)
                                                            {
                                                               graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  scaleX = 100;
                                                                  while(_loc9_)
                                                                  {
                                                                     scaleY = 100;
                                                                     while(_loc9_)
                                                                     {
                                                                        graphics.endFill();
                                                                     }
                                                                     continue loop22;
                                                                     if(!(_loc8_ && param2))
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           return;
                                                                           addr189:
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                  }
                                                                  continue loop18;
                                                               }
                                                               addr206:
                                                               while(!(_loc8_ && param3))
                                                               {
                                                                  this.mouseEnabled = true;
                                                                  continue loop19;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr224);
                                                addr89:
                                             }
                                             §§goto(addr105);
                                          }
                                       }
                                       addr77:
                                    }
                                    §§goto(addr97);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr118);
            }
         }
         §§goto(addr89);
      }
      
      public function §?s§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            if(!this.§#!7§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§7!l§);
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§7!l§);
                           addr162:
                           while(true)
                           {
                              §§pop().stop();
                              addr163:
                              while(true)
                              {
                              }
                           }
                        }
                        addr160:
                     }
                     while(true)
                     {
                        this.§^"K§ = new ColorTransform();
                        loop3:
                        while(_loc5_)
                        {
                           this.§^"K§.redOffset = transform.colorTransform.redOffset;
                           while(true)
                           {
                              this.§^"K§.greenOffset = transform.colorTransform.greenOffset;
                              loop5:
                              for(; !_loc6_; if(_loc6_ && param1)
                              {
                                 continue;
                              },if(!_loc5_)
                              {
                                 continue loop3;
                              },§§goto(addr50))
                              {
                                 this.§^"K§.blueOffset = transform.colorTransform.blueOffset;
                                 loop6:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       this.§7!l§ = §-#C§.§%!E§.§^!H§(this.§^"K§,{
                                          "redOffset":param1,
                                          "greenOffset":param2,
                                          "blueOffset":param3
                                       },null,param4);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§7!l§);
                                          loop8:
                                          while(_loc5_)
                                          {
                                             §§pop().onComplete = this.§1"S§;
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§7!l§);
                                                         if(_loc5_)
                                                         {
                                                            §§pop().play();
                                                            while(!_loc6_)
                                                            {
                                                               this.§#!7§ = true;
                                                               if(_loc6_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr34);
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                         continue loop8;
                                                      }
                                                      return;
                                                      continue loop8;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop7;
                                                addr34:
                                                if(!(_loc6_ && param3))
                                                {
                                                   continue loop5;
                                                }
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr160);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr163);
                     }
                  }
                  §§goto(addr162);
               }
            }
            addr167:
            return;
         }
         §§goto(addr84);
      }
      
      public function §+h§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.mNewAlpha = param1;
            do
            {
               alpha = param1;
            }
            while(!_loc2_);
            
         }
      }
      
      public function §""a§(param1:Number, param2:Number = 0.5) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§7!l§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  addr132:
                  while(true)
                  {
                     §§push(this.§7!l§);
                     addr134:
                     while(true)
                     {
                        §§pop().stop();
                        addr135:
                        while(true)
                        {
                        }
                     }
                  }
                  addr132:
               }
               while(true)
               {
                  this.§7!l§ = §-#C§.§%!E§.§^!H§(this,{"mNewAlpha":param1},null,param2);
                  loop2:
                  while(true)
                  {
                     §§push(this.§7!l§);
                     loop3:
                     while(true)
                     {
                        §§pop().onComplete = this.§5!A§;
                        loop4:
                        while(!(_loc3_ && this))
                        {
                           if(_loc4_)
                           {
                              §§push(this.§7!l§);
                              loop5:
                              while(!_loc3_)
                              {
                                 §§pop().§>h§ = false;
                                 while(!(_loc3_ && param1))
                                 {
                                    continue loop5;
                                    §§pop().play();
                                    §§push(this.§7!l§);
                                    if(!(_loc3_ && this))
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                    continue loop5;
                                    if(!(_loc3_ && param1))
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                           else
                           {
                              §§goto(addr132);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr135);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr132);
      }
      
      private function §5!A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§&"h§));
         }
      }
      
      private function §1"S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§#!7§ = false;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§^"K§)
            {
               loop0:
               while(true)
               {
                  transform.colorTransform = this.§^"K§;
                  addr88:
                  while(true)
                  {
                     if(this.§#!7§)
                     {
                     }
                     addr60:
                     while(true)
                     {
                        this.§^"K§ = null;
                        continue loop0;
                     }
                  }
               }
            }
            while(true)
            {
               if(alpha != this.mNewAlpha)
               {
                  if(_loc2_)
                  {
                     alpha = this.mNewAlpha;
                  }
                  if(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        if(_loc2_ || this)
                        {
                           break;
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr63);
               }
               break;
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function §%!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §4#;§.singleton.removeEventListener(§^!q§.§1c§,this.onEnterFrame);
            loop0:
            while(true)
            {
               §§push(this.§7!l§);
               if(_loc2_ || _loc1_)
               {
                  if(!§§pop())
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(this.§7!l§);
                     addr35:
                     if(_loc2_)
                     {
                        break loop0;
                     }
                  }
                  addr59:
               }
               while(true)
               {
                  §§pop().stop();
                  continue loop0;
                  §§goto(addr59);
               }
            }
            return;
         }
         §§goto(addr79);
      }
   }
}
