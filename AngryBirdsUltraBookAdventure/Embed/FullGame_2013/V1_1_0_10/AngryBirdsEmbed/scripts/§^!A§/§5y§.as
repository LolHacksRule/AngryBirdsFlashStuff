package §^!A§
{
   import §&o§.Sprite;
   import §6A§.§ !§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §5y§ extends §^`§
   {
       
      
      public function §5y§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§@H§) : Boolean
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc10_)
            {
               if(!§§pop())
               {
                  if(!(_loc10_ && this))
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr34:
                     var _loc2_:Number = §'[§().GetPosition().x;
                     var _loc3_:Number = §'[§().GetPosition().y;
                     var _loc4_:Number = §'[§().GetLinearVelocity().x;
                     var _loc5_:Number = §'[§().GetLinearVelocity().y;
                     var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                     §§push(_loc4_);
                     if(!_loc10_)
                     {
                        §§push(-§§pop());
                        if(!_loc10_)
                        {
                           §§push(§§pop() / _loc6_);
                           if(_loc11_ || param1)
                           {
                              addr84:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc7_:* = §§pop();
                        §§push(_loc5_);
                        if(_loc11_)
                        {
                           §§push(§§pop() / _loc6_);
                           if(!_loc10_)
                           {
                              addr93:
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           §§push(param1);
                           §§push("BIRD_BLUE");
                           §§push(_loc2_);
                           if(!(_loc10_ && _loc2_))
                           {
                              §§push(_loc8_);
                              if(!(_loc10_ && param1))
                              {
                                 addr124:
                                 §§push(§§pop() - §§pop());
                                 §§push(_loc3_);
                                 if(!_loc10_)
                                 {
                                    addr127:
                                    §§push(§§pop() - _loc7_);
                                 }
                                 var _loc9_:§;!%§;
                                 §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(_loc4_);
                                 if(_loc11_)
                                 {
                                    §§push(7 * _loc8_);
                                    if(!_loc10_)
                                    {
                                       addr148:
                                       §§push(§§pop() - §§pop());
                                       §§push(_loc5_);
                                       if(_loc11_)
                                       {
                                          §§push(§§pop() - 7 * _loc7_);
                                       }
                                    }
                                    §§pop().§'!0§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                    §§push(param1);
                                    §§push("BIRD_BLUE");
                                    §§push(_loc2_);
                                    if(_loc11_)
                                    {
                                       §§push(_loc8_);
                                       if(!(_loc10_ && this))
                                       {
                                          addr171:
                                          §§push(§§pop() + §§pop());
                                          §§push(_loc3_);
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             §§push(§§pop() + _loc7_);
                                          }
                                       }
                                       §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                       §§push(§§findproperty(b2Vec2));
                                       §§push(_loc4_);
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          §§push(7 * _loc8_);
                                          if(!_loc10_)
                                          {
                                             §§goto(addr215);
                                          }
                                          §§goto(addr223);
                                       }
                                       addr215:
                                       §§push(§§pop() + §§pop());
                                       §§push(_loc5_);
                                       if(_loc11_ || param1)
                                       {
                                          addr223:
                                          §§push(§§pop() + 7 * _loc7_);
                                       }
                                       §§pop().§'!0§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                       return true;
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr84);
                  }
               }
               §§goto(addr34);
            }
            return §§pop();
         }
         §§goto(addr34);
      }
   }
}
