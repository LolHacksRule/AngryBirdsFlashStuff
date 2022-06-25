package §]![§
{
   import § D§.b2World;
   import §+&§.§-!7§;
   import §+&§.§3D§;
   import §3v§.§,n§;
   import §3v§.§6Q§;
   import §9E§.Sprite;
   import §;u§.b2Settings;
   
   public class §-!0§ extends §-s§
   {
       
      
      private var §8!_§:Boolean = false;
      
      private var §%K§:Number = 0;
      
      public function §-!0§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
            do
            {
               §`r§ = param11;
            }
            while(_loc13_);
            
         }
      }
      
      override public function addDestructionParticles(param1:§,n§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(this.§8!_§)
            {
               addr27:
               §§push(§6Q§.§6F§);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     addr57:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr49:
                     §§push(§§pop());
                     if(_loc4_ || _loc2_)
                     {
                        §§goto(addr57);
                     }
                  }
               }
            }
            else
            {
               §§push(§6Q§.§?@§);
               if(!(_loc3_ && param1))
               {
                  §§goto(addr49);
               }
            }
            var _loc2_:* = §§pop();
            if(_loc4_ || this)
            {
               if(§`r§ != "")
               {
                  param1.§[!3§(§`r§,_loc2_,§,n§.§9!&§,§6Q§.§5!]§,§+$§().GetPosition().x,§+$§().GetPosition().y - 1,2000,"",§6Q§.§'!q§,0,0,0,0,1,20,true);
                  if(!(_loc4_ || _loc3_))
                  {
                     addr160:
                  }
                  return;
               }
               if(!(_loc3_ && _loc2_))
               {
                  param1.§=!K§(_loc2_,§,n§.§9!&§,§6Q§.§5!]§,§+$§().GetPosition().x,§+$§().GetPosition().y - 1,2000,"",§6Q§.§'!q§);
               }
            }
            §§goto(addr160);
         }
         §§goto(addr27);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(_loc9_)
         {
            §§push(§§pop() <= 0);
            if(_loc9_ || param3)
            {
               §§push(§§pop());
               if(_loc9_ || param1)
               {
                  if(§§pop())
                  {
                     if(!(_loc8_ && param2))
                     {
                        §§pop();
                        if(_loc9_ || param1)
                        {
                           §§push(param3);
                           loop0:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc9_ || param1)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr128:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr129:
                                          loop5:
                                          while(true)
                                          {
                                             §§pop();
                                             addr130:
                                             while(true)
                                             {
                                                §§push(param4);
                                                if(!_loc8_)
                                                {
                                                   if(_loc8_ && this)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          addr129:
                                       }
                                       while(§§pop())
                                       {
                                          if(_loc9_ || param3)
                                          {
                                             this.§8!_§ = true;
                                          }
                                          if(!_loc8_)
                                          {
                                             addr117:
                                             break;
                                          }
                                          §§goto(addr130);
                                       }
                                       §§goto(addr76);
                                    }
                                 }
                                 addr127:
                              }
                              §§goto(addr129);
                           }
                           addr119:
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr127);
               }
               §§goto(addr128);
            }
            §§goto(addr129);
         }
         addr76:
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(0.3);
         if(!(_loc3_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(Math.abs(§+$§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr151:
                        loop8:
                        while(true)
                        {
                           §§push(Math.abs(§+$§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                           if(!(_loc3_ && _loc1_))
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc3_ && _loc1_)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             addr83:
                                             §§push(false);
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             addr133:
                                             while(true)
                                             {
                                                §§pop();
                                             }
                                          }
                                          else if(_loc2_ || this)
                                          {
                                             addr34:
                                             §§push(true);
                                             if(!_loc3_)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr83);
                                          }
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(Math.abs(§+$§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                                continue loop0;
                                             }
                                             continue loop8;
                                          }
                                          continue loop8;
                                       }
                                       §§goto(addr34);
                                    }
                                    return §§pop();
                                    addr73:
                                 }
                              }
                              continue loop1;
                              addr123:
                           }
                           §§goto(addr133);
                        }
                     }
                  }
                  §§goto(addr123);
               }
            }
         }
         §§goto(addr151);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§%K§ > 0)
            {
               addr73:
               §§push(this);
               §§push(this.§%K§);
               if(!_loc3_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§%K§ = §§pop();
               §[!"§.mTryToScream = §+s§.§'!m§;
               return true;
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
         §§goto(addr73);
      }
      
      public function §?8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§%K§ = §3D§.§1!0§;
            while(true)
            {
               §[!"§.mTryToScream = §+s§.§'!m§;
               while(_loc2_ || _loc1_)
               {
                  playScreamingSoundEffect();
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr54:
               }
            }
         }
         §§goto(addr54);
      }
   }
}
