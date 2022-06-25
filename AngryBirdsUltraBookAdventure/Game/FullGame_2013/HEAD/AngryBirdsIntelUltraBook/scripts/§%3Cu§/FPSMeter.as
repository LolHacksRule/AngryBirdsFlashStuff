package §<u§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class FPSMeter extends Sprite
   {
      
      private static const §<r§:int = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §<r§ = 1000;
         }
      }
      
      private var §-g§:TextField;
      
      private var §5'§:Boolean;
      
      private var §3!_§:int = 0;
      
      private var §!v§:Number = 0;
      
      private var §9!E§:Array;
      
      public function FPSMeter(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§5'§ = param1;
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop16:
                        while(true)
                        {
                           this.§9!E§ = new Array();
                           addr57:
                           loop17:
                           while(_loc4_ || _loc3_)
                           {
                              this.mouseEnabled = false;
                              if(_loc3_ && param1)
                              {
                                 continue;
                              }
                              if(!_loc4_)
                              {
                                 loop15:
                                 while(_loc4_ || param2)
                                 {
                                    if(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                param2.addChild(this);
                                                break loop15;
                                             }
                                             break;
                                          }
                                          addr162:
                                          while(!_loc3_)
                                          {
                                             this.§-g§.width = 150;
                                          }
                                          while(true)
                                          {
                                             this.§-g§.height = 40;
                                             §§goto(addr154);
                                          }
                                          addr154:
                                       }
                                       continue loop1;
                                       addr114:
                                    }
                                    addr78:
                                    if(_loc4_ || param1)
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          continue loop16;
                                       }
                                       addr206:
                                       while(true)
                                       {
                                          this.§-g§.text = "...";
                                          §§goto(addr191);
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§-g§.mouseEnabled = false;
                                       break loop17;
                                       §§goto(addr78);
                                    }
                                 }
                                 loop13:
                                 for(; !(_loc3_ && this); §§goto(addr69))
                                 {
                                    while(true)
                                    {
                                       addr65:
                                       while(true)
                                       {
                                          this.x = 250;
                                          continue loop13;
                                       }
                                    }
                                 }
                                 addr69:
                                 continue loop2;
                                 addr122:
                              }
                              addr42:
                              if(!(_loc3_ && param1))
                              {
                                 break loop16;
                              }
                              addr202:
                              while(!(_loc3_ && this))
                              {
                                 this.§-g§.textColor = 16711680;
                                 continue loop1;
                                 §§goto(addr42);
                              }
                              while(true)
                              {
                                 this.§-g§ = new TextField();
                              }
                              addr191:
                              §§goto(addr206);
                           }
                           while(true)
                           {
                              addChild(this.§-g§);
                              continue loop2;
                              §§goto(addr57);
                           }
                        }
                        if(_loc4_)
                        {
                           return;
                        }
                        continue loop0;
                     }
                     §§goto(addr202);
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§3!_§);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_ || this)
            {
               _loc2_.§3!_§ = _loc3_;
            }
            if(!_loc4_)
            {
               §§push(this);
               §§push(this.§!v§);
               if(_loc5_ || this)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§!v§ = §§pop();
               loop0:
               while(this.§!v§ >= §<r§)
               {
                  if(!_loc4_)
                  {
                     while(true)
                     {
                        this.reset();
                     }
                     addr79:
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
         }
         §§goto(addr79);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(_loc5_ || param1)
         {
            §§push(this.§!v§);
            loop0:
            while(true)
            {
               §§push(0);
               addr139:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                     }
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
                                 §§push(this.§3!_§);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(§§pop() == 0);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          continue loop3;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop2;
                                       }
                                       if(§§pop())
                                       {
                                          addr135:
                                          addr155:
                                          if(_loc5_ || param1)
                                          {
                                             break loop5;
                                          }
                                          §§push("fps = ");
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + Math.round(_loc2_));
                                          }
                                          var _loc3_:String = §§pop();
                                          §§push(0);
                                          if(_loc5_ || this)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          var _loc4_:* = §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      if(§§pop() >= this.§9!E§.length)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            this.§-g§.text = _loc3_;
                                                         }
                                                         loop10:
                                                         while(_loc5_ || _loc3_)
                                                         {
                                                            this.§-g§.mouseEnabled = false;
                                                            loop11:
                                                            while(!_loc6_)
                                                            {
                                                               this.§3!_§ = 0;
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§9!E§);
                                                                              addr298:
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    addr323:
                                                                                    §§push(_loc4_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop()[§§pop()][1] = 0;
                                                                                       §§push(_loc4_);
                                                                                       addr275:
                                                                                       break loop10;
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             break loop14;
                                                                                          }
                                                                                          break loop15;
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc6_ && param1)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       §§push(" ");
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          §§push(§§pop() + this.§9!E§[_loc4_][0]);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(§§pop() + " = ");
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                addr367:
                                                                                                §§push(§§pop() + Math.round(this.§9!E§[_loc4_][2] / this.§9!E§[_loc4_][1]));
                                                                                             }
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          continue loop13;
                                                                                       }
                                                                                       §§goto(addr367);
                                                                                    }
                                                                                    addr323:
                                                                                    addr306:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       break loop15;
                                                                                    }
                                                                                    addr317:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop()[§§pop()][1] == 0)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 §§goto(addr323);
                                                                              }
                                                                           }
                                                                           §§pop()[§§pop()][2] = 0;
                                                                           break loop12;
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               _loc4_++;
                                                               break;
                                                            }
                                                            continue loop9;
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(this.§9!E§);
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr275);
                                                               }
                                                               §§goto(addr298);
                                                            }
                                                            §§goto(addr323);
                                                            §§goto(addr306);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§9!E§);
                                                      }
                                                      §§goto(addr317);
                                                   }
                                                }
                                                §§goto(addr266);
                                             }
                                             §§goto(addr268);
                                          }
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(_loc6_)
                                          {
                                             break loop5;
                                          }
                                          §§push(Number(§§pop()));
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             if(!_loc6_)
                                             {
                                                _loc2_ = §§pop();
                                                if(!_loc6_)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(false)
                                                      {
                                                         continue loop5;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            break loop4;
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr91:
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr135);
                                                }
                                                §§goto(addr155);
                                             }
                                             else
                                             {
                                                addr133:
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr135);
                                          }
                                          _loc2_ = §§pop();
                                          §§goto(addr135);
                                       }
                                       §§goto(addr135);
                                    }
                                    addr95:
                                 }
                                 break;
                              }
                              §§push(§§pop() / this.§!v§);
                              if(_loc5_ || this)
                              {
                                 continue loop0;
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr135);
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr95);
                           §§push(param1);
                        }
                        §§goto(addr91);
                     }
                  }
               }
            }
         }
         §§goto(addr135);
      }
      
      public function §=<§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(-1);
         if(!(_loc6_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(!(_loc6_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(_loc5_)
            {
               if(_loc5_ || _loc3_)
               {
                  if(§§pop() >= this.§9!E§.length)
                  {
                     if(!_loc6_)
                     {
                        §§push(_loc3_);
                        loop2:
                        while(_loc5_)
                        {
                           if(§§pop() == -1)
                           {
                              while(true)
                              {
                                 §§push(this.§9!E§);
                                 loop4:
                                 while(true)
                                 {
                                    §§pop()[this.§9!E§.length] = new Array();
                                    addr259:
                                    loop20:
                                    while(true)
                                    {
                                       §§push(this.§9!E§);
                                       loop13:
                                       while(true)
                                       {
                                          §§push(int(§§pop().length - 1));
                                          if(!_loc5_)
                                          {
                                             continue loop2;
                                          }
                                          if(_loc6_)
                                          {
                                             continue loop1;
                                          }
                                          if(!(_loc6_ && param2))
                                          {
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                                §§push(this.§9!E§);
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc3_);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§pop()[§§pop()][0] = param1;
                                                         addr191:
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ || param1))
                                                            {
                                                               continue loop20;
                                                            }
                                                            §§push(this.§9!E§);
                                                            while(true)
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(_loc3_);
                                                                  continue loop10;
                                                               }
                                                               continue loop13;
                                                            }
                                                         }
                                                      }
                                                      continue loop13;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop1;
                                             }
                                          }
                                          _loc3_ = int(§§pop());
                                          §§goto(addr281);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr84);
                        }
                        §§push(int(§§pop()));
                        break;
                     }
                     §§goto(addr259);
                  }
                  else
                  {
                     §§push(this.§9!E§);
                  }
                  §§goto(addr272);
               }
               §§goto(addr280);
            }
            _loc4_ = §§pop();
         }
      }
   }
}
