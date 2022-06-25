package §=b§
{
   import §#V§.b2World;
   import §2_§.§'u§;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   
   public class §6!x§ extends §0d§
   {
       
      
      private var §[!N§:Number = 0;
      
      public function §6!x§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         if(_loc5_ || _loc2_)
         {
            §§push(this.§[!N§);
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
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr262:
                              while(true)
                              {
                                 §§push(§&!>§ == §]l§);
                                 if(!_loc4_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(_loc4_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc5_ || param1))
                                 {
                                    continue loop3;
                                 }
                                 if(_loc4_ && _loc3_)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§[!N§ = 0;
                                 addr251:
                                 while(_loc5_)
                                 {
                                 }
                                 §§goto(addr262);
                              }
                              addr248:
                           }
                           while(true)
                           {
                              §§push(this.§[!N§);
                              while(true)
                              {
                                 §§push(0);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(Number(§3J§().GetLinearVelocity().x));
                                          loop11:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr207:
                                             while(true)
                                             {
                                                §§push(Number(§3J§().GetLinearVelocity().y));
                                                continue loop11;
                                             }
                                          }
                                       }
                                       break;
                                       while(_loc5_ || this)
                                       {
                                          §3J§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
                                          §§goto(addr130);
                                          §§goto(addr65);
                                       }
                                    }
                                    §§goto(addr251);
                                 }
                                 §§goto(addr29);
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr262);
      }
      
      override public function activateSpecialPower(param1:§>!e§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc3_ && this))
            {
               if(!§§pop())
               {
                  if(_loc4_ || _loc2_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr54:
                     var _loc2_:Number = §3J§().GetLinearVelocity().x;
                     if(!_loc3_)
                     {
                        if(_loc2_ != 0)
                        {
                           if(_loc4_)
                           {
                              addr77:
                              §§push(this);
                              §§push(_loc2_);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(-§§pop());
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§§pop() * 1.5);
                                 }
                              }
                              §§pop().§[!N§ = §§pop();
                           }
                        }
                        return true;
                     }
                     §§goto(addr77);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         §§goto(addr54);
      }
   }
}
