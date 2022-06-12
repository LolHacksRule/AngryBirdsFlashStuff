package §6o§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §""5§ extends Sprite
   {
      
      private static const §0X§:int = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §0X§ = 1000;
         }
      }
      
      private var §8!]§:TextField;
      
      private var §<!k§:Boolean;
      
      private var §!"%§:int = 0;
      
      private var §#!O§:Number = 0;
      
      private var §7!W§:Array;
      
      public function §""5§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§<!k§ = param1;
            loop1:
            while(!_loc4_)
            {
               if(param1)
               {
                  loop2:
                  while(true)
                  {
                     this.§8!]§ = new TextField();
                     loop3:
                     while(true)
                     {
                        this.§8!]§.text = "...";
                        loop4:
                        while(true)
                        {
                           this.§8!]§.textColor = 16711680;
                           loop5:
                           while(true)
                           {
                              this.§8!]§.selectable = false;
                              loop6:
                              for(; !_loc4_; if(_loc4_ && _loc3_)
                              {
                                 continue;
                              },§§goto(addr48))
                              {
                                 this.§8!]§.height = 40;
                                 loop7:
                                 while(true)
                                 {
                                    this.§8!]§.width = 150;
                                    while(true)
                                    {
                                       this.§8!]§.mouseEnabled = false;
                                       loop9:
                                       while(_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             addChild(this.§8!]§);
                                             loop10:
                                             for(; _loc3_ || this; while(_loc3_ || param2)
                                             {
                                                continue loop7;
                                                §§goto(addr66);
                                             })
                                             {
                                                if(!param2)
                                                {
                                                   while(true)
                                                   {
                                                      this.x = 250;
                                                      addr66:
                                                      loop14:
                                                      while(_loc3_ || this)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§7!W§ = new Array();
                                                            while(_loc3_ || this)
                                                            {
                                                               this.mouseEnabled = false;
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  addr34:
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  addr77:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     continue loop9;
                                                                     §§goto(addr34);
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            continue loop14;
                                                         }
                                                         return;
                                                      }
                                                      continue loop10;
                                                   }
                                                   addr62:
                                                }
                                                §§goto(addr77);
                                             }
                                             continue loop3;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr62);
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               §§goto(addr49);
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§!"%§);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || param1)
            {
               _loc2_.§!"%§ = _loc3_;
            }
            if(!_loc5_)
            {
               §§push(this);
               §§push(this.§#!O§);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§#!O§ = §§pop();
               loop2:
               while(true)
               {
                  if(this.§#!O§ >= §0X§)
                  {
                     addr60:
                     if(!(_loc5_ && _loc2_))
                     {
                        while(true)
                        {
                           this.reset();
                           §§goto(addr60);
                        }
                        addr77:
                     }
                     while(!(_loc4_ || _loc3_))
                     {
                        continue loop2;
                     }
                  }
                  return;
               }
               addr50:
            }
            §§goto(addr77);
         }
         §§goto(addr50);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(!_loc6_)
         {
            §§push(this.§#!O§);
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
                                 §§push(this.§!"%§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() == 0);
                                    if(!_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop3;
                                       }
                                       if(_loc6_ && param1)
                                       {
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      break loop6;
                                                   }
                                                   continue loop4;
                                                }
                                                addr73:
                                             }
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr73);
                                                   }
                                                   addr102:
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(!_loc5_)
                                                   {
                                                      break loop6;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   if(_loc5_ || param1)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(_loc5_ || param1)
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop5;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr102);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr101:
                                                      _loc2_ = §§pop();
                                                      §§goto(addr102);
                                                   }
                                                   §§goto(addr102);
                                                }
                                                §§goto(addr102);
                                             }
                                             addr70:
                                          }
                                          §§push("fps = ");
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() + Math.round(_loc2_));
                                          }
                                          var _loc3_:String = §§pop();
                                          var _loc4_:int = 0;
                                          loop10:
                                          while(true)
                                          {
                                             if(_loc4_ >= this.§7!W§.length)
                                             {
                                                loop11:
                                                while(_loc5_)
                                                {
                                                   this.§8!]§.text = _loc3_;
                                                   loop12:
                                                   while(true)
                                                   {
                                                      this.§8!]§.mouseEnabled = false;
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         this.§!"%§ = 0;
                                                         for(; _loc5_; this.§#!O§ = 0,if(_loc5_)
                                                         {
                                                            continue loop13;
                                                         })
                                                         {
                                                            if(_loc5_ || _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            addr230:
                                                            §§push(this.§7!W§);
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     addr236:
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§pop()[§§pop()][2] = 0;
                                                                        _loc4_++;
                                                                        break;
                                                                        addr221:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop()[§§pop()][1] != 0)
                                                                        {
                                                                           addr241:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(" ");
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(§§pop() + this.§7!W§[_loc4_][0]);
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() + " = ");
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                       }
                                                                                       addr298:
                                                                                       _loc3_ = §§pop() + §§pop();
                                                                                       addr296:
                                                                                       break loop11;
                                                                                    }
                                                                                    §§push(§§pop() + Math.round(this.§7!W§[_loc4_][2] / this.§7!W§[_loc4_][1]));
                                                                                 }
                                                                                 §§goto(addr296);
                                                                              }
                                                                              §§goto(addr298);
                                                                           }
                                                                           addr241:
                                                                        }
                                                                        addr222:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§7!W§);
                                                                           addr225:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                           }
                                                                        }
                                                                        §§goto(addr241);
                                                                     }
                                                                     addr236:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop()[§§pop()][1] = 0;
                                                                     §§goto(addr230);
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr236);
                                                               }
                                                               addr235:
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         §§goto(addr241);
                                                         if(_loc6_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc5_ || param1)
                                                         {
                                                            return;
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr222);
                                                   §§goto(addr298);
                                                }
                                             }
                                             else
                                             {
                                                §§push(this.§7!W§);
                                             }
                                             §§goto(addr235);
                                          }
                                       }
                                    }
                                    §§goto(addr70);
                                 }
                                 §§push(§§pop() / this.§#!O§);
                                 if(_loc5_)
                                 {
                                    §§push(this.§!"%§);
                                    if(_loc6_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc5_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr101);
                              }
                           }
                        }
                     }
                     §§goto(addr64);
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function §'!9§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               if(§§pop() >= this.§7!W§.length)
               {
                  loop2:
                  while(_loc5_ || _loc3_)
                  {
                     §§push(_loc3_);
                     loop3:
                     for(; !(_loc6_ && this); while(true)
                     {
                        §§push(int(§§pop().length - 1));
                        if(_loc6_ && this)
                        {
                           continue loop3;
                        }
                        if(_loc6_)
                        {
                           break;
                        }
                        if(_loc5_ || this)
                        {
                           _loc3_ = §§pop();
                           §§goto(addr209);
                        }
                        §§goto(addr243);
                        §§goto(addr107);
                     },continue loop1)
                     {
                        if(§§pop() != -1)
                        {
                           loop18:
                           while(true)
                           {
                              §§push(this.§7!W§);
                              loop19:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop20:
                                 while(_loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§pop()[§§pop()][1] = this.§7!W§[_loc3_][1] + 1;
                                          while(_loc5_ || param2)
                                          {
                                             continue loop19;
                                             §§pop()[§§pop()][2] = this.§7!W§[_loc3_][2] + param2;
                                             if(!(_loc6_ && this))
                                             {
                                                return;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!(_loc6_ && param2))
                                             {
                                                if(_loc6_)
                                                {
                                                   while(_loc5_)
                                                   {
                                                      §§push(this.§7!W§);
                                                      while(true)
                                                      {
                                                         §§pop()[this.§7!W§.length] = new Array();
                                                         addr114:
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            §§push(_loc3_);
                                                            break loop20;
                                                         }
                                                      }
                                                   }
                                                   addr267:
                                                   §§push(int(_loc4_));
                                                }
                                                else
                                                {
                                                   addr243:
                                                }
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                continue loop18;
                                                break loop3;
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                         addr107:
                                                      }
                                                      §§push(this.§7!W§);
                                                      loop15:
                                                      while(!(_loc6_ && _loc3_))
                                                      {
                                                         §§goto(addr114);
                                                         if(!(_loc5_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc6_ && this)
                                                               {
                                                                  continue loop20;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr56);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!(_loc5_ || param1))
                                                                  {
                                                                     addr261:
                                                                     §§push(_loc4_);
                                                                     break;
                                                                  }
                                                                  §§push(_loc3_);
                                                                  while(true)
                                                                  {
                                                                     §§pop()[§§pop()][0] = param1;
                                                                     addr178:
                                                                     addr253:
                                                                     while(_loc5_ || param1)
                                                                     {
                                                                        §§push(this.§7!W§);
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           addr152:
                                                                           while(true)
                                                                           {
                                                                              §§pop()[§§pop()][1] = 0;
                                                                              continue loop14;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr253:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§7!W§);
                                                                        break loop15;
                                                                     }
                                                                  }
                                                               }
                                                               addr166:
                                                            }
                                                            if(§§pop()[§§pop()][0] == param1)
                                                            {
                                                               §§goto(addr267);
                                                            }
                                                            addr254:
                                                            _loc4_++;
                                                            break loop14;
                                                         }
                                                         §§goto(addr151);
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr209:
                                                   while(true)
                                                   {
                                                      §§goto(addr166);
                                                   }
                                                   §§goto(addr253);
                                                }
                                                §§goto(addr178);
                                             }
                                             continue loop0;
                                             §§goto(addr253);
                                          }
                                          continue loop2;
                                          addr136:
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr152);
                                 }
                                 while(true)
                                 {
                                    §§pop()[§§pop()][2] = 0;
                                    §§goto(addr136);
                                 }
                              }
                           }
                        }
                        §§goto(addr243);
                     }
                     _loc3_ = §§pop();
                     break;
                  }
                  §§goto(addr254);
               }
               else
               {
                  §§push(this.§7!W§);
               }
               §§goto(addr261);
            }
         }
      }
   }
}
