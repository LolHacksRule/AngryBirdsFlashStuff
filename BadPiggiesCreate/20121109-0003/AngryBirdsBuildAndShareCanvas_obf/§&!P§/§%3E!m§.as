package §&!P§
{
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §+!-§.Sprite;
   import §<!a§.b2Vec2;
   
   public class §>!m§ extends §9`§
   {
       
      
      public function §>!m§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§^!!§) : Boolean
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || _loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc10_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!(_loc10_ && _loc2_))
                  {
                     §§goto(addr43);
                  }
               }
               var _loc2_:Number = getBody().GetPosition().x;
               var _loc3_:Number = getBody().GetPosition().y;
               var _loc4_:Number = getBody().GetLinearVelocity().x;
               var _loc5_:Number = getBody().GetLinearVelocity().y;
               var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               §§push(_loc4_);
               if(!(_loc10_ && _loc2_))
               {
                  §§push(-§§pop());
                  if(!(_loc10_ && this))
                  {
                     §§push(§§pop() / _loc6_);
                     if(_loc10_)
                     {
                     }
                     addr100:
                     var _loc7_:* = §§pop();
                     §§push(_loc5_);
                     if(_loc11_)
                     {
                        §§push(§§pop() / _loc6_);
                        if(_loc11_)
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
                        if(!(_loc10_ && this))
                        {
                           addr134:
                           §§push(§§pop() - §§pop());
                           §§push(_loc3_);
                           if(!_loc10_)
                           {
                              addr137:
                              §§push(§§pop() - _loc7_);
                           }
                           var _loc9_:§``§;
                           §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                           §§push(§§findproperty(b2Vec2));
                           §§push(_loc4_);
                           if(_loc11_)
                           {
                              §§push(7 * _loc8_);
                              if(!_loc10_)
                              {
                                 addr158:
                                 §§push(§§pop() - §§pop());
                                 §§push(_loc5_);
                                 if(_loc11_ || _loc2_)
                                 {
                                    §§push(§§pop() - 7 * _loc7_);
                                 }
                              }
                              §§pop().§;E§(new §§pop().b2Vec2(§§pop(),§§pop()));
                              §§push(param1);
                              §§push("BIRD_BLUE");
                              §§push(_loc2_);
                              if(!_loc10_)
                              {
                                 §§push(_loc8_);
                                 if(!_loc10_)
                                 {
                                    addr181:
                                    §§push(§§pop() + §§pop());
                                    §§push(_loc3_);
                                    if(_loc11_)
                                    {
                                       addr184:
                                       §§push(§§pop() + _loc7_);
                                    }
                                    §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(_loc4_);
                                    if(!_loc10_)
                                    {
                                       §§push(7 * _loc8_);
                                       if(_loc11_ || _loc3_)
                                       {
                                          addr210:
                                          §§push(§§pop() + §§pop());
                                          §§push(_loc5_);
                                          if(!_loc10_)
                                          {
                                             §§push(§§pop() + 7 * _loc7_);
                                          }
                                       }
                                       §§pop().§;E§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                       return true;
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr134);
                  }
                  §§push(Number(§§pop()));
               }
               §§goto(addr100);
            }
            §§goto(addr43);
         }
         addr43:
         return false;
      }
   }
}
