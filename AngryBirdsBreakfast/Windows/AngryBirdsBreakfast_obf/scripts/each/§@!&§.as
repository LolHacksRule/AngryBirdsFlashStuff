package each
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §@!&§ extends Sprite
   {
      
      private static const §>!T§:int = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §>!T§ = 1000;
         }
      }
      
      private var §<!t§:TextField;
      
      private var §+d§:Boolean;
      
      private var §+!%§:int = 0;
      
      private var §"!D§:Number = 0;
      
      private var §=a§:Array;
      
      public function §@!&§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§+d§ = param1;
               loop1:
               while(true)
               {
                  if(param1)
                  {
                     while(true)
                     {
                        this.§<!t§ = new TextField();
                        loop3:
                        while(true)
                        {
                           this.§<!t§.text = "...";
                           loop4:
                           while(true)
                           {
                              this.§<!t§.textColor = 16711680;
                              while(true)
                              {
                                 this.§<!t§.selectable = false;
                                 while(true)
                                 {
                                    this.§<!t§.height = 40;
                                    while(true)
                                    {
                                       this.§<!t§.width = 150;
                                       while(_loc4_)
                                       {
                                          this.§<!t§.mouseEnabled = false;
                                          while(true)
                                          {
                                             addChild(this.§<!t§);
                                             continue loop4;
                                          }
                                          if(!(_loc3_ && this))
                                          {
                                             continue loop3;
                                          }
                                       }
                                       continue loop0;
                                       addr99:
                                       if(!(_loc4_ || param2))
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          this.§=a§ = new Array();
                                          addr57:
                                          loop16:
                                          while(true)
                                          {
                                             if(!(_loc3_ && param1))
                                             {
                                                if(_loc3_)
                                                {
                                                   while(_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         this.x = 250;
                                                         break loop16;
                                                      }
                                                   }
                                                   continue loop1;
                                                   addr115:
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue loop4;
                                                }
                                                §§goto(addr68);
                                             }
                                             break;
                                             §§goto(addr82);
                                          }
                                          while(_loc4_)
                                          {
                                             §§goto(addr99);
                                             §§goto(addr57);
                                          }
                                          §§goto(addr136);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr52);
               }
            }
         }
         addr82:
         addr51:
         while(true)
         {
            this.mouseEnabled = false;
            if(!(_loc3_ && this))
            {
               addr35:
               if(_loc4_ || param1)
               {
                  if(_loc4_)
                  {
                     continue loop2;
                  }
                  continue loop5;
               }
               addr110:
               while(_loc4_)
               {
                  param2.addChild(this);
                  §§goto(addr115);
                  §§goto(addr35);
               }
               continue loop6;
            }
            continue loop16;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§+!%§);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               _loc2_.§+!%§ = _loc3_;
            }
            if(_loc5_)
            {
               §§push(this);
               §§push(this.§"!D§);
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§"!D§ = §§pop();
               while(this.§"!D§ >= §>!T§)
               {
                  if(!(_loc4_ && this))
                  {
                     this.reset();
                  }
                  if(!(_loc4_ && param1))
                  {
                     addr77:
                     break;
                  }
               }
               return;
               addr101:
            }
            §§goto(addr77);
         }
         §§goto(addr101);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = Number(0);
         if(!_loc5_)
         {
            §§push(this.§"!D§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           §§pop();
                           addr126:
                           loop6:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§+!%§);
                                 if(_loc6_ || param1)
                                 {
                                    addr66:
                                    §§push(§§pop() == 0);
                                    if(!(_loc5_ && param1))
                                    {
                                       addr75:
                                       if(_loc6_ || _loc3_)
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(param1);
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            break loop4;
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                      if(!(_loc6_ || this))
                                                      {
                                                         break loop4;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      if(_loc5_)
                                                      {
                                                         break loop2;
                                                      }
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                         addr107:
                                                         §§push(Number(§§pop()));
                                                         break loop2;
                                                      }
                                                      _loc2_ = §§pop();
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(false)
                                                            {
                                                               continue loop4;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr84:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr116:
                                                      }
                                                      var _loc3_:* = "fps = " + Math.round(_loc2_);
                                                      var _loc4_:int = 0;
                                                      addr213:
                                                      if(_loc4_ >= this.§=a§.length)
                                                      {
                                                         addr219:
                                                         if(!_loc5_)
                                                         {
                                                            this.§<!t§.text = _loc3_;
                                                            this.§<!t§.mouseEnabled = false;
                                                            this.§+!%§ = 0;
                                                            addr212:
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     this.§"!D§ = 0;
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 if(_loc5_ && _loc2_)
                                                                                 {
                                                                                    addr263:
                                                                                    addr336:
                                                                                    §§push(this.§=a§);
                                                                                    §§push(_loc4_);
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       §§pop()[§§pop()][1] = 0;
                                                                                       §§push(this.§=a§);
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                §§pop()[§§pop()][2] = 0;
                                                                                                _loc4_++;
                                                                                                addr228:
                                                                                                §§goto(addr213);
                                                                                                addr258:
                                                                                             }
                                                                                             §§goto(addr263);
                                                                                          }
                                                                                          addr280:
                                                                                          if(§§pop()[_loc4_][1] != 0)
                                                                                          {
                                                                                             addr285:
                                                                                             §§push(_loc3_);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§push(" " + this.§=a§[_loc4_][0]);
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop() + " = ");
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(§§pop() + Math.round(this.§=a§[_loc4_][2] / this.§=a§[_loc4_][1]));
                                                                                                   }
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             _loc3_ = §§pop();
                                                                                             §§goto(addr336);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr263);
                                                                                       addr274:
                                                                                    }
                                                                                    §§goto(addr280);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr274);
                                                                           }
                                                                           §§goto(addr258);
                                                                        }
                                                                     }
                                                                     §§goto(addr212);
                                                                  }
                                                                  §§goto(addr228);
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            addr225:
                                                            §§goto(addr225);
                                                         }
                                                         §§goto(addr285);
                                                      }
                                                      §§goto(addr280);
                                                      §§push(this.§=a§);
                                                   }
                                                   §§goto(addr116);
                                                   §§goto(addr66);
                                                }
                                                addr86:
                                             }
                                             §§goto(addr84);
                                             §§goto(addr75);
                                          }
                                          continue loop0;
                                          addr82:
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr86);
                                 }
                                 break;
                              }
                              §§push(§§pop() / this.§"!D§);
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              §§push(this.§+!%§);
                              if(!_loc6_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr107);
                              §§push(§§pop() * §§pop());
                           }
                        }
                        addr125:
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr125);
               }
            }
         }
         §§goto(addr126);
      }
      
      public function §=!j§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc5_ && this))
            {
               if(!_loc5_)
               {
                  if(§§pop() >= this.§=a§.length)
                  {
                     loop1:
                     while(!(_loc5_ && param2))
                     {
                        §§push(_loc3_);
                        loop2:
                        for(; !_loc5_; while(true)
                        {
                           §§push(int(§§pop().length - 1));
                           if(_loc5_ && this)
                           {
                              break;
                           }
                           _loc3_ = §§pop();
                           §§goto(addr211);
                           §§goto(addr119);
                        })
                        {
                           if(§§pop() != -1)
                           {
                              loop17:
                              while(true)
                              {
                                 §§push(this.§=a§);
                                 loop18:
                                 for(; _loc6_; while(true)
                                 {
                                    §§push(this.§=a§);
                                    if(!(_loc5_ && param1))
                                    {
                                       if(!_loc5_)
                                       {
                                          §§goto(addr38);
                                       }
                                       break;
                                    }
                                    continue loop18;
                                    §§goto(addr62);
                                 },§§goto(addr119))
                                 {
                                    addr127:
                                    §§push(_loc3_);
                                    while(!_loc5_)
                                    {
                                       §§pop()[§§pop()][1] = this.§=a§[_loc3_][1] + 1;
                                       continue loop18;
                                    }
                                    while(_loc6_ || param2)
                                    {
                                       §§pop()[§§pop()][2] = 0;
                                       while(!(_loc5_ && _loc3_))
                                       {
                                          continue loop17;
                                       }
                                       continue loop0;
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       §§pop()[§§pop()][0] = param1;
                                       addr189:
                                       addr211:
                                       loop10:
                                       while(_loc6_ || param2)
                                       {
                                          §§push(this.§=a§);
                                          loop11:
                                          while(true)
                                          {
                                             if(!(_loc6_ || this))
                                             {
                                                addr255:
                                                §§push(_loc4_);
                                             }
                                             else
                                             {
                                                addr262:
                                             }
                                             §§push(_loc3_);
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   break loop11;
                                                   addr173:
                                                }
                                                §§pop()[§§pop()][1] = 0;
                                                while(!(_loc5_ && param1))
                                                {
                                                   §§push(this.§=a§);
                                                   while(!(_loc5_ && this))
                                                   {
                                                      §§goto(addr127);
                                                      §§push(_loc3_);
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop10;
                                                addr55:
                                                if(!(_loc6_ || param1))
                                                {
                                                   continue;
                                                }
                                                §§pop()[§§pop()][2] = this.§=a§[_loc3_][2] + param2;
                                                if(!(_loc6_ || _loc3_))
                                                {
                                                   continue loop18;
                                                }
                                                if(!_loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr86:
                                                         if(_loc5_ && this)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§push(this.§=a§);
                                                                  break loop18;
                                                               }
                                                               break;
                                                               §§goto(addr86);
                                                            }
                                                            §§push(int(_loc4_));
                                                         }
                                                         else
                                                         {
                                                            addr278:
                                                            addr239:
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            return;
                                                         }
                                                         continue loop1;
                                                         break loop2;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§=a§);
                                                         continue loop2;
                                                      }
                                                      addr254:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr173);
                                                   }
                                                }
                                                §§goto(addr148);
                                             }
                                             _loc4_++;
                                             continue loop0;
                                             addr38:
                                             if(!(_loc6_ || param2))
                                             {
                                                continue;
                                             }
                                             addr45:
                                             if(_loc6_ || this)
                                             {
                                                §§push(_loc3_);
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr55);
                                                }
                                                else
                                                {
                                                   §§goto(addr102);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   continue loop9;
                                                   §§goto(addr45);
                                                }
                                                addr184:
                                             }
                                          }
                                          if(§§pop()[§§pop()][0] == param1)
                                          {
                                             §§goto(addr278);
                                          }
                                          §§goto(addr255);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr184);
                                          §§goto(addr189);
                                       }
                                    }
                                    addr127:
                                    addr102:
                                 }
                                 while(true)
                                 {
                                    §§pop()[this.§=a§.length] = new Array();
                                    §§goto(addr254);
                                 }
                              }
                           }
                           §§goto(addr239);
                        }
                        _loc3_ = §§pop();
                        break;
                     }
                     §§goto(addr255);
                  }
                  else
                  {
                     §§push(this.§=a§);
                  }
                  §§goto(addr262);
               }
               §§goto(addr278);
            }
            §§goto(addr235);
         }
      }
   }
}
