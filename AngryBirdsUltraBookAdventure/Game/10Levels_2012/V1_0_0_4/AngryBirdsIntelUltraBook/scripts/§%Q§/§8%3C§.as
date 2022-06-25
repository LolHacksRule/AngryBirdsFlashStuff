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
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param3)
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
         if(_loc4_)
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
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr276:
                              while(true)
                              {
                                 §§push(§%!R§ == §-!!§);
                                 if(!_loc5_)
                                 {
                                    if(!(_loc4_ || param1))
                                    {
                                       break;
                                    }
                                    §§push(!§§pop());
                                 }
                                 addr253:
                                 if(_loc5_ && param1)
                                 {
                                    continue;
                                 }
                              }
                              continue loop2;
                           }
                           addr275:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.§>T§ = 0;
                                 addr265:
                                 while(true)
                                 {
                                 }
                              }
                              addr262:
                           }
                           while(true)
                           {
                              §§push(this.§>T§);
                              while(true)
                              {
                                 §§push(0);
                                 if(!_loc5_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(Number(§5b§().GetLinearVelocity().x));
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             while(true)
                                             {
                                                §§push(Number(§5b§().GetLinearVelocity().y));
                                                loop11:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr214:
                                                   while(true)
                                                   {
                                                      §§push(this.§>T§);
                                                      continue loop11;
                                                   }
                                                   §§goto(addr265);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc5_ && param1)
                                             {
                                                continue loop8;
                                             }
                                             this.§>T§ = 0;
                                             §§goto(addr159);
                                          }
                                       }
                                    }
                                    return;
                                 }
                                 break;
                              }
                              continue loop1;
                           }
                           §§goto(addr253);
                        }
                     }
                     §§goto(addr275);
                  }
               }
               while(true)
               {
                  if(_loc5_ && param1)
                  {
                     continue loop0;
                  }
                  §§goto(addr148);
                  §§push(_loc2_);
               }
            }
         }
         §§goto(addr115);
      }
      
      override public function activateSpecialPower(param1:§=[§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc4_ || this)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr48);
                  }
               }
               var _loc2_:Number = §5b§().GetLinearVelocity().x;
               if(_loc4_)
               {
                  if(_loc2_ != 0)
                  {
                     if(!_loc3_)
                     {
                        addr72:
                        §§push(this);
                        §§push(_loc2_);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(-§§pop());
                           if(!(_loc3_ && _loc2_))
                           {
                              addr89:
                              §§push(§§pop() * 1.5);
                           }
                           §§pop().§>T§ = §§pop();
                           §§goto(addr92);
                        }
                        §§goto(addr89);
                     }
                  }
                  addr92:
                  return true;
               }
               §§goto(addr72);
            }
            §§goto(addr48);
         }
         addr48:
         return false;
      }
   }
}
