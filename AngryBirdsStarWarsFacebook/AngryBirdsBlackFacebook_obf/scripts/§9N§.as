package
{
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public final class §9N§ implements §!!K§
   {
      
      private static var §8o§:§9N§ = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8o§ = null;
         }
      }
      
      private var §-!R§:Vector.<§@#T§>;
      
      public function §9N§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-!R§ = new Vector.<§@#T§>();
         }
         do
         {
            super();
         }
         while(_loc2_ && this);
         
      }
      
      public static function get §%!E§() : §9N§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§8o§);
            if(!(_loc1_ && §9N§))
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     addr50:
                     §8o§ = new §9N§();
                  }
               }
               return §8o§;
            }
         }
         §§goto(addr50);
      }
      
      public function add(param1:uint, param2:uint, param3:Function, param4:Boolean = false, param5:Boolean = true) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:Boolean = false;
         if(_loc7_)
         {
            §§push(this.§`#-§(param1));
            loop0:
            while(§§pop())
            {
               while(true)
               {
                  §§push(this.§ m§(param2));
                  loop2:
                  while(!_loc8_)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§9;§(param1,param2));
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(typeof param3 == "function")
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§push(param5);
                                          loop7:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   this.§-!R§ = new Vector.<§@#T§>();
                                                   addr159:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr153:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§%^§(param1,param2));
                                                loop11:
                                                while(_loc7_ || this)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§push(param4);
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(!(_loc7_ || param2))
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(!_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc7_ || param2)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §%!E§.§27§(param1,param2);
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc8_ && param2))
                                                                     {
                                                                        if(!(_loc8_ && param3))
                                                                        {
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 throw new Error("Invalid keystroke + modifier combination");
                                                                              }
                                                                              addr178:
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(!(_loc7_ || param1))
                                                                                 {
                                                                                    throw new Error("Invalid modifier");
                                                                                 }
                                                                                 addr197:
                                                                                 continue;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§-!R§.push(new §@#T§(param1,param2,param3));
                                                                           addr142:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc8_ && this))
                                                                              {
                                                                                 break loop13;
                                                                              }
                                                                              if(_loc8_ && param3)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                        addr134:
                                                                     }
                                                                  }
                                                                  continue;
                                                                  addr78:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr153);
                                                               }
                                                               §§goto(addr159);
                                                            }
                                                            §§goto(addr142);
                                                         }
                                                         §§goto(addr78);
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr134);
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr165);
                                 }
                              }
                              §§goto(addr178);
                           }
                        }
                     }
                     §§goto(addr197);
                  }
                  continue loop0;
               }
            }
            throw new Error("Invalid keystroke");
         }
         §§goto(addr220);
      }
      
      public function §>"k§(param1:uint, param2:uint) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc3_:Boolean = false;
         if(_loc6_ || param1)
         {
            §§push(this.§%"+§());
            if(_loc6_ || this)
            {
               if(!§§pop())
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     addr148:
                     if(this.§%^§(param1,param2))
                     {
                        while(true)
                        {
                           §§push(0);
                           addr150:
                           while(true)
                           {
                              _loc4_ = §§pop();
                           }
                        }
                        addr149:
                     }
                     loop1:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc7_ && _loc3_))
                        {
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc6_ || this))
                              {
                                 loop3:
                                 while(true)
                                 {
                                    addr42:
                                    while(true)
                                    {
                                       if(_loc4_ < _loc5_)
                                       {
                                          break loop3;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                    }
                                 }
                                 continue;
                                 addr88:
                              }
                              while(true)
                              {
                                 this.§-!R§.splice(_loc4_,1);
                                 continue loop1;
                              }
                           }
                           else
                           {
                              _loc4_++;
                           }
                           §§goto(addr88);
                        }
                     }
                     return §§pop();
                     addr30:
                  }
                  while(true)
                  {
                     §§push(int(this.§-!R§.length));
                     if(_loc6_ || this)
                     {
                        _loc5_ = §§pop();
                        if(_loc7_ && _loc3_)
                        {
                           continue;
                        }
                        if(!(_loc7_ && _loc3_))
                        {
                           break;
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr42);
                  addr116:
               }
               §§goto(addr30);
            }
            §§goto(addr148);
         }
         §§goto(addr116);
      }
      
      private function §%^§(param1:uint, param2:uint) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = false;
         var _loc4_:int = 0;
         var _loc5_:int = this.§-!R§.length;
         loop0:
         while(true)
         {
            if(_loc4_ >= _loc5_)
            {
               if(_loc6_)
               {
                  if(_loc6_ || this)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc7_)
                        {
                           if(!(_loc7_ && param1))
                           {
                              break;
                           }
                           addr95:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 _loc4_++;
                                 while(!(_loc6_ || param1))
                                 {
                                    continue loop1;
                                 }
                                 continue loop0;
                                 addr67:
                              }
                              while(true)
                              {
                                 §§push(true);
                              }
                           }
                        }
                        while(true)
                        {
                           _loc3_ = §§pop();
                           continue loop1;
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr96);
               }
               §§goto(addr67);
            }
            else
            {
               §§push(this.§'#O§(param1,param2,this.§-!R§[_loc4_]));
            }
            §§goto(addr95);
         }
      }
      
      public function §1S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!this.§%"+§())
            {
               addr36:
               while(this.§-!R§.length > 0)
               {
                  this.§-!R§.pop();
                  if(_loc2_ && this)
                  {
                     break;
                  }
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §%"+§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§-!R§.length == 0);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  addr51:
                  §§push(true);
                  if(!_loc2_)
                  {
                     addr54:
                  }
               }
               else
               {
                  return false;
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr51);
      }
      
      public function §?B§(param1:KeyboardEvent) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc2_:Boolean = false;
         if(!_loc8_)
         {
            if(!this.§%"+§())
            {
               while(true)
               {
                  §§push(this.§]y§(param1));
                  if(!_loc8_)
                  {
                     §§push(uint(§§pop()));
                  }
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(uint(param1.keyCode));
                        if(!_loc9_)
                        {
                           break;
                        }
                        _loc4_ = §§pop();
                        loop3:
                        while(_loc9_ || _loc2_)
                        {
                           §§push(0);
                           loop4:
                           while(true)
                           {
                              _loc5_ = §§pop();
                              addr144:
                              while(_loc9_)
                              {
                                 continue loop4;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr200);
         }
         §§goto(addr140);
      }
      
      public function § "O§(param1:KeyboardEvent) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc2_:Boolean = false;
         if(!(_loc8_ && _loc2_))
         {
            if(!this.§%"+§())
            {
               loop0:
               while(true)
               {
                  §§push(this.§]y§(param1));
                  if(_loc9_)
                  {
                     §§push(uint(§§pop()));
                  }
                  while(true)
                  {
                     _loc3_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(uint(param1.keyCode));
                        if(!(_loc9_ || this))
                        {
                           break;
                        }
                        _loc4_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           while(true)
                           {
                              _loc5_ = §§pop();
                              addr99:
                              while(!(_loc8_ && this))
                              {
                                 continue loop0;
                              }
                              addr63:
                              continue loop2;
                              loop7:
                              while(true)
                              {
                                 §§push(int(this.§-!R§.length));
                                 if(!(_loc9_ || this))
                                 {
                                    break;
                                 }
                                 _loc6_ = §§pop();
                                 if(_loc9_ || _loc2_)
                                 {
                                    if(!_loc9_)
                                    {
                                       continue loop3;
                                    }
                                    for(; _loc5_ < _loc6_; _loc5_++,if(!_loc9_)
                                    {
                                       break;
                                    })
                                    {
                                       §§push(_loc4_ == this.§-!R§[_loc5_].keystroke);
                                       if(!(_loc8_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc9_)
                                             {
                                                §§pop();
                                                if(!_loc8_)
                                                {
                                                   if(true)
                                                   {
                                                      §§push(!this.§-!R§[_loc5_].released);
                                                      if(_loc8_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr190:
                                                   }
                                                   continue loop7;
                                                   addr190:
                                                   return §§pop();
                                                }
                                                break;
                                             }
                                             §§goto(addr190);
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc8_ && _loc2_)
                                             {
                                                break;
                                             }
                                             this.§-!R§[_loc5_].released = _loc2_ = true;
                                             if(!(_loc9_ || _loc2_))
                                             {
                                                break;
                                             }
                                          }
                                          continue;
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr190);
                                    §§push(_loc2_);
                                 }
                                 else
                                 {
                                    §§goto(addr99);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr189);
         }
         §§goto(addr113);
      }
      
      public function §9;§(param1:uint, param2:uint) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = true;
         if(!_loc5_)
         {
            §§push(param1);
            if(!(_loc5_ && param2))
            {
               §§push(§=D§.ENTER);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc4_ || param2)
                     {
                        while(true)
                        {
                           §§push(param2);
                           addr250:
                           while(true)
                           {
                              §§push(§=D§.§2D§);
                              addr252:
                              loop32:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                 }
                                 addr185:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr187:
                                    while(true)
                                    {
                                       §§push(§=D§.TAB);
                                       addr189:
                                       while(true)
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             continue loop0;
                                          }
                                          continue loop32;
                                       }
                                       continue loop32;
                                    }
                                 }
                              }
                           }
                        }
                        addr239:
                     }
                     while(true)
                     {
                        §§push(this.§0u§(param2));
                        addr256:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr257:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr258:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr253:
                  }
                  §§goto(addr185);
               }
            }
            §§goto(addr250);
         }
         §§goto(addr239);
      }
      
      private function §`#-§(param1:uint) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = true;
         var _loc3_:* = param1;
         if(_loc4_ || param1)
         {
            §§push(§=D§.§5#Y§);
            if(_loc4_ || _loc2_)
            {
               §§push(_loc3_);
               if(_loc4_ || _loc2_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        §§push(0);
                        if(_loc5_ && _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr97:
                        §§push(1);
                        if(_loc5_)
                        {
                           addr175:
                        }
                     }
                  }
                  else
                  {
                     §§push(§=D§.SHIFT);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                           addr89:
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_ || param1)
                              {
                                 §§goto(addr97);
                              }
                              else
                              {
                                 addr167:
                                 §§push(6);
                                 if(!(_loc4_ || this))
                                 {
                                    addr223:
                                    switch(§§pop())
                                    {
                                       case 0:
                                       case 1:
                                       case 2:
                                       case 3:
                                       case 4:
                                       case 5:
                                       case 6:
                                       case 7:
                                       case 8:
                                       case 9:
                                          §§push(false);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             _loc2_ = §§pop();
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             break;
                                          }
                                          §§goto(addr226);
                                    }
                                    addr226:
                                    return §§pop();
                                    §§push(_loc2_);
                                    addr218:
                                 }
                                 §§goto(addr223);
                              }
                           }
                           else
                           {
                              addr103:
                              §§push(§=D§.§2!O§);
                              §§push(_loc3_);
                           }
                           §§goto(addr223);
                        }
                        if(§§pop() === §§pop())
                        {
                           if(_loc4_)
                           {
                              §§push(2);
                              if(!_loc4_)
                              {
                                 addr135:
                              }
                           }
                           else
                           {
                              §§goto(addr167);
                           }
                        }
                        else
                        {
                           if(Keyboard.BACKSPACE === _loc3_)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 addr132:
                                 §§push(3);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr135);
                                 }
                              }
                           }
                           else if(Keyboard.CAPS_LOCK === _loc3_)
                           {
                              if(!_loc5_)
                              {
                                 §§push(4);
                                 if(_loc5_)
                                 {
                                    addr200:
                                 }
                              }
                              else
                              {
                                 addr182:
                                 §§push(7);
                                 if(_loc4_)
                                 {
                                    addr185:
                                 }
                              }
                           }
                           else if(Keyboard.INSERT === _loc3_)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(5);
                                 if(_loc4_)
                                 {
                                    §§goto(addr223);
                                 }
                                 else
                                 {
                                    §§goto(addr185);
                                 }
                              }
                           }
                           else if(Keyboard.DELETE === _loc3_)
                           {
                              if(_loc4_)
                              {
                                 §§goto(addr167);
                              }
                              else
                              {
                                 addr192:
                                 §§push(8);
                                 if(_loc4_ || param1)
                                 {
                                    §§goto(addr200);
                                 }
                                 §§goto(addr223);
                              }
                           }
                           else
                           {
                              if(Keyboard.HOME === _loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr182);
                                 }
                                 else
                                 {
                                    §§goto(addr192);
                                 }
                              }
                              else
                              {
                                 if(Keyboard.PAGE_UP === _loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       §§goto(addr192);
                                    }
                                 }
                                 else if(Keyboard.PAGE_DOWN !== _loc3_)
                                 {
                                    §§goto(addr223);
                                    §§push(10);
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr223);
                           if(!_loc5_)
                           {
                              §§goto(addr223);
                           }
                        }
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr223);
               }
               §§goto(addr89);
            }
            §§goto(addr103);
         }
         §§goto(addr132);
      }
      
      private function § m§(param1:uint) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:* = param1;
         if(!_loc5_)
         {
            §§push(§=D§.NONE);
            if(!_loc5_)
            {
               §§push(_loc3_);
               if(!(_loc5_ && _loc2_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        addr63:
                        §§push(0);
                        if(_loc5_ && this)
                        {
                           addr114:
                        }
                     }
                     else
                     {
                        addr135:
                        §§push(3);
                        if(_loc4_ || _loc2_)
                        {
                           addr143:
                        }
                        else
                        {
                           addr191:
                        }
                     }
                  }
                  else
                  {
                     §§push(§=D§.§5#Y§);
                     if(_loc4_)
                     {
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                           addr79:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(1);
                                 if(_loc4_ || param1)
                                 {
                                 }
                                 §§goto(addr214);
                              }
                              else
                              {
                                 §§goto(addr135);
                              }
                           }
                           else
                           {
                              §§push(§=D§.SHIFT);
                              if(!_loc5_)
                              {
                                 addr95:
                                 §§push(_loc3_);
                                 if(_loc4_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(2);
                                          if(!_loc5_)
                                          {
                                             §§goto(addr114);
                                          }
                                          else
                                          {
                                             addr167:
                                             §§goto(addr214);
                                          }
                                       }
                                       §§goto(addr214);
                                    }
                                    else
                                    {
                                       §§push(§=D§.§2!O§);
                                       if(_loc4_)
                                       {
                                          §§push(_loc3_);
                                          if(_loc4_ || param1)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§goto(addr135);
                                                }
                                                else
                                                {
                                                   addr183:
                                                   §§push(5);
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      addr209:
                                                   }
                                                   §§goto(addr214);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§=D§.§2D§);
                                                if(!_loc5_)
                                                {
                                                   addr148:
                                                   §§push(_loc3_);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr156:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            §§push(4);
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr167);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr196:
                                                            §§push(6);
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr209);
                                                            }
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      else
                                                      {
                                                         §§push(§=D§.§@R§);
                                                         if(_loc4_)
                                                         {
                                                            addr172:
                                                            §§push(_loc3_);
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr183);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr196);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(§=D§.§?!_§);
                                                               }
                                                               §§goto(addr196);
                                                            }
                                                            addr195:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               §§goto(addr196);
                                                            }
                                                            else
                                                            {
                                                               addr214:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                  case 1:
                                                                  case 2:
                                                                  case 3:
                                                                  case 4:
                                                                  case 5:
                                                                  case 6:
                                                                     §§push(true);
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        if(_loc5_ && _loc2_)
                                                                        {
                                                                        }
                                                                        addr216:
                                                                        §§push(_loc2_);
                                                                        break;
                                                                     }
                                                                     break;
                                                                  default:
                                                                     §§goto(addr216);
                                                               }
                                                               return §§pop();
                                                               §§push(7);
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                   §§goto(addr195);
                                                }
                                                §§push(_loc3_);
                                             }
                                             §§goto(addr214);
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr172);
                                    }
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr214);
               }
               §§goto(addr79);
            }
            §§goto(addr172);
         }
         §§goto(addr63);
      }
      
      private function §0u§(param1:uint) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:* = param1;
         if(_loc4_)
         {
            §§push(§=D§.§2D§);
            if(!_loc5_)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_)
                     {
                        addr53:
                        §§push(0);
                        if(!(_loc4_ || _loc2_))
                        {
                           addr95:
                        }
                     }
                     else
                     {
                        addr87:
                        §§push(1);
                        if(_loc4_ || _loc3_)
                        {
                           §§goto(addr95);
                        }
                     }
                  }
                  else
                  {
                     §§push(§=D§.§@R§);
                     if(!_loc5_)
                     {
                        addr76:
                        §§push(_loc3_);
                        if(!(_loc5_ && _loc3_))
                        {
                           addr84:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr87);
                              }
                           }
                           else
                           {
                              addr99:
                              if(§=D§.§?!_§ !== _loc3_)
                              {
                                 addr123:
                                 switch(§§pop())
                                 {
                                    case 0:
                                    case 1:
                                    case 2:
                                       §§push(true);
                                       if(_loc4_ || this)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc4_ || _loc3_)
                                          {
                                          }
                                          addr125:
                                          §§push(_loc2_);
                                          break;
                                       }
                                       break;
                                    default:
                                       §§goto(addr125);
                                 }
                                 return §§pop();
                                 §§push(3);
                              }
                           }
                           §§goto(addr123);
                           §§goto(addr123);
                        }
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr123);
               }
               §§goto(addr84);
            }
            §§goto(addr76);
         }
         §§goto(addr53);
      }
      
      private function §"#J§(param1:uint) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = param1;
         if(_loc5_ || _loc2_)
         {
            §§push(§=D§.F1);
            if(!_loc4_)
            {
               §§push(_loc3_);
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && param1))
                     {
                        §§push(0);
                        if(_loc4_ && _loc3_)
                        {
                           addr115:
                        }
                     }
                     else
                     {
                        addr401:
                        §§push(13);
                        if(!(_loc4_ && param1))
                        {
                           addr409:
                        }
                     }
                  }
                  else
                  {
                     §§push(§=D§.F2);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(_loc3_);
                        if(_loc5_ || _loc2_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(1);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr437);
                                 }
                                 else
                                 {
                                    §§goto(addr115);
                                 }
                              }
                              else
                              {
                                 addr338:
                                 §§push(11);
                                 if(_loc5_ || this)
                                 {
                                    addr346:
                                 }
                                 §§goto(addr437);
                              }
                              §§goto(addr437);
                           }
                           else
                           {
                              §§push(§=D§.F3);
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(2);
                                          if(_loc5_)
                                          {
                                             §§goto(addr115);
                                          }
                                          else
                                          {
                                             addr432:
                                             §§goto(addr437);
                                          }
                                       }
                                       else
                                       {
                                          addr131:
                                          §§push(3);
                                          if(!(_loc4_ && this))
                                          {
                                             §§goto(addr437);
                                          }
                                          else
                                          {
                                             §§goto(addr346);
                                          }
                                       }
                                       §§goto(addr437);
                                    }
                                    else
                                    {
                                       §§push(§=D§.F4);
                                       if(!(_loc4_ && this))
                                       {
                                          addr125:
                                          §§push(_loc3_);
                                          if(_loc5_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   §§goto(addr131);
                                                }
                                                else
                                                {
                                                   addr280:
                                                   §§push(9);
                                                   if(_loc5_ || this)
                                                   {
                                                      §§goto(addr437);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr409);
                                                   }
                                                }
                                                §§goto(addr437);
                                             }
                                             else
                                             {
                                                §§push(§=D§.F5);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   addr149:
                                                   §§push(_loc3_);
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            addr155:
                                                            §§push(4);
                                                            if(!(_loc5_ || _loc2_))
                                                            {
                                                               addr245:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr184:
                                                            §§push(5);
                                                            if(_loc4_ && _loc2_)
                                                            {
                                                               addr221:
                                                            }
                                                         }
                                                         §§goto(addr437);
                                                      }
                                                      else
                                                      {
                                                         §§push(§=D§.F6);
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     §§goto(addr184);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr338);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(§=D§.F7);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr197:
                                                                     §§push(_loc3_);
                                                                     if(_loc5_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(6);
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 §§goto(addr221);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr432);
                                                                              }
                                                                           }
                                                                           §§goto(addr437);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(§=D§.F8);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr226:
                                                                              §§push(_loc3_);
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(7);
                                                                                       if(!(_loc4_ && param1))
                                                                                       {
                                                                                          §§goto(addr245);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr346);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr401);
                                                                                    }
                                                                                    §§goto(addr437);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§=D§.F9);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr250:
                                                                                       §§push(_loc3_);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(8);
                                                                                                if(!(_loc5_ || param1))
                                                                                                {
                                                                                                   addr317:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr372:
                                                                                                §§push(12);
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr437);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(§=D§.F10);
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr277:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr280);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr309:
                                                                                                         §§push(10);
                                                                                                         if(_loc5_ || param1)
                                                                                                         {
                                                                                                            §§goto(addr317);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr346);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr437);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(§=D§.F11);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr293:
                                                                                                         §§push(_loc3_);
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            addr301:
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(_loc5_ || _loc3_)
                                                                                                               {
                                                                                                                  §§goto(addr309);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr414:
                                                                                                                  §§push(14);
                                                                                                                  if(_loc5_ || param1)
                                                                                                                  {
                                                                                                                     §§goto(addr432);
                                                                                                                  }
                                                                                                                  §§goto(addr437);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(§=D§.F12);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr322:
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr330:
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(_loc5_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§goto(addr338);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr401);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(§=D§.F13);
                                                                                                                        if(_loc5_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr356:
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(!(_loc4_ && param1))
                                                                                                                           {
                                                                                                                              addr364:
                                                                                                                              if(§§pop() === §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc5_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr372);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr414);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(§=D§.F14);
                                                                                                                                 if(!(_loc4_ && this))
                                                                                                                                 {
                                                                                                                                    addr390:
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       addr393:
                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr401);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr414);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(§=D§.F15);
                                                                                                                                       }
                                                                                                                                       §§goto(addr414);
                                                                                                                                    }
                                                                                                                                    addr413:
                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                    {
                                                                                                                                       §§goto(addr414);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr437:
                                                                                                                                       switch(§§pop())
                                                                                                                                       {
                                                                                                                                          case 0:
                                                                                                                                          case 1:
                                                                                                                                          case 2:
                                                                                                                                          case 3:
                                                                                                                                          case 4:
                                                                                                                                          case 5:
                                                                                                                                          case 6:
                                                                                                                                          case 7:
                                                                                                                                          case 8:
                                                                                                                                          case 9:
                                                                                                                                          case 10:
                                                                                                                                          case 11:
                                                                                                                                          case 12:
                                                                                                                                          case 13:
                                                                                                                                          case 14:
                                                                                                                                             §§push(true);
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                if(_loc4_ && this)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr439:
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          default:
                                                                                                                                             §§goto(addr439);
                                                                                                                                       }
                                                                                                                                       return §§pop();
                                                                                                                                       §§push(15);
                                                                                                                                    }
                                                                                                                                    §§goto(addr437);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr414);
                                                                                                                           }
                                                                                                                           §§goto(addr393);
                                                                                                                        }
                                                                                                                        §§goto(addr413);
                                                                                                                        §§push(_loc3_);
                                                                                                                     }
                                                                                                                     §§goto(addr437);
                                                                                                                  }
                                                                                                                  §§goto(addr413);
                                                                                                               }
                                                                                                               §§goto(addr390);
                                                                                                            }
                                                                                                            §§goto(addr414);
                                                                                                         }
                                                                                                         §§goto(addr393);
                                                                                                      }
                                                                                                      §§goto(addr322);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr390);
                                                                                             }
                                                                                             §§goto(addr356);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr364);
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                              }
                                                                              §§goto(addr301);
                                                                           }
                                                                           §§goto(addr250);
                                                                        }
                                                                     }
                                                                     §§goto(addr393);
                                                                  }
                                                                  §§goto(addr390);
                                                               }
                                                               §§goto(addr437);
                                                            }
                                                            §§goto(addr393);
                                                         }
                                                         §§goto(addr226);
                                                      }
                                                   }
                                                   §§goto(addr277);
                                                }
                                                §§goto(addr293);
                                             }
                                          }
                                          §§goto(addr390);
                                       }
                                       §§goto(addr197);
                                    }
                                 }
                                 §§goto(addr330);
                              }
                              §§goto(addr149);
                           }
                        }
                        §§goto(addr393);
                     }
                     §§goto(addr197);
                  }
                  §§goto(addr437);
               }
               §§goto(addr393);
            }
            §§goto(addr125);
         }
         §§goto(addr155);
      }
      
      private function §3"%§(param1:uint, param2:uint, param3:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            this.§-!R§.push(new §@#T§(param1,param2,param3));
         }
      }
      
      private function §27§(param1:uint, param2:uint) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:int = this.§-!R§.length;
         while(true)
         {
            if(_loc3_ >= _loc4_)
            {
               if(_loc6_ || _loc3_)
               {
                  if(!_loc6_)
                  {
                     continue;
                  }
                  if(!(_loc6_ || this))
                  {
                     break;
                  }
                  this.§-!R§.splice(_loc3_,1);
               }
               return;
            }
            if(this.§'#O§(param1,param2,this.§-!R§[_loc3_]))
            {
               break;
            }
            _loc3_++;
         }
         §§goto(addr59);
      }
      
      private function §'#O§(param1:uint, param2:uint, param3:§@#T§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §§push(param3.keystroke);
            if(!_loc4_)
            {
               §§push(param1);
               if(_loc5_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           addr62:
                           return param3.§=!u§ == param2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      private function §]y§(param1:KeyboardEvent) : uint
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§=D§.NONE);
         if(!(_loc4_ && _loc2_))
         {
            §§push(uint(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(param1.altKey)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push(§=D§.§5#Y§);
                     loop0:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        addr150:
                        while(true)
                        {
                           §§push(uint(§§pop()));
                        }
                        loop8:
                        while(true)
                        {
                           §§push(§=D§.§2!O§);
                           if(!(_loc3_ || this))
                           {
                              continue loop0;
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc3_)
                           {
                              §§push(uint(§§pop()));
                              loop9:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr123:
                                 while(true)
                                 {
                                    addr37:
                                    while(true)
                                    {
                                       if(param1.shiftKey)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             §§push(_loc2_);
                                             if(_loc3_ || param1)
                                             {
                                                if(_loc4_ && this)
                                                {
                                                   continue loop9;
                                                }
                                                if(!(_loc3_ || this))
                                                {
                                                   continue loop8;
                                                }
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                §§push(uint(§§pop() + Keyboard.SHIFT));
                                             }
                                             addr93:
                                             _loc2_ = §§pop();
                                          }
                                       }
                                       §§push(_loc2_);
                                       if(_loc4_)
                                       {
                                          §§goto(addr93);
                                       }
                                       return §§pop();
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr150);
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr152:
                              while(true)
                              {
                                 addr95:
                                 while(true)
                                 {
                                    if(param1.ctrlKey)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             continue loop8;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr123);
                                       }
                                    }
                                    §§goto(addr37);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr151);
               }
               §§goto(addr152);
            }
            §§goto(addr95);
         }
         §§goto(addr108);
      }
   }
}
