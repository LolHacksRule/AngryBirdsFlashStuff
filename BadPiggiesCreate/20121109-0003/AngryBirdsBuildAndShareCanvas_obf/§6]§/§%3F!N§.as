package §6]§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §?!N§ extends Sprite
   {
      
      private static const §<!h§:int = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<!h§ = 1000;
         }
      }
      
      private var §1!§:TextField;
      
      private var §]"%§:Boolean;
      
      private var §=!]§:int = 0;
      
      private var §+"?§:Number = 0;
      
      private var §@!+§:Array;
      
      public function §?!N§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§]"%§ = param1;
               loop1:
               while(true)
               {
                  if(param1)
                  {
                     loop2:
                     while(true)
                     {
                        this.§1!§ = new TextField();
                        loop3:
                        while(true)
                        {
                           this.§1!§.text = "...";
                           addr178:
                           while(true)
                           {
                              this.§1!§.textColor = 16711680;
                              addr172:
                              loop5:
                              while(true)
                              {
                                 this.§1!§.selectable = false;
                                 while(true)
                                 {
                                    this.§1!§.height = 40;
                                    addr160:
                                    while(true)
                                    {
                                       this.§1!§.width = 150;
                                       addr154:
                                       while(true)
                                       {
                                          this.§1!§.mouseEnabled = false;
                                          continue loop3;
                                       }
                                    }
                                    addr42:
                                    if(_loc4_ || this)
                                    {
                                       return;
                                    }
                                 }
                                 addr69:
                                 while(true)
                                 {
                                    if(_loc4_ || param2)
                                    {
                                       continue loop2;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     this.§@!+§ = new Array();
                     while(_loc4_ || this)
                     {
                        if(!_loc3_)
                        {
                           this.mouseEnabled = false;
                           if(_loc3_ && param1)
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       §§goto(addr65);
                                    }
                                    §§goto(addr160);
                                 }
                                 continue loop1;
                              }
                              continue loop1;
                              addr120:
                           }
                           §§goto(addr42);
                           §§goto(addr141);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr69);
                     §§goto(addr83);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr160);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§=!]§);
            if(_loc5_ || this)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && this))
            {
               _loc2_.§=!]§ = _loc3_;
            }
            if(!_loc4_)
            {
               §§push(this);
               §§push(this.§+"?§);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§+"?§ = §§pop();
               while(this.§+"?§ >= §<!h§)
               {
                  if(_loc5_ || param1)
                  {
                     if(!_loc4_)
                     {
                        addr75:
                        this.reset();
                        addr77:
                        break;
                     }
                     continue;
                  }
                  §§goto(addr77);
               }
               return;
            }
            §§goto(addr77);
         }
         §§goto(addr75);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(_loc5_ || param1)
         {
            §§push(this.§+"?§);
            loop0:
            while(true)
            {
               §§push(0);
               addr119:
               addr113:
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_ || _loc3_)
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
                                 §§push(this.§=!]§);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(§§pop() == 0);
                                    if(!_loc6_)
                                    {
                                       loop2:
                                       while(!§§pop())
                                       {
                                          §§push(param1);
                                          while(true)
                                          {
                                             if(_loc6_ && _loc2_)
                                             {
                                                continue loop4;
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§push(0);
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                §§push(Number(§§pop()));
                                                if(_loc5_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(_loc6_ && _loc3_)
                                                      {
                                                         break loop2;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      while(true)
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr115:
                                                   }
                                                   §§goto(addr131);
                                                }
                                                else
                                                {
                                                   addr114:
                                                }
                                                addr114:
                                                _loc2_ = §§pop();
                                             }
                                             §§goto(addr115);
                                             continue loop6;
                                          }
                                          §§push(§§pop() / this.§+"?§);
                                          if(_loc6_)
                                          {
                                             break loop1;
                                          }
                                          continue loop0;
                                       }
                                       addr131:
                                       var _loc3_:* = "fps = " + Math.round(_loc2_);
                                       var _loc4_:int = 0;
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc4_ >= this.§@!+§.length)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                this.§1!§.text = _loc3_;
                                                loop10:
                                                while(_loc5_)
                                                {
                                                   this.§1!§.mouseEnabled = false;
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(_loc5_ || this)
                                                      {
                                                         this.§=!]§ = 0;
                                                         while(_loc5_)
                                                         {
                                                            this.§+"?§ = 0;
                                                            if(_loc5_ || param1)
                                                            {
                                                               continue loop11;
                                                            }
                                                         }
                                                         continue loop9;
                                                      }
                                                      while(true)
                                                      {
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(this.§@!+§);
                                                            addr247:
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§pop()[§§pop()][1] = 0;
                                                                        break loop10;
                                                                     }
                                                                     §§push(_loc4_);
                                                                     addr231:
                                                                     break;
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        §§pop()[§§pop()][2] = 0;
                                                                        break loop11;
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                  }
                                                                  addr266:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop()[§§pop()][1] != 0)
                                                                  {
                                                                     break loop14;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                            }
                                                         }
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc5_)
                                                            {
                                                               §§push(" " + this.§@!+§[_loc4_][0]);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  §§push(§§pop() + " = ");
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop() + Math.round(this.§@!+§[_loc4_][2] / this.§@!+§[_loc4_][1]));
                                                                  }
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            _loc3_ = §§pop();
                                                         }
                                                      }
                                                   }
                                                   _loc4_++;
                                                   continue loop8;
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§@!+§);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§goto(addr231);
                                                   }
                                                   §§goto(addr247);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(this.§@!+§);
                                          }
                                          §§goto(addr266);
                                       }
                                       return;
                                       addr69:
                                    }
                                    §§goto(addr73);
                                 }
                                 §§goto(addr89);
                              }
                           }
                        }
                        addr129:
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr129);
               }
               §§goto(addr114);
            }
         }
         §§goto(addr53);
      }
      
      public function §#[§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc5_)
            {
               if(§§pop() >= this.§@!+§.length)
               {
                  while(true)
                  {
                     §§push(_loc3_);
                     addr223:
                     loop4:
                     while(true)
                     {
                        if(§§pop() == -1)
                        {
                           if(!_loc5_)
                           {
                              §§push(this.§@!+§);
                              while(true)
                              {
                                 §§pop()[this.§@!+§.length] = new Array();
                              }
                              addr229:
                           }
                           while(true)
                           {
                              §§push(this.§@!+§);
                              while(true)
                              {
                                 §§push(int(§§pop().length - 1));
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 if(!_loc5_)
                                 {
                                    _loc3_ = §§pop();
                                    while(true)
                                    {
                                       §§push(this.§@!+§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          addr197:
                                          while(true)
                                          {
                                             §§pop()[§§pop()][0] = param1;
                                             addr201:
                                             while(true)
                                             {
                                                §§push(this.§@!+§);
                                                continue loop9;
                                             }
                                          }
                                       }
                                       if(!(_loc5_ && param2))
                                       {
                                          break loop4;
                                       }
                                    }
                                 }
                                 §§goto(addr275);
                              }
                              continue loop4;
                           }
                        }
                        §§goto(addr73);
                     }
                     if(!(_loc5_ && this))
                     {
                        break loop0;
                     }
                     §§goto(addr256);
                     if(!(_loc6_ || param1))
                     {
                        continue;
                     }
                     §§goto(addr125);
                  }
               }
               else
               {
                  §§push(this.§@!+§);
               }
               §§goto(addr250);
            }
            §§goto(addr223);
         }
      }
   }
}
