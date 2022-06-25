package §1!B§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §0!X§ extends Sprite
   {
      
      private static const §]b§:int = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §0!X§))
         {
            §]b§ = 1000;
         }
      }
      
      private var §@W§:TextField;
      
      private var §!!1§:Boolean;
      
      private var §8!P§:int = 0;
      
      private var §[!q§:Number = 0;
      
      private var §8!-§:Array;
      
      public function §0!X§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§!!1§ = param1;
               loop1:
               for(; _loc4_; while(!(_loc3_ && param2))
               {
                  this.§@W§.width = 150;
                  §§goto(addr118);
                  §§goto(addr93);
               })
               {
                  if(!param1)
                  {
                     loop15:
                     while(true)
                     {
                        this.§8!-§ = new Array();
                        loop16:
                        for(; !_loc3_; this.mouseEnabled = false,if(_loc4_ || param2)
                        {
                           return;
                        })
                        {
                           addr43:
                           if(!(_loc3_ && param1))
                           {
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              loop9:
                              while(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    addChild(this.§@W§);
                                    loop10:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          addr93:
                                          if(!(_loc4_ || param2))
                                          {
                                             break;
                                          }
                                          if(!_loc3_)
                                          {
                                             if(param2)
                                             {
                                                while(true)
                                                {
                                                   param2.addChild(this);
                                                   addr73:
                                                   while(_loc4_)
                                                   {
                                                   }
                                                   addr137:
                                                   while(true)
                                                   {
                                                      this.§@W§.height = 40;
                                                      break loop10;
                                                   }
                                                   §§goto(addr43);
                                                }
                                                addr70:
                                             }
                                             while(true)
                                             {
                                                this.x = 250;
                                                break loop16;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§@W§ = new TextField();
                                                addr174:
                                                while(true)
                                                {
                                                   this.§@W§.text = "...";
                                                }
                                             }
                                             addr170:
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§@W§.mouseEnabled = false;
                                             continue loop9;
                                          }
                                          addr118:
                                       }
                                       addr59:
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          continue loop15;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    this.§@W§.textColor = 16711680;
                                    break loop9;
                                 }
                              }
                              while(!(_loc3_ && this))
                              {
                                 this.§@W§.selectable = false;
                                 §§goto(addr137);
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr70);
                        }
                        while(!_loc3_)
                        {
                           §§goto(addr59);
                        }
                        §§goto(addr73);
                     }
                  }
                  §§goto(addr170);
               }
            }
         }
         §§goto(addr66);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§8!P§);
            if(_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               _loc2_.§8!P§ = _loc3_;
            }
            if(_loc5_)
            {
               §§push(this);
               §§push(this.§[!q§);
               if(_loc5_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§[!q§ = §§pop();
            }
            while(this.§[!q§ >= §]b§)
            {
               if(!_loc4_)
               {
                  this.reset();
               }
               if(_loc5_)
               {
                  addr72:
                  break;
               }
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = Number(0);
         if(_loc6_ || _loc3_)
         {
            §§push(this.§[!q§);
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
                                 §§push(this.§8!P§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() == 0);
                                    if(!_loc5_)
                                    {
                                       if(_loc6_)
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             while(!§§pop())
                                             {
                                                §§push(param1);
                                             }
                                             break loop5;
                                             addr95:
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          break loop6;
                                       }
                                       §§push(0);
                                       if(!_loc6_)
                                       {
                                          break loop4;
                                       }
                                       if(_loc6_ || param1)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc5_ && param1))
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break loop6;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         break loop5;
                                                      }
                                                      if(!(_loc6_ || _loc3_))
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(false)
                                                      {
                                                         continue loop5;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr118:
                                                   }
                                                   §§goto(addr127);
                                                }
                                                addr104:
                                                §§push(this.§8!P§);
                                                if(_loc5_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§push(Number(§§pop()));
                                          }
                                          continue loop0;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 break loop4;
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr104);
                        }
                     }
                     §§goto(addr95);
                  }
               }
            }
         }
         addr97:
         addr127:
         §§push("fps = ");
         if(!(_loc5_ && param1))
         {
            §§push(§§pop() + Math.round(_loc2_));
         }
         var _loc3_:String = §§pop();
         var _loc4_:int = 0;
         loop9:
         while(true)
         {
            if(_loc4_ >= this.§8!-§.length)
            {
               while(true)
               {
                  this.§@W§.text = _loc3_;
                  loop11:
                  while(_loc6_ || this)
                  {
                     this.§@W§.mouseEnabled = false;
                     loop12:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           this.§8!P§ = 0;
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 if(!(_loc6_ || param1))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop12;
                           }
                           _loc4_++;
                           continue loop9;
                        }
                        continue loop11;
                     }
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           §§push(" ");
                           if(_loc6_ || param1)
                           {
                              §§push(§§pop() + this.§8!-§[_loc4_][0]);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() + " = ");
                                 if(_loc5_ && _loc3_)
                                 {
                                 }
                                 addr322:
                                 §§goto(addr324);
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + Math.round(this.§8!-§[_loc4_][2] / this.§8!-§[_loc4_][1]));
                           }
                           §§goto(addr322);
                        }
                        §§goto(addr324);
                     }
                  }
                  while(true)
                  {
                     §§push(this.§8!-§);
                     if(!(_loc5_ && this))
                     {
                        if(_loc6_)
                        {
                           §§push(_loc4_);
                           if(_loc5_)
                           {
                              continue;
                           }
                           if(!(_loc6_ || this))
                           {
                              §§goto(addr262);
                           }
                           §§goto(addr243);
                        }
                        else
                        {
                           while(true)
                           {
                           }
                           addr261:
                        }
                        §§goto(addr262);
                     }
                     §§goto(addr251);
                  }
               }
            }
            else
            {
               §§push(this.§8!-§);
            }
            §§goto(addr261);
         }
      }
      
      public function §96§(param1:String, param2:Number) : void
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
            while(!_loc5_)
            {
               if(§§pop() >= this.§8!-§.length)
               {
                  loop2:
                  for(; _loc6_ || this; while(_loc6_ || param2)
                  {
                     §§goto(addr175);
                     §§push(this.§8!-§);
                  })
                  {
                     §§push(_loc3_);
                     loop3:
                     while(true)
                     {
                        if(§§pop() != -1)
                        {
                           loop18:
                           while(true)
                           {
                              §§push(this.§8!-§);
                              loop19:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(_loc3_);
                                       loop20:
                                       while(true)
                                       {
                                          if(!(_loc6_ || param1))
                                          {
                                             break loop19;
                                          }
                                          §§pop()[§§pop()][1] = this.§8!-§[_loc3_][1] + 1;
                                          loop21:
                                          for(; !(_loc5_ && this); §§pop()[§§pop()][2] = this.§8!-§[_loc3_][2] + param2,if(_loc5_ && _loc3_)
                                          {
                                             continue;
                                          },if(_loc6_)
                                          {
                                             if(!(_loc6_ || param1))
                                             {
                                                continue loop2;
                                             }
                                             if(_loc6_ || this)
                                             {
                                                break loop18;
                                             }
                                             §§goto(addr257);
                                          }
                                          else
                                          {
                                             §§goto(addr180);
                                          })
                                          {
                                             addr137:
                                             if(!(_loc5_ && param2))
                                             {
                                                continue loop19;
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this.§8!-§);
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   addr31:
                                                   if(_loc5_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   addr38:
                                                   if(_loc6_ || param2)
                                                   {
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc5_)
                                                         {
                                                            continue loop20;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop21;
                                                            }
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§pop()[§§pop()][1] = 0;
                                                               addr180:
                                                               while(true)
                                                               {
                                                                  §§push(this.§8!-§);
                                                                  addr148:
                                                                  addr175:
                                                                  while(!(_loc5_ && param2))
                                                                  {
                                                                     §§push(_loc3_);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop13;
                                                                     §§goto(addr148);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(!(_loc5_ && param1))
                                                         {
                                                            §§pop()[§§pop()][2] = 0;
                                                            break loop21;
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop()[§§pop()][0] = param1;
                                                            continue loop2;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop()[this.§8!-§.length] = new Array();
                                                         addr257:
                                                         addr276:
                                                         while(_loc6_)
                                                         {
                                                            §§push(this.§8!-§);
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop().length - 1));
                                                               if(_loc6_)
                                                               {
                                                                  if(!(_loc6_ || param2))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!(_loc6_ || param2))
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     break loop1;
                                                                  }
                                                                  addr274:
                                                                  _loc3_ = §§pop();
                                                                  continue loop8;
                                                               }
                                                               continue loop3;
                                                               §§goto(addr38);
                                                            }
                                                            continue loop1;
                                                         }
                                                         break loop20;
                                                      }
                                                      addr251:
                                                   }
                                                   §§goto(addr200);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                continue loop18;
                                             }
                                             addr249:
                                             while(true)
                                             {
                                                §§goto(addr251);
                                             }
                                             §§goto(addr120);
                                          }
                                          addr120:
                                          §§goto(addr274);
                                          §§push(_loc4_);
                                       }
                                       addr260:
                                       _loc4_++;
                                       break loop2;
                                    }
                                    addr267:
                                    §§push(_loc4_);
                                    break;
                                 }
                                 §§goto(addr148);
                                 §§goto(addr185);
                              }
                              if(§§pop()[§§pop()][0] == param1)
                              {
                                 §§goto(addr273);
                              }
                              §§goto(addr260);
                           }
                           return;
                        }
                        §§goto(addr249);
                     }
                  }
                  continue loop0;
               }
               §§push(this.§8!-§);
               §§goto(addr267);
            }
            _loc3_ = §§pop();
            §§goto(addr276);
         }
      }
   }
}
