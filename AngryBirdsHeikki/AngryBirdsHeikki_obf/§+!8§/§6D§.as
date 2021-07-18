package §+!8§
{
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   import §6A§.b2Vec2;
   
   public class §6D§ extends §`!O§
   {
       
      
      private var §%j§:Number = 0;
      
      public function §6D§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param2))
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
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§%j§);
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
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr277:
                              while(true)
                              {
                                 §§push(§[h§ == §'!V§);
                                 if(!_loc4_)
                                 {
                                    if(!(_loc5_ || this))
                                    {
                                       break;
                                    }
                                    §§push(!§§pop());
                                 }
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                           }
                           addr276:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr253:
                              while(true)
                              {
                                 this.§%j§ = 0;
                                 addr256:
                                 while(true)
                                 {
                                 }
                              }
                              addr253:
                           }
                           while(true)
                           {
                              §§push(this.§%j§);
                              while(true)
                              {
                                 §§push(0);
                                 if(_loc4_ && this)
                                 {
                                    break;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(Number(§0c§().GetLinearVelocity().x));
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          while(_loc5_ || _loc3_)
                                          {
                                             §§push(Number(§0c§().GetLinearVelocity().y));
                                             loop9:
                                             while(!_loc4_)
                                             {
                                                _loc3_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(this.§%j§);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            §§push(this.§%j§);
                                                            continue loop11;
                                                         }
                                                         if(!(_loc5_ || this))
                                                         {
                                                            break;
                                                         }
                                                         §0c§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§push(this.§%j§);
                                                            addr153:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               §§push(_loc2_);
                                                               while(true)
                                                               {
                                                                  if(_loc4_ && param1)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§%j§ = 0;
                                                                        addr167:
                                                                        while(!(_loc5_ || _loc2_))
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                     }
                                                                     addr164:
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                }
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr277);
                                       }
                                       if(!(_loc5_ || param1))
                                       {
                                          continue;
                                       }
                                       this.§%j§ = 0;
                                       §§goto(addr81);
                                    }
                                 }
                                 §§goto(addr29);
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr276);
               }
            }
         }
         §§goto(addr253);
      }
      
      override public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_ || this)
                  {
                     §§goto(addr48);
                  }
               }
               var _loc2_:Number = §0c§().GetLinearVelocity().x;
               if(!(_loc3_ && param1))
               {
                  if(_loc2_ != 0)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§push(this);
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           §§push(-§§pop());
                           if(_loc4_)
                           {
                              §§push(§§pop() * 1.5);
                           }
                        }
                        §§pop().§%j§ = §§pop();
                     }
                  }
               }
               return true;
            }
            §§goto(addr48);
         }
         addr48:
         return false;
      }
   }
}
