package §@,§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §+D§ extends Sprite
   {
      
      private static const §6g§:int = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §6g§ = 1000;
         }
      }
      
      private var §1!L§:TextField;
      
      private var §5!1§:Boolean;
      
      private var §>U§:int = 0;
      
      private var §"3§:Number = 0;
      
      private var §>n§:Array;
      
      public function §+D§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§5!1§ = param1;
               loop1:
               while(true)
               {
                  if(param1)
                  {
                     loop2:
                     while(true)
                     {
                        this.§1!L§ = new TextField();
                        while(true)
                        {
                           this.§1!L§.text = "...";
                           loop4:
                           while(_loc4_ || param1)
                           {
                              this.§1!L§.textColor = 16711680;
                              loop5:
                              while(_loc4_)
                              {
                                 this.§1!L§.selectable = false;
                                 loop6:
                                 while(!_loc3_)
                                 {
                                    this.§1!L§.height = 40;
                                    loop7:
                                    while(true)
                                    {
                                       this.§1!L§.width = 150;
                                       loop8:
                                       while(_loc4_)
                                       {
                                          this.§1!L§.mouseEnabled = false;
                                          loop9:
                                          while(true)
                                          {
                                             addChild(this.§1!L§);
                                             loop10:
                                             for(; !_loc3_; if(_loc4_ || param1)
                                             {
                                                continue loop9;
                                             })
                                             {
                                                if(param2)
                                                {
                                                   continue loop7;
                                                }
                                                loop13:
                                                while(true)
                                                {
                                                   this.x = 250;
                                                   addr69:
                                                   addr116:
                                                   while(_loc4_ || _loc3_)
                                                   {
                                                      continue loop10;
                                                      while(_loc4_ || _loc3_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(_loc3_ && param1)
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§goto(addr64);
                                                            continue loop5;
                                                         }
                                                         continue loop7;
                                                         this.mouseEnabled = false;
                                                         if(!(_loc3_ && param2))
                                                         {
                                                            return;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop13;
                                                      §§goto(addr69);
                                                   }
                                                }
                                             }
                                             continue loop6;
                                             if(_loc3_ && param1)
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop8;
                                             }
                                             while(true)
                                             {
                                                addr41:
                                                while(true)
                                                {
                                                   this.§>n§ = new Array();
                                                   §§goto(addr46);
                                                }
                                             }
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr41);
               }
            }
         }
         §§goto(addr102);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§>U§);
            if(_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               _loc2_.§>U§ = _loc3_;
            }
            if(_loc5_)
            {
               §§push(this);
               §§push(this.§"3§);
               if(_loc5_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§"3§ = §§pop();
               while(this.§"3§ >= §6g§)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  addr67:
                  if(!(_loc5_ || _loc3_))
                  {
                     continue;
                  }
                  this.reset();
                  §§goto(addr67);
               }
               return;
               addr46:
            }
            §§goto(addr67);
         }
         §§goto(addr46);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(!_loc6_)
         {
            §§push(this.§"3§);
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
                                 §§push(this.§>U§);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() == 0);
                                    if(!(_loc6_ && param1))
                                    {
                                       if(_loc6_ && _loc2_)
                                       {
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                §§goto(addr131);
                                             }
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             while(true)
                                             {
                                                if(!(_loc5_ || param1))
                                                {
                                                   continue loop2;
                                                }
                                                if(!§§pop())
                                                {
                                                   §§push(0);
                                                   if(_loc5_ || this)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc5_ || param1)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc6_ && this)
                                                            {
                                                               addr95:
                                                               break loop5;
                                                            }
                                                            if(!(_loc5_ || _loc3_))
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(false)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§goto(addr131);
                                                         }
                                                         addr122:
                                                         addr131:
                                                         var _loc3_:String = "fps = " + Math.round(_loc2_);
                                                         var _loc4_:int = 0;
                                                         loop8:
                                                         while(true)
                                                         {
                                                            if(_loc4_ >= this.§>n§.length)
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  this.§1!L§.text = _loc3_;
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     this.§1!L§.mouseEnabled = false;
                                                                     while(!(_loc6_ && _loc2_))
                                                                     {
                                                                        this.§>U§ = 0;
                                                                        do
                                                                        {
                                                                           this.§"3§ = 0;
                                                                        }
                                                                        while(_loc6_);
                                                                        
                                                                        if(_loc5_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              break loop10;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           break loop8;
                                                                        }
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§>n§);
                                                                              addr244:
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_ && _loc3_)
                                                                                       {
                                                                                          break loop15;
                                                                                       }
                                                                                       §§pop()[§§pop()][1] = 0;
                                                                                    }
                                                                                    continue loop13;
                                                                                    addr252:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr268:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    break loop15;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop()[§§pop()][1] != 0)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§>n§);
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§pop()[§§pop()][2] = 0;
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 _loc4_++;
                                                                                 addr213:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr274);
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                           §§goto(addr252);
                                                                        }
                                                                        §§goto(addr244);
                                                                     }
                                                                  }
                                                                  §§goto(addr213);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(this.§>n§);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         return;
                                                         addr122:
                                                      }
                                                      addr121:
                                                      _loc2_ = §§pop();
                                                      §§goto(addr122);
                                                   }
                                                   break loop5;
                                                }
                                             }
                                             addr87:
                                          }
                                          §§goto(addr95);
                                       }
                                    }
                                    §§goto(addr87);
                                 }
                                 break;
                              }
                              §§push(§§pop() / this.§"3§);
                              if(_loc5_)
                              {
                                 §§push(this.§>U§);
                                 if(!(_loc5_ || param1))
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr118:
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr118);
                           }
                        }
                     }
                     §§goto(addr81);
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      public function §+<§(param1:String, param2:Number) : void
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
               if(§§pop() >= this.§>n§.length)
               {
                  loop2:
                  while(true)
                  {
                     §§push(_loc3_);
                     loop3:
                     while(true)
                     {
                        if(§§pop() == -1)
                        {
                           loop4:
                           while(_loc6_ || _loc3_)
                           {
                              §§push(this.§>n§);
                              loop5:
                              while(true)
                              {
                                 §§pop()[this.§>n§.length] = new Array();
                                 loop6:
                                 while(!(_loc5_ && param2))
                                 {
                                    §§push(this.§>n§);
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop5;
                                       }
                                       §§push(int(§§pop().length - 1));
                                       if(!(_loc6_ || _loc3_))
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       if(!_loc5_)
                                       {
                                          _loc3_ = §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§>n§);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                loop10:
                                                while(true)
                                                {
                                                   §§pop()[§§pop()][0] = param1;
                                                   loop11:
                                                   while(!_loc5_)
                                                   {
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§push(this.§>n§);
                                                         while(!_loc5_)
                                                         {
                                                            §§push(_loc3_);
                                                            loop13:
                                                            while(_loc6_ || this)
                                                            {
                                                               §§pop()[§§pop()][1] = 0;
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(this.§>n§);
                                                                  loop15:
                                                                  while(_loc6_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§pop()[§§pop()][2] = 0;
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§>n§);
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ || param2))
                                                                                    {
                                                                                       addr235:
                                                                                       §§push(_loc4_);
                                                                                       break loop13;
                                                                                    }
                                                                                    §§push(_loc3_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop()[§§pop()][1] = this.§>n§[_loc3_][1] + 1;
                                                                                       addr100:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§push(_loc3_);
                                                                                       addr35:
                                                                                       continue loop15;
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr68:
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                            }
                                                            if(§§pop()[§§pop()][0] == param1)
                                                            {
                                                               break loop4;
                                                            }
                                                            _loc4_++;
                                                            break loop6;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                       _loc3_ = §§pop();
                                       §§goto(addr226);
                                    }
                                    continue loop1;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr261);
                              }
                           }
                           §§push(_loc4_);
                           if(!(_loc5_ && param1))
                           {
                              §§push(int(§§pop()));
                           }
                           §§goto(addr260);
                        }
                        §§goto(addr78);
                     }
                  }
               }
               else
               {
                  §§push(this.§>n§);
               }
               §§goto(addr235);
            }
         }
      }
   }
}
