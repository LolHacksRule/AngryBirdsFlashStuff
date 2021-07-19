package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §-E§ extends §9"k§
   {
      
      public static const §+"§:String = "LaserBird";
      
      protected static const §%]§:Number = 350;
      
      protected static const §!"Z§:Number = 100;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+"§ = "LaserBird";
            while(true)
            {
               §%]§ = 350;
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     §!"Z§ = 100;
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      protected var §`[§:int = 0;
      
      protected var §%#3§:String;
      
      protected var § "]§:Number;
      
      protected var §8U§:Number;
      
      protected var §+2§:int = 0;
      
      protected var §2!%§:Number = 0;
      
      protected var §1#%§:Number = 1.0;
      
      public function §-E§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
            while(true)
            {
               this.§`[§ = param4.getNumberProperty("specialtyNumberOfShots");
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            this.§%#3§ = param4.getProperty("specialtyObject");
            if(!(_loc9_ && param2))
            {
               if(!_loc9_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function specialPower(param1:§;$§, param2:Number = 0.0, param3:Number = 0.0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§ [§ = null;
         if(_loc6_)
         {
            this.§ "]§ = param2;
         }
         loop0:
         while(true)
         {
            this.§8U§ = param3;
            loop1:
            while(true)
            {
               loop2:
               while(this.§`[§ > 0)
               {
                  loop3:
                  while(!_loc5_)
                  {
                     this.shoot(param1,param2,param3);
                     while(!_loc5_)
                     {
                        this.§+2§ = this.§`[§ - 1;
                        if(!_loc5_)
                        {
                           if(_loc6_ || param3)
                           {
                              if(true)
                              {
                                 if(_loc4_ = param1 as § [§)
                                 {
                                    if(!_loc5_)
                                    {
                                       _loc4_.§&Q§(0,800,800,0.4);
                                       if(_loc5_ && this)
                                       {
                                       }
                                       break loop2;
                                    }
                                    param1.addObject(reticleSprite,param2,param3,0,§;=§.§""3§,false,false,false,1,true);
                                    break loop2;
                                 }
                              }
                              continue loop2;
                              break loop2;
                           }
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function spawnParticlesOnSpecial(param1:§;$§, param2:Number = 0.0) : void
      {
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(param2)
                  {
                     if(!(_loc5_ && param2))
                     {
                        loop3:
                        while(true)
                        {
                           this.§1#%§ = param2.timeSpeedMultiplier;
                           if(_loc5_ && _loc3_)
                           {
                              break;
                           }
                           if(!_loc5_)
                           {
                              while(this.§+2§ > 0)
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(this);
                                    §§push(this.§2!%§);
                                    if(_loc6_ || this)
                                    {
                                       §§push(param1);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() / this.§1#%§);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§2!%§ = §§pop();
                                    if(_loc6_ || param2)
                                    {
                                       if(true)
                                       {
                                          if(this.§2!%§ > §%]§)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                var _loc3_:*;
                                                §§push((_loc3_ = this).§+2§);
                                                if(_loc6_ || param2)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc4_:* = §§pop();
                                                if(_loc6_)
                                                {
                                                   _loc3_.§+2§ = _loc4_;
                                                }
                                                if(!(_loc5_ && param1))
                                                {
                                                   break loop3;
                                                }
                                             }
                                             break loop3;
                                          }
                                       }
                                       continue loop1;
                                       break loop1;
                                    }
                                    break loop1;
                                    addr156:
                                 }
                                 break loop3;
                              }
                              break loop1;
                              addr25:
                           }
                           continue loop0;
                        }
                        addr74:
                     }
                     §§push(this);
                     §§push(this.§2!%§);
                     if(!(_loc5_ && param1))
                     {
                        §§push(§§pop() - §%]§);
                     }
                     §§pop().§2!%§ = §§pop();
                     do
                     {
                        this.shoot(param2,this.§ "]§,this.§8U§);
                     }
                     while(_loc5_);
                     
                     §§goto(addr156);
                  }
                  §§goto(addr25);
               }
               return;
            }
         }
         §§goto(addr74);
      }
      
      protected function shoot(param1:§;$§, param2:Number, param3:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc4_:§ [§;
         if(_loc4_ = param1 as § [§)
         {
            if(!_loc8_)
            {
               §§push(Number(§3!t§().GetPosition().x));
               if(!(_loc8_ && this))
               {
                  _loc5_ = §§pop();
                  if(!_loc8_)
                  {
                     §§push(Number(§3!t§().GetPosition().y));
                     while(true)
                     {
                        _loc6_ = §§pop();
                        addr122:
                        loop3:
                        while(true)
                        {
                           §§push(§>#8§(param2,param3) * 180);
                           if(_loc9_)
                           {
                              §§push(§§pop() / Math.PI);
                              if(!_loc8_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           if(_loc9_ || this)
                           {
                              addr102:
                              _loc7_ = §§pop();
                              while(_loc8_)
                              {
                                 continue loop3;
                                 §§goto(addr102);
                              }
                              while(true)
                              {
                                 _loc4_.§#!#§(this.§%#3§,_loc5_,_loc6_,_loc7_,§!"Z§,true);
                                 if(!(_loc8_ && param1))
                                 {
                                    break;
                                 }
                                 §§goto(addr103);
                              }
                              addr103:
                              addr49:
                              return;
                              addr115:
                           }
                        }
                     }
                     addr121:
                  }
                  §§goto(addr115);
               }
               §§goto(addr121);
            }
            §§goto(addr122);
         }
         §§goto(addr49);
      }
   }
}
