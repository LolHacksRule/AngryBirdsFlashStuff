package §_-CR§
{
   import §_-Cx§.§_-Gb§;
   import §_-Cx§.§_-UW§;
   import §_-Iw§.b2World;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   import §_-lh§.b2Settings;
   
   public class §_-gb§ extends §_-kw§
   {
       
      
      private var §_-NL§:Boolean = false;
      
      public function §_-gb§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override public function addDestructionParticles(param1:§_-Gb§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(this.§_-NL§)
            {
               addr23:
               §§push(§_-UW§.§_-Xt§);
               if(!_loc4_)
               {
                  §§goto(addr56);
               }
            }
            else
            {
               §§push(§_-UW§.§_-Q7§);
               if(_loc3_ || this)
               {
                  §§push(§§pop());
                  if(_loc3_ || this)
                  {
                     §§goto(addr55);
                  }
                  addr56:
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     addr55:
                     §§push(§§pop());
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc4_)
                  {
                     param1.§_-JY§(_loc2_,§_-Gb§.§_-oO§,§_-UW§.§_-dd§,§_-zq§().GetPosition().x,§_-zq§().GetPosition().y - 1,2000,"",§_-UW§.§_-od§);
                  }
                  return;
               }
            }
            §§goto(addr55);
         }
         §§goto(addr23);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:Number;
         §§push(_loc5_ = super.applyDamage(param1,param2,param3,param4));
         if(!_loc7_)
         {
            §§push(§§pop() <= 0);
            §§push(§§pop() <= 0);
            if(_loc6_ || this)
            {
               if(§§pop())
               {
                  §§pop();
                  if(!(_loc7_ && param1))
                  {
                     §§push(param3);
                     if(!_loc7_)
                     {
                        addr54:
                        addr55:
                        §§push(Boolean(§§pop()));
                        if(Boolean(§§pop()))
                        {
                           §§pop();
                           §§goto(addr76);
                        }
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              §§goto(addr76);
                           }
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr76);
               }
               §§goto(addr54);
            }
            §§goto(addr55);
         }
         addr76:
         if(_loc6_ || param1)
         {
            addr72:
            §§push(Boolean(param4));
         }
         this.§_-NL§ = true;
         return _loc5_;
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(0.3);
         if(_loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §§push(Math.abs(§_-zq§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            if(_loc2_)
            {
               §§push(§§pop());
               if(!(_loc3_ && this))
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr56:
                        §§pop();
                        if(!_loc3_)
                        {
                           addr70:
                           §§push(Math.abs(§_-zq§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                           if(Math.abs(§_-zq§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_)
                           {
                              §§pop();
                              if(_loc2_)
                              {
                                 addr85:
                                 if(Math.abs(§_-zq§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr100:
                                       §§push(true);
                                       if(_loc2_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr104:
                                       §§push(false);
                                    }
                                    return §§pop();
                                 }
                              }
                              §§goto(addr104);
                           }
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr85);
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr56);
         }
         §§goto(addr100);
      }
   }
}
