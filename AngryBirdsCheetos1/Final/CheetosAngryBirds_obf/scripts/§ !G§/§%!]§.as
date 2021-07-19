package § !G§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §%!]§ extends Sprite
   {
      
      private static const §1%§:int = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §1%§ = 1000;
         }
      }
      
      private var §0!S§:TextField;
      
      private var §'?§:Boolean;
      
      private var §`![§:int = 0;
      
      private var §=!%§:Number = 0;
      
      private var §+!W§:Array;
      
      public function §%!]§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§'?§ = param1;
               loop1:
               while(true)
               {
                  if(param1)
                  {
                     loop2:
                     while(_loc4_)
                     {
                        this.§0!S§ = new TextField();
                        loop14:
                        while(true)
                        {
                           this.§0!S§.text = "...";
                           loop15:
                           while(true)
                           {
                              this.§0!S§.textColor = 16711680;
                              loop9:
                              while(true)
                              {
                                 this.§0!S§.selectable = false;
                                 loop12:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop15;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    this.§0!S§.height = 40;
                                    while(!_loc4_)
                                    {
                                       continue loop14;
                                       §§goto(addr134);
                                    }
                                    addr134:
                                    this.§0!S§.width = 150;
                                    loop6:
                                    while(true)
                                    {
                                       this.§0!S§.mouseEnabled = false;
                                       loop11:
                                       while(true)
                                       {
                                          addChild(this.§0!S§);
                                          loop10:
                                          while(true)
                                          {
                                             if(param2)
                                             {
                                                if(_loc4_)
                                                {
                                                   param2.addChild(this);
                                                }
                                                loop7:
                                                while(!_loc3_)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         addr87:
                                                         loop3:
                                                         while(true)
                                                         {
                                                            this.§+!W§ = new Array();
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               if(_loc3_ && param1)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        this.mouseEnabled = false;
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              if(!(_loc3_ && param1))
                                                                              {
                                                                                 break loop3;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               §§goto(addr122);
                                                            }
                                                            continue loop13;
                                                            §§goto(addr87);
                                                         }
                                                         return;
                                                         addr45:
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                                continue loop6;
                                             }
                                             while(true)
                                             {
                                                this.x = 250;
                                                §§goto(addr70);
                                             }
                                             §§goto(addr87);
                                          }
                                       }
                                    }
                                    addr122:
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
                  §§goto(addr45);
               }
            }
         }
         §§goto(addr166);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§`![§);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || _loc2_)
            {
               _loc2_.§`![§ = _loc3_;
            }
            if(!(_loc5_ && this))
            {
               §§push(this);
               §§push(this.§=!%§);
               if(!_loc5_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§=!%§ = §§pop();
               loop2:
               while(true)
               {
                  if(this.§=!%§ >= §1%§)
                  {
                     addr65:
                     if(_loc4_ || _loc2_)
                     {
                        while(true)
                        {
                           this.reset();
                           §§goto(addr65);
                        }
                        addr72:
                     }
                     while(_loc5_ && _loc2_)
                     {
                        continue loop2;
                     }
                  }
                  return;
               }
               addr55:
            }
            §§goto(addr72);
         }
         §§goto(addr55);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(_loc5_ || this)
         {
            §§push(this.§=!%§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc6_)
                  {
                     if(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§pop();
                           loop5:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§`![§);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() == 0);
                                    if(!_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_ && param1)
                                             {
                                                addr105:
                                             }
                                             addr116:
                                             var _loc3_:String = "fps = " + Math.round(_loc2_);
                                             var _loc4_:int = 0;
                                             loop7:
                                             while(true)
                                             {
                                                if(_loc4_ >= this.§+!W§.length)
                                                {
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      if(_loc6_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      this.§0!S§.text = _loc3_;
                                                   }
                                                   loop8:
                                                   while(true)
                                                   {
                                                      this.§0!S§.mouseEnabled = false;
                                                      do
                                                      {
                                                         this.§`![§ = 0;
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              §§push(" " + this.§+!W§[_loc4_][0]);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr334:
                                                                                 §§push(§§pop() + " = ");
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    addr306:
                                                                                    §§push(§§pop() + Math.round(this.§+!W§[_loc4_][2] / this.§+!W§[_loc4_][1]));
                                                                                 }
                                                                                 _loc3_ = §§pop() + §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§+!W§);
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ && _loc2_))
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop()[§§pop()][1] = 0;
                                                                                                addr268:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§+!W§);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      break loop14;
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                }
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          addr273:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             break loop13;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop()[§§pop()][1] != 0)
                                                                                          {
                                                                                             break loop12;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 addr335:
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                           §§goto(addr334);
                                                                        }
                                                                     }
                                                                     §§goto(addr335);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               break;
                                                            }
                                                            continue loop8;
                                                         }
                                                         _loc4_++;
                                                         continue loop7;
                                                      }
                                                      while(!(_loc5_ || _loc3_));
                                                      
                                                      return;
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this.§+!W§);
                                                }
                                                §§goto(addr273);
                                             }
                                          }
                                          else
                                          {
                                             §§push(param1);
                                          }
                                          §§goto(addr105);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             break loop4;
                                          }
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(_loc6_ && _loc3_)
                                          {
                                             break loop4;
                                          }
                                          §§push(Number(§§pop()));
                                          if(_loc5_)
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc5_)
                                                   {
                                                      if(_loc6_ && this)
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(false)
                                                      {
                                                         continue loop4;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr105);
                                                   }
                                                   §§goto(addr116);
                                                }
                                                else
                                                {
                                                   addr96:
                                                   §§push(this.§`![§);
                                                   if(!_loc5_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§goto(addr105);
                                             }
                                             §§push(Number(§§pop()));
                                          }
                                          if(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          _loc2_ = §§pop();
                                       }
                                       §§goto(addr105);
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr96);
                           }
                        }
                        addr114:
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr114);
               }
            }
         }
         §§goto(addr105);
      }
      
      public function §-m§(param1:String, param2:Number) : void
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
               if(§§pop() >= this.§+!W§.length)
               {
                  loop2:
                  while(true)
                  {
                     §§push(_loc3_);
                     loop3:
                     while(!(_loc5_ && param2))
                     {
                        if(_loc6_ || this)
                        {
                           if(§§pop() == -1)
                           {
                              loop4:
                              while(!_loc5_)
                              {
                                 §§push(this.§+!W§);
                                 loop5:
                                 while(true)
                                 {
                                    §§pop()[this.§+!W§.length] = new Array();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§+!W§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(int(§§pop().length - 1));
                                          if(!(_loc5_ && param2))
                                          {
                                             if(_loc5_ && this)
                                             {
                                                break;
                                             }
                                             _loc3_ = §§pop();
                                             loop8:
                                             while(_loc6_)
                                             {
                                                §§push(this.§+!W§);
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   addr190:
                                                   while(true)
                                                   {
                                                      §§pop()[§§pop()][0] = param1;
                                                      addr194:
                                                      while(!_loc5_)
                                                      {
                                                         §§push(this.§+!W§);
                                                         continue loop7;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                loop21:
                                                while(true)
                                                {
                                                   if(!(_loc6_ || this))
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(_loc5_ && param1)
                                                   {
                                                      continue loop6;
                                                   }
                                                   addr142:
                                                   §§push(this.§+!W§);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr36:
                                                      if(_loc6_ || param2)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(_loc5_ && this)
                                                            {
                                                               addr262:
                                                               §§push(_loc4_);
                                                               break;
                                                            }
                                                            addr54:
                                                            §§push(_loc3_);
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue;
                                                               }
                                                               loop16:
                                                               while(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§pop()[§§pop()][2] = 0;
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§+!W§);
                                                                           addr97:
                                                                           while(!_loc5_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              §§goto(addr142);
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        return;
                                                                        addr93:
                                                                        addr94:
                                                                     }
                                                                     break;
                                                                     addr79:
                                                                     if(!(_loc6_ || param2))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc6_ || this))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(this.§+!W§);
                                                                              while(true)
                                                                              {
                                                                                 continue loop16;
                                                                                 §§goto(addr36);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr194);
                                                                           }
                                                                        }
                                                                        addr278:
                                                                        §§push(int(_loc4_));
                                                                        break loop3;
                                                                        addr176:
                                                                     }
                                                                     §§goto(addr93);
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr190);
                                                            }
                                                            while(!(_loc5_ && param2))
                                                            {
                                                               §§pop()[§§pop()][1] = this.§+!W§[_loc3_][1] + 1;
                                                               continue loop21;
                                                               §§goto(addr54);
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop()[§§pop()][1] = 0;
                                                               §§goto(addr176);
                                                               §§goto(addr100);
                                                            }
                                                            addr100:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr189);
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                   §§goto(addr97);
                                                }
                                                if(§§pop()[§§pop()][0] == param1)
                                                {
                                                   §§goto(addr278);
                                                }
                                                _loc4_++;
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              addr281:
                              §§goto(addr255);
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr278);
                     }
                     _loc3_ = §§pop();
                     §§goto(addr281);
                  }
               }
               else
               {
                  §§push(this.§+!W§);
               }
               §§goto(addr262);
            }
         }
      }
   }
}
