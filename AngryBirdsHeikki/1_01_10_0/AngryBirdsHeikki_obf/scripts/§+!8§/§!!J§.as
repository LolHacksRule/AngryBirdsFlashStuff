package §+!8§
{
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   import §6A§.b2Vec2;
   
   public class §!!J§ extends §`!O§
   {
       
      
      public function §!!J§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc11_)
            {
               if(!§§pop())
               {
                  if(!_loc10_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr29:
                     var _loc2_:Number = §0c§().GetPosition().x;
                     var _loc3_:Number = §0c§().GetPosition().y;
                     var _loc4_:Number = §0c§().GetLinearVelocity().x;
                     var _loc5_:Number = §0c§().GetLinearVelocity().y;
                     var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                     §§push(_loc4_);
                     if(!(_loc10_ && _loc2_))
                     {
                        §§push(-§§pop());
                        if(_loc11_)
                        {
                           §§push(§§pop() / _loc6_);
                           if(_loc10_ && _loc2_)
                           {
                           }
                           addr85:
                           var _loc7_:* = §§pop();
                           §§push(_loc5_);
                           if(_loc11_ || _loc2_)
                           {
                              §§push(§§pop() / _loc6_);
                              if(!_loc10_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc8_:* = §§pop();
                           §§push(param1);
                           §§push("BIRD_BLUE");
                           §§push(_loc2_);
                           if(_loc11_)
                           {
                              §§push(_loc8_);
                              if(_loc11_)
                              {
                                 addr119:
                                 §§push(§§pop() - §§pop());
                                 §§push(_loc3_);
                                 if(_loc11_ || param1)
                                 {
                                    §§push(§§pop() - _loc7_);
                                 }
                              }
                              var _loc9_:§,_§;
                              §§push(_loc9_ = §§pop().§@!,§(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                              §§push(§§findproperty(b2Vec2));
                              §§push(_loc4_);
                              if(!(_loc10_ && this))
                              {
                                 §§push(7 * _loc8_);
                                 if(_loc11_)
                                 {
                                    addr153:
                                    §§push(§§pop() - §§pop());
                                    §§push(_loc5_);
                                    if(_loc11_ || this)
                                    {
                                       addr161:
                                       §§push(§§pop() - 7 * _loc7_);
                                    }
                                    §§pop().§[!8§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                    §§push(param1);
                                    §§push("BIRD_BLUE");
                                    §§push(_loc2_);
                                    if(_loc11_)
                                    {
                                       §§push(_loc8_);
                                       if(!_loc10_)
                                       {
                                          addr176:
                                          §§push(§§pop() + §§pop());
                                          §§push(_loc3_);
                                          if(_loc11_)
                                          {
                                             §§push(§§pop() + _loc7_);
                                          }
                                       }
                                       §§push(_loc9_ = §§pop().§@!,§(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                       §§push(§§findproperty(b2Vec2));
                                       §§push(_loc4_);
                                       if(!_loc10_)
                                       {
                                          §§push(7 * _loc8_);
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             addr205:
                                             §§push(§§pop() + §§pop());
                                             §§push(_loc5_);
                                             if(_loc11_ || _loc2_)
                                             {
                                                §§push(§§pop() + 7 * _loc7_);
                                             }
                                          }
                                          §§pop().§[!8§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                          return true;
                                       }
                                       §§goto(addr205);
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr119);
                        }
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr85);
                  }
               }
               §§goto(addr29);
            }
            return §§pop();
         }
         §§goto(addr29);
      }
   }
}
