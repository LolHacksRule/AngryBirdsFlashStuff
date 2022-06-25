package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§^g§;
   import §>H§.b2Vec2;
   import §`w§.b2World;
   
   public class §1!=§ extends §3L§
   {
       
      
      public function §1!=§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§=[§) : Boolean
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!(_loc11_ && _loc3_))
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc10_)
            {
               if(!§§pop())
               {
                  if(!_loc11_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr33:
                     var _loc2_:Number = §5b§().GetPosition().x;
                     var _loc3_:Number = §5b§().GetPosition().y;
                     var _loc4_:Number = §5b§().GetLinearVelocity().x;
                     var _loc5_:Number = §5b§().GetLinearVelocity().y;
                     var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                     §§push(_loc4_);
                     if(!_loc11_)
                     {
                        §§push(-§§pop());
                        if(!_loc11_)
                        {
                           §§push(§§pop() / _loc6_);
                           if(_loc10_ || this)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     var _loc7_:* = §§pop();
                     §§push(_loc5_);
                     if(!(_loc11_ && this))
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
                     if(_loc10_ || _loc3_)
                     {
                        §§push(_loc8_);
                        if(!(_loc11_ && param1))
                        {
                           addr128:
                           §§push(§§pop() - §§pop());
                           §§push(_loc3_);
                           if(!_loc11_)
                           {
                              addr131:
                              §§push(§§pop() - _loc7_);
                           }
                           var _loc9_:§`!<§;
                           §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                           §§push(§§findproperty(b2Vec2));
                           §§push(_loc4_);
                           if(!_loc11_)
                           {
                              §§push(7 * _loc8_);
                              if(!(_loc11_ && _loc2_))
                              {
                                 addr157:
                                 §§push(§§pop() - §§pop());
                                 §§push(_loc5_);
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() - 7 * _loc7_);
                                 }
                              }
                              §§pop().§&!-§(new §§pop().b2Vec2(§§pop(),§§pop()));
                              §§push(param1);
                              §§push("BIRD_BLUE");
                              §§push(_loc2_);
                              if(!_loc11_)
                              {
                                 §§push(_loc8_);
                                 if(!_loc11_)
                                 {
                                    addr175:
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
                                 if(_loc10_ || _loc3_)
                                 {
                                    §§push(7 * _loc8_);
                                    if(!(_loc11_ && param1))
                                    {
                                       §§goto(addr219);
                                    }
                                    §§goto(addr222);
                                 }
                                 addr219:
                                 §§push(§§pop() + §§pop());
                                 §§push(_loc5_);
                                 if(_loc10_)
                                 {
                                    addr222:
                                    §§push(§§pop() + 7 * _loc7_);
                                 }
                                 §§pop().§&!-§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                 return true;
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr128);
                  }
               }
               §§goto(addr33);
            }
            return §§pop();
         }
         §§goto(addr33);
      }
   }
}
