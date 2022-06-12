package §9"%§
{
   import §#]§.b2Vec2;
   import §1!$§.Sprite;
   import §48§.b2World;
   import §9"!§.§9"3§;
   
   public class §2"$§ extends § H§
   {
       
      
      public function §2"$§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§]a§) : Boolean
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || param1)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc10_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(_loc11_)
                  {
                     §§goto(addr38);
                  }
               }
               var _loc2_:Number = §=!y§().GetPosition().x;
               var _loc3_:Number = §=!y§().GetPosition().y;
               var _loc4_:Number = §=!y§().GetLinearVelocity().x;
               var _loc5_:Number = §=!y§().GetLinearVelocity().y;
               var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               §§push(_loc4_);
               if(_loc11_ || this)
               {
                  §§push(-§§pop());
                  if(_loc11_)
                  {
                     §§push(§§pop() / _loc6_);
                     if(_loc11_ || this)
                     {
                        addr94:
                        §§push(Number(§§pop()));
                     }
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
                        if(_loc11_ || _loc3_)
                        {
                           addr129:
                           §§push(§§pop() - §§pop());
                           §§push(_loc3_);
                           if(_loc11_ || param1)
                           {
                              §§push(§§pop() - _loc7_);
                           }
                        }
                        var _loc9_:§&!r§;
                        §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                        §§push(§§findproperty(b2Vec2));
                        §§push(_loc4_);
                        if(_loc11_ || _loc2_)
                        {
                           §§push(7 * _loc8_);
                           if(!_loc10_)
                           {
                              addr163:
                              §§push(§§pop() - §§pop());
                              §§push(_loc5_);
                              if(!(_loc10_ && param1))
                              {
                                 §§push(§§pop() - 7 * _loc7_);
                              }
                           }
                           §§pop().§^!u§(new §§pop().b2Vec2(§§pop(),§§pop()));
                           §§push(param1);
                           §§push("BIRD_BLUE");
                           §§push(_loc2_);
                           if(!(_loc10_ && this))
                           {
                              §§push(_loc8_);
                              if(_loc11_)
                              {
                                 §§goto(addr191);
                              }
                              §§goto(addr194);
                           }
                           addr191:
                           §§push(§§pop() + §§pop());
                           §§push(_loc3_);
                           if(!_loc10_)
                           {
                              addr194:
                              §§push(§§pop() + _loc7_);
                           }
                           §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                           §§push(§§findproperty(b2Vec2));
                           §§push(_loc4_);
                           if(_loc11_ || _loc3_)
                           {
                              §§push(7 * _loc8_);
                              if(_loc11_)
                              {
                                 §§goto(addr230);
                              }
                              §§goto(addr238);
                           }
                           addr230:
                           §§push(§§pop() + §§pop());
                           §§push(_loc5_);
                           if(!(_loc10_ && _loc2_))
                           {
                              addr238:
                              §§push(§§pop() + 7 * _loc7_);
                           }
                           §§pop().§^!u§(new §§pop().b2Vec2(§§pop(),§§pop()));
                           return true;
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr129);
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr38);
         }
         addr38:
         return false;
      }
   }
}
