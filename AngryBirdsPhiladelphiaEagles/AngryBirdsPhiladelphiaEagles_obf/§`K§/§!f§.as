package §`K§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §!f§ extends Sprite
   {
      
      private static const §9!=§:int = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9!=§ = 1000;
         }
      }
      
      private var §8"§:TextField;
      
      private var §;!@§:Boolean;
      
      private var §^b§:int = 0;
      
      private var §5P§:Number = 0;
      
      private var §^o§:Array;
      
      public function §!f§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super();
            loop0:
            while(true)
            {
               this.§;!@§ = param1;
               loop1:
               while(true)
               {
                  if(!param1)
                  {
                     while(true)
                     {
                        this.§^o§ = new Array();
                        if(!_loc4_)
                        {
                           addr40:
                           if(!(_loc4_ && this))
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              loop6:
                              while(true)
                              {
                                 this.§8"§.width = 150;
                                 this.§8"§.mouseEnabled = false;
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       addChild(this.§8"§);
                                       if(!param2)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    addr128:
                                    while(true)
                                    {
                                       this.§8"§.height = 40;
                                       continue loop6;
                                    }
                                 }
                                 addr50:
                                 while(true)
                                 {
                                    this.x = 250;
                                    addr54:
                                    while(true)
                                    {
                                       if(!(_loc4_ && param2))
                                       {
                                          addr61:
                                          if(_loc3_ || param2)
                                          {
                                             continue loop0;
                                          }
                                          addr161:
                                          while(true)
                                          {
                                             this.§8"§ = new TextField();
                                             §§goto(addr61);
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§8"§.text = "...";
                                          break loop6;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              §§goto(addr50);
                              §§goto(addr40);
                           }
                        }
                        §§goto(addr54);
                     }
                     this.mouseEnabled = false;
                     return;
                     addr33:
                     addr32:
                  }
                  §§goto(addr161);
               }
            }
         }
         §§goto(addr32);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§^b§);
            if(!_loc4_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && param1))
            {
               _loc2_.§^b§ = _loc3_;
            }
            if(_loc5_ || param1)
            {
               §§push(this);
               §§push(this.§5P§);
               if(!_loc4_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§5P§ = §§pop();
               while(this.§5P§ >= §9!=§)
               {
                  if(_loc5_)
                  {
                     this.reset();
                  }
                  if(_loc5_ || _loc2_)
                  {
                     addr92:
                     break;
                  }
               }
               return;
               addr71:
            }
            §§goto(addr92);
         }
         §§goto(addr71);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(_loc5_)
         {
            §§push(this.§5P§);
            loop0:
            while(true)
            {
               §§push(0);
               addr114:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_)
                  {
                     if(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§pop();
                           addr120:
                           loop3:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§^b§);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(§§pop() == 0);
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       if(!_loc6_)
                                       {
                                          break loop3;
                                       }
                                       continue loop6;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(0);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc6_)
                                             {
                                                _loc2_ = §§pop();
                                                if(!(_loc6_ && this))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(true)
                                                      {
                                                         addr121:
                                                         §§push("fps = ");
                                                         if(_loc5_)
                                                         {
                                                            §§push(§§pop() + Math.round(_loc2_));
                                                         }
                                                         var _loc3_:String = §§pop();
                                                         var _loc4_:int = 0;
                                                      }
                                                      else
                                                      {
                                                         addr121:
                                                      }
                                                      continue loop4;
                                                      while(true)
                                                      {
                                                         if(_loc4_ >= this.§^o§.length)
                                                         {
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         §§push(this.§^o§);
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            addr244:
                                                            while(true)
                                                            {
                                                               if(§§pop()[§§pop()][1] != 0)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(" ");
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        §§push(§§pop() + this.§^o§[_loc4_][0]);
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           addr306:
                                                                           §§push(§§pop() + " = ");
                                                                           if(_loc5_)
                                                                           {
                                                                              addr288:
                                                                              §§push(§§pop() + Math.round(this.§^o§[_loc4_][2] / this.§^o§[_loc4_][1]));
                                                                           }
                                                                           _loc3_ = §§pop() + §§pop();
                                                                           while(true)
                                                                           {
                                                                              addr214:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§^o§);
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                           addr307:
                                                                        }
                                                                     }
                                                                     §§goto(addr288);
                                                                  }
                                                                  §§goto(addr306);
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                         }
                                                      }
                                                      this.§8"§.text = _loc3_;
                                                      do
                                                      {
                                                         this.§8"§.mouseEnabled = false;
                                                         this.§^b§ = 0;
                                                         this.§5P§ = 0;
                                                      }
                                                      while(!(_loc5_ || _loc2_));
                                                      
                                                      return;
                                                   }
                                                   addr78:
                                                   addr78:
                                                   while(true)
                                                   {
                                                      break loop4;
                                                   }
                                                   addr78:
                                                }
                                                §§goto(addr121);
                                                addr110:
                                             }
                                             addr109:
                                             _loc2_ = §§pop();
                                             §§goto(addr110);
                                          }
                                          break loop4;
                                       }
                                       §§goto(addr78);
                                    }
                                    addr77:
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§push(§§pop() / this.§5P§);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr108:
                              §§goto(addr109);
                              continue loop6;
                           }
                        }
                        addr119:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr120);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr78);
                        }
                        else
                        {
                           §§push(param1);
                        }
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr119);
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §'!6§(param1:String, param2:Number) : void
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
               if(§§pop() >= this.§^o§.length)
               {
                  loop2:
                  while(true)
                  {
                     §§push(_loc3_);
                     loop3:
                     while(!(_loc5_ && param2))
                     {
                        if(!_loc5_)
                        {
                           if(§§pop() == -1)
                           {
                              loop4:
                              for(; _loc6_ || param2; if(_loc5_ && this)
                              {
                                 continue;
                              },§§goto(addr130))
                              {
                                 §§push(this.§^o§);
                                 loop5:
                                 while(true)
                                 {
                                    §§pop()[this.§^o§.length] = new Array();
                                    loop6:
                                    while(!(_loc5_ && _loc3_))
                                    {
                                       §§push(this.§^o§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(int(§§pop().length - 1));
                                          if(_loc5_ && _loc3_)
                                          {
                                             continue loop3;
                                          }
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          _loc3_ = §§pop();
                                          if(!(_loc6_ || _loc3_))
                                          {
                                             continue loop2;
                                          }
                                          §§push(this.§^o§);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             loop9:
                                             while(true)
                                             {
                                                §§pop()[§§pop()][0] = param1;
                                                §§push(this.§^o§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§pop()[§§pop()][1] = 0;
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(this.§^o§);
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§push(this.§^o§);
                                                            addr130:
                                                            continue loop10;
                                                            if(!_loc6_)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr61:
                                                                           §§pop()[§§pop()][2] = this.§^o§[_loc3_][2] + param2;
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              if(_loc5_ && param2)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr93:
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 addr148:
                                                                                 while(true)
                                                                                 {
                                                                                    addr89:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§^o§);
                                                                                       §§push(_loc3_);
                                                                                       break loop18;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr61);
                                                                              }
                                                                              while(!(_loc5_ && param1))
                                                                              {
                                                                                 §§pop()[§§pop()][1] = this.§^o§[_loc3_][1] + 1;
                                                                                 §§goto(addr111);
                                                                              }
                                                                              addr111:
                                                                              while(true)
                                                                              {
                                                                                 §§pop()[§§pop()][2] = 0;
                                                                                 §§goto(addr148);
                                                                                 §§goto(addr93);
                                                                              }
                                                                              addr93:
                                                                              addr144:
                                                                           }
                                                                           return;
                                                                        }
                                                                        addr242:
                                                                        addr250:
                                                                        if(§§pop()[§§pop()][0] == param1)
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        _loc4_++;
                                                                        break loop4;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr93);
                                                            }
                                                            else
                                                            {
                                                               addr249:
                                                               §§push(_loc4_);
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                    addr256:
                                    break loop3;
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr256);
                     }
                     _loc3_ = §§pop();
                     §§goto(addr242);
                  }
               }
               else
               {
                  §§push(this.§^o§);
               }
               §§goto(addr249);
            }
         }
      }
   }
}
