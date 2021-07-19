package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@!E§.b2Vec2;
   
   public class §!r§ extends §^"2§
   {
       
      
      public function §!r§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function specialPower(param1:§`!m§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param1))
         {
            super.specialPower(param1,param2,param3);
         }
         var _loc4_:Number = §!!I§().GetPosition().x;
         var _loc5_:Number = §!!I§().GetPosition().y;
         var _loc6_:Number = §!!I§().GetLinearVelocity().x;
         var _loc7_:Number = §!!I§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         §§push(_loc6_);
         if(_loc13_)
         {
            §§push(-§§pop());
            if(!(_loc12_ && param2))
            {
               §§push(§§pop() / _loc8_);
               if(_loc13_)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc9_:* = §§pop();
         §§push(_loc7_);
         if(!(_loc12_ && this))
         {
            §§push(§§pop() / _loc8_);
            if(_loc13_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc10_:* = §§pop();
         §§push(§§findproperty(§^"2§));
         §§push(param1);
         §§push("BIRD_BLUE");
         §§push(_loc4_);
         if(!(_loc12_ && param3))
         {
            §§push(_loc10_);
            if(_loc13_)
            {
               addr125:
               §§push(§§pop() - §§pop());
               §§push(_loc5_);
               if(_loc13_)
               {
                  addr128:
                  §§push(§§pop() - _loc9_);
               }
               var _loc11_:§^"2§;
               §§push(_loc11_ = §§pop().§^"2§(§§pop().§&w§(§§pop(),§§pop(),§§pop(),0,§<!l§.§0"+§,true,false,false,scale)));
               §§push(§§findproperty(b2Vec2));
               §§push(_loc6_);
               if(_loc13_)
               {
                  §§push(7 * _loc10_);
                  if(_loc13_)
                  {
                     addr152:
                     §§push(§§pop() - §§pop());
                     §§push(_loc7_);
                     if(!_loc12_)
                     {
                        addr155:
                        §§push(§§pop() - 7 * _loc9_);
                     }
                     §§pop().§^y§(new §§pop().b2Vec2(§§pop(),§§pop()));
                     if(_loc13_ || param2)
                     {
                        _loc11_.isLeavingTrail = true;
                     }
                     §§push(§§findproperty(§^"2§));
                     §§push(param1);
                     §§push("BIRD_BLUE");
                     §§push(_loc4_);
                     if(!(_loc12_ && param2))
                     {
                        §§push(_loc10_);
                        if(!_loc12_)
                        {
                           addr186:
                           §§push(§§pop() + §§pop());
                           §§push(_loc5_);
                           if(!(_loc12_ && param2))
                           {
                              §§push(§§pop() + _loc9_);
                           }
                        }
                        §§push(_loc11_ = §§pop().§^"2§(§§pop().§&w§(§§pop(),§§pop(),§§pop(),0,§<!l§.§0"+§,true,false,false,scale)));
                        §§push(§§findproperty(b2Vec2));
                        §§push(_loc6_);
                        if(_loc13_)
                        {
                           §§push(7 * _loc10_);
                           if(!_loc12_)
                           {
                              addr218:
                              §§push(§§pop() + §§pop());
                              §§push(_loc7_);
                              if(_loc13_)
                              {
                                 §§push(§§pop() + 7 * _loc9_);
                              }
                           }
                           §§pop().§^y§(new §§pop().b2Vec2(§§pop(),§§pop()));
                           if(!(_loc12_ && this))
                           {
                              _loc11_.isLeavingTrail = true;
                           }
                           return;
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr155);
               }
               §§goto(addr152);
            }
            §§goto(addr128);
         }
         §§goto(addr125);
      }
   }
}
