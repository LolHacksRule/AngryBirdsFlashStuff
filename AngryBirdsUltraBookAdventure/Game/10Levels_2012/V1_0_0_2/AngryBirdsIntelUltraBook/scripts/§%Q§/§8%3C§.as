package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§^g§;
   import §>H§.b2Vec2;
   import §`w§.b2World;
   
   public class §8<§ extends §3L§
   {
       
      
      private var §>T§:Number = 0;
      
      public function §8<§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param1)
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
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§>T§);
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
                     §§push(!§§pop());
                  }
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr286:
                           do
                           {
                              §§push(§%!R§ == §-!!§);
                              if(!(_loc5_ && param1))
                              {
                                 §§push(!§§pop());
                              }
                              if(_loc5_ && param1)
                              {
                                 continue loop3;
                              }
                           }
                           while(!(_loc5_ && _loc2_));
                           
                           continue loop2;
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(!(_loc5_ && param1))
                           {
                              this.§>T§ = 0;
                              while(true)
                              {
                                 loop14:
                                 while(!(_loc5_ && _loc3_))
                                 {
                                    §§push(this.§>T§);
                                    loop15:
                                    for(; !(_loc5_ && param1); loop17:
                                    while(true)
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(_loc2_);
                                                while(_loc4_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(!(_loc4_ || _loc2_))
                                                         {
                                                            continue loop17;
                                                         }
                                                         if(_loc4_ || this)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §5b§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
                                                               continue loop17;
                                                            }
                                                            §§goto(addr163);
                                                         }
                                                         else
                                                         {
                                                            addr147:
                                                            this.§>T§ = 0;
                                                            addr150:
                                                         }
                                                      }
                                                      §§goto(addr28);
                                                   }
                                                   §§goto(addr162);
                                                   §§goto(addr163);
                                                }
                                                addr146:
                                                if(§§pop() >= §§pop())
                                                {
                                                }
                                                §§goto(addr147);
                                                addr92:
                                             }
                                             §§goto(addr225);
                                          }
                                          break;
                                       }
                                       continue loop15;
                                    },§§goto(addr204))
                                    {
                                       §§push(_loc2_);
                                       while(§§pop() >= §§pop())
                                       {
                                          §§push(this.§>T§);
                                          continue loop15;
                                       }
                                       if(!(_loc5_ && param1))
                                       {
                                          addr170:
                                          if(!(_loc5_ && this))
                                          {
                                             §5b§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                                             addr188:
                                             if(!(_loc4_ || param1))
                                             {
                                                continue loop14;
                                             }
                                             if(_loc5_)
                                             {
                                                continue loop6;
                                             }
                                             while(true)
                                             {
                                                §§push(this.§>T§);
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§5b§().GetLinearVelocity().x));
                                                addr225:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                }
                                                §§goto(addr170);
                                             }
                                             addr220:
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(Number(§5b§().GetLinearVelocity().y));
                                          addr204:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             continue loop14;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(0);
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          addr28:
                                          return;
                                       }
                                       §§goto(addr220);
                                       §§goto(addr154);
                                    }
                                    addr154:
                                    continue loop1;
                                 }
                              }
                           }
                           §§goto(addr286);
                        }
                        while(true)
                        {
                           §§goto(addr216);
                           §§goto(addr275);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr197);
      }
      
      override public function activateSpecialPower(param1:§=[§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr48:
                     var _loc2_:Number = §5b§().GetLinearVelocity().x;
                     if(!(_loc4_ && this))
                     {
                        if(_loc2_ != 0)
                        {
                           if(!_loc4_)
                           {
                              addr76:
                              §§push(this);
                              §§push(_loc2_);
                              if(_loc3_)
                              {
                                 §§push(-§§pop());
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr88:
                                    §§push(§§pop() * 1.5);
                                 }
                                 §§pop().§>T§ = §§pop();
                                 §§goto(addr91);
                              }
                              §§goto(addr88);
                           }
                        }
                        addr91:
                        return true;
                     }
                     §§goto(addr76);
                  }
               }
               §§goto(addr48);
            }
            return §§pop();
         }
         §§goto(addr48);
      }
   }
}
