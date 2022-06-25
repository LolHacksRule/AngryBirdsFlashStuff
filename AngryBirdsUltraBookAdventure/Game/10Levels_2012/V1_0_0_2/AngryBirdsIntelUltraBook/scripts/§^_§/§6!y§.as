package §^_§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §6!y§ extends Sprite
   {
      
      private static const §27§:int = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
         }
         loop0:
         while(true)
         {
            this.§>S§ = param1;
            loop1:
            while(true)
            {
               if(param1)
               {
                  loop2:
                  while(true)
                  {
                     this.§2K§ = new TextField();
                     addr185:
                     while(true)
                     {
                        this.§2K§.text = "...";
                        loop4:
                        for(; _loc3_; if(!(_loc3_ || _loc3_))
                        {
                           continue;
                        },this.§2K§.width = 150,while(true)
                        {
                           this.§2K§.mouseEnabled = false;
                           loop9:
                           while(true)
                           {
                              addChild(this.§2K§);
                              addr120:
                              while(true)
                              {
                                 if(param2)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          §§goto(addr80);
                                       }
                                       break;
                                    }
                                    continue loop9;
                                 }
                                 addr66:
                                 while(true)
                                 {
                                    this.x = 250;
                                    addr70:
                                    while(!_loc4_)
                                    {
                                    }
                                    continue loop9;
                                 }
                              }
                              §§goto(addr138);
                           }
                        })
                        {
                           this.§2K§.textColor = 16711680;
                           loop5:
                           while(true)
                           {
                              this.§2K§.selectable = false;
                              while(true)
                              {
                                 this.§2K§.height = 40;
                                 addr138:
                                 while(!_loc4_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop5;
                                 addr80:
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               loop14:
               while(true)
               {
                  this.§[!X§ = new Array();
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(_loc3_)
                        {
                           if(!(_loc4_ && param2))
                           {
                              continue loop1;
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr132);
                     }
                     break;
                     addr65:
                     this.mouseEnabled = false;
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        break loop14;
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr70);
               }
               return;
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
            §§push((_loc2_ = this).§3!B§);
            if(_loc4_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && this))
            {
               _loc2_.§3!B§ = _loc3_;
            }
            if(!_loc5_)
            {
               §§push(this);
               §§push(this.§[!F§);
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§[!F§ = §§pop();
            }
            while(this.§[!F§ >= §27§)
            {
               if(!_loc5_)
               {
                  this.reset();
               }
               if(_loc4_)
               {
                  addr76:
                  break;
               }
            }
            return;
         }
         §§goto(addr76);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = Number(0);
         if(_loc6_)
         {
            §§push(this.§[!F§);
            loop0:
            while(true)
            {
               §§push(0);
               addr117:
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
                                 §§push(this.§3!B§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() == 0);
                                    if(!(_loc5_ && param1))
                                    {
                                       if(!(_loc6_ || _loc3_))
                                       {
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                addr122:
                                                §§push("fps = ");
                                                if(!(_loc5_ && param1))
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
                                                         while(true)
                                                         {
                                                            this.§2K§.mouseEnabled = false;
                                                            while(!_loc5_)
                                                            {
                                                               this.§3!B§ = 0;
                                                               while(_loc6_)
                                                               {
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     this.§[!F§ = 0;
                                                                     if(_loc5_ && param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        return;
                                                                     }
                                                                     addr325:
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§[!X§);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           addr255:
                                                                           addr267:
                                                                           while(_loc6_)
                                                                           {
                                                                              §§pop()[§§pop()][1] = 0;
                                                                              continue loop20;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop()[§§pop()][1] == 0)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(" ");
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() + this.§[!X§[_loc4_][0]);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(§§pop() + " = ");
                                                                                          if(_loc5_ && _loc3_)
                                                                                          {
                                                                                          }
                                                                                          addr324:
                                                                                          _loc3_ = §§pop() + §§pop();
                                                                                          addr322:
                                                                                          §§goto(addr325);
                                                                                       }
                                                                                       §§push(§§pop() + Math.round(this.§[!X§[_loc4_][2] / this.§[!X§[_loc4_][1]));
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                                 §§goto(addr324);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                            }
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§[!X§);
                                                   }
                                                   §§goto(addr266);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§push(0);
                                                      if(!_loc5_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               addr106:
                                                               if(!_loc5_)
                                                               {
                                                                  if(!(_loc6_ || _loc3_))
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§goto(addr122);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     break loop4;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               addr106:
                                                            }
                                                            addr104:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc2_ = §§pop();
                                                         §§goto(addr106);
                                                      }
                                                      addr82:
                                                      §§push(§§pop() / this.§[!F§);
                                                      if(_loc6_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr104);
                                                   }
                                                   break loop6;
                                                }
                                                continue loop2;
                                             }
                                             addr78:
                                          }
                                          §§goto(addr106);
                                       }
                                    }
                                    §§goto(addr78);
                                 }
                                 §§goto(addr82);
                              }
                           }
                           §§goto(addr122);
                        }
                     }
                     §§goto(addr72);
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function § j§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         while(true)
         {
            §§push(_loc4_);
            if(!_loc5_)
            {
               if(§§pop() >= this.§[!X§.length)
               {
                  while(true)
                  {
                     §§push(_loc3_);
                     addr203:
                     loop4:
                     while(!(_loc5_ && param1))
                     {
                        if(§§pop() == -1)
                        {
                           while(true)
                           {
                              §§push(this.§[!X§);
                              while(true)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§pop()[this.§[!X§.length] = new Array();
                                    while(true)
                                    {
                                       §§push(this.§[!X§);
                                       while(true)
                                       {
                                          §§push(int(§§pop().length - 1));
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          if(_loc6_ || param2)
                                          {
                                             _loc3_ = §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.§[!X§);
                                                addr164:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   addr165:
                                                   while(true)
                                                   {
                                                      §§pop()[§§pop()][0] = param1;
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr255:
                                             _loc3_ = §§pop();
                                             §§goto(addr256);
                                          }
                                          if(!(_loc6_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          §§goto(addr130);
                                          §§push(_loc3_);
                                       }
                                       continue loop4;
                                    }
                                 }
                                 else
                                 {
                                    addr247:
                                    §§push(_loc4_);
                                 }
                                 §§goto(addr248);
                              }
                           }
                        }
                        §§goto(addr75);
                     }
                     while(true)
                     {
                        §§goto(addr255);
                     }
                  }
               }
               else
               {
                  §§push(this.§[!X§);
               }
               §§goto(addr247);
            }
            §§goto(addr203);
         }
      }
   }
}
