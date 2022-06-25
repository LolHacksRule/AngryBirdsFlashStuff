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
         if(_loc2_)
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
         if(_loc4_)
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
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop11:
                        while(true)
                        {
                           this.§4!U§ = new Array();
                           loop12:
                           while(_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 this.mouseEnabled = false;
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    addr32:
                                    if(!(_loc3_ && param1))
                                    {
                                       break loop11;
                                    }
                                    addr167:
                                    loop7:
                                    for(; !_loc3_; §§goto(addr32))
                                    {
                                       this.§"<§.height = 40;
                                       while(true)
                                       {
                                          this.§"<§.width = 150;
                                          addr116:
                                          loop9:
                                          while(!(_loc3_ && _loc3_))
                                          {
                                             this.§"<§.mouseEnabled = false;
                                             while(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   addChild(this.§"<§);
                                                   addr98:
                                                   while(!_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§"<§.textColor = 16711680;
                                                         break loop9;
                                                      }
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          while(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                this.§"<§.selectable = false;
                                                continue loop7;
                                             }
                                             continue loop1;
                                             §§goto(addr116);
                                          }
                                          addr171:
                                          addr84:
                                          while(true)
                                          {
                                             this.§"<§.text = "...";
                                             §§goto(addr163);
                                          }
                                          if(!(_loc3_ && param2))
                                          {
                                             addr50:
                                             this.x = 250;
                                             addr54:
                                             continue loop11;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§"<§ = new TextField();
                                       §§goto(addr171);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr54);
                                 }
                              }
                              else
                              {
                                 do
                                 {
                                    if(!_loc3_)
                                    {
                                       param2.addChild(this);
                                       break loop12;
                                    }
                                 }
                                 while(§§pop());
                                 
                                 §§goto(addr50);
                              }
                              §§goto(addr108);
                           }
                           while(true)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 §§goto(addr84);
                              }
                              §§goto(addr98);
                           }
                        }
                        return;
                     }
                     §§goto(addr167);
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§#n§);
            if(_loc5_ || this)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               _loc2_.§#n§ = _loc3_;
            }
            if(!(_loc4_ && _loc3_))
            {
               §§push(this);
               §§push(this.§^?§);
               if(!_loc4_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§^?§ = §§pop();
               loop0:
               while(this.§^?§ >= §[![§)
               {
                  if(!(_loc4_ && this))
                  {
                     while(true)
                     {
                        this.reset();
                     }
                     addr89:
                  }
                  while(true)
                  {
                     if(_loc5_)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr89);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = Number(0);
         if(!_loc5_)
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
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc6_ || param1)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§#n§);
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(§§pop() == 0);
                                       if(_loc6_ || param1)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(Boolean(§§pop()));
                                          if(!_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(param1);
                                                   while(true)
                                                   {
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_ || this)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               break loop6;
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(0);
                                                         if(_loc5_)
                                                         {
                                                            break loop6;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         if(_loc5_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            addr97:
                                                            §§push(this.§#n§);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc6_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue loop1;
                                                         }
                                                         _loc2_ = §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc6_ || param1)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               addr44:
                                                            }
                                                            else
                                                            {
                                                               addr74:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr113:
                                                         }
                                                         §§push("fps = ");
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            §§push(§§pop() + Math.round(_loc2_));
                                                         }
                                                         var _loc3_:String = §§pop();
                                                         §§push(0);
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         var _loc4_:* = §§pop();
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc6_)
                                                            {
                                                               if(_loc6_ || this)
                                                               {
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     if(§§pop() >= this.§4!U§.length)
                                                                     {
                                                                        loop11:
                                                                        for(; !_loc5_; while(!(_loc5_ && this))
                                                                        {
                                                                           this.§^?§ = 0;
                                                                           if(_loc5_ && this)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr182);
                                                                        })
                                                                        {
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              this.§"<§.text = _loc3_;
                                                                              while(true)
                                                                              {
                                                                                 this.§"<§.mouseEnabled = false;
                                                                                 while(_loc6_ || param1)
                                                                                 {
                                                                                    this.§#n§ = 0;
                                                                                    continue loop11;
                                                                                    if(!(_loc6_ || _loc2_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    addr287:
                                                                                    addr258:
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(" ");
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() + this.§4!U§[_loc4_][0]);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(§§pop() + " = ");
                                                                                                   if(_loc5_ && this)
                                                                                                   {
                                                                                                   }
                                                                                                   addr362:
                                                                                                   _loc3_ = §§pop() + §§pop();
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§4!U§);
                                                                                                      addr291:
                                                                                                      addr294:
                                                                                                      while(_loc5_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            addr304:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop()[§§pop()][1] != 0)
                                                                                                               {
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               continue loop24;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§pop()[_loc4_][1] = 0;
                                                                                                      break loop11;
                                                                                                   }
                                                                                                   addr360:
                                                                                                }
                                                                                                §§push(§§pop() + Math.round(this.§4!U§[_loc4_][2] / this.§4!U§[_loc4_][1]));
                                                                                             }
                                                                                             §§goto(addr360);
                                                                                          }
                                                                                          §§goto(addr362);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       addr255:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                          addr256:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             addr257:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                §§goto(addr258);
                                                                                             }
                                                                                             continue loop10;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr362);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§4!U§);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 §§pop()[§§pop()][2] = 0;
                                                                                 §§goto(addr287);
                                                                              }
                                                                              §§goto(addr304);
                                                                           }
                                                                           §§goto(addr291);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.§4!U§);
                                                                     }
                                                                     §§goto(addr303);
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                      }
                                                      §§goto(addr113);
                                                   }
                                                   addr76:
                                                }
                                                §§goto(addr74);
                                             }
                                          }
                                       }
                                       §§goto(addr76);
                                    }
                                    break;
                                 }
                                 §§goto(addr97);
                              }
                           }
                        }
                        §§goto(addr72);
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §`J§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(-1);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc6_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(_loc6_)
            {
               if(§§pop() >= this.§4!U§.length)
               {
                  loop2:
                  while(!(_loc5_ && this))
                  {
                     §§push(_loc3_);
                     loop3:
                     while(_loc6_)
                     {
                        if(§§pop() == -1)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              if(_loc6_)
                              {
                                 §§push(this.§4!U§);
                                 loop4:
                                 while(true)
                                 {
                                    §§pop()[this.§4!U§.length] = new Array();
                                    addr263:
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§4!U§);
                                       loop6:
                                       while(true)
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(int(§§pop().length - 1));
                                             if(_loc5_)
                                             {
                                                continue loop3;
                                             }
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             if(!_loc5_)
                                             {
                                                if(_loc6_)
                                                {
                                                   _loc3_ = §§pop();
                                                   while(_loc6_ || param1)
                                                   {
                                                      §§push(this.§4!U§);
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         addr180:
                                                         while(true)
                                                         {
                                                            §§pop()[§§pop()][0] = param1;
                                                            addr184:
                                                            while(true)
                                                            {
                                                               §§push(this.§4!U§);
                                                               continue loop4;
                                                            }
                                                         }
                                                         addr143:
                                                         if(!(_loc6_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§push(_loc3_);
                                                         while(true)
                                                         {
                                                            §§pop()[§§pop()][2] = 0;
                                                            addr157:
                                                            while(true)
                                                            {
                                                               §§goto(addr91);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                §§goto(addr290);
                                             }
                                             §§goto(addr291);
                                          }
                                          else
                                          {
                                             addr283:
                                             §§goto(addr284);
                                             §§push(_loc4_);
                                          }
                                          §§goto(addr264);
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              §§goto(addr291);
                           }
                           §§goto(addr263);
                        }
                        addr91:
                        loop17:
                        while(true)
                        {
                           §§push(this.§4!U§);
                           while(true)
                           {
                              §§push(_loc3_);
                              addr95:
                              addr169:
                              while(!(_loc5_ && this))
                              {
                                 §§pop()[§§pop()][1] = this.§4!U§[_loc3_][1] + 1;
                                 while(!_loc5_)
                                 {
                                    if(!(_loc6_ || param1))
                                    {
                                       continue loop2;
                                    }
                                    §§goto(addr264);
                                    continue loop2;
                                 }
                                 continue loop7;
                              }
                              while(!_loc5_)
                              {
                                 §§pop()[§§pop()][1] = 0;
                                 while(true)
                                 {
                                    §§push(this.§4!U§);
                                    addr126:
                                    while(!(_loc5_ && this))
                                    {
                                       §§goto(addr143);
                                    }
                                    addr76:
                                    continue loop4;
                                    if(_loc5_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(_loc6_ || this)
                                    {
                                       break loop17;
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr95);
                              }
                              addr284:
                              addr264:
                              if(§§pop()[§§pop()][0] == param1)
                              {
                                 addr291:
                                 _loc3_ = int(_loc4_);
                                 addr290:
                                 addr289:
                              }
                              §§push(_loc4_);
                              §§push(this.§4!U§);
                              break loop3;
                              if(_loc5_)
                              {
                                 continue;
                              }
                              if(!_loc5_)
                              {
                                 §§push(_loc3_);
                                 if(!_loc5_)
                                 {
                                    continue loop15;
                                 }
                                 §§goto(addr95);
                              }
                              §§goto(addr126);
                           }
                           continue loop16;
                        }
                        return;
                     }
                     §§push(§§pop() + 1);
                     if(!(_loc5_ && param2))
                     {
                        §§push(int(§§pop()));
                        break loop1;
                     }
                     break loop1;
                  }
                  addr276:
                  if(!_loc5_)
                  {
                     continue loop0;
                  }
                  §§goto(addr289);
               }
               else
               {
                  §§push(this.§4!U§);
               }
               §§goto(addr283);
            }
            while(true)
            {
               _loc4_ = §§pop();
               §§goto(addr276);
            }
         }
      }
   }
}
