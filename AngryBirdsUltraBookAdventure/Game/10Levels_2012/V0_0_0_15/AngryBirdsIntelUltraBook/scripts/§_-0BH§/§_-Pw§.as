package §_-0BH§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-Pw§ extends Sprite
   {
      
      private static const §_-ci§:int = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-ci§ = 1000;
         }
      }
      
      private var §_-z8§:TextField;
      
      private var §_-Ep§:Boolean;
      
      private var §_-08c§:int = 0;
      
      private var §_-hV§:Number = 0;
      
      private var §_-eO§:Array;
      
      public function §_-Pw§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§_-Ep§ = param1;
               loop1:
               while(true)
               {
                  if(!param1)
                  {
                     loop7:
                     while(true)
                     {
                        this.§_-eO§ = new Array();
                        while(_loc3_)
                        {
                           if(_loc4_ && param2)
                           {
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr135);
                                 }
                                 addr108:
                                 if(param2)
                                 {
                                    continue;
                                 }
                                 addr49:
                                 while(true)
                                 {
                                    this.x = 250;
                                    §§goto(addr53);
                                 }
                              }
                              continue loop0;
                           }
                           if(!_loc4_)
                           {
                              this.mouseEnabled = false;
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              if(_loc3_)
                              {
                                 break loop7;
                              }
                              while(_loc4_ && param2)
                              {
                                 loop5:
                                 while(!(_loc4_ && _loc3_))
                                 {
                                    this.§_-z8§.selectable = false;
                                    loop6:
                                    for(; _loc3_ || param2; while(true)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          addChild(this.§_-z8§);
                                          continue loop1;
                                       }
                                       continue loop6;
                                    })
                                    {
                                       this.§_-z8§.height = 40;
                                       while(true)
                                       {
                                          this.§_-z8§.width = 150;
                                          addr127:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                this.§_-z8§.mouseEnabled = false;
                                                continue loop6;
                                             }
                                             addr181:
                                             while(true)
                                             {
                                                this.§_-z8§ = new TextField();
                                                break loop6;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§_-z8§.text = "...";
                                       break loop5;
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§_-z8§.textColor = 16711680;
                                    §§goto(addr164);
                                 }
                                 addr164:
                              }
                              continue loop7;
                              addr53:
                           }
                           §§goto(addr114);
                           §§goto(addr127);
                        }
                        addr95:
                        while(true)
                        {
                           §§goto(addr49);
                        }
                     }
                     return;
                  }
                  §§goto(addr181);
               }
            }
         }
         §§goto(addr135);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§_-08c§);
            if(_loc4_ || param1)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               _loc2_.§_-08c§ = _loc3_;
            }
            if(!_loc5_)
            {
               §§push(this);
               §§push(this.§_-hV§);
               if(_loc4_ || this)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§_-hV§ = §§pop();
               loop2:
               while(true)
               {
                  if(this.§_-hV§ >= §_-ci§)
                  {
                     if(!_loc5_)
                     {
                        while(true)
                        {
                           this.reset();
                        }
                        addr72:
                     }
                     while(!_loc4_)
                     {
                        continue loop2;
                     }
                  }
                  return;
               }
               addr60:
            }
            §§goto(addr72);
         }
         §§goto(addr60);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(!_loc6_)
         {
            §§push(this.§_-hV§);
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
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§_-08c§);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(§§pop() == 0);
                                    if(_loc5_ || param1)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(param1);
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop3;
                                                }
                                                if(!§§pop())
                                                {
                                                   §§push(0);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc5_ || param1)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(!(_loc6_ && this))
                                                         {
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr83:
                                                               }
                                                               addr121:
                                                               §§push("fps = ");
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() + Math.round(_loc2_));
                                                               }
                                                               var _loc3_:String = §§pop();
                                                               var _loc4_:int = 0;
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  if(_loc4_ >= this.§_-eO§.length)
                                                                  {
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        this.§_-z8§.text = _loc3_;
                                                                        loop12:
                                                                        while(_loc5_)
                                                                        {
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              this.§_-z8§.mouseEnabled = false;
                                                                              loop13:
                                                                              while(!_loc6_)
                                                                              {
                                                                                 this.§_-08c§ = 0;
                                                                                 for(; !_loc6_; this.§_-hV§ = 0,if(!_loc6_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    continue loop13;
                                                                                 })
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          §§push(" ");
                                                                                          if(_loc5_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() + this.§_-eO§[_loc4_][0]);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr286:
                                                                                                §§push(§§pop() + " = ");
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   addr295:
                                                                                                   §§push(§§pop() + Math.round(this.§_-eO§[_loc4_][2] / this.§_-eO§[_loc4_][1]));
                                                                                                }
                                                                                                _loc3_ = §§pop() + §§pop();
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§_-eO§);
                                                                                                      loop18:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         loop19:
                                                                                                         while(_loc5_)
                                                                                                         {
                                                                                                            §§pop()[§§pop()][1] = 0;
                                                                                                            loop20:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§_-eO§);
                                                                                                               if(!(_loc6_ && this))
                                                                                                               {
                                                                                                                  if(!(_loc5_ || _loc2_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§pop()[§§pop()][2] = 0;
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop16;
                                                                                                                        }
                                                                                                                        continue loop20;
                                                                                                                     }
                                                                                                                     _loc4_++;
                                                                                                                     break loop12;
                                                                                                                     addr225:
                                                                                                                  }
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               break loop19;
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop()[§§pop()][1] != 0)
                                                                                                            {
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr295);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr286);
                                                                                    }
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr225);
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.§_-eO§);
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr88:
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               while(true)
                                                               {
                                                                  break loop5;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr121);
                                                         addr112:
                                                      }
                                                      addr111:
                                                      _loc2_ = §§pop();
                                                      §§goto(addr112);
                                                   }
                                                   break loop5;
                                                }
                                                §§goto(addr88);
                                             }
                                             addr85:
                                          }
                                          §§goto(addr83);
                                       }
                                    }
                                    §§goto(addr85);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§push(§§pop() / this.§_-hV§);
                                 if(_loc5_ || _loc3_)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(this.§_-08c§);
                                    if(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    §§goto(addr111);
                                 }
                                 break;
                              }
                              §§goto(addr111);
                           }
                        }
                     }
                     §§goto(addr81);
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      public function §_-3P§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               if(§§pop() >= this.§_-eO§.length)
               {
                  if(_loc6_ || param2)
                  {
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     §§push(_loc3_);
                     loop2:
                     for(; !(_loc5_ && _loc3_); while(true)
                     {
                        §§push(int(§§pop().length - 1));
                        if(!(_loc6_ || param2))
                        {
                           continue loop2;
                        }
                        §§goto(addr186);
                     })
                     {
                        if(§§pop() != -1)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§_-eO§);
                              loop4:
                              while(!_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    §§push(_loc3_);
                                    loop5:
                                    while(!(_loc5_ && param2))
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          §§pop()[§§pop()][1] = this.§_-eO§[_loc3_][1] + 1;
                                          loop6:
                                          for(; !_loc5_; §§pop()[§§pop()][2] = this.§_-eO§[_loc3_][2] + param2,if(_loc6_ || _loc3_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   break loop3;
                                                }
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§goto(addr163);
                                                         §§push(this.§_-eO§);
                                                      }
                                                      else
                                                      {
                                                         addr229:
                                                         while(true)
                                                         {
                                                         }
                                                         addr229:
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                   §§goto(addr247);
                                                   addr186:
                                                   if(_loc5_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   _loc3_ = §§pop();
                                                }
                                                continue loop1;
                                             }
                                             continue loop3;
                                          })
                                          {
                                             if(!_loc5_)
                                             {
                                                if(_loc6_ || param2)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(this.§_-eO§);
                                                      if(_loc5_ && this)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!(_loc5_ && this))
                                                         {
                                                            §§push(_loc3_);
                                                            if(!_loc5_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop5;
                                                         }
                                                         addr163:
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§push(_loc3_);
                                                               while(!_loc5_)
                                                               {
                                                                  §§pop()[§§pop()][0] = param1;
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-eO§);
                                                                  }
                                                               }
                                                               addr248:
                                                               if(§§pop()[§§pop()][0] == param1)
                                                               {
                                                                  addr261:
                                                                  §§push(_loc4_);
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     break loop2;
                                                                  }
                                                                  break loop2;
                                                               }
                                                               _loc4_++;
                                                               continue loop0;
                                                               addr166:
                                                            }
                                                            else
                                                            {
                                                               addr231:
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop()[this.§_-eO§.length] = new Array();
                                                               addr247:
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-eO§);
                                                                  continue loop2;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         addr153:
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§pop()[§§pop()][1] = 0;
                                                               break loop6;
                                                            }
                                                            §§goto(addr166);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr261);
                                                }
                                                addr271:
                                                §§goto(addr248);
                                             }
                                             §§goto(addr172);
                                          }
                                          while(true)
                                          {
                                             §§push(this.§_-eO§);
                                             break loop4;
                                          }
                                       }
                                       §§goto(addr153);
                                    }
                                    addr144:
                                    §§pop()[§§pop()][2] = 0;
                                    continue loop3;
                                 }
                                 addr255:
                                 §§push(_loc4_);
                                 §§goto(addr248);
                              }
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr144);
                                 §§push(_loc3_);
                              }
                           }
                           return;
                        }
                        §§goto(addr229);
                     }
                     _loc3_ = §§pop();
                     §§goto(addr271);
                  }
                  §§goto(addr229);
               }
               else
               {
                  §§push(this.§_-eO§);
               }
               §§goto(addr255);
            }
         }
      }
   }
}
