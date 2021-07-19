package §0N§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §="=§ extends Sprite
   {
      
      private static const §&">§:int = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&">§ = 1000;
         }
      }
      
      private var §1!a§:TextField;
      
      private var §'!B§:Boolean;
      
      private var §5![§:int = 0;
      
      private var §,!c§:Number = 0;
      
      private var §5!K§:Array;
      
      public function §="=§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§'!B§ = param1;
               loop1:
               while(true)
               {
                  if(!param1)
                  {
                     loop6:
                     while(true)
                     {
                        this.§5!K§ = new Array();
                        while(!_loc3_)
                        {
                           this.mouseEnabled = false;
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(!(_loc4_ || param1))
                           {
                              continue loop6;
                           }
                           if(_loc4_)
                           {
                              if(_loc4_ || this)
                              {
                                 break loop6;
                              }
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                this.§1!a§.text = "...";
                                             }
                                             addr176:
                                          }
                                          while(true)
                                          {
                                             this.§1!a§.textColor = 16711680;
                                          }
                                       }
                                       while(_loc4_)
                                       {
                                          while(true)
                                          {
                                             this.§1!a§.selectable = false;
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§1!a§ = new TextField();
                                          §§goto(addr176);
                                       }
                                       addr162:
                                    }
                                    while(true)
                                    {
                                       this.§1!a§.height = 40;
                                       loop10:
                                       while(true)
                                       {
                                          this.§1!a§.width = 150;
                                          addr125:
                                          while(true)
                                          {
                                             if(_loc4_ || param2)
                                             {
                                                break loop10;
                                             }
                                             continue loop10;
                                          }
                                       }
                                       continue loop9;
                                    }
                                 }
                                 addChild(this.§1!a§);
                              }
                              continue loop0;
                           }
                           addr71:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    addr60:
                                    this.x = 250;
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr125);
                        }
                        addr68:
                        while(true)
                        {
                           param2.addChild(this);
                           §§goto(addr71);
                        }
                     }
                     return;
                  }
                  §§goto(addr162);
               }
            }
         }
         §§goto(addr152);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§5![§);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               _loc2_.§5![§ = _loc3_;
            }
            if(!(_loc5_ && param1))
            {
               §§push(this);
               §§push(this.§,!c§);
               if(_loc4_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§,!c§ = §§pop();
               loop0:
               while(this.§,!c§ >= §&">§)
               {
                  if(_loc4_ || param1)
                  {
                     while(true)
                     {
                        this.reset();
                     }
                     addr67:
                  }
                  while(true)
                  {
                     if(_loc4_)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr67);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(!(_loc6_ && _loc2_))
         {
            §§push(this.§,!c§);
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
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§5![§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() == 0);
                                    if(_loc5_ || this)
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(param1);
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop3;
                                                }
                                                if(_loc6_ && param1)
                                                {
                                                   continue loop2;
                                                }
                                                if(§§pop())
                                                {
                                                   addr117:
                                                   if(_loc5_)
                                                   {
                                                      break loop6;
                                                   }
                                                   var _loc3_:String = "fps = " + Math.round(_loc2_);
                                                   var _loc4_:int = 0;
                                                   while(true)
                                                   {
                                                      if(_loc4_ >= this.§5!K§.length)
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               this.§1!a§.text = _loc3_;
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  this.§1!a§.mouseEnabled = false;
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        this.§5![§ = 0;
                                                                        continue;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr239:
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  addr246:
                                                                  §§push(this.§5!K§);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr214:
                                                                     §§push(_loc4_);
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop()[§§pop()][1] != 0)
                                                                              {
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       §§push(" " + this.§5!K§[_loc4_][0]);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr314:
                                                                                          §§push(§§pop() + " = ");
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr286:
                                                                                             §§push(§§pop() + Math.round(this.§5!K§[_loc4_][2] / this.§5!K§[_loc4_][1]));
                                                                                          }
                                                                                          _loc3_ = §§pop() + §§pop();
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             addr229:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§5!K§);
                                                                                                addr232:
                                                                                                addr251:
                                                                                                while(_loc5_)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop()[§§pop()][1] = 0;
                                                                                                      continue loop16;
                                                                                                      §§goto(addr214);
                                                                                                   }
                                                                                                   §§goto(addr246);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr315:
                                                                                       }
                                                                                       §§goto(addr286);
                                                                                    }
                                                                                    §§goto(addr314);
                                                                                 }
                                                                                 §§goto(addr315);
                                                                              }
                                                                              §§goto(addr229);
                                                                           }
                                                                        }
                                                                        §§pop()[§§pop()][2] = 0;
                                                                        break;
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                                  §§goto(addr232);
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                         }
                                                         _loc4_++;
                                                         continue;
                                                      }
                                                      §§push(this.§5!K§);
                                                      §§goto(addr251);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(_loc6_ && this)
                                                   {
                                                      break loop6;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            if(_loc6_ && _loc3_)
                                                            {
                                                               break loop5;
                                                            }
                                                            if(false)
                                                            {
                                                               continue loop5;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr81:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr117);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr116:
                                                      _loc2_ = §§pop();
                                                   }
                                                   §§goto(addr117);
                                                }
                                                §§goto(addr117);
                                             }
                                             addr83:
                                          }
                                          §§goto(addr81);
                                       }
                                       addr79:
                                    }
                                    §§goto(addr83);
                                 }
                                 §§push(§§pop() / this.§,!c§);
                                 if(!(_loc6_ && param1))
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(this.§5![§);
                                    if(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(_loc5_)
                                    {
                                       addr115:
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr116);
                                 }
                                 §§goto(addr115);
                              }
                           }
                        }
                     }
                     §§goto(addr79);
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      public function §&B§(param1:String, param2:Number) : void
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
            while(_loc5_)
            {
               if(_loc5_ || this)
               {
                  if(§§pop() >= this.§5!K§.length)
                  {
                     loop2:
                     while(true)
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
                                 §§push(this.§5!K§);
                                 loop19:
                                 for(; !_loc6_; §§push(this.§5!K§),if(_loc6_)
                                 {
                                    continue;
                                 },§§goto(addr30))
                                 {
                                    if(_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             §§push(_loc3_);
                                             loop20:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§pop()[§§pop()][1] = this.§5!K§[_loc3_][1] + 1;
                                                      while(!(_loc6_ && this))
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            if(_loc6_ && param2)
                                                            {
                                                               §§push(int(_loc4_));
                                                            }
                                                            else
                                                            {
                                                               addr247:
                                                            }
                                                            continue loop19;
                                                            break loop1;
                                                         }
                                                         addr221:
                                                         while(true)
                                                         {
                                                            §§push(this.§5!K§);
                                                            addr177:
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop().length - 1));
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     addr185:
                                                                     break;
                                                                     addr185:
                                                                  }
                                                                  _loc3_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     addr213:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§5!K§);
                                                                     }
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      while(!_loc6_)
                                                      {
                                                         continue loop18;
                                                      }
                                                      while(_loc5_)
                                                      {
                                                         §§push(this.§5!K§);
                                                         break loop19;
                                                      }
                                                      §§goto(addr185);
                                                      addr100:
                                                      addr140:
                                                      addr160:
                                                   }
                                                   else
                                                   {
                                                      addr169:
                                                      while(true)
                                                      {
                                                         §§pop()[§§pop()][0] = param1;
                                                         addr173:
                                                         while(true)
                                                         {
                                                            §§push(this.§5!K§);
                                                            addr146:
                                                            while(!_loc6_)
                                                            {
                                                               §§push(_loc3_);
                                                               break loop20;
                                                            }
                                                         }
                                                      }
                                                      addr169:
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop()[this.§5!K§.length] = new Array();
                                                      §§goto(addr221);
                                                   }
                                                }
                                                §§push(_loc3_);
                                                addr30:
                                                break;
                                                if(_loc6_ && param1)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§pop()[§§pop()][2] = this.§5!K§[_loc3_][2] + param2;
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break loop18;
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr100);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§pop()[§§pop()][2] = 0;
                                                   §§goto(addr140);
                                                }
                                             }
                                             while(!(_loc6_ && this))
                                             {
                                                §§pop()[§§pop()][1] = 0;
                                                §§goto(addr160);
                                             }
                                          }
                                          else
                                          {
                                             addr231:
                                             §§push(_loc4_);
                                          }
                                          if(§§pop()[§§pop()][0] == param1)
                                          {
                                             §§goto(addr247);
                                          }
                                          addr222:
                                          _loc4_++;
                                          if(_loc6_)
                                          {
                                             while(true)
                                             {
                                                §§goto(addr222);
                                                §§goto(addr222);
                                             }
                                             addr250:
                                          }
                                          continue loop0;
                                       }
                                       addr166:
                                       while(_loc5_)
                                       {
                                          §§goto(addr169);
                                          §§push(_loc3_);
                                       }
                                       §§goto(addr177);
                                       §§goto(addr169);
                                    }
                                    §§goto(addr146);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr136);
                                 }
                              }
                              if(!(_loc6_ && param1))
                              {
                                 return;
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr213);
                        }
                     }
                  }
                  else
                  {
                     §§push(this.§5!K§);
                  }
                  §§goto(addr231);
               }
               §§goto(addr247);
            }
            _loc3_ = §§pop();
            §§goto(addr250);
         }
      }
   }
}
