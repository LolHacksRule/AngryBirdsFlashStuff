package §]">§
{
   import §"!&§.§0"?§;
   import §"!&§.§]!C§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   
   public class §%!E§ extends § 6§
   {
      
      public static const §6&§:Number = 3000;
      
      public static const §-,§:Number = 0.05;
      
      public static const §0e§:Number = 0.15;
      
      public static const §;O§:String = "collision";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §6&§ = 3000;
            while(true)
            {
               §-,§ = 0.05;
               while(true)
               {
                  §0e§ = 0.15;
                  §§goto(addr63);
               }
            }
         }
         addr63:
         while(true)
         {
            §;O§ = "collision";
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      protected var §5!I§:Number = 3000;
      
      protected var §4b§:Number = 0.0;
      
      public function §%!E§(param1:Sprite, param2:§#r§, param3:b2World, param4:§]!C§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
      }
      
      protected function get §^!^§() : §0"?§
      {
         return §7!h§ as §0"?§;
      }
      
      override public function get isNormal() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.timeSinceCollisionMilliSeconds < 0);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr43:
                     §§pop();
                     §§push(super.isNormal);
                     if(!(_loc2_ && _loc2_))
                     {
                        return Boolean(§§pop());
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      override protected function handleInitialCollision() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.handleInitialCollision();
            while(true)
            {
               §^!z§().SetLinearDamping(§-,§);
               §§goto(addr58);
            }
         }
         addr58:
         while(true)
         {
            §'%§.setAnimation(§;O§,false);
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function getGravityMultiplier(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         if(_loc3_ || param1)
         {
            §§push(this.timeSinceCollisionMilliSeconds);
            loop0:
            while(true)
            {
               §§push(0);
               if(_loc3_ || param1)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(param1);
                     if(!(_loc4_ && this))
                     {
                        if(!_loc4_)
                        {
                           if(_loc3_ || param1)
                           {
                              continue;
                           }
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr151:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr152:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                 }
                              }
                           }
                           addr150:
                        }
                        while(true)
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              if(_loc3_ || this)
                              {
                                 if(§§pop() > 1)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       §§goto(addr101);
                                    }
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc4_ && param1))
                                    {
                                       break;
                                    }
                                    addr123:
                                    addr123:
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr124:
                                       while(true)
                                       {
                                          §§push(this.timeSinceCollisionMilliSeconds);
                                          if(_loc3_)
                                          {
                                             break loop0;
                                          }
                                          addr149:
                                          while(true)
                                          {
                                             §§goto(addr150);
                                          }
                                       }
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr151);
                        }
                        return 1;
                     }
                     addr101:
                     return _loc2_;
                  }
                  §§goto(addr123);
               }
               break;
            }
            while(true)
            {
               §§push(§§pop() / 1000);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() * 1.3);
               }
               §§goto(addr149);
            }
         }
         §§goto(addr123);
      }
      
      protected function get §5L§() : Number
      {
         return §"!A§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return §"!A§ + this.§4b§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§4b§ = §"!A§;
         }
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               §§push(this.§5!I§ >= 0);
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr86:
                        while(_loc3_)
                        {
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
                  while(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §^!z§().SetLinearDamping(§0e§);
                     }
                     if(!(_loc4_ && param1))
                     {
                        break;
                     }
                     §§goto(addr86);
                  }
                  return;
               }
            }
         }
         §§goto(addr88);
      }
      
      override protected function updateFlying() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:b2Vec2 = §^!z§().GetLinearVelocity();
         if(!_loc4_)
         {
            §§push(_loc2_.x);
            loop0:
            while(true)
            {
               §§push(0);
               addr119:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_ || this)
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           addr142:
                           while(true)
                           {
                              §§pop();
                              addr143:
                              addr107:
                              while(true)
                              {
                                 §§push(_loc2_.y);
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 addr108:
                                 while(!(_loc4_ && _loc1_))
                                 {
                                    while(true)
                                    {
                                    }
                                 }
                                 §§goto(addr143);
                              }
                           }
                           addr142:
                        }
                        else
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§goto(addr107);
                                 }
                                 addr100:
                              }
                              addr82:
                              §§push(§§pop() == §§pop());
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(!§§pop());
                              }
                              if(_loc3_ || _loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr142);
                           }
                        }
                        while(true)
                        {
                           §^e§(_loc1_);
                           if(!_loc4_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr108);
                        }
                        return;
                     }
                  }
                  §§goto(addr142);
               }
            }
         }
         §§goto(addr115);
      }
   }
}
