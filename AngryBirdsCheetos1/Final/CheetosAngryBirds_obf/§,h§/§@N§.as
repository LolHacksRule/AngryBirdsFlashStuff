package §,h§
{
   import §!X§.§86§;
   import §0!G§.b2Vec2;
   import §]@§.Sprite;
   import §`j§.b2World;
   
   public class §@N§ extends §4!9§
   {
       
      
      public function §@N§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§6M§) : Boolean
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc11_)
            {
               if(!§§pop())
               {
                  if(!_loc11_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr28:
                     var _loc2_:Number = §?!7§().GetPosition().x;
                     var _loc3_:Number = §?!7§().GetPosition().y;
                     var _loc4_:Number = §?!7§().GetLinearVelocity().x;
                     var _loc5_:Number = §?!7§().GetLinearVelocity().y;
                     var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                     §§push(_loc4_);
                     if(_loc10_)
                     {
                        §§push(-§§pop());
                        if(!(_loc11_ && param1))
                        {
                           §§push(§§pop() / _loc6_);
                           if(!_loc11_)
                           {
                              addr78:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc7_:* = §§pop();
                        §§push(_loc5_);
                        if(_loc10_ || _loc2_)
                        {
                           §§push(§§pop() / _loc6_);
                           if(!_loc11_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc8_:* = §§pop();
                        §§push(param1);
                        §§push("BIRD_BLUE");
                        §§push(_loc2_);
                        if(!(_loc11_ && param1))
                        {
                           §§push(_loc8_);
                           if(_loc10_ || _loc2_)
                           {
                              addr123:
                              §§push(§§pop() - §§pop());
                              §§push(_loc3_);
                              if(_loc10_)
                              {
                                 addr126:
                                 §§push(§§pop() - _loc7_);
                              }
                              var _loc9_:§+0§;
                              §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                              §§push(§§findproperty(b2Vec2));
                              §§push(_loc4_);
                              if(_loc10_)
                              {
                                 §§push(7 * _loc8_);
                                 if(!(_loc11_ && this))
                                 {
                                    addr152:
                                    §§push(§§pop() - §§pop());
                                    §§push(_loc5_);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() - 7 * _loc7_);
                                    }
                                 }
                                 §§pop().§`o§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                 §§push(param1);
                                 §§push("BIRD_BLUE");
                                 §§push(_loc2_);
                                 if(_loc10_ || this)
                                 {
                                    §§push(_loc8_);
                                    if(!(_loc11_ && this))
                                    {
                                       addr180:
                                       §§push(§§pop() + §§pop());
                                       §§push(_loc3_);
                                       if(!_loc11_)
                                       {
                                          §§push(§§pop() + _loc7_);
                                       }
                                    }
                                    §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(_loc4_);
                                    if(!_loc11_)
                                    {
                                       §§push(7 * _loc8_);
                                       if(_loc10_)
                                       {
                                          addr204:
                                          §§push(§§pop() + §§pop());
                                          §§push(_loc5_);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() + 7 * _loc7_);
                                          }
                                       }
                                       §§pop().§`o§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                       return true;
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr78);
                  }
               }
               §§goto(addr28);
            }
            return §§pop();
         }
         §§goto(addr28);
      }
   }
}
