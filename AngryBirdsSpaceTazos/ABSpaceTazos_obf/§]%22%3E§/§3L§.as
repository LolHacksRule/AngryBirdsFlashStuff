package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   
   public class §3L§ extends § 6§
   {
       
      
      public function §3L§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function specialPower(param1:§;U§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc4_:Number = §^!z§().GetPosition().x;
         var _loc5_:Number = §^!z§().GetPosition().y;
         var _loc6_:Number = §^!z§().GetLinearVelocity().x;
         var _loc7_:Number = §^!z§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         §§push(_loc6_);
         if(!(_loc12_ && param2))
         {
            §§push(-§§pop());
            if(_loc13_ || param3)
            {
               §§push(§§pop() / _loc8_);
               if(_loc12_ && param3)
               {
               }
               addr78:
               var _loc9_:* = §§pop();
               §§push(_loc7_);
               if(_loc13_ || param3)
               {
                  §§push(§§pop() / _loc8_);
                  if(!(_loc12_ && this))
                  {
                     addr96:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(§§findproperty(§ 6§));
                  §§push(param1);
                  §§push("BIRD_BLUE");
                  §§push(_loc4_);
                  if(!_loc12_)
                  {
                     §§push(_loc10_);
                     if(!(_loc12_ && param1))
                     {
                        addr123:
                        §§push(§§pop() - §§pop());
                        §§push(_loc5_);
                        if(_loc13_)
                        {
                           addr126:
                           §§push(§§pop() - _loc9_);
                        }
                        var _loc11_:§ 6§;
                        §§push(_loc11_ = §§pop().§ 6§(§§pop().addObject(§§pop(),§§pop(),§§pop(),0,§-%§.§;!J§,true,false,false,scale)));
                        §§push(§§findproperty(b2Vec2));
                        §§push(_loc6_);
                        if(!(_loc12_ && this))
                        {
                           §§push(7 * _loc10_);
                           if(_loc13_)
                           {
                              addr155:
                              §§push(§§pop() - §§pop());
                              §§push(_loc7_);
                              if(_loc13_)
                              {
                                 §§push(§§pop() - 7 * _loc9_);
                              }
                           }
                           §§pop().§=9§(new §§pop().b2Vec2(§§pop(),§§pop()));
                           §§push(§§findproperty(§ 6§));
                           §§push(param1);
                           §§push("BIRD_BLUE");
                           §§push(_loc4_);
                           if(!(_loc12_ && param2))
                           {
                              §§push(_loc10_);
                              if(!(_loc12_ && this))
                              {
                                 addr184:
                                 §§push(§§pop() + §§pop());
                                 §§push(_loc5_);
                                 if(!(_loc12_ && param2))
                                 {
                                    addr192:
                                    §§push(§§pop() + _loc9_);
                                 }
                                 §§push(_loc11_ = §§pop().§ 6§(§§pop().addObject(§§pop(),§§pop(),§§pop(),0,§-%§.§;!J§,true,false,false,scale)));
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(_loc6_);
                                 if(_loc13_)
                                 {
                                    §§push(7 * _loc10_);
                                    if(!_loc12_)
                                    {
                                       addr216:
                                       §§push(§§pop() + §§pop());
                                       §§push(_loc7_);
                                       if(_loc13_ || param3)
                                       {
                                          §§push(§§pop() + 7 * _loc9_);
                                       }
                                    }
                                    §§pop().§=9§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                    return;
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr123);
               }
               §§goto(addr96);
            }
            §§push(Number(§§pop()));
         }
         §§goto(addr78);
      }
   }
}
