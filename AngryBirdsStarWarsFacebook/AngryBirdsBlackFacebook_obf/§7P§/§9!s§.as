package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   
   public class §9!s§ extends §?"N§
   {
       
      
      public function §9!s§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || this)
         {
            super.specialPower(param1,param2,param3);
         }
         var _loc4_:Number = §3!t§().GetPosition().x;
         var _loc5_:Number = §3!t§().GetPosition().y;
         var _loc6_:Number = §3!t§().GetLinearVelocity().x;
         var _loc7_:Number = §3!t§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         §§push(_loc6_);
         if(!_loc13_)
         {
            §§push(-§§pop());
            if(_loc12_)
            {
               §§push(§§pop() / _loc8_);
               if(_loc13_)
               {
               }
               addr74:
               var _loc9_:* = §§pop();
               §§push(_loc7_);
               if(!(_loc13_ && param2))
               {
                  §§push(§§pop() / _loc8_);
                  if(_loc12_)
                  {
                     addr87:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(§§findproperty(§?"N§));
                  §§push(param1);
                  §§push("BIRD_BLUE");
                  §§push(_loc4_);
                  if(!_loc13_)
                  {
                     §§push(_loc10_);
                     if(!(_loc13_ && param3))
                     {
                        addr104:
                        §§push(§§pop() - §§pop());
                        §§push(_loc5_);
                        if(!(_loc13_ && param2))
                        {
                           addr112:
                           §§push(§§pop() - _loc9_);
                        }
                        var _loc11_:§?"N§;
                        §§push(_loc11_ = §§pop().§?"N§(§§pop().addObject(§§pop(),§§pop(),§§pop(),0,§;=§.§""3§,true,false,false,scale)));
                        §§push(§§findproperty(b2Vec2));
                        §§push(_loc6_);
                        if(!(_loc13_ && this))
                        {
                           §§push(7 * _loc10_);
                           if(_loc12_ || param3)
                           {
                              addr156:
                              §§push(§§pop() - §§pop());
                              §§push(_loc7_);
                              if(!_loc13_)
                              {
                                 addr159:
                                 §§push(§§pop() - 7 * _loc9_);
                              }
                              §§pop().§ &§(new §§pop().b2Vec2(§§pop(),§§pop()));
                              if(_loc12_ || param2)
                              {
                                 _loc11_.isLeavingTrail = true;
                              }
                              §§push(§§findproperty(§?"N§));
                              §§push(param1);
                              §§push("BIRD_BLUE");
                              §§push(_loc4_);
                              if(_loc12_ || this)
                              {
                                 §§push(_loc10_);
                                 if(!_loc13_)
                                 {
                                    addr190:
                                    §§push(§§pop() + §§pop());
                                    §§push(_loc5_);
                                    if(!(_loc13_ && param2))
                                    {
                                       §§push(§§pop() + _loc9_);
                                    }
                                 }
                                 §§push(_loc11_ = §§pop().§?"N§(§§pop().addObject(§§pop(),§§pop(),§§pop(),0,§;=§.§""3§,true,false,false,scale)));
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(_loc6_);
                                 if(_loc12_ || param3)
                                 {
                                    §§push(7 * _loc10_);
                                    if(!_loc13_)
                                    {
                                       §§goto(addr227);
                                    }
                                    §§goto(addr230);
                                 }
                                 addr227:
                                 §§push(§§pop() + §§pop());
                                 §§push(_loc7_);
                                 if(!_loc13_)
                                 {
                                    addr230:
                                    §§push(§§pop() + 7 * _loc9_);
                                 }
                                 §§pop().§ &§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                 if(!(_loc13_ && param2))
                                 {
                                    _loc11_.isLeavingTrail = true;
                                 }
                                 return;
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr104);
               }
               §§goto(addr87);
            }
            §§push(Number(§§pop()));
         }
         §§goto(addr74);
      }
   }
}
