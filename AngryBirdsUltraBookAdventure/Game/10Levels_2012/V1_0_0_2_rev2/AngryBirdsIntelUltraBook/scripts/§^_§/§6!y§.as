package §^_§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §6!y§ extends Sprite
   {
      
      private static const §27§:int = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §27§ = 1000;
         }
      }
      
      private var §2K§:TextField;
      
      private var §>S§:Boolean;
      
      private var §3!B§:int = 0;
      
      private var §[!F§:Number = 0;
      
      private var §[!X§:Array;
      
      public function §6!y§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super();
            loop0:
            while(true)
            {
               this.§>S§ = param1;
               loop1:
               while(true)
               {
                  if(!param1)
                  {
                     loop6:
                     while(true)
                     {
                        this.§[!X§ = new Array();
                        loop7:
                        while(!(_loc4_ && param2))
                        {
                           if(!_loc4_)
                           {
                              if(_loc3_)
                              {
                                 this.mouseEnabled = false;
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 if(!_loc4_)
                                 {
                                    break loop6;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    this.§2K§.textColor = 16711680;
                                    loop5:
                                    while(true)
                                    {
                                       this.§2K§.selectable = false;
                                       addr158:
                                       while(true)
                                       {
                                          this.§2K§.height = 40;
                                          loop10:
                                          while(true)
                                          {
                                             this.§2K§.width = 150;
                                             loop11:
                                             while(true)
                                             {
                                                this.§2K§.mouseEnabled = false;
                                                loop12:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      addChild(this.§2K§);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(param2)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     param2.addChild(this);
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!(_loc3_ || param2))
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           if(_loc4_ && param1)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§2K§ = new TextField();
                                                                                 addr178:
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    this.§2K§.text = "...";
                                                                                    continue loop4;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              addr174:
                                                                           }
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     continue loop0;
                                                                     addr98:
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               continue loop12;
                                                            }
                                                            addr76:
                                                         }
                                                         while(true)
                                                         {
                                                            this.x = 250;
                                                            break loop7;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr178);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr76);
                        }
                        while(true)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              continue loop0;
                           }
                           §§goto(addr98);
                        }
                        addr72:
                     }
                     return;
                  }
                  §§goto(addr174);
               }
            }
         }
         §§goto(addr158);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§3!B§);
            if(_loc4_ || param1)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               _loc2_.§3!B§ = _loc3_;
            }
            if(_loc4_ || _loc3_)
            {
               §§push(this);
               §§push(this.§[!F§);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§[!F§ = §§pop();
               loop0:
               for(; this.§[!F§ >= §27§; while(true)
               {
                  if(_loc5_ && _loc2_)
                  {
                     continue loop0;
                  }
               })
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.reset();
                     continue loop0;
                  }
               }
               §§goto(addr61);
            }
            addr61:
            return;
         }
         §§goto(addr82);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = Number(0);
         if(_loc6_ || this)
         {
            §§push(this.§[!F§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        loop10:
                        while(true)
                        {
                           §§pop();
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(this.§3!B§);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() == 0);
                                    if(!_loc5_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                addr122:
                                                §§push("fps = ");
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() + Math.round(_loc2_));
                                                }
                                                var _loc3_:String = §§pop();
                                                var _loc4_:int = 0;
                                                loop11:
                                                while(true)
                                                {
                                                   if(_loc4_ >= this.§[!X§.length)
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         this.§2K§.text = _loc3_;
                                                         loop13:
                                                         while(_loc6_ || this)
                                                         {
                                                            this.§2K§.mouseEnabled = false;
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  this.§3!B§ = 0;
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§[!X§);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              addr229:
                                                                              §§pop()[§§pop()][2] = 0;
                                                                              break loop13;
                                                                           }
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop()[§§pop()][1] != 0)
                                                                              {
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       §§push(" ");
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() + this.§[!X§[_loc4_][0]);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr314:
                                                                                             §§push(§§pop() + " = ");
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr296:
                                                                                                §§push(§§pop() + Math.round(this.§[!X§[_loc4_][2] / this.§[!X§[_loc4_][1]));
                                                                                             }
                                                                                             _loc3_ = §§pop() + §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                addr236:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§[!X§);
                                                                                                   addr239:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      addr251:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop24;
                                                                                                }
                                                                                                continue loop21;
                                                                                                §§goto(addr314);
                                                                                             }
                                                                                             addr315:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr296);
                                                                                    }
                                                                                    §§goto(addr314);
                                                                                 }
                                                                                 addr257:
                                                                              }
                                                                              §§goto(addr236);
                                                                           }
                                                                        }
                                                                        §§goto(addr239);
                                                                     }
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop12;
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc6_ || param1)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr315);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               _loc4_++;
                                                               §§goto(addr206);
                                                            }
                                                            §§goto(addr257);
                                                            §§goto(addr229);
                                                         }
                                                         continue loop11;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§[!X§);
                                                   }
                                                   §§goto(addr251);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop10;
                                                }
                                                if(!§§pop())
                                                {
                                                   §§push(0);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      addr39:
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc6_)
                                                         {
                                                            if(_loc6_ || param1)
                                                            {
                                                               if(false)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr122);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  break loop8;
                                                               }
                                                               addr82:
                                                            }
                                                         }
                                                         while(_loc5_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§goto(addr122);
                                                         addr109:
                                                      }
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         §§goto(addr109);
                                                         §§goto(addr39);
                                                      }
                                                      addr108:
                                                   }
                                                   break loop8;
                                                }
                                             }
                                             addr79:
                                          }
                                          §§goto(addr82);
                                       }
                                       addr68:
                                    }
                                    §§goto(addr79);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§push(§§pop() / this.§[!F§);
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(this.§3!B§);
                                    if(_loc5_ && param1)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc5_)
                                    {
                                       addr105:
                                       if(!_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr105);
                              }
                              continue loop1;
                           }
                        }
                        addr120:
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr120);
               }
            }
         }
         §§goto(addr111);
      }
      
      public function § j§(param1:String, param2:Number) : void
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
               if(§§pop() >= this.§[!X§.length)
               {
                  loop2:
                  for(; _loc5_ || param2; while(!(_loc6_ && param1))
                  {
                     §§goto(addr143);
                     §§push(this.§[!X§);
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
                              §§push(this.§[!X§);
                              addr74:
                              loop19:
                              for(; _loc5_ || param2; §§push(this.§[!X§),if(_loc6_)
                              {
                                 continue;
                              },if(_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr41);
                                          }
                                          addr247:
                                          if(§§pop()[§§pop()][0] == param1)
                                          {
                                             break loop2;
                                          }
                                          §§goto(addr255);
                                       }
                                       §§goto(addr111);
                                    }
                                    §§goto(addr82);
                                 }
                                 while(true)
                                 {
                                    if(_loc6_ && param1)
                                    {
                                       addr246:
                                       §§push(_loc4_);
                                       break;
                                    }
                                    §§goto(addr151);
                                    §§push(_loc3_);
                                 }
                                 §§goto(addr247);
                                 addr143:
                              },§§goto(addr108))
                              {
                                 §§push(_loc3_);
                                 while(_loc5_ || this)
                                 {
                                    if(_loc5_)
                                    {
                                       §§pop()[§§pop()][1] = this.§[!X§[_loc3_][1] + 1;
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop19;
                                          }
                                          addr230:
                                          while(true)
                                          {
                                             §§push(this.§[!X§);
                                             loop5:
                                             while(true)
                                             {
                                                §§pop()[this.§[!X§.length] = new Array();
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(this.§[!X§);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(int(§§pop().length - 1));
                                                      if(_loc6_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         _loc3_ = §§pop();
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(this.§[!X§);
                                                            break loop19;
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  if(_loc6_ && _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop18;
                                                               }
                                                               continue loop8;
                                                               addr59:
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break loop18;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  addr155:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(_loc6_ && param2)
                                                                        {
                                                                           break;
                                                                           addr108:
                                                                        }
                                                                        §§push(this.§[!X§);
                                                                        while(_loc5_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           while(true)
                                                                           {
                                                                              §§pop()[§§pop()][2] = 0;
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                            addr255:
                                                            _loc4_++;
                                                            continue loop0;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr254:
                                                         _loc3_ = §§pop();
                                                         §§goto(addr255);
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          addr41:
                                          §§pop()[§§pop()][2] = this.§[!X§[_loc3_][2] + param2;
                                          if(_loc6_ && param2)
                                          {
                                             continue;
                                          }
                                          §§goto(addr59);
                                       }
                                       continue loop19;
                                    }
                                    while(true)
                                    {
                                       §§pop()[§§pop()][0] = param1;
                                       continue loop2;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop()[§§pop()][1] = 0;
                                    §§goto(addr155);
                                    §§goto(addr82);
                                 }
                                 addr82:
                              }
                              while(true)
                              {
                                 §§goto(addr169);
                                 §§goto(addr74);
                              }
                           }
                           return;
                        }
                        §§goto(addr230);
                     }
                  }
                  §§push(_loc4_);
                  break;
               }
               §§push(this.§[!X§);
               §§goto(addr246);
            }
            §§goto(addr254);
         }
      }
   }
}
