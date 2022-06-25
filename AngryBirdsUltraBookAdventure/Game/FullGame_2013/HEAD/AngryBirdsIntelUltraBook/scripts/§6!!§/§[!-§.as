package §6!!§
{
   import §#!,§.Sprite;
   import §>!8§.b2Vec2;
   import §>!L§.b2World;
   import §]!@§.LevelMain;
   
   public class §[!-§ extends §6!f§
   {
       
      
      private var §>!7§:Number = 0;
      
      public function §[!-§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
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
            §§push(this.§>!7§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop());
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              loop19:
                              while(true)
                              {
                                 §§pop();
                                 loop20:
                                 while(true)
                                 {
                                    §§push(§3W§ == §>!"§);
                                    if(_loc4_)
                                    {
                                       continue loop19;
                                    }
                                    §§push(!§§pop());
                                    if(!_loc4_)
                                    {
                                       continue loop19;
                                    }
                                    addr256:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr267:
                                          while(true)
                                          {
                                             this.§>!7§ = 0;
                                             addr270:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr267:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§>!7§);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(0);
                                             if(_loc4_ && _loc3_)
                                             {
                                                break;
                                             }
                                             if(§§pop() != §§pop())
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(Number(§@!'§().GetLinearVelocity().x));
                                                   loop9:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(Number(§@!'§().GetLinearVelocity().y));
                                                         loop11:
                                                         while(!_loc4_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            loop12:
                                                            while(true)
                                                            {
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§push(this.§>!7§);
                                                                  loop13:
                                                                  while(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§push(_loc2_);
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           addr164:
                                                                           if(!(_loc5_ || param1))
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              §@!'§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                                                                              §§push(this.§>!7§);
                                                                              addr185:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr270);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this.§>!7§);
                                                                           while(_loc5_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(this.§>!7§);
                                                                              continue loop13;
                                                                              if(_loc4_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(_loc2_);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(§§pop() <= §§pop())
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr44:
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             §§goto(addr164);
                                                                                          }
                                                                                          this.§>!7§ = 0;
                                                                                          addr131:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §@!'§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
                                                                                             addr114:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr270);
                                                                                             §§goto(addr44);
                                                                                          }
                                                                                          addr102:
                                                                                       }
                                                                                       if(!(_loc5_ || param1))
                                                                                       {
                                                                                          §§goto(addr185);
                                                                                       }
                                                                                       addr24:
                                                                                       return;
                                                                                       addr75:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr72:
                                                                                       if(_loc4_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr24);
                                                                                    }
                                                                                    §§goto(addr114);
                                                                                 }
                                                                                 §§goto(addr24);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(_loc5_ || param1)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       §§goto(addr102);
                                                                                    }
                                                                                    §§goto(addr24);
                                                                                 }
                                                                                 addr130:
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    §§goto(addr131);
                                                                                 }
                                                                                 addr92:
                                                                              }
                                                                              §§goto(addr75);
                                                                           }
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        §§goto(addr130);
                                                                        §§push(_loc2_);
                                                                     }
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               continue loop20;
                                                            }
                                                            continue loop20;
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr24);
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                              addr294:
                           }
                           while(true)
                           {
                              §§goto(addr256);
                              §§goto(addr254);
                           }
                        }
                        §§goto(addr294);
                     }
                  }
               }
            }
         }
         §§goto(addr267);
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_)
            {
               §§push(!§§pop());
               if(_loc3_ || this)
               {
                  §§goto(addr46);
               }
               return §§pop();
            }
            addr46:
            if(§§pop())
            {
               if(!(_loc4_ && param1))
               {
                  §§push(false);
               }
               else
               {
                  §§goto(addr66);
               }
            }
            §§goto(addr66);
         }
         addr66:
         var _loc2_:Number = §@!'§().GetLinearVelocity().x;
         if(_loc3_)
         {
            if(_loc2_ != 0)
            {
               if(_loc3_)
               {
                  §§push(this);
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push(-§§pop());
                     if(_loc3_)
                     {
                        addr86:
                        §§push(§§pop() * 1.5);
                     }
                     §§pop().§>!7§ = §§pop();
                     §§goto(addr89);
                  }
                  §§goto(addr86);
               }
            }
         }
         addr89:
         return true;
      }
   }
}
