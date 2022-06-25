package §3Y§
{
   import §%!M§.§8!;§;
   import §%!M§.LevelParticleManager;
   import §1!&§.Sprite;
   import §1%§.b2World;
   import §8!H§.b2Settings;
   import §?A§.§5a§;
   import §?A§.LevelMain;
   
   public class §!!^§ extends §5!E§
   {
       
      
      private var §!n§:Boolean = false;
      
      private var §0!9§:Number = 0;
      
      public function §!!^§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
         do
         {
            §8@§ = param11;
         }
         while(!(_loc13_ || param3));
         
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§!n§)
            {
               addr22:
               §§push(§8!;§.§7!,§);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     addr39:
                     §§push(§§pop());
                     addr30:
                  }
                  else
                  {
                     addr36:
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        §§goto(addr39);
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     if(§8@§ != "")
                     {
                        param1.§5V§(§8@§,_loc2_,LevelParticleManager.§1!'§,§8!;§.§&!"§,§8!N§().GetPosition().x,§8!N§().GetPosition().y - 1,2000,"",§8!;§.§0J§,0,0,0,0,1,20,true);
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!_loc4_)
                           {
                              addr119:
                              param1.§%!!§(_loc2_,LevelParticleManager.§1!'§,§8!;§.§&!"§,§8!N§().GetPosition().x,§8!N§().GetPosition().y - 1,2000,"",§8!;§.§0J§);
                              addr144:
                           }
                           return;
                        }
                        §§goto(addr144);
                     }
                  }
                  §§goto(addr119);
               }
               §§goto(addr30);
            }
            else
            {
               §§push(§8!;§.§!k§);
               if(_loc4_)
               {
                  §§goto(addr36);
               }
            }
            §§goto(addr39);
         }
         §§goto(addr22);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!_loc9_)
         {
            §§push(_loc7_);
            loop0:
            while(true)
            {
               §§push(§§pop() <= 0);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 while(true)
                                 {
                                    §§push(param3);
                                    if(_loc8_ || param2)
                                    {
                                       if(!(_loc8_ || param2))
                                       {
                                          break;
                                       }
                                       if(!(_loc8_ || param3))
                                       {
                                          continue loop1;
                                       }
                                       §§push(Boolean(§§pop()));
                                       if(_loc8_ || this)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc9_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                                if(!(_loc8_ || param1))
                                                {
                                                   continue loop3;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(§§pop())
                                             {
                                                loop7:
                                                while(!(_loc9_ && param2))
                                                {
                                                   §§pop();
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(param4);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            break loop8;
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      if(!_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                   return §§pop();
                                                }
                                                continue loop5;
                                                addr136:
                                             }
                                             §§goto(addr48);
                                          }
                                          continue loop4;
                                          addr111:
                                       }
                                    }
                                    §§goto(addr136);
                                 }
                                 continue loop2;
                              }
                           }
                           §§goto(addr111);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(0.3);
         if(!(_loc2_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §§push(Math.abs(§8!N§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            if(_loc3_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr192:
                        while(true)
                        {
                           §§pop();
                           addr193:
                           while(true)
                           {
                              §§push(Math.abs(§8!N§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                              addr126:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr192:
                     }
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc2_ && _loc3_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       addr100:
                                       if(!(_loc2_ && this))
                                       {
                                          addr108:
                                          §§push(false);
                                          if(!_loc2_)
                                          {
                                             break loop2;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(Math.abs(§8!N§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr108);
                                             }
                                             else
                                             {
                                                §§goto(addr193);
                                             }
                                          }
                                          addr153:
                                       }
                                       §§goto(addr126);
                                    }
                                    else
                                    {
                                       addr30:
                                       §§push(true);
                                       if(!(_loc2_ && this))
                                       {
                                          addr39:
                                          if(_loc3_ || this)
                                          {
                                             break;
                                          }
                                          addr145:
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                §§pop();
                                                §§goto(addr153);
                                             }
                                             else
                                             {
                                                §§goto(addr192);
                                             }
                                          }
                                          §§goto(addr193);
                                       }
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr30);
                              }
                              return §§pop();
                              addr81:
                           }
                           §§goto(addr145);
                        }
                        continue loop1;
                     }
                     return §§pop();
                  }
               }
            }
            §§goto(addr192);
         }
         §§goto(addr193);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§0!9§ > 0)
            {
               §§push(this);
               §§push(this.§0!9§);
               if(!_loc3_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§0!9§ = §§pop();
               do
               {
                  § get§.mTryToScream = LevelObjectRenderer.§6!H§;
               }
               while(_loc3_);
               
               §§push(true);
               addr65:
            }
            else
            {
               §§push(super.updateScreamingFrameAnimations(param1));
               if(_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr65);
      }
      
      public function §[!h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§0!9§ = §5a§.§3?§;
         }
         while(true)
         {
            § get§.mTryToScream = LevelObjectRenderer.§6!H§;
            while(!_loc2_)
            {
               playScreamingSoundEffect();
               if(_loc1_ || this)
               {
                  return;
               }
            }
         }
      }
   }
}
