package §3p§
{
   import §&L§.b2Vec2;
   import §2!H§.LevelMain;
   import §6!7§.Sprite;
   import §]=§.b2World;
   
   public class §>!5§ extends §4!G§
   {
       
      
      private var §9^§:Number = 0;
      
      public function §>!5§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc3_:* = NaN;
         if(!_loc4_)
         {
            §§push(this.§9^§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                     if(!_loc4_)
                     {
                        addr278:
                        §§push(Boolean(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              addr285:
                              while(true)
                              {
                                 §§push(§0o§ == §]!3§);
                                 if(!(_loc4_ && this))
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(!§§pop());
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§9^§ = 0;
                                 addr268:
                                 while(true)
                                 {
                                 }
                              }
                              addr265:
                           }
                           loop8:
                           while(true)
                           {
                              §§push(this.§9^§);
                              loop9:
                              while(true)
                              {
                                 §§push(0);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr24);
                                 }
                                 while(true)
                                 {
                                    §§push(Number(§9f§().GetLinearVelocity().x));
                                    continue loop0;
                                 }
                                 addr162:
                                 if(!(_loc5_ || param1))
                                 {
                                    continue;
                                 }
                                 §§push(_loc2_);
                                 while(§§pop() >= §§pop())
                                 {
                                    §§push(this.§9^§);
                                    loop17:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr78:
                                       loop18:
                                       while(§§pop() > §§pop())
                                       {
                                          while(_loc5_)
                                          {
                                             addr81:
                                             if(!(_loc4_ && param1))
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §9f§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
                                                      while(_loc5_ || _loc3_)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            addr123:
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               §§goto(addr285);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(Number(§9f§().GetLinearVelocity().y));
                                                                  loop13:
                                                                  for(; !(_loc4_ && _loc3_); while(true)
                                                                  {
                                                                     if(_loc4_ && _loc3_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     §§goto(addr162);
                                                                  },continue loop9)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§9^§);
                                                                        continue loop13;
                                                                        §§goto(addr81);
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                                  §§goto(addr123);
                                                               }
                                                               addr221:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr183:
                                                            if(_loc5_)
                                                            {
                                                               addr147:
                                                               addr146:
                                                               if(this.§9^§ >= _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               addr72:
                                                               break loop18;
                                                               addr185:
                                                            }
                                                            §§goto(addr265);
                                                         }
                                                      }
                                                      this.§9^§ = 0;
                                                      break;
                                                      addr109:
                                                   }
                                                   continue loop8;
                                                }
                                                §§goto(addr208);
                                             }
                                             §§goto(addr200);
                                          }
                                          §§goto(addr72);
                                       }
                                       addr24:
                                       return;
                                    }
                                 }
                                 §9f§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                                 §§goto(addr183);
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr278);
               }
            }
         }
         §§goto(addr185);
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc3_ && this))
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr46);
                     }
                  }
                  var _loc2_:Number = §9f§().GetLinearVelocity().x;
                  if(_loc4_)
                  {
                     if(_loc2_ != 0)
                     {
                        if(!(_loc3_ && param1))
                        {
                           addr75:
                           §§push(this);
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              §§push(-§§pop());
                              if(!(_loc3_ && param1))
                              {
                                 §§push(§§pop() * 1.5);
                              }
                           }
                           §§pop().§9^§ = §§pop();
                        }
                     }
                     return true;
                  }
                  §§goto(addr75);
               }
            }
            §§goto(addr46);
         }
         addr46:
         return false;
      }
   }
}
