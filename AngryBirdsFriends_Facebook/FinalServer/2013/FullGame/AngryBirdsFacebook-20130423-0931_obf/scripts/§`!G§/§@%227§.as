package §`!G§
{
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import §6"1§.b2World;
   
   public class §@"7§ extends §2"L§
   {
       
      
      private var §"W§:Number = 0;
      
      public function §@"7§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!_loc4_)
         {
            §§push(this.§"W§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_)
                  {
                     §§push(!§§pop());
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop18:
                              while(true)
                              {
                                 §§push(§ d§ == §^!2§);
                                 if(_loc5_)
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    addr243:
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       §§goto(addr243);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          this.§"W§ = 0;
                                          addr249:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr246:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§"W§);
                                       if(_loc5_ || this)
                                       {
                                          §§push(0);
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          if(§§pop() != §§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(Number(getBody().GetLinearVelocity().x));
                                                addr221:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   loop9:
                                                   while(_loc5_)
                                                   {
                                                      §§push(Number(getBody().GetLinearVelocity().y));
                                                      while(!_loc4_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop18;
                                                            }
                                                            §§push(this.§"W§);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        getBody().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                                                                     }
                                                                     addr163:
                                                                     §§push(this.§"W§);
                                                                     §§push(_loc2_);
                                                                     addr189:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.§"W§);
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr112:
                                                                        while(!(_loc4_ && this))
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 return;
                                                                              }
                                                                              addr24:
                                                                              addr24:
                                                                              continue loop11;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        addr159:
                                                                        §§push(this.§"W§);
                                                                        if(!(_loc5_ || param1))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        §§goto(addr163);
                                                                     }
                                                                  }
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     addr165:
                                                                     this.§"W§ = 0;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop18;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr249);
                                                }
                                                if(!(_loc5_ || this))
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   getBody().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
                                                   §§goto(addr157);
                                                }
                                             }
                                          }
                                          §§goto(addr24);
                                       }
                                       §§goto(addr221);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr261:
                        }
                        §§goto(addr244);
                     }
                  }
                  §§goto(addr261);
               }
            }
         }
         §§goto(addr146);
      }
      
      override public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc3_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     §§goto(addr48);
                  }
               }
               var _loc2_:Number = getBody().GetLinearVelocity().x;
               if(_loc4_)
               {
                  if(_loc2_ != 0)
                  {
                     if(_loc4_ || this)
                     {
                        §§push(this);
                        §§push(_loc2_);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(-§§pop());
                           if(!(_loc3_ && param1))
                           {
                              addr94:
                              §§push(§§pop() * 1.5);
                           }
                           §§pop().§"W§ = §§pop();
                           §§goto(addr97);
                        }
                        §§goto(addr94);
                     }
                  }
               }
               addr97:
               return true;
            }
            §§goto(addr48);
         }
         addr48:
         return false;
      }
   }
}
