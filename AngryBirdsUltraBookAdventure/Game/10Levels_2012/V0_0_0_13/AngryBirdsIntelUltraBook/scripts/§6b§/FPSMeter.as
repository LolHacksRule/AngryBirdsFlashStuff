package §6b§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class FPSMeter extends Sprite
   {
      
      private static const §[![§:int = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && FPSMeter))
         {
            §[![§ = 1000;
         }
      }
      
      private var §"<§:TextField;
      
      private var §,!G§:Boolean;
      
      private var §#n§:int = 0;
      
      private var §^?§:Number = 0;
      
      private var §4!U§:Array;
      
      public function FPSMeter(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§,!G§ = param1;
               loop1:
               while(true)
               {
                  §§push(param1);
                  addr191:
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop12:
                        while(true)
                        {
                           this.§4!U§ = new Array();
                           while(_loc4_ || this)
                           {
                              addr59:
                              if(_loc4_ || this)
                              {
                                 this.mouseEnabled = false;
                                 if(_loc3_ && this)
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          break loop12;
                                       }
                                       while(true)
                                       {
                                          addChild(this.§"<§);
                                       }
                                       addr139:
                                    }
                                    else
                                    {
                                       addr106:
                                       while(true)
                                       {
                                          if(!(_loc3_ && param2))
                                          {
                                             if(_loc4_ || param2)
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   this.x = 250;
                                                   addr71:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(_loc4_ || this)
                                                         {
                                                            break;
                                                         }
                                                         addr192:
                                                         while(true)
                                                         {
                                                            this.§"<§ = new TextField();
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§"<§.width = 150;
                                                            addr145:
                                                            while(_loc4_)
                                                            {
                                                               this.§"<§.mouseEnabled = false;
                                                               §§goto(addr139);
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr153:
                                                      }
                                                   }
                                                   continue loop12;
                                                }
                                             }
                                             while(true)
                                             {
                                                this.§"<§.text = "...";
                                                addr188:
                                                while(true)
                                                {
                                                   this.§"<§.textColor = 16711680;
                                                   continue loop0;
                                                   §§goto(addr59);
                                                }
                                             }
                                          }
                                       }
                                       continue loop1;
                                       addr106:
                                    }
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          addr159:
                                          while(true)
                                          {
                                             this.§"<§.height = 40;
                                             §§goto(addr153);
                                          }
                                       }
                                       break;
                                       §§goto(addr106);
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr71);
                              }
                              §§goto(addr188);
                           }
                           addr102:
                           while(true)
                           {
                              param2.addChild(this);
                              §§goto(addr106);
                           }
                        }
                        return;
                     }
                     §§goto(addr192);
                  }
               }
            }
         }
         while(true)
         {
            §§push(Boolean(param2));
            if(!(_loc3_ && param2))
            {
               if(§§pop())
               {
                  §§goto(addr102);
               }
               §§goto(addr67);
            }
            §§goto(addr191);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§#n§);
            if(!_loc4_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               _loc2_.§#n§ = _loc3_;
            }
            if(_loc5_)
            {
               §§push(this);
               §§push(this.§^?§);
               if(!_loc4_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§^?§ = §§pop();
            }
            loop0:
            while(this.§^?§ >= §[![§)
            {
               if(_loc5_ || _loc3_)
               {
                  while(true)
                  {
                     this.reset();
                  }
                  addr74:
               }
               while(true)
               {
                  if(!_loc4_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(_loc5_ || this)
         {
            §§push(this.§^?§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr119:
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(this.§#n§);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop() == 0);
                                    if(!_loc6_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc5_)
                                       {
                                          addr74:
                                          if(_loc5_)
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break loop2;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(param1);
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(0);
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§push(Number(§§pop()));
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     _loc2_ = §§pop();
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!(_loc5_ || _loc2_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        addr120:
                                                                        addr120:
                                                                        §§push("fps = ");
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop() + Math.round(_loc2_));
                                                                        }
                                                                        var _loc3_:String = §§pop();
                                                                        §§push(0);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        var _loc4_:* = §§pop();
                                                                        addr192:
                                                                        §§push(_loc4_);
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           if(§§pop() >= this.§4!U§.length)
                                                                           {
                                                                              addr205:
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 this.§"<§.text = _loc3_;
                                                                                 this.§"<§.mouseEnabled = false;
                                                                                 addr216:
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          this.§#n§ = 0;
                                                                                          addr167:
                                                                                          if(!(_loc6_ && _loc2_))
                                                                                          {
                                                                                             this.§^?§ = 0;
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         addr278:
                                                                                                         §§push(_loc3_);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§push(" ");
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr331:
                                                                                                               §§push(§§pop() + this.§4!U§[_loc4_][0]);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr293:
                                                                                                                  §§push(§§pop() + " = ");
                                                                                                                  if(!(_loc6_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + Math.round(this.§4!U§[_loc4_][2] / this.§4!U§[_loc4_][1]));
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc3_ = §§pop() + §§pop();
                                                                                                               addr263:
                                                                                                               this.§4!U§[_loc4_][1] = 0;
                                                                                                               addr259:
                                                                                                               §§push(this.§4!U§);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr273:
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§pop()[§§pop()][2] = 0;
                                                                                                                           §§push(_loc4_);
                                                                                                                           if(_loc5_ || this)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                              if(_loc5_ || this)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr235:
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              §§goto(addr192);
                                                                                                                           }
                                                                                                                           §§goto(addr235);
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           addr258:
                                                                                                                        }
                                                                                                                        if(§§pop()[§§pop()][1] != 0)
                                                                                                                        {
                                                                                                                           §§goto(addr278);
                                                                                                                        }
                                                                                                                        §§goto(addr259);
                                                                                                                     }
                                                                                                                     §§goto(addr263);
                                                                                                                  }
                                                                                                                  addr272:
                                                                                                                  §§goto(addr273);
                                                                                                                  §§push(_loc4_);
                                                                                                               }
                                                                                                               addr262:
                                                                                                               §§goto(addr262);
                                                                                                               addr267:
                                                                                                               addr332:
                                                                                                            }
                                                                                                            §§goto(addr293);
                                                                                                         }
                                                                                                         §§goto(addr331);
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr216);
                                                                                             }
                                                                                             §§goto(addr167);
                                                                                          }
                                                                                          §§goto(addr258);
                                                                                       }
                                                                                       §§goto(addr267);
                                                                                    }
                                                                                    §§goto(addr235);
                                                                                 }
                                                                                 §§goto(addr205);
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                           §§goto(addr272);
                                                                           §§push(this.§4!U§);
                                                                        }
                                                                        §§goto(addr235);
                                                                     }
                                                                     §§goto(addr120);
                                                                     addr105:
                                                                  }
                                                                  addr96:
                                                                  §§push(this.§#n§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               _loc2_ = §§pop();
                                                               §§goto(addr105);
                                                            }
                                                            addr93:
                                                            §§goto(addr96);
                                                            §§push(§§pop() / this.§^?§);
                                                         }
                                                         break;
                                                      }
                                                      continue loop3;
                                                   }
                                                   §§goto(addr93);
                                                   §§push(1000);
                                                   addr89:
                                                }
                                                §§goto(addr105);
                                                §§goto(addr74);
                                             }
                                             addr76:
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr89);
                                    }
                                    §§goto(addr74);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr120);
               }
            }
         }
         §§goto(addr119);
      }
      
      public function §`J§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(-1);
         if(_loc5_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc5_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_)
            {
               if(!(_loc6_ && param1))
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     if(!_loc6_)
                     {
                        if(§§pop() >= this.§4!U§.length)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr234:
                              loop7:
                              while(!(_loc6_ && param1))
                              {
                                 if(§§pop() == -1)
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc6_ && this)
                                       {
                                          continue loop0;
                                       }
                                       if(_loc5_)
                                       {
                                          §§push(this.§4!U§);
                                          while(true)
                                          {
                                             §§pop()[this.§4!U§.length] = new Array();
                                             addr272:
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.§4!U§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(int(§§pop().length - 1));
                                                   if(_loc6_ && this)
                                                   {
                                                      break;
                                                   }
                                                   _loc3_ = §§pop();
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(this.§4!U§);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§pop()[§§pop()][0] = param1;
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(this.§4!U§);
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  addr177:
                                                                  addr286:
                                                                  while(!_loc6_)
                                                                  {
                                                                     §§pop()[§§pop()][1] = 0;
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§4!U§);
                                                                        continue loop12;
                                                                        addr158:
                                                                        while(!(_loc6_ && param2))
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr84:
                                                                  if(§§pop()[§§pop()][0] == param1)
                                                                  {
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        addr299:
                                                                        §§push(int(_loc4_));
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr301:
                                                                           while(true)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                        addr300:
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     break loop7;
                                                                     §§goto(addr301);
                                                                  }
                                                                  loop22:
                                                                  for(; _loc5_ || this; §§push(this.§4!U§),if(!_loc5_)
                                                                  {
                                                                     continue;
                                                                  },if(_loc6_)
                                                                  {
                                                                     continue loop12;
                                                                  },if(!_loc5_)
                                                                  {
                                                                     continue loop10;
                                                                  },§§goto(addr50))
                                                                  {
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        while(!_loc6_)
                                                                        {
                                                                           §§pop()[§§pop()][1] = this.§4!U§[_loc3_][1] + 1;
                                                                           while(!_loc6_)
                                                                           {
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           §§goto(addr158);
                                                                           §§push(_loc3_);
                                                                           if(!(_loc5_ || param1))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              while(_loc5_)
                                                                              {
                                                                                 §§pop()[§§pop()][2] = 0;
                                                                              }
                                                                              continue loop13;
                                                                              addr152:
                                                                           }
                                                                           §§pop()[§§pop()][2] = this.§4!U§[_loc3_][2] + param2;
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§goto(addr112);
                                                                           §§goto(addr158);
                                                                        }
                                                                        §§goto(addr177);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr285:
                                                                        §§push(_loc4_);
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             if(!(_loc5_ || param2))
                                             {
                                                continue;
                                             }
                                             §§goto(addr152);
                                             §§push(_loc3_);
                                          }
                                       }
                                       §§goto(addr301);
                                    }
                                    §§goto(addr272);
                                 }
                                 §§goto(addr81);
                              }
                              while(true)
                              {
                                 §§push(§§pop() + 1);
                                 addr276:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr277:
                                    while(_loc6_)
                                    {
                                       §§goto(addr300);
                                    }
                                    _loc4_ = §§pop();
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§push(this.§4!U§);
                        }
                        §§goto(addr285);
                     }
                     §§goto(addr299);
                  }
                  §§goto(addr276);
               }
               §§goto(addr277);
            }
            §§goto(addr234);
         }
      }
   }
}
