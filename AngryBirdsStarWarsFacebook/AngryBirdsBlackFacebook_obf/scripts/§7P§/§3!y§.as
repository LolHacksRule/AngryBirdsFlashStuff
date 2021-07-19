package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§,",§;
   import §2"Y§.§8!D§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import com.angrybirds.§,!q§;
   
   public class §3!y§ extends §?"N§
   {
      
      public static const §>!1§:Number = 3000;
      
      public static const §'d§:Number = 0.05;
      
      public static const §9#3§:Number = 0.15;
      
      public static const §4!v§:String = "collision";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>!1§ = 3000;
         }
         while(true)
         {
            §'d§ = 0.05;
            while(!_loc2_)
            {
               §9#3§ = 0.15;
               do
               {
                  §4!v§ = "collision";
               }
               while(!(_loc1_ || _loc1_));
               
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected var §&!Y§:Number = 3000;
      
      protected var §%!+§:Number = 0.0;
      
      public function §3!y§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§8!D§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      protected function get §'L§() : §,",§
      {
         return §;B§ as §,",§;
      }
      
      override public function get isNormal() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.timeSinceCollisionMilliSeconds < 0);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr58:
                     §§pop();
                     §§push(super.isNormal);
                     if(!_loc2_)
                     {
                        return Boolean(§§pop());
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      override protected function handleInitialCollision() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.handleInitialCollision();
            while(true)
            {
               §3!t§().SetLinearDamping(§'d§);
               while(_loc2_ || this)
               {
                  §2N§.setAnimation(§4!v§,false);
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr46:
               }
            }
         }
         §§goto(addr46);
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(param1 is §1#E§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr107:
                        while(true)
                        {
                           §§push(§,!q§.§9!,§.isCollisionExcluded(this,param1));
                           if(!_loc3_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop2;
                           }
                           if(_loc3_ && param1)
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              isLeavingTrail = false;
                           }
                           addr79:
                        }
                        loop5:
                        while(!(_loc3_ && this))
                        {
                           while(true)
                           {
                              super.collidedWith(param1);
                              if(!(_loc3_ && this))
                              {
                                 break;
                              }
                              continue loop5;
                           }
                           return;
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr28);
                  }
               }
            }
         }
         §§goto(addr79);
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
               if(!_loc4_)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(param1);
                        if(_loc3_ || _loc3_)
                        {
                           if(_loc4_)
                           {
                              loop3:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc3_)
                                    {
                                       if(§§pop() > 1)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(_loc2_);
                                                break;
                                             }
                                             continue;
                                          }
                                          addr77:
                                          if(_loc4_ && param1)
                                          {
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(!_loc4_)
                                                {
                                                   §§push(this.timeSinceCollisionMilliSeconds);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() / 1000);
                                                      if(!_loc4_)
                                                      {
                                                         break loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr115:
                                                         while(true)
                                                         {
                                                            continue loop3;
                                                         }
                                                      }
                                                      addr114:
                                                   }
                                                   break loop0;
                                                }
                                                continue loop3;
                                                §§goto(addr77);
                                             }
                                             addr91:
                                          }
                                       }
                                       return 1;
                                    }
                                    break;
                                 }
                              }
                              addr76:
                           }
                           continue loop0;
                           return §§pop();
                        }
                        while(true)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr115);
                           }
                           §§goto(addr76);
                        }
                     }
                     addr44:
                     return §§pop();
                     addr26:
                  }
                  §§goto(addr91);
               }
               break;
            }
            while(true)
            {
               §§goto(addr114);
            }
         }
         §§goto(addr26);
      }
      
      protected function get §#"d§() : Number
      {
         return § d§;
      }
      
      override public function get timeSinceCollisionMilliSeconds() : Number
      {
         return § d§ + this.§%!+§;
      }
      
      override protected function handleAnotherCollision() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§%!+§ = § d§;
         }
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               §§push(this.§&!Y§ >= 0);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc4_ && param1))
                        {
                           if(!(_loc3_ || param2))
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(§3! § > this.§&!Y§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    break;
                                 }
                                 addr87:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop3;
                                 }
                              }
                              if(_loc3_)
                              {
                                 continue;
                              }
                              continue loop1;
                           }
                           §3!t§().SetLinearDamping(§9#3§);
                        }
                        if(!_loc4_)
                        {
                           addr69:
                           break;
                        }
                        continue loop0;
                     }
                     return;
                  }
                  §§goto(addr87);
               }
            }
         }
         §§goto(addr69);
      }
      
      override protected function updateFlying() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(_loc4_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:b2Vec2 = §3!t§().GetLinearVelocity();
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_.x);
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
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              addr144:
                              while(true)
                              {
                                 §§push(_loc2_.y);
                                 if(!(_loc4_ || this))
                                 {
                                    break;
                                 }
                                 §§push(0);
                                 if(_loc3_ && this)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(!§§pop());
                                 }
                                 if(_loc4_)
                                 {
                                 }
                                 continue loop5;
                              }
                              continue loop0;
                           }
                           addr143:
                        }
                        while(§§pop())
                        {
                           if(_loc3_ && _loc2_)
                           {
                              addr123:
                              break;
                           }
                           if(!(_loc3_ && _loc1_))
                           {
                              while(true)
                              {
                                 §§push(Number(Math.atan2(_loc2_.y,_loc2_.x)));
                                 continue loop0;
                              }
                              addr108:
                           }
                           else
                           {
                              §§goto(addr144);
                           }
                        }
                        §6#<§(_loc1_);
                        if(_loc3_)
                        {
                           §§goto(addr123);
                        }
                        return;
                     }
                     §§goto(addr143);
                  }
               }
            }
         }
         §§goto(addr108);
      }
   }
}
