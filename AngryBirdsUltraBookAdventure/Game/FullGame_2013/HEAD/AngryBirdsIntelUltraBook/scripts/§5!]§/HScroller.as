package §5!]§
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class HScroller
   {
       
      
      protected var §"!,§:Sprite;
      
      protected var §&n§:Number;
      
      protected var §;!P§:Number;
      
      protected var §8!a§:Class;
      
      protected var §@k§:Number;
      
      protected var §=o§:Number;
      
      protected var §&!k§:Number;
      
      protected var §6!M§:Number;
      
      protected var §7!e§:Number = -1;
      
      protected var §+p§:Array;
      
      protected var §"!I§:int = -1;
      
      protected var §+W§:Number = 0;
      
      protected var §"L§:int = 0;
      
      protected var §]!T§:Vector.<§`4§>;
      
      protected var §-!$§:Vector.<§`4§>;
      
      public function HScroller(maskWidth:Number, maskHeight:Number, data:Array = null, itemRenderer:Class = null, minMargin:Number = 0, maxMargin:Number = 1.7976931348623157E308)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_ && maskWidth)
         {
         }
         if(_loc7_ || maskHeight)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              while(!_loc8_)
                              {
                                 this.§]!T§ = new Vector.<§`4§>(0);
                                 while(true)
                                 {
                                    while(_loc7_)
                                    {
                                       this.§-!$§ = new Vector.<§`4§>(0);
                                       loop9:
                                       while(true)
                                       {
                                          addr331:
                                          while(true)
                                          {
                                             super();
                                             continue loop9;
                                          }
                                       }
                                    }
                                    continue loop4;
                                    if(!(_loc8_ && maskHeight))
                                    {
                                       return;
                                    }
                                 }
                              }
                              continue loop1;
                              if(!(_loc7_ || maskWidth))
                              {
                                 continue;
                              }
                              this.§>!b§();
                              §§goto(addr143);
                           }
                        }
                        if(_loc8_ && maskHeight)
                        {
                           continue;
                        }
                        this.§48§();
                        §§goto(addr169);
                     }
                  }
               }
            }
         }
         §§goto(addr236);
      }
      
      protected function §48§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
         }
         while(true)
         {
            this.§6!M§ = Math.floor(this.§&n§ / (this.§@!8§ + this.§@k§));
            while(_loc2_)
            {
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function get scrollerSprite() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§"!,§;
      }
      
      protected function §>!b§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            if(!(_loc2_ && this))
            {
               addr36:
            }
            var mask:Sprite = new Sprite();
            if(!(_loc2_ && _loc3_))
            {
               while(true)
               {
                  mask.graphics.beginFill(0,1);
                  loop1:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        mask.graphics.drawRect(0,0,this.§&n§,this.§;!P§);
                        loop3:
                        for(; _loc3_; if(!(_loc2_ && _loc2_))
                        {
                           return;
                           addr83:
                        })
                        {
                           loop4:
                           while(true)
                           {
                              mask.graphics.endFill();
                              while(true)
                              {
                                 loop6:
                                 while(_loc3_)
                                 {
                                    this.§"!,§.addChild(mask);
                                    while(!_loc2_)
                                    {
                                       while(_loc3_)
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop6;
                                             continue loop6;
                                          }
                                       }
                                       continue loop4;
                                       while(_loc3_ || mask)
                                       {
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr57);
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               this.§"!,§.mask = mask;
               §§goto(addr89);
            }
            §§goto(addr83);
         }
         §§goto(addr36);
      }
      
      public function § m§(value:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         var renderer:§`4§ = null;
         if(_loc4_)
         {
            if(!(_loc5_ && this))
            {
               if(_loc4_)
               {
                  this.§&n§ = this.§"!,§.mask.width = value;
                  if(_loc4_)
                  {
                     while(true)
                     {
                        this.§6!M§ = Math.max(0,Math.floor(this.§&n§ / (this.§@!8§ + this.§@k§)));
                        addr119:
                        loop13:
                        while(true)
                        {
                           addr100:
                           while(true)
                           {
                              this.§"!I§ = Math.min(this.§6!M§,this.§+p§.length);
                              addr95:
                              addr97:
                              while(_loc5_)
                              {
                                 continue loop13;
                              }
                              addr97:
                              while(true)
                              {
                              }
                              continue loop13;
                           }
                        }
                     }
                     addr121:
                  }
                  §§goto(addr97);
               }
               while(true)
               {
                  this.§]q§();
                  if(_loc5_ && renderer)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr95);
               }
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     if(this.§-!$§.length > this.§6!M§)
                     {
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              if(false)
                              {
                                 continue loop4;
                              }
                              renderer = this.§-!$§.pop();
                              if(_loc4_)
                              {
                                 loop6:
                                 while(renderer != null)
                                 {
                                    this.§"!,§.removeChild(renderer);
                                    loop7:
                                    while(!(_loc5_ && value))
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop7;
                                          }
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             this.§![§(renderer);
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      if(false)
                                                      {
                                                         continue loop9;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue;
                                                }
                                                continue loop8;
                                             }
                                             addr197:
                                             break loop7;
                                          }
                                       }
                                       continue loop6;
                                    }
                                    if(!_loc5_)
                                    {
                                       addr184:
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          break;
                                       }
                                       continue loop5;
                                       addr191:
                                    }
                                    while(true)
                                    {
                                       trace("Removed null renderer from mItemRenderers!");
                                       §§goto(addr197);
                                    }
                                    §§goto(addr184);
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr203);
                                 §§goto(addr184);
                              }
                              §§goto(addr191);
                           }
                           else
                           {
                              §§goto(addr219);
                           }
                        }
                        break;
                     }
                     if(_loc4_ || this)
                     {
                        addr219:
                        if(_loc4_)
                        {
                           break;
                        }
                        addr255:
                        if(_loc4_ || this)
                        {
                           if(!_loc4_)
                           {
                              addr258:
                              if(!(_loc5_ && value))
                              {
                                 this.updatePositions();
                                 addr253:
                                 if(!_loc5_)
                                 {
                                    §§goto(addr255);
                                 }
                                 addr271:
                                 if(!_loc5_)
                                 {
                                    §§goto(addr258);
                                 }
                                 addr281:
                              }
                              this.§+W§ = this.§"L§;
                              §§goto(addr271);
                           }
                           return;
                           addr238:
                        }
                        §§goto(addr253);
                     }
                     §§goto(addr238);
                     §§goto(addr219);
                  }
                  this.§?!I§(0);
                  §§goto(addr281);
               }
            }
            §§goto(addr119);
         }
         §§goto(addr97);
      }
      
      protected function §7H§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         var renderer:§`4§ = null;
         if(_loc4_ || renderer)
         {
            if(_loc4_ || renderer)
            {
               if(!(_loc5_ && i))
               {
                  addr46:
                  this.§"L§ = this.§+W§ = 0;
                  if(_loc5_ && renderer)
                  {
                  }
                  loop17:
                  while(true)
                  {
                     this.§"!I§ = Math.min(this.§6!M§,this.§+p§.length);
                     addr109:
                     while(true)
                     {
                        addr90:
                        while(!(_loc4_ || renderer))
                        {
                           continue loop17;
                        }
                     }
                  }
               }
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     this.§]q§();
                     while(_loc4_ || this)
                     {
                        if(!(_loc5_ && renderer))
                        {
                           if(_loc4_)
                           {
                              if(true)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr109);
                  }
                  §§push(0);
                  if(_loc4_ || this)
                  {
                     §§push(int(§§pop()));
                  }
                  var i:* = §§pop();
                  loop4:
                  while(true)
                  {
                     if(i >= this.§"!I§)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           if(!(_loc5_ && renderer))
                           {
                              break;
                           }
                           return;
                           addr285:
                        }
                        break;
                     }
                     if(!(_loc4_ || _loc3_))
                     {
                        break;
                     }
                     if(!(_loc5_ && i))
                     {
                        renderer = this.§+-§();
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              this.§"!,§.addChild(renderer);
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    renderer.index = i;
                                    addr229:
                                    while(true)
                                    {
                                       continue loop7;
                                    }
                                 }
                              }
                              if(_loc5_ && i)
                              {
                                 continue;
                              }
                              loop13:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(i);
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(§§pop() + 1);
                                             if(!_loc5_)
                                             {
                                                addr169:
                                                §§push(int(§§pop()));
                                             }
                                             i = §§pop();
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          §§goto(addr169);
                                       }
                                       else
                                       {
                                          §§goto(addr200);
                                       }
                                    }
                                    §§goto(addr188);
                                 }
                                 addr173:
                                 while(false)
                                 {
                                    continue loop13;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr285);
                  }
                  this.updatePositions();
                  while(true)
                  {
                     if(_loc5_ && i)
                     {
                        continue;
                     }
                     §§goto(addr285);
                  }
               }
            }
            §§goto(addr46);
         }
         §§goto(addr109);
      }
      
      protected function §]q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         while(true)
         {
            this.§&!k§ = Math.min((this.§&n§ - this.§"!I§ * this.§@!8§) / this.§"!I§,this.§=o§);
            while(_loc1_)
            {
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      protected function get §@!8§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         var tempRenderer:§`4§ = null;
         if(_loc2_ || tempRenderer)
         {
            while(true)
            {
               §§goto(addr44);
            }
         }
         while(true)
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  if(false)
                  {
                     addr44:
                     while(true)
                     {
                        §§push(this.§7!e§);
                        if(!(_loc3_ && _loc2_))
                        {
                           if(§§pop() != -1)
                           {
                              addr128:
                              §§push(this.§7!e§);
                              break;
                           }
                           while(true)
                           {
                              continue loop0;
                           }
                        }
                        break;
                     }
                     return §§pop();
                  }
                  tempRenderer = this.§+-§();
                  if(_loc3_ && this)
                  {
                  }
                  loop5:
                  while(true)
                  {
                     this.§7!e§ = tempRenderer.width;
                     loop6:
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              this.§![§(tempRenderer);
                              while(!_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc3_)
                                 {
                                    break loop8;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop5;
                                 }
                                 if(false)
                                 {
                                    continue loop8;
                                 }
                              }
                              continue loop7;
                           }
                           continue loop6;
                        }
                     }
                  }
                  §§goto(addr128);
               }
               §§goto(addr66);
            }
            §§goto(addr67);
         }
      }
      
      public function scroll(offset:int, skipAnimation:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
         }
         if(_loc4_ || skipAnimation)
         {
            while(true)
            {
            }
            addr150:
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               if(this.§+p§.length == this.§"!I§)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr142:
               }
               while(true)
               {
                  this.§?!I§(offset);
                  loop5:
                  for(; !_loc3_; if(_loc4_ || offset)
                  {
                     this.§+W§ = this.§"L§;
                     continue loop1;
                  })
                  {
                     loop6:
                     while(skipAnimation)
                     {
                        loop7:
                        while(true)
                        {
                           addr100:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 continue loop5;
                              }
                              continue loop6;
                           }
                           continue loop5;
                           addr58:
                           if(!(_loc4_ || this))
                           {
                              continue;
                           }
                           addr75:
                           if(!_loc3_)
                           {
                              addr42:
                              if(!(_loc4_ || _loc3_))
                              {
                                 while(_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       this.updatePositions();
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr58);
                                          §§goto(addr75);
                                       }
                                       continue loop7;
                                       addr56:
                                    }
                                    §§goto(addr150);
                                    §§goto(addr42);
                                 }
                                 §§goto(addr100);
                                 addr78:
                              }
                              if(!_loc3_)
                              {
                                 break loop6;
                              }
                              continue loop2;
                           }
                           §§goto(addr56);
                        }
                     }
                     return;
                  }
                  §§goto(addr142);
               }
            }
            return;
         }
      }
      
      protected function §?!I§(offset:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc3_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(this.§"L§);
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
                           §§push(this.§"L§);
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                           §§push(offset);
                           if(!(_loc2_ || offset))
                           {
                              continue loop3;
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc2_ || offset)
                           {
                              if(_loc3_)
                              {
                                 continue loop4;
                              }
                              §§push(this.§!0§);
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                              §§push(§§pop() - §§pop());
                           }
                           if(§§pop() >= -this.§+p§.length)
                           {
                              this.§"L§ -= offset;
                              addr68:
                              if(_loc2_ || offset)
                              {
                                 if(_loc3_ && this)
                                 {
                                    continue loop0;
                                 }
                                 if(!(_loc2_ || offset))
                                 {
                                    §§goto(addr68);
                                 }
                                 if(_loc2_)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       if(_loc3_ && this)
                                       {
                                          addr172:
                                       }
                                    }
                                    else
                                    {
                                       §§push(this);
                                       §§push(this.§+p§.length - this.§!0§);
                                       if(!_loc3_)
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§"L§ = §§pop();
                                       addr105:
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          break;
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       addr167:
                                       addr166:
                                    }
                                    return;
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr166);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      protected function onEnterFrame(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc3_ || e)
         {
            while(true)
            {
               loop1:
               do
               {
                  if(this.§"L§ == this.§+W§)
                  {
                     continue;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§+W§);
                     if(_loc3_ || e)
                     {
                        §§push(this.§"L§ - this.§+W§);
                        if(!(_loc2_ && e))
                        {
                           §§push(§§pop() / 4);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§+W§ = §§pop();
                     loop3:
                     for(; !_loc2_; if(_loc2_)
                     {
                        continue;
                     },§§goto(addr64))
                     {
                        loop4:
                        while(true)
                        {
                           if(Math.abs(this.§+W§ - this.§"L§) >= 0.01)
                           {
                              loop9:
                              while(true)
                              {
                                 this.updatePositions();
                                 addr47:
                                 addr64:
                                 loop10:
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    addr54:
                                    if(_loc3_ || _loc2_)
                                    {
                                       while(_loc2_)
                                       {
                                          continue loop10;
                                       }
                                       return;
                                       continue;
                                    }
                                    addr70:
                                    while(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr54);
                                    }
                                    continue loop4;
                                 }
                                 while(true)
                                 {
                                    continue loop9;
                                    §§goto(addr47);
                                 }
                              }
                           }
                           while(!_loc2_)
                           {
                              continue loop4;
                           }
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
               while(_loc2_ && this);
               
               return;
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               this.§+W§ = this.§"L§;
               §§goto(addr70);
            }
         }
         §§goto(addr61);
      }
      
      protected function updatePositions() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || i)
         {
         }
         var renderer:§`4§ = null;
         var x:* = NaN;
         var newRenderer:§`4§ = null;
         if(!(_loc5_ && this))
         {
            if(_loc5_ && x)
            {
            }
         }
         var i:* = int(this.§-!$§.length - 1);
         loop0:
         while(true)
         {
            §§push(i);
            if(_loc6_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc5_)
                  {
                     addr241:
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                           break;
                        }
                        addr519:
                        §§push(int(§§pop()));
                        if(!(_loc5_ && this))
                        {
                           addr537:
                           i = §§pop();
                           if(_loc6_ || this)
                           {
                              loop19:
                              while(true)
                              {
                                 §§push(i);
                                 addr546:
                                 while(true)
                                 {
                                    if(§§pop() >= this.§+p§.length)
                                    {
                                       if(_loc6_ || renderer)
                                       {
                                          addr557:
                                       }
                                    }
                                    else
                                    {
                                       addr402:
                                       loop21:
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             §§push(this.§`a§(i));
                                             loop22:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop23:
                                                while(true)
                                                {
                                                   x = §§pop();
                                                   loop24:
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§push(x);
                                                            loop25:
                                                            for(; _loc6_ || i; §§push(x),if(_loc5_)
                                                            {
                                                               continue;
                                                            },§§push(this.§&n§),if(!_loc5_)
                                                            {
                                                               §§goto(addr330);
                                                               §§push(§§pop() < §§pop());
                                                            },§§goto(addr368))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop22;
                                                               }
                                                               §§push(this.§@!8§);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(-§§pop());
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
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
                                                                              loop35:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop33:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§<!M§(i));
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop33;
                                                                                             }
                                                                                             §§push(!§§pop());
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop33;
                                                                                             }
                                                                                             addr260:
                                                                                             if(!(_loc5_ && renderer))
                                                                                             {
                                                                                                if(_loc6_ || x)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      continue loop33;
                                                                                                   }
                                                                                                   continue loop27;
                                                                                                }
                                                                                                continue loop28;
                                                                                             }
                                                                                             addr330:
                                                                                             addr375:
                                                                                             while(_loc6_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   continue loop35;
                                                                                                }
                                                                                                continue loop33;
                                                                                                §§goto(addr260);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr376:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                   continue loop21;
                                                                                                }
                                                                                                continue loop25;
                                                                                             }
                                                                                          }
                                                                                          addr503:
                                                                                          §§push(i);
                                                                                          if(!(_loc5_ && x))
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                             if(!(_loc5_ && renderer))
                                                                                             {
                                                                                                §§goto(addr519);
                                                                                             }
                                                                                             §§goto(addr537);
                                                                                          }
                                                                                          §§goto(addr519);
                                                                                          addr251:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr557);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr558);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       if(!(_loc5_ && renderer))
                                                                                       {
                                                                                          if(!(_loc6_ || x))
                                                                                          {
                                                                                             continue loop24;
                                                                                          }
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr251);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                newRenderer = this.§+-§();
                                                                                                if(!(_loc5_ && x))
                                                                                                {
                                                                                                   this.§"!,§.addChild(newRenderer);
                                                                                                   addr502:
                                                                                                   addr500:
                                                                                                }
                                                                                                newRenderer.data = this.§+p§[i];
                                                                                                addr488:
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   newRenderer.index = i;
                                                                                                   addr468:
                                                                                                   addr480:
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         newRenderer.x = x;
                                                                                                         addr451:
                                                                                                         if(_loc6_ || renderer)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               addr435:
                                                                                                               this.§-!$§.push(newRenderer);
                                                                                                               addr446:
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr435);
                                                                                                                              }
                                                                                                                              §§goto(addr503);
                                                                                                                           }
                                                                                                                           §§goto(addr502);
                                                                                                                        }
                                                                                                                        §§goto(addr451);
                                                                                                                     }
                                                                                                                     §§goto(addr446);
                                                                                                                  }
                                                                                                                  §§goto(addr435);
                                                                                                               }
                                                                                                               §§goto(addr468);
                                                                                                            }
                                                                                                            §§goto(addr480);
                                                                                                         }
                                                                                                         addr463:
                                                                                                         §§goto(addr463);
                                                                                                      }
                                                                                                      §§goto(addr500);
                                                                                                   }
                                                                                                   §§goto(addr488);
                                                                                                }
                                                                                                addr493:
                                                                                                §§goto(addr493);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr558);
                                                                                       }
                                                                                       §§goto(addr376);
                                                                                    }
                                                                                    §§goto(addr503);
                                                                                 }
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr375);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop23;
                                                            addr385:
                                                         }
                                                         else
                                                         {
                                                            addr410:
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop19;
                                                         }
                                                      }
                                                      §§goto(addr557);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr402:
                                    }
                                 }
                              }
                           }
                           addr558:
                           return;
                        }
                        §§goto(addr546);
                     }
                     §§goto(addr402);
                  }
                  §§goto(addr385);
               }
               else
               {
                  if(_loc6_)
                  {
                     if(_loc6_ || i)
                     {
                        renderer = this.§-!$§[i];
                        if(_loc6_ || this)
                        {
                           while(true)
                           {
                              renderer.x = this.§`a§(renderer.index);
                              while(true)
                              {
                                 while(_loc6_ || renderer)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       this.§"!,§.removeChild(renderer);
                                       addr164:
                                       while(true)
                                       {
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                              if(_loc5_ && renderer)
                              {
                                 continue;
                              }
                              if(true)
                              {
                                 continue loop0;
                              }
                              §§goto(addr106);
                           }
                        }
                        §§goto(addr223);
                     }
                     else
                     {
                        §§goto(addr312);
                     }
                  }
                  else
                  {
                     §§goto(addr241);
                  }
                  §§goto(addr402);
               }
            }
            break;
         }
         §§push(int(§§pop()));
         if(_loc6_)
         {
            i = §§pop();
            §§goto(addr410);
         }
         §§goto(addr546);
      }
      
      protected function §`a§(index:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         if(_loc3_ && index)
         {
         }
         while(_loc3_ && _loc3_)
         {
         }
         return Math.round(this.§&!k§ / 2 + (index + this.§+W§) * (this.§@!8§ + this.§&!k§));
      }
      
      protected function §<!M§(index:int) : Boolean
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
         while(false)
         {
            §§goto(addr30);
         }
         §§push(0);
         if(!(_loc3_ && i))
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         loop4:
         while(true)
         {
            §§push(i);
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  if(§§pop() >= this.§-!$§.length)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_ || index)
                        {
                           if(_loc4_ || this)
                           {
                              addr102:
                              if(_loc4_)
                              {
                                 §§push(false);
                                 if(!(_loc3_ && i))
                                 {
                                    return §§pop();
                                 }
                                 break;
                              }
                              loop5:
                              for(; !_loc4_; while(true)
                              {
                                 i = §§pop();
                                 continue loop5;
                              })
                              {
                                 if(!(_loc4_ || i))
                                 {
                                    while(true)
                                    {
                                       if(this.§-!$§[i].index == index)
                                       {
                                          §§push(true);
                                          break loop4;
                                          addr150:
                                          addr151:
                                       }
                                    }
                                    addr155:
                                 }
                                 while(true)
                                 {
                                    §§push(i);
                                    addr108:
                                    while(true)
                                    {
                                       §§push(§§pop() + 1);
                                       if(!(_loc3_ && i))
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              continue;
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr155);
               }
               §§goto(addr108);
            }
            §§goto(addr127);
         }
         return §§pop();
      }
      
      public function §,Z§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         var renderer:§`4§ = null;
         if(_loc4_ || renderer)
         {
            if(!(_loc5_ && this))
            {
               addr38:
            }
            var _loc3_:* = this.§-!$§;
            for each(renderer in _loc3_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  loop1:
                  while(true)
                  {
                     addr76:
                     while(true)
                     {
                        renderer.data = this.§+p§[renderer.index];
                        continue loop1;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr76);
               }
            }
            if(_loc4_ || _loc3_)
            {
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function get data() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc2_ && this)
         {
         }
         return this.§+p§;
      }
      
      public function set data(value:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || value)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  this.§+p§ = value;
                  loop2:
                  for(; !(_loc3_ && this); if(!(_loc2_ || value))
                  {
                     continue;
                  },§§goto(addr69))
                  {
                     while(true)
                     {
                        this.clear();
                        loop4:
                        while(!(_loc3_ && this))
                        {
                           loop5:
                           while(this.§+p§)
                           {
                              loop6:
                              while(!_loc3_)
                              {
                                 while(!_loc3_)
                                 {
                                    this.§7H§();
                                    loop8:
                                    while(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop4;
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                break loop5;
                                             }
                                             continue loop6;
                                             continue loop6;
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                              continue loop0;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function get §!0§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.§"!I§;
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         var renderer:§`4§ = null;
         loop0:
         while(true)
         {
            if(this.§-!$§.length <= 0)
            {
               if(!(_loc2_ && _loc3_))
               {
                  break;
               }
               §§goto(addr123);
            }
            if(_loc3_ || this)
            {
               if(!(_loc3_ || renderer))
               {
                  break;
               }
            }
            renderer = this.§-!$§.pop();
            if(_loc3_)
            {
               while(true)
               {
                  this.§"!,§.removeChild(renderer);
                  addr107:
                  while(true)
                  {
                  }
                  addr71:
                  if(!(_loc2_ && _loc2_))
                  {
                     if(false)
                     {
                        loop4:
                        while(true)
                        {
                           this.§![§(renderer);
                           while(!_loc2_)
                           {
                              if(_loc2_ && this)
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 §§goto(addr71);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                                 addr100:
                              }
                           }
                           §§goto(addr107);
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr100);
         }
         addr123:
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
         return -this.§"L§;
      }
      
      protected function §+-§() : §`4§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
         }
         if(!_loc2_)
         {
            while(_loc2_)
            {
            }
            addr60:
            if(this.§]!T§.length > 0)
            {
               if(_loc3_ || _loc3_)
               {
               }
               return this.§]!T§.pop();
            }
         }
         else if(false)
         {
            §§goto(addr60);
         }
         var itemRenderer:§`4§ = new this.§8!a§();
         if(_loc3_ || _loc3_)
         {
         }
         do
         {
            itemRenderer.§96§ = this;
            while(!_loc3_)
            {
            }
         }
         while(!(_loc3_ || _loc3_));
         
         return itemRenderer;
      }
      
      protected function §![§(renderer:§`4§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               loop2:
               for(; _loc2_ || this; if(_loc2_ || _loc3_)
               {
                  return;
               })
               {
                  loop3:
                  do
                  {
                     this.§]!T§.push(renderer);
                     addr72:
                     addr97:
                     while(_loc2_ || _loc2_)
                     {
                        if(!_loc3_)
                        {
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        renderer.data = null;
                        continue loop2;
                        §§goto(addr72);
                     }
                  }
                  while(_loc3_ && _loc3_);
                  
               }
            }
         }
         §§goto(addr97);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               this.clear();
               addr53:
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               return;
               addr60:
            }
         }
         while(true)
         {
            while(!_loc2_)
            {
               this.§"!,§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
               while(!_loc1_)
               {
               }
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr53);
            }
         }
         §§goto(addr60);
      }
   }
}
