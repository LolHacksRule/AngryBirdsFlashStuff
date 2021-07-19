package §`!G§
{
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import §6"1§.b2World;
   
   public class §7"R§ extends §2"L§
   {
       
      
      public function §7"R§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc10_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc10_)
                  {
                     §§goto(addr32);
                  }
               }
               var _loc2_:Number = getBody().GetPosition().x;
               var _loc3_:Number = getBody().GetPosition().y;
               var _loc4_:Number = getBody().GetLinearVelocity().x;
               var _loc5_:Number = getBody().GetLinearVelocity().y;
               var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               §§push(_loc4_);
               if(!(_loc11_ && _loc2_))
               {
                  §§push(-§§pop());
                  if(!_loc11_)
                  {
                     §§push(§§pop() / _loc6_);
                     if(_loc10_)
                     {
                        addr83:
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     §§push(_loc5_);
                     if(_loc10_)
                     {
                        §§push(§§pop() / _loc6_);
                        if(!_loc11_)
                        {
                           addr92:
                           §§push(Number(§§pop()));
                        }
                        var _loc8_:* = §§pop();
                        §§push(param1);
                        §§push("BIRD_BLUE");
                        §§push(_loc2_);
                        if(_loc10_)
                        {
                           §§push(_loc8_);
                           if(_loc10_)
                           {
                              addr113:
                              §§push(§§pop() - §§pop());
                              §§push(_loc3_);
                              if(!_loc11_)
                              {
                                 §§push(§§pop() - _loc7_);
                              }
                           }
                           var _loc9_:§[!8§;
                           §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                           §§push(§§findproperty(b2Vec2));
                           §§push(_loc4_);
                           if(!_loc11_)
                           {
                              §§push(7 * _loc8_);
                              if(_loc10_ || this)
                              {
                                 addr142:
                                 §§push(§§pop() - §§pop());
                                 §§push(_loc5_);
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() - 7 * _loc7_);
                                 }
                              }
                              §§pop().§+" §(new §§pop().b2Vec2(§§pop(),§§pop()));
                              §§push(param1);
                              §§push("BIRD_BLUE");
                              §§push(_loc2_);
                              if(_loc10_)
                              {
                                 §§push(_loc8_);
                                 if(!_loc11_)
                                 {
                                    addr160:
                                    §§push(§§pop() + §§pop());
                                    §§push(_loc3_);
                                    if(_loc10_)
                                    {
                                       §§push(§§pop() + _loc7_);
                                    }
                                 }
                                 §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(_loc4_);
                                 if(!(_loc11_ && this))
                                 {
                                    §§push(7 * _loc8_);
                                    if(_loc10_)
                                    {
                                       §§goto(addr199);
                                    }
                                    §§goto(addr207);
                                 }
                                 addr199:
                                 §§push(§§pop() + §§pop());
                                 §§push(_loc5_);
                                 if(_loc10_ || param1)
                                 {
                                    addr207:
                                    §§push(§§pop() + 7 * _loc7_);
                                 }
                                 §§pop().§+" §(new §§pop().b2Vec2(§§pop(),§§pop()));
                                 return true;
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr92);
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr32);
         }
         addr32:
         return false;
      }
   }
}
