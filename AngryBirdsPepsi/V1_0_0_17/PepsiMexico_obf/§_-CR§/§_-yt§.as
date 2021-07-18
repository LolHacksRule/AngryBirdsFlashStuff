package §_-CR§
{
   import §_-Cx§.§_-Gb§;
   import §_-Cx§.§_-UW§;
   import §_-Iw§.b2World;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   import §_-hU§.§_-MB§;
   
   public class §_-yt§ extends §_-Dz§
   {
       
      
      private var §_-WR§:int = 0;
      
      public function §_-yt§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!(_loc11_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override public function addDestructionParticles(param1:§_-Gb§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§_-jY§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            §§push(_loc4_ + Math.random() * (720 / _loc3_));
            if(!(_loc9_ && _loc2_))
            {
               §§push(Number(§§pop()));
               if(_loc10_)
               {
                  addr61:
                  §§push(_loc4_ = §§pop());
                  if(_loc10_)
                  {
                     §§push(180 / Math.PI);
                     if(!(_loc9_ && _loc3_))
                     {
                        addr77:
                        _loc6_ = §§pop() / §§pop();
                        if(_loc10_ || _loc3_)
                        {
                           §§push(-§_-e7§.mW);
                           if(!(_loc9_ && this))
                           {
                              §§push(§_-tL§.§_-7m§);
                              if(!(_loc9_ && _loc2_))
                              {
                                 §§push(Number(§§pop() * §§pop()));
                                 §§push(Number(§§pop() * §§pop()));
                                 if(_loc10_ || _loc2_)
                                 {
                                    _loc7_ = §§pop();
                                    §§push(Math.random() * -_loc7_);
                                 }
                                 §§push(2);
                                 if(_loc10_ || param1)
                                 {
                                    addr138:
                                    §§push(Number(§§pop() + §§pop() * §§pop()));
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       _loc7_ = §§pop();
                                       if(_loc10_)
                                       {
                                          §§push(-§_-e7§.mH);
                                          if(!(_loc9_ && param1))
                                          {
                                             addr161:
                                             §§push(Number(§§pop() * §_-tL§.§_-7m§));
                                             §§push(Number(§§pop() * §_-tL§.§_-7m§));
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                _loc8_ = §§pop();
                                                addr185:
                                                if(!_loc9_)
                                                {
                                                   §§push(Math.random() * -_loc8_);
                                                   if(_loc10_)
                                                   {
                                                      addr181:
                                                      §§push(§§pop() * 2);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                _loc8_ = Number(§§pop());
                                                if(!_loc10_)
                                                {
                                                   break;
                                                }
                                                param1.§_-JY§(§_-UW§.§_-pG§,§_-Gb§.§_-oO§,§_-UW§.§_-s4§,§_-zq§().GetPosition().x + _loc7_,§_-zq§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§_-UW§.§_-G9§(§_-L1§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   addr247:
                                                   _loc5_++;
                                                   if(_loc9_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr181);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr247);
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr138);
               }
               §§goto(addr77);
            }
            §§goto(addr61);
         }
      }
      
      override public function addDamageParticles(param1:§_-Gb§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§_-tL§ = §_-MB§.§_-A7§;
         if(!(_loc5_ && _loc3_))
         {
            §§push(§_-Qm§ < §_-FF§);
            if(!(_loc5_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     addr44:
                     §§pop();
                     if(_loc6_ || this)
                     {
                        addr56:
                        if(§_-zq§() == null)
                        {
                           if(!_loc5_)
                           {
                              addr59:
                              _loc1_.§_-iF§(this);
                              if(_loc6_ || this)
                              {
                              }
                              addr75:
                              §§push(x * §_-tL§.§_-7m§);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              §§push(y * §_-tL§.§_-7m§);
                              if(_loc6_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              §§push(§_-UW§.PARTICLE_NAME_BIRD_TRAIL1);
                              if(!_loc5_)
                              {
                                 §§push(§§pop());
                              }
                              var _loc4_:* = §§pop();
                              §§push(this.§_-WR§);
                              if(!(_loc5_ && _loc1_))
                              {
                                 §§push(1);
                                 if(!(_loc5_ && this))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       §§push(§_-UW§.PARTICLE_NAME_BIRD_TRAIL2);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop());
                                          if(_loc6_ || _loc2_)
                                          {
                                             _loc4_ = §§pop();
                                             addr158:
                                             §§push(this);
                                             §§push(this.§_-WR§ + 1);
                                             if(_loc6_ || _loc2_)
                                             {
                                                §§push(§§pop() % 3);
                                             }
                                             §§pop().§_-WR§ = §§pop();
                                          }
                                          else
                                          {
                                             addr150:
                                             _loc4_ = §§pop();
                                             addr149:
                                             if(!(_loc5_ && _loc1_))
                                             {
                                                §§goto(addr158);
                                             }
                                          }
                                          _loc1_.particles.§_-JY§(_loc4_,§_-Gb§.§_-kL§,§_-UW§.§_-eQ§,_loc2_,_loc3_,-1,"",§_-UW§.§_-YC§);
                                          return;
                                       }
                                       §§goto(addr149);
                                    }
                                    else
                                    {
                                       addr144:
                                       if(this.§_-WR§ == 2)
                                       {
                                          §§push(§_-UW§.PARTICLE_NAME_BIRD_TRAIL3);
                                          if(!_loc5_)
                                          {
                                             §§goto(addr149);
                                          }
                                          §§goto(addr150);
                                       }
                                    }
                                    §§goto(addr158);
                                 }
                              }
                              §§goto(addr144);
                           }
                           _loc1_.§_-aE§ = false;
                           if(!_loc5_)
                           {
                              return;
                           }
                        }
                     }
                     §§goto(addr75);
                  }
               }
               §§goto(addr56);
            }
            §§goto(addr44);
         }
         §§goto(addr59);
      }
   }
}
