package §9_§
{
   import §[x§.§2^§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §1W§ extends §4!;§
   {
       
      
      public function §1W§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§?!!§) : Boolean
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || this)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc11_)
            {
               if(!§§pop())
               {
                  if(!(_loc11_ && param1))
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr38:
                     var _loc2_:Number = §>b§().GetPosition().x;
                     var _loc3_:Number = §>b§().GetPosition().y;
                     var _loc4_:Number = §>b§().GetLinearVelocity().x;
                     var _loc5_:Number = §>b§().GetLinearVelocity().y;
                     var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                     §§push(_loc4_);
                     if(!(_loc11_ && _loc2_))
                     {
                        §§push(-§§pop());
                        if(_loc10_)
                        {
                           §§push(§§pop() / _loc6_);
                           if(_loc10_)
                           {
                              addr88:
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           §§push(_loc5_);
                           if(_loc10_)
                           {
                              §§push(§§pop() / _loc6_);
                              if(_loc10_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc8_:* = §§pop();
                           §§push(param1);
                           §§push("BIRD_BLUE");
                           §§push(_loc2_);
                           if(!_loc11_)
                           {
                              §§push(_loc8_);
                              if(!_loc11_)
                              {
                                 addr118:
                                 §§push(§§pop() - §§pop());
                                 §§push(_loc3_);
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() - _loc7_);
                                 }
                              }
                              var _loc9_:§+>§;
                              §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                              §§push(§§findproperty(b2Vec2));
                              §§push(_loc4_);
                              if(!_loc11_)
                              {
                                 §§push(7 * _loc8_);
                                 if(_loc10_ || _loc2_)
                                 {
                                    §§goto(addr147);
                                 }
                                 §§goto(addr155);
                              }
                              addr147:
                              §§push(§§pop() - §§pop());
                              §§push(_loc5_);
                              if(!(_loc11_ && param1))
                              {
                                 addr155:
                                 §§push(§§pop() - 7 * _loc7_);
                              }
                              §§pop().§5x§(new §§pop().b2Vec2(§§pop(),§§pop()));
                              §§push(param1);
                              §§push("BIRD_BLUE");
                              §§push(_loc2_);
                              if(!_loc11_)
                              {
                                 §§push(_loc8_);
                                 if(!_loc11_)
                                 {
                                    §§goto(addr170);
                                 }
                                 §§goto(addr178);
                              }
                              addr170:
                              §§push(§§pop() + §§pop());
                              §§push(_loc3_);
                              if(!(_loc11_ && param1))
                              {
                                 addr178:
                                 §§push(§§pop() + _loc7_);
                              }
                              §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                              §§push(§§findproperty(b2Vec2));
                              §§push(_loc4_);
                              if(!_loc11_)
                              {
                                 §§push(7 * _loc8_);
                                 if(_loc10_ || this)
                                 {
                                    §§goto(addr214);
                                 }
                                 §§goto(addr222);
                              }
                              addr214:
                              §§push(§§pop() + §§pop());
                              §§push(_loc5_);
                              if(_loc10_ || _loc3_)
                              {
                                 addr222:
                                 §§push(§§pop() + 7 * _loc7_);
                              }
                              §§pop().§5x§(new §§pop().b2Vec2(§§pop(),§§pop()));
                              return true;
                           }
                           §§goto(addr118);
                        }
                     }
                     §§goto(addr88);
                  }
               }
               §§goto(addr38);
            }
            return §§pop();
         }
         §§goto(addr38);
      }
   }
}
