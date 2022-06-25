package §_-lt§
{
   import §_-TG§.§_-00u§;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   
   public class §_-3i§ extends §_-Fh§
   {
       
      
      private var §_-0Cw§:Number = 0;
      
      public function §_-3i§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!_loc4_)
         {
            §§push(this.§_-0Cw§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_ || _loc3_)
                  {
                     §§push(!§§pop());
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           loop11:
                           while(true)
                           {
                              §§pop();
                              addr267:
                              loop6:
                              while(true)
                              {
                                 §§push(§_-Kh§ == §_-8l§);
                                 if(!_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop11;
                                    }
                                    addr241:
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       break loop6;
                                       §§goto(addr241);
                                    }
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       this.§_-0Cw§ = 0;
                                       addr247:
                                       while(!_loc4_)
                                       {
                                       }
                                       §§goto(addr267);
                                    }
                                    addr244:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§_-0Cw§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       if(§§pop() != §§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§push(Number(§_-SJ§().GetLinearVelocity().x));
                                             loop10:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                addr222:
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(Number(§_-SJ§().GetLinearVelocity().y));
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      _loc3_ = §§pop();
                                                      loop14:
                                                      while(!(_loc4_ && _loc3_))
                                                      {
                                                         §§push(this.§_-0Cw§);
                                                         while(!(_loc4_ && param1))
                                                         {
                                                            continue loop8;
                                                            loop17:
                                                            for(; _loc5_ || param1; §§push(this.§_-0Cw§),if(_loc4_)
                                                            {
                                                               continue;
                                                            },if(_loc5_ || _loc3_)
                                                            {
                                                               continue loop13;
                                                            },§§goto(addr144))
                                                            {
                                                               §§push(_loc2_);
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              addr24:
                                                                              addr24:
                                                                              addr178:
                                                                              §_-SJ§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 §§push(this.§_-0Cw§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    addr145:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             break loop20;
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                       addr177:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             §§push(this.§_-0Cw§);
                                                                                             continue loop17;
                                                                                          }
                                                                                          §§goto(addr178);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr24:
                                                                              return;
                                                                              addr78:
                                                                           }
                                                                           §§goto(addr78);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr138:
                                                                           while(_loc5_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           addr138:
                                                                        }
                                                                        §§goto(addr148);
                                                                     }
                                                                     §§goto(addr24);
                                                                  }
                                                                  §§goto(addr145);
                                                                  addr47:
                                                                  §§push(_loc2_);
                                                                  if(_loc4_ && _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              this.§_-0Cw§ = 0;
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr244);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr138);
                                                                        }
                                                                        §§goto(addr24);
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                  }
                                                                  §§goto(addr24);
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                         continue loop10;
                                                      }
                                                      §§goto(addr247);
                                                      if(_loc4_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr47);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr24);
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr266:
                        }
                        §§goto(addr242);
                     }
                  }
                  §§goto(addr266);
               }
            }
         }
         §§goto(addr222);
      }
      
      override public function activateSpecialPower(param1:§_-30§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§goto(addr42);
                  }
               }
               var _loc2_:Number = §_-SJ§().GetLinearVelocity().x;
               if(_loc3_ || _loc2_)
               {
                  if(_loc2_ != 0)
                  {
                     if(_loc3_)
                     {
                        §§push(this);
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           §§push(-§§pop());
                           if(!_loc4_)
                           {
                              §§push(§§pop() * 1.5);
                           }
                        }
                        §§pop().§_-0Cw§ = §§pop();
                     }
                  }
               }
               return true;
            }
            §§goto(addr42);
         }
         addr42:
         return false;
      }
   }
}
