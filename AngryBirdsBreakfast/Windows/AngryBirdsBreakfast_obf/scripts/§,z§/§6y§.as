package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §?s§.§8K§;
   
   public class §6y§ extends §?!z§
   {
       
      
      public function §6y§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return true;
      }
      
      override protected function specialPower(param1:§3!#§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && param2))
         {
            super.specialPower(param1,param2,param3);
         }
         var _loc4_:Number = §^`§().GetPosition().x;
         var _loc5_:Number = §^`§().GetPosition().y;
         var _loc6_:Number = §^`§().GetLinearVelocity().x;
         var _loc7_:Number = §^`§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         §§push(_loc6_);
         if(_loc12_)
         {
            §§push(-§§pop());
            if(_loc12_)
            {
               §§push(§§pop() / _loc8_);
               if(!(_loc13_ && param1))
               {
                  addr78:
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               §§push(_loc7_);
               if(_loc12_ || param3)
               {
                  §§push(§§pop() / _loc8_);
                  if(!(_loc13_ && param1))
                  {
                     addr97:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(§§findproperty(§?!z§));
                  §§push(param1);
                  §§push("BIRD_BLUE");
                  §§push(_loc4_);
                  if(_loc12_)
                  {
                     §§push(_loc10_);
                     if(!(_loc13_ && param1))
                     {
                        addr114:
                        §§push(§§pop() - §§pop());
                        §§push(_loc5_);
                        if(!(_loc13_ && param3))
                        {
                           §§push(§§pop() - _loc9_);
                        }
                     }
                     var _loc11_:§?!z§;
                     §§push(_loc11_ = §§pop().§?!z§(§§pop().§,]§(§§pop(),§§pop(),§§pop(),0,§&"§.§5!1§,true,false,false,scale)));
                     §§push(§§findproperty(b2Vec2));
                     §§push(_loc6_);
                     if(_loc12_ || param2)
                     {
                        §§push(7 * _loc10_);
                        if(_loc12_ || this)
                        {
                           addr166:
                           §§push(§§pop() - §§pop());
                           §§push(_loc7_);
                           if(_loc12_)
                           {
                              §§push(§§pop() - 7 * _loc9_);
                           }
                        }
                        §§pop().§]!9§(new §§pop().b2Vec2(§§pop(),§§pop()));
                        if(!(_loc13_ && param3))
                        {
                           _loc11_.isLeavingTrail = true;
                        }
                        §§push(§§findproperty(§?!z§));
                        §§push(param1);
                        §§push("BIRD_BLUE");
                        §§push(_loc4_);
                        if(!_loc13_)
                        {
                           §§push(_loc10_);
                           if(!(_loc13_ && param2))
                           {
                              addr200:
                              §§push(§§pop() + §§pop());
                              §§push(_loc5_);
                              if(!_loc13_)
                              {
                                 §§push(§§pop() + _loc9_);
                              }
                           }
                           §§push(_loc11_ = §§pop().§?!z§(§§pop().§,]§(§§pop(),§§pop(),§§pop(),0,§&"§.§5!1§,true,false,false,scale)));
                           §§push(§§findproperty(b2Vec2));
                           §§push(_loc6_);
                           if(!(_loc13_ && this))
                           {
                              §§push(7 * _loc10_);
                              if(_loc12_)
                              {
                                 addr232:
                                 §§push(§§pop() + §§pop());
                                 §§push(_loc7_);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() + 7 * _loc9_);
                                 }
                              }
                              §§pop().§]!9§(new §§pop().b2Vec2(§§pop(),§§pop()));
                              if(!_loc13_)
                              {
                                 _loc11_.isLeavingTrail = true;
                              }
                              return;
                           }
                           §§goto(addr232);
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr114);
               }
               §§goto(addr97);
            }
         }
         §§goto(addr78);
      }
   }
}
