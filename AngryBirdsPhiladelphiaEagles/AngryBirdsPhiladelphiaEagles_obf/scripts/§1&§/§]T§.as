package §1&§
{
   import § N§.§6!O§;
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §#e§.§'?§;
   import §&^§.§[!7§;
   import flash.geom.Rectangle;
   
   public class §]T§ extends §["§
   {
      
      private static const §5!0§:Number = 2.5;
      
      private static const §`!J§:Number = 0.15;
      
      private static const §#!§:Number = 0.25;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5!0§ = 2.5;
            while(true)
            {
               §`!J§ = 0.15;
               loop1:
               while(_loc2_ || §]T§)
               {
                  while(true)
                  {
                     §#!§ = 0.25;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      private var §!U§:Number;
      
      private var § s§:Number;
      
      private var §;W§:§6!O§;
      
      private var §+J§:Boolean;
      
      private var §!!§:Number;
      
      public function §]T§(param1:String, param2:Number, param3:§'?§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            §§push(this);
            §§push(3 + Math.random() * 3);
            if(_loc5_)
            {
               §§push(-§§pop());
            }
            §§pop().§!U§ = §§pop();
         }
         while(_loc6_ && param2);
         
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.dispose();
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Sprite = null;
         §§push(this.§;W§);
         loop0:
         while(true)
         {
            if(§§pop() != null)
            {
               §§push(this.§;W§);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        this.§8D§();
                        addr101:
                        while(true)
                        {
                           break loop0;
                        }
                     }
                     addr99:
                  }
                  break;
               }
               continue;
            }
            if(_loc4_)
            {
               if(this.§!U§ > 0)
               {
                  addr112:
                  while(true)
                  {
                     this.§8!-§();
                  }
                  addr112:
               }
               while(true)
               {
                  break loop0;
                  §§goto(addr112);
               }
            }
            §§goto(addr112);
         }
         loop2:
         while(true)
         {
            this.§57§();
            while(true)
            {
               if(_loc4_ || _loc3_)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this);
                     §§push(this.§!U§);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           §§push(§§pop() / 1000);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§!U§ = §§pop();
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && this))
                        {
                           break loop2;
                        }
                        break;
                     }
                     continue;
                  }
                  §§goto(addr112);
               }
               else
               {
                  §§goto(addr99);
               }
            }
            §§goto(addr101);
         }
      }
      
      private function §8!-§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(_loc4_ || _loc3_)
         {
            if(§3!>§.numChildren > 0)
            {
               addr34:
               _loc1_ = §3!>§.getChildAt(0) as Sprite;
               if(!_loc3_)
               {
                  if(_loc1_)
                  {
                     if(_loc4_)
                     {
                        _loc2_ = _loc1_.getBounds(_loc1_);
                        if(_loc4_)
                        {
                           this.§;W§ = new §6!O§(_loc2_.width,_loc2_.height,16777215);
                           while(true)
                           {
                              §§push(this.§;W§);
                              loop1:
                              while(true)
                              {
                                 §§pop().x = _loc2_.left;
                                 addr113:
                                 while(true)
                                 {
                                    §§push(this.§;W§);
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(this.§;W§);
                              if(!_loc3_)
                              {
                                 §§pop().alpha = 0;
                                 for(; _loc4_; _loc1_.addChild(this.§;W§),if(!_loc4_)
                                 {
                                    continue;
                                 },if(false)
                                 {
                                    continue loop6;
                                 },addr124:,this.§!U§ = 0,if(Math.random() >= 0.25)
                                 {
                                    §§push(this);
                                    §§push(0.3);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(Math.random() * (§5!0§ - 0.3));
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          §§push(§§pop() * 0.3);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§ s§ = §§pop();
                                    while(true)
                                    {
                                       §§goto(addr143);
                                    }
                                    addr196:
                                 },while(true)
                                 {
                                    this.§ s§ = 1 + Math.random() * (§5!0§ - 1);
                                    addr143:
                                    §§goto(addr141);
                                 })
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr104);
                              }
                              break;
                           }
                           §§goto(addr84);
                        }
                     }
                     addr141:
                     loop9:
                     while(true)
                     {
                        §§push(this);
                        §§push(0.2);
                        if(!_loc3_)
                        {
                           §§push(§§pop() + Math.random() * 2);
                        }
                        §§pop().§!!§ = §§pop();
                        while(_loc4_)
                        {
                           this.§+J§ = false;
                           if(!(_loc3_ && _loc2_))
                           {
                              if(_loc4_)
                              {
                                 break loop9;
                              }
                              continue loop12;
                           }
                        }
                     }
                     §§goto(addr211);
                  }
                  §§goto(addr124);
               }
               §§goto(addr196);
            }
            addr211:
            while(false)
            {
               §§goto(addr143);
            }
            return;
         }
         §§goto(addr34);
      }
      
      private function §8D§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         §§push(0);
         if(!(_loc8_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§!U§);
         loop0:
         while(true)
         {
            §§push(§`!J§);
            loop1:
            while(true)
            {
               if(§§pop() < §§pop())
               {
                  if(!(_loc8_ && _loc2_))
                  {
                     addr216:
                     §§push(this.§!U§);
                     if(_loc7_)
                     {
                        §§push(§§pop() / §`!J§);
                     }
                     _loc2_ = Number(§§pop());
                  }
                  addr35:
                  this.§;W§.alpha = _loc2_;
                  if(!(_loc8_ && _loc3_))
                  {
                     if(false)
                     {
                        addr49:
                        §§goto(addr35);
                     }
                     var _loc3_:* = uint(Math.round((1 - _loc2_) * 255));
                     §§push(_loc3_);
                     if(!(_loc8_ && _loc1_))
                     {
                        §§push(§§pop() << 16);
                        if(_loc7_)
                        {
                           §§push(§§pop() + (_loc3_ << 8));
                           if(_loc7_)
                           {
                              §§push(§§pop() + _loc3_);
                              if(!(_loc8_ && _loc2_))
                              {
                                 §§push(uint(§§pop()));
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    addr262:
                                    _loc3_ = §§pop();
                                    §§push(this.§!U§);
                                    if(_loc7_)
                                    {
                                       addr267:
                                       if(§§pop() > §5!0§)
                                       {
                                          if(§3!>§.numChildren > 0)
                                          {
                                             if(_loc6_ = §3!>§.getChildAt(0) as Sprite)
                                             {
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   _loc6_.removeChild(this.§;W§,true);
                                                }
                                             }
                                          }
                                          this.§;W§ = null;
                                          §§push(16777215);
                                          if(_loc7_)
                                          {
                                             addr301:
                                             _loc3_ = uint(§§pop());
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(this);
                                                §§push(2 + 20 * Math.random());
                                                if(_loc7_ || _loc2_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§!U§ = §§pop();
                                                addr325:
                                                §§push(int(§3!>§.numChildren - 1));
                                             }
                                             §§goto(addr325);
                                          }
                                          var _loc4_:* = §§pop();
                                          addr369:
                                          if(_loc4_ >= 1)
                                          {
                                             _loc1_ = §3!>§.getChildAt(_loc4_);
                                             if(_loc7_)
                                             {
                                                _loc1_.color = _loc3_;
                                                if(_loc7_ || _loc3_)
                                                {
                                                   addr359:
                                                   §§push(_loc4_);
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc4_ = §§pop();
                                                }
                                                §§goto(addr369);
                                             }
                                             §§goto(addr359);
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr325);
                                 }
                                 §§goto(addr301);
                              }
                              §§goto(addr267);
                           }
                           §§goto(addr325);
                        }
                        §§goto(addr301);
                     }
                     §§goto(addr262);
                  }
                  addr217:
               }
               else
               {
                  §§push(this.§!U§);
                  if(!(_loc7_ || this))
                  {
                     continue loop0;
                  }
                  §§push(§`!J§);
                  §§push(this.§ s§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(§5!0§ + this.§ s§);
                           while(true)
                           {
                              §§push(§5!0§);
                           }
                           addr167:
                        }
                        else
                        {
                           §§push(this.§!U§);
                           if(!_loc8_)
                           {
                              §§push(§`!J§);
                              §§push(this.§ s§);
                              if(_loc7_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    if(!(_loc7_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    addr77:
                                    §§push(§#!§);
                                    if(!_loc7_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 if(_loc7_ || _loc1_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          §§push(1);
                                          if(!_loc8_)
                                          {
                                             §§push(this.§!U§);
                                             if(!_loc8_)
                                             {
                                                §§push(§`!J§);
                                                if(!_loc8_)
                                                {
                                                   §§push(§§pop() + this.§ s§);
                                                   if(!_loc8_)
                                                   {
                                                      addr115:
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc7_ || _loc1_)
                                                      {
                                                         §§push(§#!§);
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         addr119:
                                                         _loc2_ = Number(§§pop() - §§pop());
                                                         break;
                                                      }
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc7_)
                                                         {
                                                            §§push(Math.random() * _loc5_);
                                                            while(true)
                                                            {
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     _loc2_ = Number(§§pop());
                                                                     §§goto(addr49);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr216);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr168:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() / (§§pop() * 2));
                                                                     continue loop0;
                                                                  }
                                                                  addr168:
                                                               }
                                                            }
                                                            addr131:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr167);
                                                         }
                                                         §§goto(addr168);
                                                         addr123:
                                                         while(true)
                                                         {
                                                            continue loop4;
                                                         }
                                                      }
                                                      addr124:
                                                   }
                                                   §§goto(addr115);
                                                   §§push(§§pop() / §§pop());
                                                }
                                             }
                                             §§goto(addr115);
                                          }
                                          else
                                          {
                                             §§goto(addr123);
                                          }
                                       }
                                       else
                                       {
                                          while(!(_loc8_ && _loc2_))
                                          {
                                             §§goto(addr123);
                                             §§push(1);
                                          }
                                          addr190:
                                       }
                                       §§goto(addr217);
                                    }
                                    §§goto(addr35);
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr77);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr168);
                     }
                  }
               }
               §§goto(addr35);
            }
         }
      }
      
      private function §57§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§!U§ > this.§!!§)
            {
               while(!this.§+J§)
               {
                  if(!_loc2_)
                  {
                     §[!7§.§,!5§("Lightning04","ChannelExplosions");
                  }
                  do
                  {
                     this.§+J§ = true;
                  }
                  while(!_loc1_);
                  
                  if(_loc1_)
                  {
                     break;
                  }
               }
               addr62:
            }
            return;
         }
         §§goto(addr62);
      }
   }
}
