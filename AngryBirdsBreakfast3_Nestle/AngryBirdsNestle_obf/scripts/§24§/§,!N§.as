package §24§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §,!N§ extends Sprite
   {
      
      private static const §1m§:int = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §1m§ = 1000;
         }
      }
      
      private var §8!_§:TextField;
      
      private var §?h§:Boolean;
      
      private var §=!&§:int = 0;
      
      private var §2!X§:Number = 0;
      
      private var §=!,§:Array;
      
      public function §,!N§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               this.§?h§ = param1;
               loop1:
               while(true)
               {
                  if(!param1)
                  {
                     loop7:
                     while(true)
                     {
                        this.§=!,§ = new Array();
                        while(_loc4_ || this)
                        {
                           if(_loc4_)
                           {
                              addr57:
                              if(!(_loc3_ && param2))
                              {
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 this.mouseEnabled = false;
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 if(_loc4_ || param1)
                                 {
                                    break loop7;
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    this.§8!_§.mouseEnabled = false;
                                    loop11:
                                    while(true)
                                    {
                                       addChild(this.§8!_§);
                                       addr124:
                                       addr126:
                                       while(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             this.§8!_§.width = 150;
                                             continue loop13;
                                          }
                                       }
                                       if(param2)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             if(_loc4_ || param2)
                                             {
                                                addr84:
                                                if(_loc4_ || param2)
                                                {
                                                   param2.addChild(this);
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(_loc4_ || param2)
                                                         {
                                                            addr67:
                                                            this.x = 250;
                                                            continue;
                                                         }
                                                         continue loop11;
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                   continue loop7;
                                                   addr104:
                                                }
                                                addr169:
                                                while(!(_loc3_ && _loc3_))
                                                {
                                                   this.§8!_§.selectable = false;
                                                   §§goto(addr84);
                                                }
                                                while(_loc4_)
                                                {
                                                   this.§8!_§.textColor = 16711680;
                                                   §§goto(addr156);
                                                }
                                                addr156:
                                                continue loop1;
                                                §§goto(addr144);
                                             }
                                             while(true)
                                             {
                                                this.§8!_§.height = 40;
                                                §§goto(addr144);
                                                continue loop9;
                                             }
                                          }
                                          addr77:
                                       }
                                       §§goto(addr67);
                                    }
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§8!_§.text = "...";
                                    §§goto(addr57);
                                 }
                                 addr196:
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr77);
                        }
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              continue loop7;
                           }
                           §§goto(addr104);
                        }
                     }
                  }
                  continue;
                  return;
               }
            }
         }
         §§goto(addr144);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§=!&§);
            if(_loc5_ || this)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && _loc2_))
            {
               _loc2_.§=!&§ = _loc3_;
            }
            if(!_loc4_)
            {
               §§push(this);
               §§push(this.§2!X§);
               if(_loc5_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§2!X§ = §§pop();
               while(this.§2!X§ >= §1m§)
               {
                  if(!_loc4_)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     this.reset();
                  }
                  break;
               }
               return;
               addr96:
            }
            §§goto(addr75);
         }
         §§goto(addr96);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(_loc5_)
         {
            §§push(this.§2!X§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc6_ && param1))
                  {
                     if(!§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§=!&§);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(§§pop() == 0);
                                    if(_loc5_)
                                    {
                                       addr74:
                                       if(_loc5_ || this)
                                       {
                                          break loop4;
                                       }
                                       continue loop7;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(0);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc6_ && this))
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr131:
                                                         addr131:
                                                         var _loc3_:String = "fps = " + Math.round(_loc2_);
                                                         var _loc4_:int = 0;
                                                         loop8:
                                                         while(true)
                                                         {
                                                            if(_loc4_ >= this.§=!,§.length)
                                                            {
                                                               loop9:
                                                               while(_loc5_ || param1)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     this.§8!_§.text = _loc3_;
                                                                     while(_loc5_)
                                                                     {
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           this.§8!_§.mouseEnabled = false;
                                                                           while(_loc5_)
                                                                           {
                                                                              this.§=!&§ = 0;
                                                                              while(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 this.§2!X§ = 0;
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue;
                                                                        }
                                                                        addr325:
                                                                        while(true)
                                                                        {
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§=!,§);
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    loop16:
                                                                                    while(_loc5_)
                                                                                    {
                                                                                       §§pop()[§§pop()][1] = 0;
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§=!,§);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(_loc4_);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§pop()[§§pop()][2] = 0;
                                                                                             continue;
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                                 addr263:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    continue loop14;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        §§push(" " + this.§=!,§[_loc4_][0]);
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr324:
                                                                           §§push(§§pop() + " = ");
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              addr296:
                                                                              §§push(§§pop() + Math.round(this.§=!,§[_loc4_][2] / this.§=!,§[_loc4_][1]));
                                                                           }
                                                                           _loc3_ = §§pop() + §§pop();
                                                                           §§goto(addr325);
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                     §§goto(addr324);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     _loc4_++;
                                                                     continue loop8;
                                                                  }
                                                                  §§goto(addr258);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(this.§=!,§);
                                                            }
                                                            §§goto(addr263);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr93:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               break loop5;
                                                            }
                                                            continue loop4;
                                                         }
                                                         addr93:
                                                      }
                                                   }
                                                   addr115:
                                                   §§goto(addr131);
                                                   addr115:
                                                }
                                                addr113:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc2_ = §§pop();
                                             §§goto(addr115);
                                          }
                                          break loop5;
                                       }
                                       §§goto(addr93);
                                    }
                                    addr92:
                                 }
                                 break;
                              }
                              §§push(§§pop() / this.§2!X§);
                              if(!_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(this.§=!&§);
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§goto(addr113);
                           }
                        }
                        addr129:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc5_ || _loc2_)
                           {
                              break;
                           }
                           §§goto(addr93);
                        }
                        else
                        {
                           §§push(param1);
                        }
                        §§goto(addr92);
                        §§goto(addr74);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr129);
               }
            }
         }
         §§goto(addr115);
      }
      
      public function §0p§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         while(true)
         {
            §§push(_loc4_);
            if(!_loc5_)
            {
               if(§§pop() >= this.§=!,§.length)
               {
                  if(_loc6_ || param1)
                  {
                     §§push(_loc3_);
                     loop20:
                     while(true)
                     {
                        if(_loc6_)
                        {
                           if(§§pop() == -1)
                           {
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                    §§push(this.§=!,§);
                                    addr224:
                                    while(true)
                                    {
                                       §§pop()[this.§=!,§.length] = new Array();
                                    }
                                 }
                                 addr222:
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(this.§=!,§);
                                 while(true)
                                 {
                                    §§push(int(§§pop().length - 1));
                                    if(!(_loc6_ || this))
                                    {
                                       continue loop20;
                                    }
                                    _loc3_ = §§pop();
                                    while(true)
                                    {
                                       §§push(this.§=!,§);
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          while(true)
                                          {
                                             §§pop()[§§pop()][0] = param1;
                                             while(_loc6_)
                                             {
                                                §§push(this.§=!,§);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   addr169:
                                                   while(true)
                                                   {
                                                      §§pop()[§§pop()][1] = 0;
                                                      addr173:
                                                      while(true)
                                                      {
                                                         §§push(this.§=!,§);
                                                         continue loop9;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop3;
                                          }
                                       }
                                       if(_loc5_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr71);
                                       }
                                    }
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§goto(addr93);
                                       §§push(_loc3_);
                                    }
                                    §§goto(addr224);
                                 }
                                 addr260:
                                 _loc3_ = §§pop();
                                 §§goto(addr261);
                              }
                           }
                           §§goto(addr68);
                        }
                        §§goto(addr260);
                     }
                     addr216:
                  }
                  §§goto(addr222);
               }
               else
               {
                  §§push(this.§=!,§);
               }
               §§goto(addr240);
            }
            §§goto(addr216);
         }
      }
   }
}
