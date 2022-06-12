package §9"%§
{
   import §#]§.b2Vec2;
   import §1!$§.Sprite;
   import §48§.b2World;
   import §9"!§.§9"3§;
   
   public class §'!L§ extends § H§
   {
       
      
      private var §0""§:Number = 0;
      
      public function §'!L§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param3)
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
         if(!(_loc5_ && this))
         {
            §§push(this.§0""§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                     if(!_loc5_)
                     {
                        addr273:
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(§[" § == §@!h§);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          this.§0""§ = 0;
                                          addr263:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr260:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§0""§);
                                       while(true)
                                       {
                                          §§push(0);
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             §§goto(addr28);
                                          }
                                          while(true)
                                          {
                                             §§push(Number(§=!y§().GetLinearVelocity().x));
                                             continue loop0;
                                          }
                                          addr143:
                                          if(_loc5_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          addr151:
                                          §§push(_loc2_);
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                addr159:
                                                if(_loc4_)
                                                {
                                                   addr161:
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      this.§0""§ = 0;
                                                      addr171:
                                                      if(!(_loc4_ || _loc2_))
                                                      {
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§push(this.§0""§);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(!(_loc4_ || _loc3_))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr143);
                                                               }
                                                               addr182:
                                                               addr211:
                                                               while(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§push(_loc2_);
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        §§push(this.§0""§);
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc4_ || _loc3_))
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           §§push(_loc2_);
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 if(_loc5_ && _loc2_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       §=!y§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
                                                                                       continue loop16;
                                                                                    }
                                                                                    §§goto(addr159);
                                                                                 }
                                                                                 §§goto(addr171);
                                                                              }
                                                                              §§goto(addr28);
                                                                           }
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     addr191:
                                                                     while(!_loc5_)
                                                                     {
                                                                        §=!y§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                                                                        continue loop21;
                                                                     }
                                                                     continue loop3;
                                                                     §§goto(addr151);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  §§goto(addr212);
                                                                  §§goto(addr182);
                                                               }
                                                            }
                                                            §§goto(addr74);
                                                         }
                                                      }
                                                      §§goto(addr74);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr211);
                                                      §§goto(addr161);
                                                   }
                                                   addr233:
                                                }
                                                §§goto(addr191);
                                             }
                                             addr74:
                                             addr28:
                                             return;
                                          }
                                          §§goto(addr190);
                                       }
                                       continue loop1;
                                       §§goto(addr263);
                                    }
                                 }
                              }
                           }
                           addr275:
                        }
                        §§goto(addr258);
                     }
                     §§goto(addr275);
                  }
                  §§goto(addr273);
               }
            }
         }
         §§goto(addr220);
      }
      
      override public function activateSpecialPower(param1:§]a§) : Boolean
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
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(false);
                  }
                  else
                  {
                     var _loc2_:Number = §=!y§().GetLinearVelocity().x;
                     §§goto(addr34);
                  }
               }
               §§goto(addr34);
            }
            return §§pop();
         }
         addr34:
         if(_loc4_ || param1)
         {
            if(_loc2_ != 0)
            {
               if(_loc4_ || this)
               {
                  §§push(this);
                  §§push(_loc2_);
                  if(!(_loc3_ && param1))
                  {
                     §§push(-§§pop());
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() * 1.5);
                     }
                  }
                  §§pop().§0""§ = §§pop();
               }
            }
         }
         return true;
      }
   }
}
