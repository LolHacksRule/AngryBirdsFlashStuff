package § var§
{
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §40§.§5G§;
   import §`g§.Sprite;
   
   public class § !B§ extends §3!5§
   {
       
      
      private var §@!x§:Number = 0;
      
      public function § !B§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§@!x§);
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
                     §§push(!§§pop());
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop19:
                              while(true)
                              {
                                 §§push(§0M§ == §]!3§);
                                 if(_loc4_ || param1)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 addr246:
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          this.§@!x§ = 0;
                                       }
                                       while(true)
                                       {
                                       }
                                       addr270:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§@!x§);
                                       while(true)
                                       {
                                          §§push(0);
                                          if(!(_loc4_ || _loc2_))
                                          {
                                             break;
                                          }
                                          if(§§pop() != §§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§push(Number(§63§().GetLinearVelocity().x));
                                                loop8:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(Number(§63§().GetLinearVelocity().y));
                                                      loop10:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(this.§@!x§);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               loop13:
                                                               while(§§pop() >= §§pop())
                                                               {
                                                                  §§push(this.§@!x§);
                                                                  while(_loc4_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     continue loop12;
                                                                     addr162:
                                                                     §§push(this.§@!x§);
                                                                     if(_loc5_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(_loc2_);
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 addr50:
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       while(_loc4_ || _loc2_)
                                                                                       {
                                                                                          if(_loc5_ && _loc2_)
                                                                                          {
                                                                                             addr182:
                                                                                             break loop13;
                                                                                             addr141:
                                                                                          }
                                                                                          §63§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                if(!(_loc4_ || param1))
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                if(_loc5_ && _loc3_)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                §§goto(addr162);
                                                                                             }
                                                                                             break;
                                                                                             §§goto(addr50);
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr184:
                                                                                             this.§@!x§ = 0;
                                                                                             addr28:
                                                                                             return;
                                                                                             addr187:
                                                                                             addr79:
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       §§push(this.§@!x§);
                                                                                       break;
                                                                                       addr106:
                                                                                       addr204:
                                                                                    }
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       this.§@!x§ = 0;
                                                                                       addr64:
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       §§goto(addr187);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr270);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr141);
                                                                              }
                                                                              §§goto(addr64);
                                                                           }
                                                                           §§goto(addr28);
                                                                        }
                                                                        addr181:
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           §§goto(addr182);
                                                                        }
                                                                        §§goto(addr79);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              §§goto(addr106);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     §§goto(addr28);
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               §63§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                                                               §§goto(addr204);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr28);
                                          }
                                          if(!(_loc4_ || this))
                                          {
                                             continue;
                                          }
                                          §§goto(addr181);
                                          §§push(_loc2_);
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr246);
                                 }
                              }
                              continue loop2;
                           }
                           addr285:
                        }
                        §§goto(addr263);
                     }
                     §§goto(addr285);
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_ || this)
                  {
                     §§goto(addr53);
                  }
               }
               var _loc2_:Number = §63§().GetLinearVelocity().x;
               if(_loc4_)
               {
                  if(_loc2_ != 0)
                  {
                     if(!_loc3_)
                     {
                        addr67:
                        §§push(this);
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           §§push(-§§pop());
                           if(!_loc3_)
                           {
                              §§push(§§pop() * 1.5);
                           }
                        }
                        §§pop().§@!x§ = §§pop();
                     }
                  }
                  return true;
               }
               §§goto(addr67);
            }
            §§goto(addr53);
         }
         addr53:
         return false;
      }
   }
}
