package §,h§
{
   import §!X§.§86§;
   import §0!G§.b2Vec2;
   import §]@§.Sprite;
   import §`j§.b2World;
   
   public class §3!G§ extends §4!9§
   {
       
      
      private var §,!3§:Number = 0;
      
      public function §3!G§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc3_:* = NaN;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§,!3§);
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
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr281:
                              do
                              {
                                 §§push(§,!&§ == §+?§);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                              }
                              while(_loc4_);
                              
                              continue loop2;
                           }
                           addr280:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§,!3§ = 0;
                                 addr260:
                                 while(true)
                                 {
                                 }
                              }
                              addr257:
                           }
                           while(true)
                           {
                              §§push(this.§,!3§);
                              while(true)
                              {
                                 §§push(0);
                                 if(_loc5_ && _loc2_)
                                 {
                                    break;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(Number(§?!7§().GetLinearVelocity().x));
                                       continue loop0;
                                       addr164:
                                       if(_loc4_ || this)
                                       {
                                          addr28:
                                          return;
                                          addr104:
                                          addr171:
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr28);
                                 }
                                 loop13:
                                 for(; !(_loc5_ && _loc3_); if(_loc5_ && _loc2_)
                                 {
                                    continue;
                                 },§§goto(addr46))
                                 {
                                    §§push(_loc2_);
                                    loop14:
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          §§push(this.§,!3§);
                                          loop15:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             loop16:
                                             while(§§pop() > §§pop())
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   §?!7§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
                                                   addr122:
                                                   while(_loc4_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   loop19:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§goto(addr164);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §?!7§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                                                            addr195:
                                                            while(_loc4_ || _loc3_)
                                                            {
                                                               §§push(this.§,!3§);
                                                               while(_loc4_ || param1)
                                                               {
                                                                  §§push(_loc2_);
                                                                  continue loop14;
                                                               }
                                                               continue loop0;
                                                            }
                                                            addr210:
                                                            while(_loc4_)
                                                            {
                                                               §§push(this.§,!3§);
                                                               continue loop13;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(Number(§?!7§().GetLinearVelocity().y));
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  §§goto(addr210);
                                                                  addr46:
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          this.§,!3§ = 0;
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr281);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr257);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr195);
                                                                                 }
                                                                              }
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       break loop16;
                                                                                    }
                                                                                    break loop17;
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                              §§goto(addr122);
                                                                           }
                                                                           break loop16;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr184:
                                                      }
                                                   }
                                                   §§goto(addr104);
                                                }
                                                §§goto(addr260);
                                             }
                                             §§goto(addr28);
                                          }
                                       }
                                       §§goto(addr184);
                                    }
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr280);
                  }
               }
            }
         }
         §§goto(addr171);
      }
      
      override public function activateSpecialPower(param1:§6M§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc4_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr48:
                     var _loc2_:Number = §?!7§().GetLinearVelocity().x;
                     if(!_loc4_)
                     {
                        if(_loc2_ != 0)
                        {
                           if(!_loc4_)
                           {
                              addr61:
                              §§push(this);
                              §§push(_loc2_);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(-§§pop());
                                 if(!_loc4_)
                                 {
                                    addr83:
                                    §§push(§§pop() * 1.5);
                                 }
                                 §§pop().§,!3§ = §§pop();
                                 §§goto(addr86);
                              }
                              §§goto(addr83);
                           }
                        }
                        addr86:
                        return true;
                     }
                     §§goto(addr61);
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
