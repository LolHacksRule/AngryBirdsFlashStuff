package §5,§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class HScroller
   {
       
      
      protected var §'6§:Sprite;
      
      protected var §3!>§:Number;
      
      protected var §1!h§:Number;
      
      protected var §>!6§:Class;
      
      protected var §3M§:Number;
      
      protected var §'C§:Number;
      
      protected var §,!>§:Number;
      
      protected var §?!§:Number;
      
      protected var §?L§:Number = -1;
      
      protected var §&^§:Array;
      
      protected var §+T§:int = -1;
      
      protected var §?U§:Number = 0;
      
      protected var §[?§:int = 0;
      
      protected var §'B§:Vector.<§'J§>;
      
      protected var §?S§:Vector.<§'J§>;
      
      public function HScroller(maskWidth:Number, maskHeight:Number, data:Array = null, itemRenderer:Class = null, minMargin:Number = 0, maxMargin:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_ && data)
         {
         }
         if(_loc7_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop10:
                  for(; !(_loc8_ && maskWidth); if(_loc8_ && maskHeight)
                  {
                     continue;
                  },this.§3M§ = minMargin,§§goto(addr193))
                  {
                     super();
                     loop11:
                     while(true)
                     {
                        loop12:
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              addr278:
                              if(!(_loc7_ || data))
                              {
                                 break;
                              }
                              this.§'6§ = new Sprite();
                              while(true)
                              {
                                 loop14:
                                 while(true)
                                 {
                                    this.§3!>§ = maskWidth;
                                    addr264:
                                    while(true)
                                    {
                                       loop16:
                                       while(true)
                                       {
                                          this.§1!h§ = maskHeight;
                                          loop17:
                                          while(true)
                                          {
                                             loop18:
                                             while(true)
                                             {
                                                this.§&^§ = data;
                                                addr244:
                                                while(!_loc8_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      while(_loc7_)
                                                      {
                                                         §§push(this);
                                                         if(!_loc8_)
                                                         {
                                                            §§pop().§>!6§ = itemRenderer || §'J§;
                                                            while(_loc7_)
                                                            {
                                                               continue loop18;
                                                            }
                                                            continue loop14;
                                                            addr232:
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      continue loop11;
                                                      addr237:
                                                   }
                                                   continue loop16;
                                                }
                                                continue loop17;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr193:
                                 loop23:
                                 while(_loc7_ || data)
                                 {
                                    loop24:
                                    while(true)
                                    {
                                       this.§'C§ = maxMargin;
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             loop26:
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      this.§0#§();
                                                      loop27:
                                                      while(true)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            addr159:
                                                            if(!_loc8_)
                                                            {
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr145:
                                                                     if(_loc8_ && data)
                                                                     {
                                                                        break;
                                                                     }
                                                                     this.§!;§();
                                                                     loop29:
                                                                     for(; !_loc8_; if(_loc7_ || this)
                                                                     {
                                                                        return;
                                                                     })
                                                                     {
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           if(this.§&^§)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           loop35:
                                                                           while(true)
                                                                           {
                                                                              this.§'6§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                                                              addr54:
                                                                              loop36:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc8_ && maskWidth))
                                                                                 {
                                                                                    addr61:
                                                                                    if(!(_loc8_ && maskWidth))
                                                                                    {
                                                                                       continue loop24;
                                                                                    }
                                                                                    addr94:
                                                                                    while(true)
                                                                                    {
                                                                                       break loop36;
                                                                                       §§goto(addr61);
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                                 addr75:
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop29;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc8_ && maskHeight))
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop35;
                                                                                    }
                                                                                    continue loop30;
                                                                                 }
                                                                                 addr315:
                                                                                 addr119:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr121:
                                                                                       if(_loc7_ || data)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             this.§`!a§();
                                                                                             §§goto(addr94);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                addr357:
                                                                                                while(true)
                                                                                                {
                                                                                                   break loop28;
                                                                                                }
                                                                                             }
                                                                                             addr360:
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop27;
                                                                                 }
                                                                                 while(!_loc8_)
                                                                                 {
                                                                                    continue loop0;
                                                                                    §§goto(addr121);
                                                                                 }
                                                                                 §§goto(addr357);
                                                                                 §§goto(addr54);
                                                                              }
                                                                              §§goto(addr264);
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop23;
                                                                  }
                                                                  continue loop26;
                                                               }
                                                               while(true)
                                                               {
                                                                  addr351:
                                                                  while(true)
                                                                  {
                                                                     break loop27;
                                                                  }
                                                                  §§goto(addr145);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr237);
                                                      }
                                                      while(true)
                                                      {
                                                         this.§'B§ = new Vector.<§'J§>(0);
                                                         break loop12;
                                                         §§goto(addr159);
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr244);
                                          }
                                          break;
                                          if(!(_loc7_ || data))
                                          {
                                             continue;
                                          }
                                          if(!_loc7_)
                                          {
                                             continue loop12;
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr232);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              while(!_loc8_)
                              {
                                 continue loop10;
                              }
                              §§goto(addr351);
                              addr310:
                           }
                        }
                        while(true)
                        {
                           §§goto(addr315);
                           §§goto(addr278);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr360);
      }
      
      protected function §0#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc2_)
         {
            do
            {
               this.§?!§ = Math.floor(this.§3!>§ / (this.§#Q§ + this.§3M§));
               while(!(_loc2_ || _loc1_))
               {
               }
            }
            while(_loc1_);
            
         }
      }
      
      public function get scrollerSprite() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return this.§'6§;
      }
      
      protected function §!;§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            if(_loc2_)
            {
               addr35:
            }
            var mask:Sprite = new Sprite();
            if(_loc2_ || _loc2_)
            {
               loop0:
               while(true)
               {
                  mask.graphics.beginFill(0,1);
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        mask.graphics.drawRect(0,0,this.§3!>§,this.§1!h§);
                        addr154:
                        while(true)
                        {
                        }
                        addr102:
                        if(_loc2_ || _loc3_)
                        {
                           if(_loc2_)
                           {
                              loop8:
                              while(_loc2_)
                              {
                                 this.§'6§.mask = mask;
                                 while(true)
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop8;
                                    }
                                    if(!_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    while(!_loc3_)
                                    {
                                       §§goto(addr102);
                                    }
                                    §§goto(addr154);
                                 }
                                 while(true)
                                 {
                                    mask.graphics.endFill();
                                    addr139:
                                    while(true)
                                    {
                                       break loop8;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(_loc2_ || this)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    this.§'6§.addChild(mask);
                                    §§goto(addr100);
                                 }
                                 §§goto(addr139);
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr142);
         }
         §§goto(addr35);
      }
      
      public function §3u§(value:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         var renderer:§'J§ = null;
         if(!(_loc5_ && this))
         {
            if(!_loc5_)
            {
               addr33:
               if(_loc4_)
               {
                  this.§3!>§ = this.§'6§.mask.width = value;
                  if(_loc4_ || _loc3_)
                  {
                  }
               }
               while(true)
               {
                  this.§?!§ = Math.max(0,Math.floor(this.§3!>§ / (this.§#Q§ + this.§3M§)));
               }
               addr146:
            }
            loop0:
            while(true)
            {
               loop1:
               while(_loc4_)
               {
                  this.§+T§ = Math.min(this.§?!§,this.§&^§.length);
                  loop2:
                  do
                  {
                     while(!_loc5_)
                     {
                        this.§<N§();
                        if(!_loc5_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(!_loc4_);
                  
                  if(!(_loc5_ && _loc3_))
                  {
                     break loop0;
                  }
                  continue loop0;
               }
               §§goto(addr146);
            }
            loop4:
            while(true)
            {
               while(true)
               {
                  if(this.§?S§.length <= this.§?!§)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     this.§>^§(0);
                     addr289:
                     if(_loc4_ || _loc3_)
                     {
                        this.§?U§ = this.§[?§;
                        this.updatePositions();
                        addr286:
                        addr280:
                        if(!(_loc5_ && _loc3_))
                        {
                           if(!_loc5_)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    §§goto(addr289);
                                 }
                                 return;
                              }
                              §§goto(addr286);
                           }
                           §§goto(addr280);
                        }
                        addr277:
                        §§goto(addr277);
                        addr296:
                     }
                     addr301:
                     §§goto(addr301);
                     addr237:
                  }
                  else
                  {
                     if(_loc5_ && renderer)
                     {
                        break;
                     }
                     if(!(_loc5_ && this))
                     {
                        if(false)
                        {
                           continue loop4;
                        }
                        renderer = this.§?S§.pop();
                        if(_loc4_)
                        {
                           do
                           {
                              if(renderer != null)
                              {
                                 this.§'6§.removeChild(renderer);
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       addr165:
                                       while(true)
                                       {
                                          this.§8Q§(renderer);
                                          continue loop8;
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                              §§goto(addr217);
                           }
                           while(_loc5_);
                           
                        }
                        §§goto(addr204);
                     }
                  }
                  §§goto(addr286);
               }
               if(!(_loc5_ && renderer))
               {
                  §§goto(addr237);
               }
               §§goto(addr296);
            }
         }
         §§goto(addr33);
      }
      
      protected function §`!a§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         var renderer:§'J§ = null;
         if(!(_loc5_ && renderer))
         {
            if(!(_loc5_ && renderer))
            {
               if(_loc4_)
               {
                  addr41:
                  this.§[?§ = this.§?U§ = 0;
                  if(!(_loc5_ && this))
                  {
                     while(true)
                     {
                        this.§+T§ = Math.min(this.§?!§,this.§&^§.length);
                     }
                     addr96:
                     addr57:
                  }
                  while(true)
                  {
                     loop2:
                     for(; !(_loc5_ && renderer); while(true)
                     {
                        this.§<N§();
                        while(_loc5_)
                        {
                        }
                        if(_loc5_)
                        {
                           break;
                        }
                        if(!_loc5_)
                        {
                           if(true)
                           {
                              §§push(0);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(int(§§pop()));
                              }
                              var i:* = §§pop();
                           }
                           continue;
                           loop6:
                           while(true)
                           {
                              if(i < this.§+T§)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    if(!_loc5_)
                                    {
                                       renderer = this.§!e§();
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             this.§'6§.addChild(renderer);
                                             addr229:
                                             while(true)
                                             {
                                             }
                                             addr166:
                                             if(!(_loc4_ || this))
                                             {
                                                continue;
                                             }
                                             §§push(i);
                                             if(_loc4_ || i)
                                             {
                                                §§push(§§pop() + 1);
                                                if(!(_loc5_ && i))
                                                {
                                                   addr154:
                                                   §§push(int(§§pop()));
                                                }
                                                i = §§pop();
                                                if(!_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      addr160:
                                                      if(false)
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            addr164:
                                                            addr222:
                                                            while(_loc4_)
                                                            {
                                                               §§goto(addr166);
                                                            }
                                                            while(true)
                                                            {
                                                               renderer.index = i;
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     renderer.data = this.§&^§[i];
                                                                     while(true)
                                                                     {
                                                                        loop13:
                                                                        while(_loc4_)
                                                                        {
                                                                           continue loop10;
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc5_ && i))
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           §§goto(addr229);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr164);
                                             }
                                             §§goto(addr154);
                                          }
                                       }
                                       §§goto(addr222);
                                    }
                                    else
                                    {
                                       §§goto(addr256);
                                    }
                                 }
                                 break;
                              }
                              if(_loc4_ || i)
                              {
                                 if(!_loc5_)
                                 {
                                    this.updatePositions();
                                    addr274:
                                    if(_loc5_ && this)
                                    {
                                       §§goto(addr274);
                                    }
                                    break;
                                    addr256:
                                 }
                                 break;
                              }
                              §§goto(addr274);
                              §§goto(addr274);
                           }
                           return;
                        }
                        §§goto(addr96);
                     })
                     {
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr82);
         }
         §§goto(addr41);
      }
      
      protected function §<N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               this.§,!>§ = Math.min((this.§3!>§ - this.§+T§ * this.§#Q§) / this.§+T§,this.§'C§);
               §§goto(addr84);
            }
         }
         addr84:
         while(true)
         {
            if(_loc2_ || _loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function get §#Q§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         var tempRenderer:§'J§ = null;
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§?L§);
                  if(!_loc3_)
                  {
                     if(§§pop() == -1)
                     {
                        loop2:
                        while(true)
                        {
                           addr69:
                           while(true)
                           {
                              if(!(_loc2_ || this))
                              {
                                 continue;
                              }
                              if(!(_loc2_ || this))
                              {
                                 continue loop2;
                              }
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              if(false)
                              {
                                 continue loop1;
                              }
                              tempRenderer = this.§!e§();
                              if(_loc2_ || _loc3_)
                              {
                              }
                              while(true)
                              {
                                 this.§?L§ = tempRenderer.width;
                                 loop5:
                                 while(_loc2_ || this)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          this.§8Q§(tempRenderer);
                                          while(_loc3_ && _loc3_)
                                          {
                                          }
                                          if(_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             if(true)
                                             {
                                                §§push(this.§?L§);
                                                break loop1;
                                             }
                                             addr133:
                                             continue;
                                          }
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr133);
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr69);
      }
      
      public function scroll(offset:int, skipAnimation:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(!_loc4_)
                  {
                     if(this.§&^§.length != this.§+T§)
                     {
                        while(true)
                        {
                           this.§>^§(offset);
                           loop4:
                           while(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    if(!skipAnimation)
                                    {
                                       break;
                                    }
                                    if(!_loc4_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                    }
                                    loop6:
                                    while(_loc3_ || _loc3_)
                                    {
                                       while(true)
                                       {
                                          this.§?U§ = this.§[?§;
                                          addr66:
                                          while(!_loc4_)
                                          {
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue;
                                                }
                                                continue loop2;
                                             }
                                             continue loop2;
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                                 addr28:
                                 return;
                              }
                              continue loop0;
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      protected function §>^§(offset:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               while(true)
               {
                  §§push(this.§[?§);
                  while(true)
                  {
                     §§push(offset);
                     addr169:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr170:
                        while(true)
                        {
                           §§push(0);
                           addr171:
                           §§goto(addr172);
                        }
                     }
                  }
                  if(!(_loc3_ && this))
                  {
                     if(_loc3_)
                     {
                        §§goto(addr54);
                     }
                     if(!(_loc2_ || this))
                     {
                        addr172:
                        §§goto(addr28);
                     }
                     addr28:
                     while(§§pop() <= §§pop())
                     {
                        continue loop2;
                     }
                  }
                  continue;
                  this.§[?§ = 0;
                  return;
               }
            }
         }
         §§goto(addr158);
      }
      
      protected function onEnterFrame(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc3_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               if(this.§[?§ != this.§?U§)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§?U§);
                     if(_loc3_ || this)
                     {
                        §§push(this.§[?§ - this.§?U§);
                        if(_loc3_)
                        {
                           §§push(§§pop() / 4);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§?U§ = §§pop();
                     loop3:
                     for(; _loc3_; if(!_loc3_)
                     {
                        continue;
                     },§§goto(addr40))
                     {
                        loop4:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              continue loop2;
                           }
                           if(Math.abs(this.§?U§ - this.§[?§) >= 0.01)
                           {
                              loop8:
                              while(true)
                              {
                                 this.updatePositions();
                                 addr44:
                                 while(true)
                                 {
                                    if(!(_loc2_ && e))
                                    {
                                       continue loop4;
                                    }
                                    addr58:
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(_loc3_)
                                       {
                                          break loop8;
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc2_ && this)
                                          {
                                             while(_loc3_)
                                             {
                                                continue loop7;
                                             }
                                             return;
                                          }
                                          addr163:
                                          addr86:
                                          continue loop3;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop4;
                              }
                              return;
                              addr40:
                           }
                           if(_loc3_ || _loc3_)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              this.§?U§ = this.§[?§;
                              §§goto(addr86);
                              §§goto(addr44);
                           }
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr163);
            }
         }
      }
      
      protected function updatePositions() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var renderer:§'J§ = null;
         var x:* = NaN;
         var newRenderer:§'J§ = null;
         if(_loc6_)
         {
            if(_loc6_ || x)
            {
            }
         }
         var i:* = int(this.§?S§.length - 1);
         loop0:
         while(true)
         {
            §§push(i);
            if(_loc6_)
            {
               if(§§pop() < 0)
               {
                  if(_loc6_ || x)
                  {
                     if(_loc6_ || x)
                     {
                        §§push(0);
                        if(!(_loc5_ && renderer))
                        {
                           §§push(int(§§pop()));
                           if(_loc6_)
                           {
                              i = §§pop();
                              addr580:
                              while(true)
                              {
                                 §§push(i);
                              }
                              addr460:
                              addr580:
                           }
                        }
                        loop21:
                        while(true)
                        {
                           if(§§pop() >= this.§&^§.length)
                           {
                              if(!_loc5_)
                              {
                                 addr587:
                              }
                              return;
                           }
                           loop22:
                           while(true)
                           {
                              addr442:
                              loop23:
                              while(true)
                              {
                                 §§push(this.§2!R§(i));
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr438:
                                    while(true)
                                    {
                                       x = §§pop();
                                       addr439:
                                       while(true)
                                       {
                                          continue loop23;
                                       }
                                    }
                                    addr322:
                                    if(_loc5_ && renderer)
                                    {
                                       continue;
                                    }
                                    §§push(this.§3!>§);
                                    if(_loc6_ || x)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          §§push(§§pop() < §§pop());
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc5_ && x))
                                             {
                                                if(!(_loc5_ && renderer))
                                                {
                                                   loop37:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc6_ || renderer)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop35:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               if(_loc6_ || i)
                                                               {
                                                                  if(!(_loc6_ || x))
                                                                  {
                                                                     break;
                                                                     addr396:
                                                                  }
                                                                  loop36:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§8!M§(i));
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(_loc6_)
                                                                           {
                                                                              addr276:
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop35;
                                                                              }
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 while(true)
                                                                                 {
                                                                                    addr292:
                                                                                    while(§§pop())
                                                                                    {
                                                                                       if(!(_loc5_ && renderer))
                                                                                       {
                                                                                          addr300:
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop22;
                                                                                             }
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   continue loop23;
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      continue loop36;
                                                                                                   }
                                                                                                   newRenderer = this.§!e§();
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                   }
                                                                                                   this.§'6§.addChild(newRenderer);
                                                                                                   newRenderer.data = this.§&^§[i];
                                                                                                   addr521:
                                                                                                   addr560:
                                                                                                   addr562:
                                                                                                   addr543:
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(!(_loc5_ && x))
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            newRenderer.index = i;
                                                                                                            addr516:
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               newRenderer.x = x;
                                                                                                               addr511:
                                                                                                               addr508:
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     addr483:
                                                                                                                     this.§?S§.push(newRenderer);
                                                                                                                     if(!(_loc5_ && x))
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && renderer))
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr483);
                                                                                                                                 }
                                                                                                                                 break loop36;
                                                                                                                              }
                                                                                                                              §§goto(addr511);
                                                                                                                           }
                                                                                                                           §§goto(addr508);
                                                                                                                        }
                                                                                                                        §§goto(addr483);
                                                                                                                     }
                                                                                                                     §§goto(addr511);
                                                                                                                  }
                                                                                                                  §§goto(addr521);
                                                                                                               }
                                                                                                               §§goto(addr516);
                                                                                                            }
                                                                                                            §§goto(addr560);
                                                                                                         }
                                                                                                         §§goto(addr562);
                                                                                                      }
                                                                                                      §§goto(addr543);
                                                                                                   }
                                                                                                   addr540:
                                                                                                   §§goto(addr540);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr460);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr587);
                                                                                       }
                                                                                       §§goto(addr580);
                                                                                    }
                                                                                    break loop36;
                                                                                 }
                                                                                 addr291:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!(_loc5_ && renderer))
                                                                                    {
                                                                                       addr422:
                                                                                       §§push(x);
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§#Q§);
                                                                                             addr401:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                addr402:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() > §§pop());
                                                                                                   addr403:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      addr404:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            break loop37;
                                                                                                         }
                                                                                                         break loop37;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr422);
                                                                                          }
                                                                                          addr399:
                                                                                       }
                                                                                       §§goto(addr401);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr438);
                                                                                 addr414:
                                                                              }
                                                                              §§goto(addr580);
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                        §§goto(addr404);
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                                  §§push(i);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr566:
                                                                     §§push(§§pop() + 1);
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                  }
                                                                  continue loop21;
                                                               }
                                                               §§goto(addr587);
                                                            }
                                                            §§goto(addr439);
                                                            addr381:
                                                         }
                                                         §§goto(addr291);
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr414);
                                                   }
                                                   addr368:
                                                }
                                                §§goto(addr403);
                                             }
                                          }
                                          §§goto(addr381);
                                       }
                                       §§goto(addr401);
                                    }
                                    §§goto(addr402);
                                 }
                              }
                           }
                           §§goto(addr587);
                        }
                        addr581:
                     }
                     §§goto(addr300);
                  }
                  §§goto(addr396);
               }
               else if(!(_loc5_ && renderer))
               {
                  if(!_loc5_)
                  {
                     renderer = this.§?S§[i];
                     if(!(_loc5_ && renderer))
                     {
                        loop1:
                        while(true)
                        {
                           renderer.x = this.§2!R§(renderer.index);
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(renderer.x >= this.§3!>§);
                                 if(!_loc5_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!§§pop())
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             §§pop();
                                             addr213:
                                             while(!_loc5_)
                                             {
                                                §§push(renderer.x <= -this.§#Q§);
                                                if(_loc6_)
                                                {
                                                   continue loop14;
                                                }
                                                addr192:
                                                if(_loc5_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop14;
                                             }
                                             continue loop1;
                                          }
                                          addr212:
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§push(i);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() - 1);
                                                   if(_loc6_ || x)
                                                   {
                                                      addr86:
                                                      §§push(int(§§pop()));
                                                   }
                                                   i = §§pop();
                                                   if(!(_loc5_ && x))
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         addr137:
                                                      }
                                                      addr97:
                                                   }
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(_loc6_ || i)
                                                      {
                                                         if(_loc6_ || x)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(!_loc5_)
                                                                     {
                                                                        this.§?S§.splice(this.§?S§.indexOf(renderer),1);
                                                                        while(_loc6_ || i)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              addr140:
                                                                              while(true)
                                                                              {
                                                                                 this.§8Q§(renderer);
                                                                                 addr123:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ && renderer)
                                                                                    {
                                                                                       break loop13;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr196:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§'6§.removeChild(renderer);
                                                                     continue loop8;
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                            §§goto(addr151);
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                      §§goto(addr123);
                                                      §§goto(addr97);
                                                   }
                                                   §§goto(addr213);
                                                }
                                                §§goto(addr86);
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr196);
                                       }
                                    }
                                 }
                                 §§goto(addr212);
                              }
                           }
                        }
                     }
                     §§goto(addr158);
                  }
                  else
                  {
                     §§goto(addr442);
                  }
               }
               §§goto(addr432);
            }
            break;
         }
         while(true)
         {
            §§push(int(§§pop()));
            if(!_loc5_)
            {
               i = §§pop();
               if(!_loc5_)
               {
                  §§goto(addr580);
               }
               §§goto(addr587);
            }
            §§goto(addr581);
            §§goto(addr566);
         }
      }
      
      protected function §2!R§(index:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(!_loc2_)
         {
            while(!(_loc3_ || index))
            {
            }
         }
         return Math.round(this.§,!>§ / 2 + (index + this.§?U§) * (this.§#Q§ + this.§,!>§));
      }
      
      protected function §8!M§(index:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc4_ || _loc3_)
         {
            loop0:
            while(true)
            {
               addr40:
               while(true)
               {
                  while(true)
                  {
                     if(_loc4_)
                     {
                        if(!(_loc3_ && this))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr40);
         }
         §§push(0);
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         while(true)
         {
            §§push(i);
            if(_loc4_)
            {
               if(_loc4_)
               {
                  if(§§pop() >= this.§?S§.length)
                  {
                     if(_loc3_)
                     {
                     }
                     if(_loc4_)
                     {
                        if(_loc4_ || index)
                        {
                           if(_loc4_)
                           {
                              §§push(false);
                              if(!_loc3_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              §§push(true);
                              addr141:
                           }
                           return §§pop();
                        }
                        if(_loc4_ || index)
                        {
                           if(_loc3_)
                           {
                              if(this.§?S§[i].index == index)
                              {
                                 break;
                              }
                              addr145:
                           }
                           §§push(i);
                           if(_loc4_)
                           {
                              addr117:
                              i = int(§§pop() + 1);
                              addr116:
                              continue;
                           }
                           §§goto(addr116);
                        }
                        break;
                     }
                     continue;
                  }
                  §§goto(addr145);
               }
               §§goto(addr116);
            }
            §§goto(addr117);
         }
         §§goto(addr141);
      }
      
      public function §3!b§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && _loc2_)
         {
         }
         var renderer:§'J§ = null;
         if(_loc5_)
         {
            if(!(_loc4_ && _loc2_))
            {
               addr39:
            }
            loop0:
            for each(renderer in this.§?S§)
            {
               if(_loc5_ || renderer)
               {
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        renderer.data = this.§&^§[renderer.index];
                        while(_loc4_)
                        {
                        }
                        if(_loc4_)
                        {
                           break;
                           addr87:
                        }
                        while(false)
                        {
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr87);
            }
            if(_loc5_ || renderer)
            {
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function get data() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.§&^§;
      }
      
      public function set data(value:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§&^§ = value;
                  loop2:
                  while(_loc3_)
                  {
                     loop3:
                     while(true)
                     {
                        this.clear();
                        while(!_loc2_)
                        {
                           loop8:
                           while(_loc3_ || value)
                           {
                              this.§`!a§();
                              while(_loc2_)
                              {
                              }
                              if(!_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    addr41:
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr29:
                                       return;
                                    }
                                    continue loop3;
                                 }
                                 addr69:
                                 while(!_loc2_)
                                 {
                                    continue loop8;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr92);
         }
      }
      
      public function get § ?§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || this)
         {
         }
         return this.§+T§;
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         var renderer:§'J§ = null;
         loop0:
         while(true)
         {
            if(this.§?S§.length <= 0)
            {
               if(!_loc3_)
               {
                  addr106:
                  break;
               }
               break;
            }
            if(!_loc3_)
            {
               if(_loc2_)
               {
                  renderer = this.§?S§.pop();
                  if(_loc2_ || _loc2_)
                  {
                     loop1:
                     while(true)
                     {
                        this.§'6§.removeChild(renderer);
                        while(true)
                        {
                           addr67:
                           if(_loc2_ || _loc2_)
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          this.§8Q§(renderer);
                                       }
                                       addr60:
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       §§goto(addr67);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr89:
                                    }
                                    §§goto(addr60);
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr89);
               }
               else
               {
                  §§goto(addr106);
               }
            }
            break;
            §§goto(addr106);
         }
      }
      
      public function get offset() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc2_ && _loc1_)
         {
         }
         return -this.§[?§;
      }
      
      protected function §!e§() : §'J§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(_loc3_ && this)
         {
         }
         while(true)
         {
            while(true)
            {
               if(this.§'B§.length <= 0)
               {
                  var itemRenderer:§'J§ = new this.§>!6§();
                  if(_loc3_ && this)
                  {
                  }
                  do
                  {
                     itemRenderer.§`5§ = this;
                     while(_loc3_)
                     {
                     }
                  }
                  while(_loc3_ && _loc2_);
                  
               }
               continue;
               return itemRenderer;
            }
            addr80:
            return this.§'B§.pop();
            if(_loc3_ && this)
            {
               continue;
            }
            §§goto(addr80);
         }
      }
      
      protected function §8Q§(renderer:§'J§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  renderer.data = null;
                  loop2:
                  do
                  {
                     while(true)
                     {
                        this.§'B§.push(renderer);
                        while(_loc3_)
                        {
                           if(_loc3_)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 continue loop2;
                              }
                              continue;
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(!_loc3_);
                  
                  if(_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc2_)
         {
            while(true)
            {
               this.clear();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§'6§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                     loop3:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
               if(!(_loc1_ || this))
               {
                  continue;
               }
               §§goto(addr75);
            }
         }
         §§goto(addr88);
      }
   }
}
