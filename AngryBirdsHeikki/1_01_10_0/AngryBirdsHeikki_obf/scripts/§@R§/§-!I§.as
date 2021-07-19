package §@R§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §-!I§ extends Sprite
   {
      
      private static const §+n§:int = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+n§ = 1000;
         }
      }
      
      private var §4!;§:TextField;
      
      private var §!!Z§:Boolean;
      
      private var §;!=§:int = 0;
      
      private var §1!S§:Number = 0;
      
      private var §&d§:Array;
      
      public function §-!I§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§!!Z§ = param1;
               loop1:
               while(true)
               {
                  if(!param1)
                  {
                     loop11:
                     while(true)
                     {
                        this.§&d§ = new Array();
                        do
                        {
                           this.mouseEnabled = false;
                        }
                        while(!(_loc4_ || _loc3_));
                        
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && param1))
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.§4!;§.text = "...";
                                    while(!_loc3_)
                                    {
                                       this.§4!;§.textColor = 16711680;
                                       if(_loc4_ || this)
                                       {
                                          continue loop11;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 addr196:
                              }
                              while(true)
                              {
                                 this.§4!;§.selectable = false;
                                 while(true)
                                 {
                                    this.§4!;§.height = 40;
                                    loop7:
                                    for(; _loc4_ || param1; while(!(_loc3_ && this))
                                    {
                                       continue loop0;
                                       loop10:
                                       for(; !(_loc3_ && _loc3_); if(!(_loc4_ || param2))
                                       {
                                          continue;
                                       },§§goto(addr73))
                                       {
                                          while(true)
                                          {
                                             if(param2)
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && this))
                                                   {
                                                      param2.addChild(this);
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr145);
                                                         }
                                                         §§goto(addr91);
                                                      }
                                                      addr91:
                                                      addr104:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         this.§4!;§ = new TextField();
                                                         §§goto(addr196);
                                                         continue loop16;
                                                      }
                                                      addr182:
                                                   }
                                                }
                                                addr84:
                                             }
                                             while(true)
                                             {
                                                this.x = 250;
                                                addr59:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && param2))
                                                   {
                                                      continue loop10;
                                                   }
                                                   §§goto(addr84);
                                                }
                                                continue loop11;
                                             }
                                          }
                                       }
                                    })
                                    {
                                       this.§4!;§.width = 150;
                                       while(true)
                                       {
                                          this.§4!;§.mouseEnabled = false;
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr104);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr59);
                     }
                     return;
                  }
                  §§goto(addr182);
               }
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               addChild(this.§4!;§);
               §§goto(addr112);
            }
         }
         §§goto(addr119);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§;!=§);
            if(_loc4_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || this)
            {
               _loc2_.§;!=§ = _loc3_;
            }
            if(_loc4_)
            {
               §§push(this);
               §§push(this.§1!S§);
               if(_loc4_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§1!S§ = §§pop();
               loop0:
               while(this.§1!S§ >= §+n§)
               {
                  if(_loc4_)
                  {
                     while(true)
                     {
                        this.reset();
                     }
                     addr67:
                  }
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        addr71:
                        break loop0;
                     }
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr71);
         }
         §§goto(addr67);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(_loc5_)
         {
            §§push(this.§1!S§);
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
                                 §§push(this.§;!=§);
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push(§§pop() == 0);
                                    if(!(_loc6_ && this))
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                addr107:
                                             }
                                             addr116:
                                             var _loc3_:String = "fps = " + Math.round(_loc2_);
                                             var _loc4_:int = 0;
                                             addr181:
                                             if(_loc4_ >= this.§&d§.length)
                                             {
                                                if(!_loc6_)
                                                {
                                                   this.§4!;§.text = _loc3_;
                                                }
                                                this.§4!;§.mouseEnabled = false;
                                                addr193:
                                                if(_loc5_ || param1)
                                                {
                                                   this.§;!=§ = 0;
                                                   addr141:
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            this.§1!S§ = 0;
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr141);
                                                            }
                                                            return;
                                                         }
                                                         addr196:
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§goto(addr181);
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            §§push(this.§&d§);
                                                            if(_loc5_ || this)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§pop()[§§pop()][2] = 0;
                                                                        addr230:
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           _loc4_++;
                                                                           §§goto(addr196);
                                                                        }
                                                                        addr242:
                                                                        this.§&d§[_loc4_][1] = 0;
                                                                        addr238:
                                                                        §§goto(addr196);
                                                                        addr310:
                                                                     }
                                                                     addr254:
                                                                     if(§§pop()[§§pop()][1] != 0)
                                                                     {
                                                                        addr259:
                                                                        §§push(_loc3_);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(" " + this.§&d§[_loc4_][0]);
                                                                           if(_loc5_)
                                                                           {
                                                                              addr309:
                                                                              §§push(§§pop() + " = ");
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 addr281:
                                                                                 §§push(§§pop() + Math.round(this.§&d§[_loc4_][2] / this.§&d§[_loc4_][1]));
                                                                              }
                                                                              _loc3_ = §§pop() + §§pop();
                                                                              §§goto(addr310);
                                                                           }
                                                                           §§goto(addr281);
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                     §§goto(addr238);
                                                                  }
                                                                  §§goto(addr242);
                                                               }
                                                               addr253:
                                                               §§goto(addr254);
                                                               §§push(_loc4_);
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                   }
                                                   §§goto(addr193);
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr253);
                                             §§push(this.§&d§);
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      while(true)
                                                      {
                                                         break loop5;
                                                      }
                                                      addr87:
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(!_loc5_)
                                                   {
                                                      break loop5;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   if(_loc5_ || this)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc5_)
                                                         {
                                                            if(_loc6_ && _loc2_)
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
                                                            §§goto(addr107);
                                                         }
                                                         §§goto(addr116);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§;!=§);
                                                            if(!(_loc5_ || _loc2_))
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc5_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         addr91:
                                                      }
                                                      §§goto(addr107);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      _loc2_ = §§pop();
                                                   }
                                                }
                                             }
                                             addr79:
                                          }
                                          §§goto(addr107);
                                       }
                                    }
                                    §§goto(addr79);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§goto(addr91);
                              }
                           }
                        }
                     }
                     §§goto(addr73);
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public function §"!Y§(param1:String, param2:Number) : void
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
            while(!(_loc6_ && this))
            {
               if(§§pop() >= this.§&d§.length)
               {
                  while(true)
                  {
                     §§push(_loc3_);
                     loop3:
                     while(true)
                     {
                        if(§§pop() == -1)
                        {
                           while(true)
                           {
                              §§push(this.§&d§);
                              loop5:
                              while(true)
                              {
                                 §§pop()[this.§&d§.length] = new Array();
                                 loop6:
                                 while(_loc5_)
                                 {
                                    §§push(this.§&d§);
                                    loop7:
                                    while(true)
                                    {
                                       if(!(_loc5_ || this))
                                       {
                                          continue loop5;
                                       }
                                       §§push(int(§§pop().length - 1));
                                       if(_loc6_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       if(!(_loc6_ && param2))
                                       {
                                          _loc3_ = §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§&d§);
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                addr191:
                                                addr118:
                                                while(true)
                                                {
                                                   §§pop()[§§pop()][0] = param1;
                                                   addr195:
                                                   while(true)
                                                   {
                                                      §§push(this.§&d§);
                                                      continue loop7;
                                                   }
                                                }
                                                loop15:
                                                while(_loc5_ || param2)
                                                {
                                                   §§push(_loc3_);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§pop()[§§pop()][2] = 0;
                                                      loop17:
                                                      while(!_loc6_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§&d§);
                                                            loop19:
                                                            for(; !_loc6_; §§push(this.§&d§),if(_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr34);
                                                                  }
                                                                  addr267:
                                                                  addr256:
                                                                  if(§§pop()[_loc4_][0] == param1)
                                                                  {
                                                                     §§goto(addr272);
                                                                  }
                                                                  _loc4_++;
                                                                  break loop6;
                                                               }
                                                               continue loop7;
                                                            })
                                                            {
                                                               §§push(_loc3_);
                                                               while(true)
                                                               {
                                                                  §§pop()[§§pop()][1] = this.§&d§[_loc3_][1] + 1;
                                                                  addr110:
                                                                  while(_loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr272:
                                                                     }
                                                                     continue loop19;
                                                                  }
                                                                  §§push(_loc3_);
                                                                  addr34:
                                                                  continue loop17;
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                               }
                                                            }
                                                            continue loop15;
                                                         }
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         §§goto(addr118);
                                                         §§push(this.§&d§);
                                                      }
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop8;
                                             }
                                             addr275:
                                             §§goto(addr267);
                                          }
                                       }
                                       else
                                       {
                                          addr274:
                                          _loc3_ = §§pop();
                                          §§goto(addr275);
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        §§goto(addr93);
                     }
                     if(!(_loc6_ && this))
                     {
                        return;
                     }
                  }
               }
               else
               {
                  §§push(this.§&d§);
               }
               §§goto(addr256);
            }
            §§goto(addr274);
         }
      }
   }
}
