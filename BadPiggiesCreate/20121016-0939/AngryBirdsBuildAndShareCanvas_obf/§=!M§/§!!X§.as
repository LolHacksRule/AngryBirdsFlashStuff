package §=!M§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §!!X§ extends Sprite
   {
      
      private static const §@!,§:int = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §@!,§ = 1000;
         }
      }
      
      private var §5S§:TextField;
      
      private var §6a§:Boolean;
      
      private var §4!S§:int = 0;
      
      private var §@!f§:Number = 0;
      
      private var §7j§:Array;
      
      public function §!!X§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§6a§ = param1;
               while(true)
               {
                  if(!param1)
                  {
                     loop5:
                     while(true)
                     {
                        this.§7j§ = new Array();
                        loop6:
                        while(!(_loc4_ && _loc3_))
                        {
                           if(_loc3_ || this)
                           {
                              if(_loc3_)
                              {
                                 this.mouseEnabled = false;
                                 if(!_loc4_)
                                 {
                                    return;
                                 }
                                 continue;
                              }
                              loop14:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    this.§5S§.mouseEnabled = false;
                                    loop11:
                                    while(true)
                                    {
                                       if(!(_loc4_ && param2))
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             addChild(this.§5S§);
                                             while(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   this.§5S§ = new TextField();
                                                   continue loop0;
                                                }
                                             }
                                             addr106:
                                             addr108:
                                             if(param2)
                                             {
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr106);
                                                   §§goto(addr108);
                                                }
                                                addr80:
                                                param2.addChild(this);
                                                while(true)
                                                {
                                                   if(!(_loc3_ || param2))
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§goto(addr80);
                                                }
                                                addr83:
                                                addr76:
                                             }
                                             while(true)
                                             {
                                                this.x = 250;
                                                break loop6;
                                                §§goto(addr106);
                                             }
                                             continue loop5;
                                          }
                                          loop12:
                                          while(true)
                                          {
                                             this.§5S§.height = 40;
                                             addr154:
                                             while(true)
                                             {
                                                this.§5S§.selectable = false;
                                                continue loop12;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§5S§.width = 150;
                                          continue loop14;
                                       }
                                    }
                                    addr136:
                                 }
                                 §§goto(addr154);
                              }
                           }
                           §§goto(addr83);
                        }
                        while(true)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              if(_loc3_)
                              {
                                 continue loop5;
                              }
                              addr160:
                              while(true)
                              {
                                 this.§5S§.textColor = 16711680;
                                 §§goto(addr154);
                              }
                           }
                           §§goto(addr76);
                        }
                     }
                     continue;
                     addr30:
                  }
                  §§goto(addr164);
               }
            }
         }
         §§goto(addr154);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§4!S§);
            if(_loc4_ || param1)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               _loc2_.§4!S§ = _loc3_;
            }
            if(!(_loc5_ && this))
            {
               §§push(this);
               §§push(this.§@!f§);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§@!f§ = §§pop();
               loop2:
               while(true)
               {
                  if(this.§@!f§ >= §@!,§)
                  {
                     addr70:
                     if(_loc4_ || _loc3_)
                     {
                        while(true)
                        {
                           this.reset();
                           §§goto(addr70);
                        }
                        addr77:
                     }
                     while(_loc5_)
                     {
                        continue loop2;
                     }
                  }
                  return;
               }
               addr60:
            }
            §§goto(addr77);
         }
         §§goto(addr60);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(_loc5_)
         {
            §§push(this.§@!f§);
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
                                 §§push(this.§4!S§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() == 0);
                                    if(_loc5_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                addr106:
                                                var _loc3_:String = "fps = " + Math.round(_loc2_);
                                                var _loc4_:int = 0;
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc4_ >= this.§7j§.length)
                                                   {
                                                      loop9:
                                                      while(!(_loc6_ && _loc2_))
                                                      {
                                                         this.§5S§.text = _loc3_;
                                                         loop10:
                                                         while(true)
                                                         {
                                                            this.§5S§.mouseEnabled = false;
                                                            loop11:
                                                            while(!_loc6_)
                                                            {
                                                               this.§4!S§ = 0;
                                                               while(true)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           if(_loc6_ && this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               if(_loc5_ || param1)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr310);
                                                            }
                                                            §§push(this.§7j§);
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§goto(addr218);
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         _loc4_++;
                                                         §§goto(addr200);
                                                         §§goto(addr226);
                                                      }
                                                      continue;
                                                   }
                                                   §§push(this.§7j§);
                                                   §§goto(addr253);
                                                }
                                                addr70:
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
                                                      if(_loc5_)
                                                      {
                                                         if(_loc6_ && _loc3_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               §§goto(addr106);
                                                               addr95:
                                                            }
                                                            addr79:
                                                            if(!_loc6_)
                                                            {
                                                               §§push(this.§4!S§);
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  break loop1;
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop0;
                                                         }
                                                         _loc2_ = §§pop();
                                                         §§goto(addr95);
                                                      }
                                                      addr76:
                                                      §§goto(addr79);
                                                      §§push(§§pop() / this.§@!f§);
                                                   }
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             addr72:
                                          }
                                          §§goto(addr76);
                                       }
                                       addr61:
                                    }
                                    §§goto(addr72);
                                 }
                              }
                           }
                        }
                        addr104:
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr104);
               }
               §§push(§§pop() * §§pop());
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
               }
               §§goto(addr94);
            }
         }
         §§goto(addr70);
      }
      
      public function §=!f§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_ || param2)
            {
               if(§§pop() >= this.§7j§.length)
               {
                  loop1:
                  while(true)
                  {
                     §§push(_loc3_);
                     addr216:
                     loop2:
                     while(true)
                     {
                        if(§§pop() != -1)
                        {
                           loop17:
                           while(true)
                           {
                              §§push(this.§7j§);
                              loop18:
                              for(; _loc5_; §§push(this.§7j§),if(!_loc5_)
                              {
                                 continue;
                              },if(_loc5_)
                              {
                                 if(!(_loc6_ && param2))
                                 {
                                    §§goto(addr39);
                                 }
                                 addr234:
                                 §§goto(addr235);
                                 §§push(_loc4_);
                              },§§goto(addr113))
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(_loc3_);
                                    loop19:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          addr73:
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§pop()[§§pop()][1] = this.§7j§[_loc3_][1] + 1;
                                             while(_loc5_)
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   if(!(_loc5_ || this))
                                                   {
                                                      break loop17;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      continue loop18;
                                                   }
                                                   addr240:
                                                   §§push(_loc4_);
                                                   if(_loc5_ || this)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§7j§);
                                                      addr220:
                                                      while(true)
                                                      {
                                                         §§pop()[this.§7j§.length] = new Array();
                                                         addr226:
                                                         while(true)
                                                         {
                                                            §§push(this.§7j§);
                                                            addr176:
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop().length - 1));
                                                               if(!(_loc5_ || param2))
                                                               {
                                                                  break;
                                                               }
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  continue loop1;
                                                               }
                                                            }
                                                            continue loop2;
                                                         }
                                                      }
                                                   }
                                                   addr218:
                                                }
                                                _loc3_ = §§pop();
                                                _loc4_++;
                                                break loop17;
                                             }
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop17;
                                                }
                                                addr152:
                                                while(!(_loc6_ && this))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(this.§7j§);
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         break loop19;
                                                      }
                                                      addr113:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr260);
                                                   }
                                                }
                                                §§goto(addr226);
                                             }
                                             while(_loc5_)
                                             {
                                                §§push(this.§7j§);
                                                break loop18;
                                             }
                                             continue loop1;
                                             addr91:
                                             addr170:
                                             addr118:
                                          }
                                          while(_loc5_ || param1)
                                          {
                                             §§pop()[§§pop()][1] = 0;
                                             §§goto(addr152);
                                             §§goto(addr73);
                                          }
                                          addr235:
                                          if(§§pop()[§§pop()][0] == param1)
                                          {
                                             §§goto(addr240);
                                          }
                                          §§goto(addr227);
                                          addr141:
                                       }
                                       §§push(_loc3_);
                                       addr39:
                                       break;
                                       if(!(_loc5_ || this))
                                       {
                                          continue;
                                       }
                                       if(!_loc6_)
                                       {
                                          §§pop()[§§pop()][2] = this.§7j§[_loc3_][2] + param2;
                                          if(!_loc6_)
                                          {
                                             return;
                                          }
                                          §§goto(addr91);
                                       }
                                       while(true)
                                       {
                                          §§pop()[§§pop()][0] = param1;
                                          §§goto(addr170);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop()[§§pop()][2] = 0;
                                       §§goto(addr118);
                                    }
                                 }
                                 §§goto(addr220);
                              }
                              while(_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    §§goto(addr141);
                                    §§push(_loc3_);
                                 }
                                 §§goto(addr176);
                              }
                              addr165:
                              while(true)
                              {
                                 §§goto(addr166);
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr218);
                     }
                  }
               }
               else
               {
                  §§push(this.§7j§);
               }
               §§goto(addr234);
            }
            §§goto(addr216);
         }
      }
   }
}
