package §;8§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §<!"§ extends Sprite
   {
      
      private static const § Y§:int = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            § Y§ = 1000;
         }
      }
      
      private var §0! §:TextField;
      
      private var §4o§:Boolean;
      
      private var §,T§:int = 0;
      
      private var §58§:Number = 0;
      
      private var §#e§:Array;
      
      public function §<!"§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§4o§ = param1;
               while(true)
               {
                  if(param1)
                  {
                     this.§0! § = new TextField();
                     this.§0! §.text = "...";
                     while(true)
                     {
                        this.§0! §.textColor = 16711680;
                        this.§0! §.selectable = false;
                        loop3:
                        while(true)
                        {
                           this.§0! §.height = 40;
                           loop4:
                           while(!_loc4_)
                           {
                              this.§0! §.width = 150;
                              while(true)
                              {
                                 this.§0! §.mouseEnabled = false;
                                 if(!_loc4_)
                                 {
                                    addChild(this.§0! §);
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop0;
                        }
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                        §§goto(addr43);
                     }
                  }
                  while(true)
                  {
                     this.§#e§ = new Array();
                     do
                     {
                        this.mouseEnabled = false;
                     }
                     while(!_loc3_);
                     
                     if(_loc3_)
                     {
                        return;
                     }
                     §§goto(addr47);
                     §§goto(addr56);
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§,T§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               _loc2_.§,T§ = _loc3_;
            }
            if(_loc5_)
            {
               §§push(this);
               §§push(this.§58§);
               if(_loc5_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§58§ = §§pop();
            }
            while(this.§58§ >= § Y§)
            {
               if(_loc5_ || this)
               {
                  this.reset();
               }
               if(!_loc4_)
               {
                  addr82:
                  break;
               }
            }
            return;
         }
         §§goto(addr82);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = Number(0);
         if(_loc6_)
         {
            §§push(this.§58§);
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
                                 §§push(this.§,T§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() == 0);
                                    if(!_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(param1);
                                          }
                                          addr83:
                                          §§push("fps = ");
                                          if(_loc6_ || this)
                                          {
                                             §§push(§§pop() + Math.round(_loc2_));
                                          }
                                          var _loc3_:String = §§pop();
                                          var _loc4_:int = 0;
                                          loop9:
                                          while(true)
                                          {
                                             if(_loc4_ >= this.§#e§.length)
                                             {
                                                if(_loc6_ || _loc2_)
                                                {
                                                   if(!(_loc6_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   this.§0! §.text = _loc3_;
                                                }
                                                while(true)
                                                {
                                                   this.§0! §.mouseEnabled = false;
                                                   while(!(_loc5_ && _loc3_))
                                                   {
                                                      this.§,T§ = 0;
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         this.§58§ = 0;
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            return;
                                                         }
                                                         continue;
                                                         continue;
                                                      }
                                                      addr237:
                                                      _loc4_++;
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(this.§#e§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   addr259:
                                                   addr233:
                                                   while(true)
                                                   {
                                                      if(§§pop()[§§pop()][1] != 0)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(" ");
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§push(§§pop() + this.§#e§[_loc4_][0]);
                                                               if(!_loc5_)
                                                               {
                                                                  addr316:
                                                                  §§push(§§pop() + " = ");
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr298:
                                                                     §§push(§§pop() + Math.round(this.§#e§[_loc4_][2] / this.§#e§[_loc4_][1]));
                                                                  }
                                                                  _loc3_ = §§pop() + §§pop();
                                                                  §§push(this.§#e§);
                                                                  continue loop10;
                                                               }
                                                            }
                                                            §§goto(addr298);
                                                         }
                                                      }
                                                      §§goto(addr316);
                                                   }
                                                   §§pop()[§§pop()][2] = 0;
                                                }
                                             }
                                             §§goto(addr237);
                                          }
                                       }
                                    }
                                    while(!§§pop())
                                    {
                                       §§push(0);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(_loc5_ && _loc2_)
                                          {
                                             continue loop6;
                                          }
                                          §§push(Number(§§pop()));
                                          if(_loc6_ || this)
                                          {
                                             if(_loc5_)
                                             {
                                                break loop5;
                                             }
                                             _loc2_ = §§pop();
                                             if(!_loc5_)
                                             {
                                                if(!(_loc6_ || _loc2_))
                                                {
                                                   break loop6;
                                                }
                                                if(_loc6_ || param1)
                                                {
                                                   if(false)
                                                   {
                                                      continue loop5;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr83);
                                                }
                                                §§goto(addr83);
                                             }
                                             addr111:
                                             if(_loc6_ || this)
                                             {
                                                break loop4;
                                             }
                                             continue loop4;
                                          }
                                          addr110:
                                          _loc2_ = §§pop();
                                          §§goto(addr111);
                                       }
                                       §§push(§§pop() / this.§58§);
                                       if(_loc6_ || this)
                                       {
                                          §§push(this.§,T§);
                                          if(_loc5_ && this)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_)
                                          {
                                             addr109:
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr110);
                                       }
                                       §§goto(addr109);
                                    }
                                    break;
                                 }
                                 §§goto(addr87);
                              }
                              continue loop0;
                           }
                           §§goto(addr83);
                        }
                     }
                     §§goto(addr81);
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §?1§(param1:String, param2:Number) : void
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
               if(§§pop() >= this.§#e§.length)
               {
                  §§push(_loc3_);
                  loop2:
                  while(§§pop() == -1)
                  {
                     §§push(this.§#e§);
                     do
                     {
                        §§pop()[this.§#e§.length] = new Array();
                        §§push(this.§#e§);
                     }
                     while(!_loc5_);
                     
                     §§push(int(§§pop().length - 1));
                     if(!_loc5_)
                     {
                        continue;
                     }
                     if(!(_loc5_ || this))
                     {
                        continue loop1;
                     }
                     _loc3_ = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(this.§#e§);
                        loop5:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              §§push(_loc3_);
                              loop6:
                              while(true)
                              {
                                 §§pop()[§§pop()][0] = param1;
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§#e§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       while(true)
                                       {
                                          §§pop()[§§pop()][1] = 0;
                                          §§push(this.§#e§);
                                          while(_loc5_)
                                          {
                                             §§push(_loc3_);
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop()[§§pop()][2] = 0;
                                                   while(true)
                                                   {
                                                      break loop2;
                                                      addr49:
                                                      §§pop()[§§pop()][2] = this.§#e§[_loc3_][2] + param2;
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            return;
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                   continue;
                                                }
                                                continue loop6;
                                             }
                                             loop13:
                                             while(!(_loc6_ && param1))
                                             {
                                                §§push(_loc3_);
                                                while(true)
                                                {
                                                   §§pop()[§§pop()][1] = this.§#e§[_loc3_][1] + 1;
                                                   if(_loc5_)
                                                   {
                                                      if(_loc6_ && param2)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§#e§);
                                                      if(_loc6_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§goto(addr32);
                                                      continue loop13;
                                                   }
                                                   §§push(_loc3_);
                                                   addr32:
                                                   continue loop4;
                                                   if(_loc6_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr40);
                                                }
                                                continue loop0;
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              addr208:
                              §§push(_loc4_);
                           }
                           if(§§pop()[§§pop()][0] == param1)
                           {
                              §§push(_loc4_);
                              if(!(_loc6_ && param2))
                              {
                                 §§push(int(§§pop()));
                                 break loop1;
                              }
                              break loop1;
                           }
                           addr201:
                           _loc4_++;
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr73);
                  }
               }
               else
               {
                  §§push(this.§#e§);
               }
               §§goto(addr208);
            }
            _loc3_ = §§pop();
            §§goto(addr201);
         }
      }
   }
}
