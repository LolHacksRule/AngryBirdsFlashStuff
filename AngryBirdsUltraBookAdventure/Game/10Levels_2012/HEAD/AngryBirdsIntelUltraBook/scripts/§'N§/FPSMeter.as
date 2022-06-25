package §'N§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class FPSMeter extends Sprite
   {
      
      private static const §!!_§:int = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!!_§ = 1000;
         }
      }
      
      private var §>!S§:TextField;
      
      private var §,7§:Boolean;
      
      private var §=!!§:int = 0;
      
      private var §`!j§:Number = 0;
      
      private var §7Q§:Array;
      
      public function FPSMeter(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               this.§,7§ = param1;
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           this.§7Q§ = new Array();
                           loop5:
                           while(!(_loc3_ && this))
                           {
                              if(!_loc3_)
                              {
                                 if(_loc4_ || param2)
                                 {
                                    this.mouseEnabled = false;
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc3_ && this))
                                    {
                                       if(_loc4_)
                                       {
                                          break loop4;
                                       }
                                       continue loop2;
                                    }
                                    addr129:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             this.x = 250;
                                             break loop5;
                                          }
                                          while(_loc3_ && this)
                                          {
                                             while(true)
                                             {
                                                this.§>!S§ = new TextField();
                                                addr206:
                                                while(true)
                                                {
                                                   this.§>!S§.text = "...";
                                                }
                                             }
                                          }
                                          this.§>!S§.height = 40;
                                          addr169:
                                          continue loop1;
                                          addr169:
                                          addr67:
                                       }
                                       else
                                       {
                                          addr150:
                                       }
                                       while(true)
                                       {
                                          this.§>!S§.mouseEnabled = false;
                                          addr144:
                                          while(true)
                                          {
                                             addChild(this.§>!S§);
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr206);
                              }
                              while(true)
                              {
                                 this.§>!S§.textColor = 16711680;
                                 addr192:
                                 while(true)
                                 {
                                    this.§>!S§.selectable = false;
                                    §§goto(addr169);
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!(_loc3_ && param2))
                              {
                                 if(!(_loc4_ || this))
                                 {
                                    continue loop1;
                                 }
                                 if(_loc4_ || param1)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr192);
                              }
                              else
                              {
                                 while(!_loc3_)
                                 {
                                    if(!(_loc3_ && param2))
                                    {
                                       param2.addChild(this);
                                       §§goto(addr129);
                                    }
                                    else
                                    {
                                       §§goto(addr169);
                                    }
                                 }
                                 §§goto(addr144);
                                 addr116:
                              }
                              §§goto(addr169);
                           }
                        }
                        return;
                     }
                     §§goto(addr202);
                  }
               }
            }
         }
         §§goto(addr206);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§=!!§);
            if(!_loc4_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               _loc2_.§=!!§ = _loc3_;
            }
            if(_loc5_ || param1)
            {
               §§push(this);
               §§push(this.§`!j§);
               if(!_loc4_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§`!j§ = §§pop();
               addr66:
            }
            while(this.§`!j§ >= §!!_§)
            {
               if(_loc5_)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  this.reset();
               }
               break;
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(_loc5_ || _loc3_)
         {
            §§push(this.§`!j§);
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
                        if(_loc5_)
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
                                 addr69:
                                 while(true)
                                 {
                                    §§push(this.§=!!§);
                                    addr72:
                                    addr112:
                                    while(true)
                                    {
                                       §§push(§§pop() == 0);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          continue loop4;
                                       }
                                       addr91:
                                       if(!_loc5_)
                                       {
                                          continue loop3;
                                       }
                                       if(!(_loc5_ || _loc2_))
                                       {
                                          continue loop2;
                                       }
                                    }
                                    addr112:
                                    if(_loc5_)
                                    {
                                       break loop5;
                                    }
                                    continue loop5;
                                 }
                                 continue loop0;
                              }
                              addr115:
                              §§push(§§pop() / this.§`!j§);
                              addr131:
                              addr132:
                              if(_loc5_)
                              {
                                 §§push(this.§=!!§);
                                 if(_loc6_ && param1)
                                 {
                                    continue loop1;
                                 }
                                 §§push(Number(§§pop() * §§pop()));
                              }
                              _loc2_ = §§pop();
                              addr132:
                              §§push("fps = ");
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + Math.round(_loc2_));
                              }
                              var _loc3_:String = §§pop();
                              §§push(0);
                              if(_loc5_)
                              {
                                 §§push(int(§§pop()));
                              }
                              var _loc4_:* = §§pop();
                              loop10:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(_loc5_ || _loc3_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(§§pop() >= this.§7Q§.length)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             this.§>!S§.text = _loc3_;
                                             loop12:
                                             while(!(_loc6_ && _loc2_))
                                             {
                                                this.§>!S§.mouseEnabled = false;
                                                loop13:
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         this.§=!!§ = 0;
                                                         while(!(_loc6_ && _loc2_))
                                                         {
                                                            this.§`!j§ = 0;
                                                            if(_loc5_)
                                                            {
                                                               continue loop13;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§7Q§);
                                                            if(_loc5_ || this)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  break;
                                                               }
                                                               while(!(_loc5_ || this))
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop()[§§pop()][1] != 0)
                                                                     {
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(" ");
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(§§pop() + this.§7Q§[_loc4_][0]);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop() + " = ");
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                    }
                                                                                    addr371:
                                                                                    _loc3_ = §§pop() + §§pop();
                                                                                    addr369:
                                                                                    break loop13;
                                                                                 }
                                                                                 §§push(§§pop() + Math.round(this.§7Q§[_loc4_][2] / this.§7Q§[_loc4_][1]));
                                                                              }
                                                                              §§goto(addr369);
                                                                           }
                                                                           §§goto(addr371);
                                                                        }
                                                                        break loop13;
                                                                     }
                                                                     addr283:
                                                                     addr310:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§7Q§);
                                                                     }
                                                                     addr310:
                                                                     while(true)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  §§goto(addr293);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr310);
                                                               }
                                                            }
                                                         }
                                                         §§pop()[§§pop()][2] = 0;
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc5_ || param1)
                                                            {
                                                               addr250:
                                                               §§push(§§pop() + 1);
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  addr251:
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     break loop12;
                                                                  }
                                                               }
                                                               addr250:
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                         addr282:
                                                      }
                                                      break;
                                                   }
                                                   continue loop11;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr283);
                                                }
                                             }
                                             while(!(_loc5_ || this))
                                             {
                                                §§goto(addr282);
                                                §§goto(addr251);
                                             }
                                             continue loop10;
                                          }
                                       }
                                       else
                                       {
                                          §§push(this.§7Q§);
                                       }
                                       §§goto(addr310);
                                    }
                                    §§goto(addr250);
                                 }
                                 §§goto(addr251);
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc6_ && _loc3_)
                              {
                              }
                              §§goto(addr132);
                           }
                           else
                           {
                              §§goto(addr111);
                              §§push(param1);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      public function §@c§(param1:String, param2:Number) : void
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
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(!_loc5_)
               {
                  if(§§pop() >= this.§7Q§.length)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        addr224:
                        loop6:
                        while(!_loc5_)
                        {
                           if(§§pop() == -1)
                           {
                              loop7:
                              while(!_loc5_)
                              {
                                 §§push(this.§7Q§);
                                 loop8:
                                 while(true)
                                 {
                                    §§pop()[this.§7Q§.length] = new Array();
                                    while(true)
                                    {
                                       §§push(this.§7Q§);
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(int(§§pop().length - 1));
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   _loc3_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(this.§7Q§);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         addr184:
                                                         addr264:
                                                         while(!_loc5_)
                                                         {
                                                            §§pop()[§§pop()][0] = param1;
                                                            while(_loc6_ || _loc3_)
                                                            {
                                                               §§push(this.§7Q§);
                                                               continue loop12;
                                                            }
                                                            §§push(_loc4_);
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop()));
                                                               addr271:
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  addr249:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         if(§§pop()[§§pop()][0] == param1)
                                                         {
                                                            §§goto(addr269);
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                   }
                                                }
                                                §§push(§§pop() + 1);
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   break loop6;
                                                }
                                                addr257:
                                                _loc4_ = §§pop();
                                                break loop7;
                                                addr252:
                                             }
                                             break;
                                          }
                                          continue loop8;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 if(_loc5_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr131);
                                 §§push(this.§7Q§);
                              }
                              continue loop0;
                           }
                           §§goto(addr75);
                        }
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              if(!_loc6_)
                              {
                                 §§goto(addr270);
                              }
                              §§goto(addr257);
                           }
                           §§goto(addr271);
                        }
                        if(!(_loc6_ || this))
                        {
                           continue;
                        }
                        if(_loc6_ || param1)
                        {
                           §§goto(addr117);
                        }
                        §§goto(addr249);
                     }
                  }
                  else
                  {
                     §§push(this.§7Q§);
                  }
                  §§goto(addr263);
               }
               §§goto(addr252);
            }
            §§goto(addr224);
         }
      }
   }
}
