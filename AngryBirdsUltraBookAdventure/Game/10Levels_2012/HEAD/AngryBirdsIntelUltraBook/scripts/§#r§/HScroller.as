package §#r§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class HScroller
   {
       
      
      protected var §1!J§:Sprite;
      
      protected var §'-§:Number;
      
      protected var §@!d§:Number;
      
      protected var § q§:Class;
      
      protected var §%y§:Number;
      
      protected var §%!i§:Number;
      
      protected var §;!!§:Number;
      
      protected var §6!,§:Number;
      
      protected var §^!@§:Number = -1;
      
      protected var §@! §:Array;
      
      protected var §6N§:int = -1;
      
      protected var §[$§:Number = 0;
      
      protected var §,w§:int = 0;
      
      protected var §1-§:Vector.<§1M§>;
      
      protected var §=!Q§:Vector.<§1M§>;
      
      public function HScroller(maskWidth:Number, maskHeight:Number, data:Array = null, itemRenderer:Class = null, minMargin:Number = 0, maxMargin:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_)
         {
         }
         if(_loc8_ || maskHeight)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              while(_loc8_)
                              {
                                 this.§1-§ = new Vector.<§1M§>(0);
                                 while(true)
                                 {
                                    while(_loc8_)
                                    {
                                       this.§=!Q§ = new Vector.<§1M§>(0);
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             super();
                                             addr307:
                                             while(_loc8_)
                                             {
                                                while(true)
                                                {
                                                   this.§1!J§ = new Sprite();
                                                   continue loop10;
                                                }
                                             }
                                             continue loop5;
                                          }
                                          while(_loc8_ || maskWidth)
                                          {
                                             continue loop1;
                                             §§goto(addr177);
                                          }
                                       }
                                    }
                                    continue loop3;
                                    if(_loc7_ && this)
                                    {
                                       continue;
                                    }
                                    if(this.§@! §)
                                    {
                                       §§goto(addr105);
                                    }
                                    §§goto(addr52);
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     if(_loc7_ && maskHeight)
                     {
                        continue;
                     }
                     §§goto(addr253);
                  }
               }
            }
         }
         §§goto(addr148);
      }
      
      protected function §,V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               this.§6!,§ = Math.floor(this.§'-§ / (this.§3$§ + this.§%y§));
               §§goto(addr79);
            }
         }
         addr79:
         while(true)
         {
            if(!_loc1_)
            {
               if(_loc2_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get scrollerSprite() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return this.§1!J§;
      }
      
      protected function §?!-§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
         }
         if(_loc3_ || mask)
         {
            if(!_loc3_)
            {
            }
         }
         var mask:Sprite = new Sprite();
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               mask.graphics.beginFill(0,1);
               loop1:
               while(true)
               {
                  addr100:
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  this.§1!J§.mask = mask;
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        addr60:
                        if(!(_loc2_ && _loc3_))
                        {
                           addr77:
                           if(!(_loc3_ || mask))
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        loop4:
                        while(true)
                        {
                           mask.graphics.endFill();
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 this.§1!J§.addChild(mask);
                                 loop7:
                                 while(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       if(_loc2_ && this)
                                       {
                                          continue loop7;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop6;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop5;
                                       }
                                       §§goto(addr100);
                                    }
                                    continue loop1;
                                 }
                                 addr150:
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr89);
                  }
                  while(true)
                  {
                     mask.graphics.drawRect(0,0,this.§'-§,this.§@!d§);
                     §§goto(addr150);
                     §§goto(addr77);
                  }
               }
            }
         }
         §§goto(addr153);
      }
      
      public function §+@§(value:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
         }
         var renderer:§1M§ = null;
         if(!(_loc4_ && this))
         {
            if(_loc5_)
            {
               addr39:
               if(_loc5_ || this)
               {
                  this.§'-§ = this.§1!J§.mask.width = value;
                  if(!_loc5_)
                  {
                  }
                  loop17:
                  while(true)
                  {
                     this.§6!,§ = Math.max(0,Math.floor(this.§'-§ / (this.§3$§ + this.§%y§)));
                     while(true)
                     {
                        addr106:
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                        loop0:
                        while(true)
                        {
                           do
                           {
                              this.§5G§();
                           }
                           while(!_loc5_);
                           
                           if(_loc5_ || _loc3_)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop17;
                           }
                           loop4:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              addr116:
                              while(true)
                              {
                                 this.§6N§ = Math.min(this.§6!,§,this.§@! §.length);
                                 continue loop4;
                              }
                           }
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              if(this.§=!Q§.length <= this.§6!,§)
                              {
                                 if(_loc5_ || renderer)
                                 {
                                    if(_loc5_ || this)
                                    {
                                       this.§&!T§(0);
                                       this.§[$§ = this.§,w§;
                                       addr307:
                                       addr302:
                                    }
                                    this.updatePositions();
                                    addr299:
                                    addr293:
                                    if(_loc5_ || renderer)
                                    {
                                       if(_loc5_)
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc4_ && _loc3_)
                                                {
                                                   §§goto(addr299);
                                                }
                                                return;
                                                addr276:
                                             }
                                             §§goto(addr293);
                                          }
                                          §§goto(addr299);
                                       }
                                       §§goto(addr307);
                                    }
                                    §§goto(addr302);
                                 }
                                 §§goto(addr276);
                              }
                              else
                              {
                                 while(_loc5_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                    if(false)
                                    {
                                       break loop6;
                                    }
                                    renderer = this.§=!Q§.pop();
                                    if(_loc5_)
                                    {
                                       loop8:
                                       do
                                       {
                                          if(renderer != null)
                                          {
                                             this.§1!J§.removeChild(renderer);
                                             while(true)
                                             {
                                                while(!(_loc4_ && renderer))
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      this.§%!Z§(renderer);
                                                      loop12:
                                                      while(!_loc4_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break loop11;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               if(false)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               continue loop6;
                                                            }
                                                            loop15:
                                                            while(!_loc5_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                               }
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         trace("Removed null renderer from mItemRenderers!");
                                                         §§goto(addr211);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr218);
                                       }
                                       while(!(_loc5_ || _loc3_));
                                       
                                       continue loop6;
                                    }
                                    §§goto(addr213);
                                 }
                              }
                              §§goto(addr307);
                           }
                        }
                     }
                  }
               }
               §§goto(addr116);
            }
            §§goto(addr113);
         }
         §§goto(addr39);
      }
      
      protected function §=^§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && _loc3_)
         {
         }
         var renderer:§1M§ = null;
         if(!_loc5_)
         {
            if(_loc4_)
            {
               if(!(_loc5_ && renderer))
               {
                  this.§,w§ = this.§[$§ = 0;
                  if(!(_loc5_ && renderer))
                  {
                     loop15:
                     while(true)
                     {
                        this.§6N§ = Math.min(this.§6!,§,this.§@! §.length);
                        addr99:
                        loop14:
                        while(true)
                        {
                           addr78:
                           addr71:
                           while(true)
                           {
                              if(!(_loc5_ && this))
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop15;
                              }
                              continue loop14;
                           }
                           this.§5G§();
                        }
                     }
                     addr57:
                     addr101:
                  }
                  while(true)
                  {
                     if(_loc5_ && renderer)
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr78);
                     }
                     §§goto(addr71);
                  }
                  §§push(0);
                  if(!(_loc5_ && i))
                  {
                     §§push(int(§§pop()));
                  }
                  var i:* = §§pop();
                  loop2:
                  while(true)
                  {
                     if(i >= this.§6N§)
                     {
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              this.updatePositions();
                              break;
                           }
                           break;
                        }
                        break;
                     }
                     if(_loc4_)
                     {
                        if(_loc5_ && _loc3_)
                        {
                           break;
                        }
                     }
                     renderer = this.§`"§();
                     if(!(_loc5_ && i))
                     {
                        loop3:
                        while(true)
                        {
                           this.§1!J§.addChild(renderer);
                           while(true)
                           {
                              while(true)
                              {
                                 renderer.index = i;
                                 addr180:
                                 if(!(_loc4_ || this))
                                 {
                                    continue;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(i);
                                 if(!(_loc5_ && i))
                                 {
                                    §§push(§§pop() + 1);
                                    if(!_loc5_)
                                    {
                                       addr159:
                                       §§push(int(§§pop()));
                                    }
                                    i = §§pop();
                                    if(!(_loc5_ && i))
                                    {
                                       addr168:
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             §§goto(addr168);
                                          }
                                          addr170:
                                       }
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§goto(addr180);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      addr219:
                                                      while(true)
                                                      {
                                                         renderer.data = this.§@! §[i];
                                                         loop8:
                                                         while(true)
                                                         {
                                                            addr208:
                                                            while(true)
                                                            {
                                                               this.§=!Q§.push(renderer);
                                                               continue loop8;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr224:
                                                }
                                                §§goto(addr170);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr208);
                                       }
                                       §§goto(addr196);
                                    }
                                    continue;
                                 }
                                 §§goto(addr159);
                              }
                           }
                        }
                     }
                     §§goto(addr224);
                  }
                  while(_loc5_ && i)
                  {
                  }
                  return;
               }
               §§goto(addr99);
            }
            §§goto(addr57);
         }
         §§goto(addr101);
      }
      
      protected function §5G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc2_ && this)
         {
         }
         do
         {
            this.§;!!§ = Math.min((this.§'-§ - this.§6N§ * this.§3$§) / this.§6N§,this.§%!i§);
            while(!(_loc1_ || _loc1_))
            {
            }
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      protected function get §3$§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         var tempRenderer:§1M§ = null;
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§^!@§);
                  if(!(_loc2_ && this))
                  {
                     if(§§pop() == -1)
                     {
                        if(!(_loc2_ && tempRenderer))
                        {
                           continue loop0;
                        }
                        addr70:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           if(false)
                           {
                              continue loop1;
                           }
                           tempRenderer = this.§`"§();
                           if(!(_loc2_ && this))
                           {
                              loop3:
                              while(true)
                              {
                                 this.§^!@§ = tempRenderer.width;
                                 loop4:
                                 while(true)
                                 {
                                    while(_loc3_)
                                    {
                                       while(!(_loc2_ && this))
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr108);
                           }
                        }
                     }
                     return this.§^!@§;
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr70);
      }
      
      public function scroll(offset:int, skipAnimation:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               addr123:
               while(true)
               {
               }
            }
            addr125:
         }
         loop2:
         while(true)
         {
            if(this.§@! §.length == this.§6N§)
            {
               addr116:
               return;
            }
            while(true)
            {
               this.§&!T§(offset);
               addr108:
               loop4:
               while(true)
               {
                  addr101:
                  while(skipAnimation)
                  {
                     while(!(_loc3_ && _loc3_))
                     {
                        continue loop2;
                     }
                     continue loop4;
                  }
                  addr24:
                  return;
               }
               addr117:
            }
         }
      }
      
      protected function §&!T§(offset:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§,w§);
                  loop2:
                  while(true)
                  {
                     §§push(offset);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        loop4:
                        while(true)
                        {
                           for(§§push(0); §§pop() <= §§pop(); )
                           {
                              §§push(this.§,w§);
                              if(!_loc3_)
                              {
                                 §§push(offset);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(this.§&4§);
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    if(§§pop() < -this.§@! §.length)
                                    {
                                       addr140:
                                       if(_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(this);
                                       §§push(this.§@! §.length - this.§&4§);
                                       if(!_loc3_)
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§,w§ = §§pop();
                                       if(_loc3_ && this)
                                       {
                                          §§goto(addr140);
                                       }
                                       addr139:
                                    }
                                    else
                                    {
                                       this.§,w§ -= offset;
                                       addr63:
                                       if(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       addr154:
                                       addr147:
                                       if(_loc3_ && this)
                                       {
                                          this.§,w§ = 0;
                                          §§goto(addr147);
                                          addr163:
                                       }
                                    }
                                    addr23:
                                    return;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                           addr162:
                           §§goto(addr163);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr154);
      }
      
      protected function onEnterFrame(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(this.§,w§ != this.§[$§)
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§[$§);
                        if(_loc3_ || this)
                        {
                           §§push(this.§,w§ - this.§[$§);
                           if(!_loc2_)
                           {
                              §§push(§§pop() / 4);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().§[$§ = §§pop();
                        loop3:
                        while(_loc3_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           loop4:
                           while(true)
                           {
                              if(Math.abs(this.§[$§ - this.§,w§) < 0.01)
                              {
                                 loop5:
                                 while(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       while(_loc3_)
                                       {
                                          while(true)
                                          {
                                             this.§[$§ = this.§,w§;
                                             addr96:
                                             while(true)
                                             {
                                                addr88:
                                                addr90:
                                                while(!_loc3_)
                                                {
                                                   continue loop5;
                                                }
                                             }
                                          }
                                          if(_loc3_ || e)
                                          {
                                             return;
                                             addr61:
                                          }
                                       }
                                       continue loop4;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr168);
                              }
                              while(true)
                              {
                                 this.updatePositions();
                                 while(_loc3_ || _loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc2_ && this)
                                    {
                                       continue;
                                    }
                                    if(!(_loc2_ && e))
                                    {
                                       §§goto(addr54);
                                    }
                                    §§goto(addr88);
                                 }
                                 §§goto(addr96);
                                 §§goto(addr90);
                              }
                              §§goto(addr61);
                           }
                        }
                     }
                  }
                  addr168:
                  return;
               }
            }
         }
         §§goto(addr115);
      }
      
      protected function updatePositions() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var renderer:§1M§ = null;
         var x:* = NaN;
         var newRenderer:§1M§ = null;
         if(!_loc5_)
         {
            if(!(_loc5_ && x))
            {
               addr39:
            }
            var i:* = int(this.§=!Q§.length - 1);
            loop0:
            while(true)
            {
               §§push(i);
               if(_loc6_)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc6_ || this)
                     {
                        if(!(_loc5_ && i))
                        {
                           §§push(0);
                           if(_loc6_ || x)
                           {
                              §§push(int(§§pop()));
                              if(_loc6_)
                              {
                                 i = §§pop();
                                 addr565:
                                 while(true)
                                 {
                                    §§push(i);
                                 }
                                 addr445:
                                 addr565:
                              }
                              loop20:
                              while(true)
                              {
                                 if(§§pop() >= this.§@! §.length)
                                 {
                                    if(!_loc5_)
                                    {
                                       addr572:
                                    }
                                    §§goto(addr573);
                                 }
                                 loop21:
                                 while(true)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       §§push(this.§3!#§(i));
                                       loop22:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop23:
                                          while(true)
                                          {
                                             x = §§pop();
                                             addr415:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(!(_loc5_ && i))
                                                   {
                                                      §§push(x);
                                                      loop25:
                                                      for(; _loc6_ || i; while(true)
                                                      {
                                                         §§push(x);
                                                         if(_loc6_)
                                                         {
                                                            continue loop22;
                                                         }
                                                         continue loop25;
                                                      },continue loop22)
                                                      {
                                                         §§push(this.§3$§);
                                                         while(true)
                                                         {
                                                            §§push(-§§pop());
                                                            addr383:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() > §§pop());
                                                               if(_loc6_ || x)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop36:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 loop38:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop25;
                                                                                          }
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§goto(addr573);
                                                                                          }
                                                                                       }
                                                                                       if(!(_loc5_ && x))
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          addr263:
                                                                                          addr533:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§%@§(i));
                                                                                             if(!(_loc5_ && x))
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop38;
                                                                                                }
                                                                                             }
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   continue loop28;
                                                                                                }
                                                                                                addr351:
                                                                                                addr397:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(_loc5_ && renderer)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop36;
                                                                                                   }
                                                                                                   addr369:
                                                                                                   addr369:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      continue loop34;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   continue loop25;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr369);
                                                                                          }
                                                                                          addr533:
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr533);
                                                                                    }
                                                                                    if(!(§§pop() && renderer))
                                                                                    {
                                                                                       addr551:
                                                                                       §§push(§§pop() + 1);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                    }
                                                                                    continue loop20;
                                                                                 }
                                                                              }
                                                                              addr304:
                                                                           }
                                                                           §§goto(addr369);
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr397);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop23;
                                                      addr408:
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr445);
                                                }
                                             }
                                          }
                                          if(!(_loc6_ || x))
                                          {
                                             continue;
                                          }
                                          §§push(this.§'-§);
                                          if(!(_loc5_ && renderer))
                                          {
                                             if(!_loc5_)
                                             {
                                                §§goto(addr351);
                                                §§push(§§pop() < §§pop());
                                             }
                                             §§goto(addr382);
                                          }
                                          §§goto(addr383);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr572);
                                    }
                                    §§goto(addr573);
                                 }
                                 §§goto(addr572);
                              }
                              addr566:
                           }
                           §§goto(addr551);
                        }
                        §§goto(addr398);
                     }
                  }
                  else if(_loc6_ || this)
                  {
                     if(_loc6_ || this)
                     {
                        renderer = this.§=!Q§[i];
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              renderer.x = this.§3!#§(renderer.index);
                              loop2:
                              for(; !_loc5_; if(_loc5_ && renderer)
                              {
                                 continue;
                              },§§goto(addr114))
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(renderer.x >= this.§'-§);
                                    if(_loc6_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
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
                                          loop5:
                                          while(true)
                                          {
                                             §§pop();
                                             addr213:
                                             while(true)
                                             {
                                                §§push(renderer.x <= -this.§3$§);
                                                if(_loc6_ || this)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(i);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() - 1);
                                                   if(!_loc5_)
                                                   {
                                                      addr81:
                                                      §§push(int(§§pop()));
                                                   }
                                                   i = §§pop();
                                                   if(_loc6_ || x)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            loop13:
                                                            while(true)
                                                            {
                                                               addr98:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || i)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop11:
                                                                     while(!(_loc5_ && renderer))
                                                                     {
                                                                        this.§=!Q§.splice(this.§=!Q§.indexOf(renderer),1);
                                                                        while(true)
                                                                        {
                                                                           addr125:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_ || renderer)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 this.§%!Z§(renderer);
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    addr162:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    break loop11;
                                                                                 }
                                                                                 addr194:
                                                                              }
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                     }
                                                                     while(!_loc5_)
                                                                     {
                                                                        this.§1!J§.removeChild(renderer);
                                                                        §§goto(addr162);
                                                                     }
                                                                     §§goto(addr213);
                                                                  }
                                                                  §§goto(addr125);
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                         §§goto(addr145);
                                                      }
                                                      §§goto(addr120);
                                                   }
                                                   §§goto(addr98);
                                                }
                                                §§goto(addr81);
                                                addr114:
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr194);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr145);
                     }
                     else
                     {
                        §§goto(addr310);
                     }
                  }
                  §§goto(addr408);
               }
               break;
            }
            while(true)
            {
               §§push(int(§§pop()));
               if(_loc6_)
               {
                  i = §§pop();
                  if(!(_loc5_ && this))
                  {
                     §§goto(addr565);
                  }
                  addr573:
                  return;
               }
               §§goto(addr566);
            }
         }
         §§goto(addr39);
      }
      
      protected function §3!#§(index:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            while(!(_loc3_ || _loc3_))
            {
            }
         }
         return Math.round(this.§;!!§ / 2 + (index + this.§[$§) * (this.§3$§ + this.§;!!§));
      }
      
      protected function §%@§(index:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               addr30:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(!_loc3_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr30);
            }
            §§goto(addr32);
         }
         §§push(0);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         while(true)
         {
            §§push(i);
            if(_loc4_)
            {
               if(!_loc3_)
               {
                  if(§§pop() >= this.§=!Q§.length)
                  {
                     if(_loc4_)
                     {
                        if(_loc3_ && this)
                        {
                           loop5:
                           while(true)
                           {
                              if(_loc4_ || this)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 addr150:
                                 while(true)
                                 {
                                    if(this.§=!Q§[i].index == index)
                                    {
                                       addr135:
                                       return true;
                                       addr145:
                                       addr146:
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(i);
                                 if(!(_loc3_ && index))
                                 {
                                    addr121:
                                    §§push(§§pop() + 1);
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       continue loop5;
                                    }
                                    addr121:
                                 }
                                 §§goto(addr121);
                              }
                           }
                           continue;
                        }
                        if(!(_loc3_ && this))
                        {
                           break;
                        }
                        §§goto(addr145);
                     }
                     break;
                  }
                  §§goto(addr150);
               }
               §§goto(addr121);
            }
            §§goto(addr122);
         }
         if(!(_loc3_ && this))
         {
            §§push(false);
            if(_loc4_)
            {
               return §§pop();
            }
         }
         else
         {
            §§goto(addr146);
         }
         §§goto(addr135);
      }
      
      public function §&0§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         var renderer:§1M§ = null;
         if(!_loc5_)
         {
            if(_loc5_)
            {
            }
         }
         loop0:
         for each(renderer in this.§=!Q§)
         {
            if(!_loc4_)
            {
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  renderer.data = this.§@! §[renderer.index];
                  while(_loc5_ && this)
                  {
                  }
                  if(_loc4_)
                  {
                     if(true)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
         if(!_loc4_)
         {
         }
      }
      
      public function get data() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return this.§@! §;
      }
      
      public function set data(value:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc2_)
         {
         }
         while(true)
         {
            loop1:
            while(true)
            {
               this.§@! § = value;
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     this.clear();
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop4;
                           }
                           if(!this.§@! §)
                           {
                              break;
                           }
                           if(!(_loc3_ && _loc2_))
                           {
                              continue loop1;
                           }
                           addr112:
                           loop6:
                           while(true)
                           {
                              this.§=^§();
                              while(true)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    continue loop5;
                                 }
                                 continue loop6;
                                 addr81:
                                 if(_loc2_ || this)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop5;
                           }
                        }
                        addr23:
                        return;
                     }
                  }
               }
            }
            if(!(_loc2_ || _loc2_))
            {
               continue;
            }
            §§goto(addr81);
         }
      }
      
      public function get §&4§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         return this.§6N§;
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         var renderer:§1M§ = null;
         loop0:
         while(true)
         {
            if(this.§=!Q§.length <= 0)
            {
               if(!_loc3_)
               {
                  break;
               }
               break;
            }
            if(_loc2_ || _loc3_)
            {
               if(_loc3_)
               {
                  break;
               }
               renderer = this.§=!Q§.pop();
               if(!_loc3_)
               {
                  while(true)
                  {
                     this.§1!J§.removeChild(renderer);
                     while(!_loc3_)
                     {
                        addr63:
                        if(!(_loc3_ && _loc3_))
                        {
                           if(false)
                           {
                              loop4:
                              while(true)
                              {
                                 this.§%!Z§(renderer);
                                 addr87:
                                 addr97:
                                 while(_loc2_ || this)
                                 {
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr63);
                                 }
                                 while(true)
                                 {
                                    continue loop4;
                                    §§goto(addr87);
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr97);
            }
            break;
         }
      }
      
      public function get offset() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return -this.§,w§;
      }
      
      protected function §`"§() : §1M§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || this)
         {
         }
         while(true)
         {
            while(_loc3_ || _loc3_)
            {
               if(this.§1-§.length <= 0)
               {
                  var itemRenderer:§1M§ = new this.§ q§();
                  if(!_loc3_)
                  {
                  }
                  do
                  {
                     itemRenderer.§5%§ = this;
                     while(_loc2_ && itemRenderer)
                     {
                     }
                  }
                  while(_loc2_);
                  
               }
               continue;
               if(!_loc3_)
               {
               }
               if(!(_loc2_ && _loc3_))
               {
                  return this.§1-§.pop();
               }
               continue;
               return itemRenderer;
            }
         }
      }
      
      protected function §%!Z§(renderer:§1M§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  renderer.data = null;
                  while(_loc3_ || this)
                  {
                     while(!(_loc2_ && renderer))
                     {
                        if(_loc3_)
                        {
                           this.§1-§.push(renderer);
                           while(_loc3_ || this)
                           {
                              if(_loc3_)
                              {
                                 return;
                                 addr42:
                              }
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || this)
         {
            loop0:
            while(true)
            {
               this.clear();
               loop1:
               while(true)
               {
                  while(_loc1_)
                  {
                     while(_loc1_ || _loc1_)
                     {
                        continue loop1;
                        if(_loc1_)
                        {
                           return;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§1!J§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            §§goto(addr67);
         }
      }
   }
}
