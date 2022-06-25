package §6z§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §4I§ extends Sprite
   {
      
      private static const §!0§:int = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!0§ = 1000;
         }
      }
      
      private var §#!=§:TextField;
      
      private var §'n§:Boolean;
      
      private var §=!@§:int = 0;
      
      private var §]Z§:Number = 0;
      
      private var §#7§:Array;
      
      public function §4I§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§'n§ = param1;
               loop1:
               while(true)
               {
                  if(!param1)
                  {
                     loop13:
                     while(true)
                     {
                        this.§#7§ = new Array();
                        loop14:
                        for(; !_loc4_; this.mouseEnabled = false,if(!_loc3_)
                        {
                           continue;
                        },§§goto(addr34))
                        {
                           if(_loc3_)
                           {
                              addr51:
                              if(_loc3_ || param2)
                              {
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              addr186:
                              while(true)
                              {
                                 this.§#!=§ = new TextField();
                                 loop3:
                                 while(true)
                                 {
                                    this.§#!=§.text = "...";
                                    loop4:
                                    while(true)
                                    {
                                       this.§#!=§.textColor = 16711680;
                                       addr169:
                                       while(!(_loc4_ && this))
                                       {
                                          this.§#!=§.selectable = false;
                                          while(true)
                                          {
                                             this.§#!=§.height = 40;
                                             addr145:
                                             loop7:
                                             while(_loc3_)
                                             {
                                                this.§#!=§.width = 150;
                                                while(true)
                                                {
                                                   this.§#!=§.mouseEnabled = false;
                                                   while(true)
                                                   {
                                                      addChild(this.§#!=§);
                                                      continue loop7;
                                                      addr34:
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         break loop13;
                                                      }
                                                   }
                                                }
                                             }
                                             addr72:
                                             continue loop4;
                                             if(_loc3_ || _loc3_)
                                             {
                                                continue loop13;
                                             }
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                                 §§goto(addr51);
                              }
                           }
                           else
                           {
                              addr93:
                              while(true)
                              {
                                 param2.addChild(this);
                                 addr96:
                                 while(true)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       if(_loc3_)
                                       {
                                          addr105:
                                          while(true)
                                          {
                                             this.x = 250;
                                             break loop14;
                                             §§goto(addr105);
                                          }
                                          while(!(_loc4_ && param2))
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop1;
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr145);
                                          addr111:
                                          addr61:
                                       }
                                       §§goto(addr139);
                                    }
                                 }
                              }
                              addr93:
                           }
                           §§goto(addr111);
                        }
                        while(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr72);
                        }
                        §§goto(addr96);
                     }
                     return;
                  }
                  §§goto(addr186);
               }
            }
         }
         §§goto(addr93);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§=!@§);
            if(_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               _loc2_.§=!@§ = _loc3_;
            }
            if(!_loc4_)
            {
               §§push(this);
               §§push(this.§]Z§);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§]Z§ = §§pop();
               while(this.§]Z§ >= §!0§)
               {
                  if(!(_loc5_ || param1))
                  {
                     break;
                  }
                  addr87:
                  if(_loc4_ && param1)
                  {
                     continue;
                  }
                  addr85:
                  this.reset();
                  §§goto(addr87);
               }
               return;
               addr101:
            }
            §§goto(addr85);
         }
         §§goto(addr101);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = Number(0);
         if(_loc6_ || _loc2_)
         {
            §§push(this.§]Z§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr116:
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(this.§=!@§);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(§§pop() == 0);
                                    if(_loc6_)
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(param1);
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      §§push(0);
                                                      if(_loc6_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr92:
                                                                        §§push(1000 / this.§]Z§);
                                                                        §§push(this.§=!@§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr97:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr100:
                                                                        _loc2_ = Number(§§pop());
                                                                        §§goto(addr101);
                                                                     }
                                                                     §§goto(addr117);
                                                                  }
                                                                  §§goto(addr101);
                                                               }
                                                               §§goto(addr92);
                                                            }
                                                            §§goto(addr97);
                                                         }
                                                         §§goto(addr100);
                                                      }
                                                   }
                                                   §§goto(addr92);
                                                }
                                                continue loop1;
                                                addr85:
                                             }
                                             if(_loc5_ && param1)
                                             {
                                                addr101:
                                                while(true)
                                                {
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      break loop2;
                                                   }
                                                   continue loop7;
                                                }
                                                addr101:
                                             }
                                             addr117:
                                             §§push("fps = ");
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(§§pop() + Math.round(_loc2_));
                                             }
                                             var _loc3_:* = §§pop();
                                             var _loc4_:int = 0;
                                             addr215:
                                             if(_loc4_ >= this.§#7§.length)
                                             {
                                                addr221:
                                                this.§#!=§.text = _loc3_;
                                                this.§#!=§.mouseEnabled = false;
                                                addr200:
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      this.§=!@§ = 0;
                                                      addr180:
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            this.§]Z§ = 0;
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc5_ && _loc2_)
                                                                     {
                                                                        addr287:
                                                                        §§push(_loc3_);
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           §§push(" ");
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop() + this.§#7§[_loc4_][0]);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(§§pop() + " = ");
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(§§pop() + Math.round(this.§#7§[_loc4_][2] / this.§#7§[_loc4_][1]));
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                        addr262:
                                                                        §§push(this.§#7§);
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           addr270:
                                                                           §§push(_loc4_);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§pop()[§§pop()][1] = 0;
                                                                              addr276:
                                                                              §§push(this.§#7§);
                                                                              if(_loc6_ || _loc2_)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    §§pop()[§§pop()][2] = 0;
                                                                                    addr251:
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       _loc4_++;
                                                                                       addr228:
                                                                                       §§goto(addr215);
                                                                                    }
                                                                                    §§goto(addr276);
                                                                                 }
                                                                                 §§goto(addr270);
                                                                              }
                                                                              §§goto(addr262);
                                                                           }
                                                                           addr282:
                                                                           if(§§pop()[§§pop()][1] != 0)
                                                                           {
                                                                           }
                                                                           §§goto(addr287);
                                                                        }
                                                                        addr281:
                                                                        §§goto(addr282);
                                                                        §§push(_loc4_);
                                                                        addr345:
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr228);
                                                               }
                                                               §§goto(addr200);
                                                            }
                                                            §§goto(addr180);
                                                         }
                                                         §§goto(addr345);
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   §§goto(addr221);
                                                }
                                                addr225:
                                                §§goto(addr225);
                                             }
                                             §§goto(addr281);
                                             §§push(this.§#7§);
                                             §§goto(addr101);
                                          }
                                          addr74:
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr85);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr117);
               }
            }
         }
         §§goto(addr116);
      }
      
      public function §#!V§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(§§pop() >= this.§#7§.length)
               {
                  loop1:
                  while(true)
                  {
                     §§push(_loc3_);
                     addr225:
                     loop2:
                     while(!_loc5_)
                     {
                        if(§§pop() == -1)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§#7§);
                              loop4:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    §§pop()[this.§#7§.length] = new Array();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§#7§);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(int(§§pop().length - 1));
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          if(_loc6_)
                                          {
                                             _loc3_ = §§pop();
                                             loop7:
                                             while(!_loc5_)
                                             {
                                                §§push(this.§#7§);
                                                loop8:
                                                for(; !_loc5_; if(!(_loc6_ || this))
                                                {
                                                   continue;
                                                },§§goto(addr45))
                                                {
                                                   §§push(_loc3_);
                                                   while(true)
                                                   {
                                                      §§pop()[§§pop()][0] = param1;
                                                      addr192:
                                                      while(!_loc5_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      continue loop7;
                                                      addr136:
                                                      if(!(_loc6_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      §§pop()[§§pop()][2] = 0;
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§#7§);
                                                                  loop18:
                                                                  while(!_loc5_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     while(!(_loc5_ && param2))
                                                                     {
                                                                        §§pop()[§§pop()][1] = this.§#7§[_loc3_][1] + 1;
                                                                        §§push(_loc3_);
                                                                        continue loop16;
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           §§pop()[§§pop()][2] = this.§#7§[_loc3_][2] + param2;
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                     }
                                                                     while(!(_loc5_ && param1))
                                                                     {
                                                                        §§goto(addr136);
                                                                     }
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc6_ || param1))
                                                                        {
                                                                           if(§§pop()[§§pop()][0] == param1)
                                                                           {
                                                                              addr263:
                                                                              §§push(_loc4_);
                                                                              break loop2;
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr258:
                                                                        §§pop()[§§pop()][1] = 0;
                                                                        while(_loc6_ || _loc3_)
                                                                        {
                                                                           §§push(this.§#7§);
                                                                           while(true)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              §§push(this.§#7§);
                                                                              if(!(_loc6_ || _loc3_))
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              §§goto(addr128);
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     addr129:
                                                                     _loc4_++;
                                                                     continue loop0;
                                                                  }
                                                                  addr160:
                                                                  while(!_loc5_)
                                                                  {
                                                                     §§goto(addr163);
                                                                     §§push(_loc3_);
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               addr76:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr192);
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                }
                                                continue loop6;
                                             }
                                             continue loop1;
                                          }
                                          addr265:
                                          _loc3_ = §§pop();
                                          §§goto(addr266);
                                       }
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    addr257:
                                    §§goto(addr258);
                                    §§push(_loc4_);
                                 }
                                 §§goto(addr250);
                              }
                           }
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr265);
                  }
               }
               else
               {
                  §§push(this.§#7§);
               }
               §§goto(addr257);
            }
            §§goto(addr225);
         }
      }
   }
}
