package § var§
{
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §40§.§5G§;
   import §`g§.Sprite;
   
   public class §^h§ extends §3!5§
   {
       
      
      public function §^h§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc10_ && this))
            {
               if(!§§pop())
               {
                  if(!(_loc10_ && this))
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr39:
                     var _loc2_:Number = §63§().GetPosition().x;
                     var _loc3_:Number = §63§().GetPosition().y;
                     var _loc4_:Number = §63§().GetLinearVelocity().x;
                     var _loc5_:Number = §63§().GetLinearVelocity().y;
                     var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                     §§push(_loc4_);
                     if(_loc11_ || _loc2_)
                     {
                        §§push(-§§pop());
                        if(!(_loc10_ && _loc2_))
                        {
                           addr90:
                           §§push(§§pop() / _loc6_);
                           if(_loc11_)
                           {
                              addr94:
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           §§push(_loc5_);
                           if(_loc11_ || _loc3_)
                           {
                              §§push(§§pop() / _loc6_);
                              if(!(_loc10_ && _loc2_))
                              {
                                 addr113:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(param1);
                              §§push("BIRD_BLUE");
                              §§push(_loc2_);
                              if(_loc11_ || _loc2_)
                              {
                                 §§push(_loc8_);
                                 if(_loc11_ || param1)
                                 {
                                    addr144:
                                    §§push(§§pop() - §§pop());
                                    §§push(_loc3_);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() - _loc7_);
                                    }
                                 }
                                 var _loc9_:§!u§;
                                 §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(_loc4_);
                                 if(_loc11_ || param1)
                                 {
                                    §§push(7 * _loc8_);
                                    if(!(_loc10_ && param1))
                                    {
                                       addr178:
                                       §§push(§§pop() - §§pop());
                                       §§push(_loc5_);
                                       if(_loc11_ || _loc3_)
                                       {
                                          §§push(§§pop() - 7 * _loc7_);
                                       }
                                    }
                                    §§pop().§5!;§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                    §§push(param1);
                                    §§push("BIRD_BLUE");
                                    §§push(_loc2_);
                                    if(_loc11_)
                                    {
                                       §§push(_loc8_);
                                       if(_loc11_)
                                       {
                                          addr201:
                                          §§push(§§pop() + §§pop());
                                          §§push(_loc3_);
                                          if(!(_loc10_ && param1))
                                          {
                                             addr209:
                                             §§push(§§pop() + _loc7_);
                                          }
                                          §§push(_loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale));
                                          §§push(§§findproperty(b2Vec2));
                                          §§push(_loc4_);
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             §§push(7 * _loc8_);
                                             if(_loc11_ || this)
                                             {
                                                addr250:
                                                §§push(§§pop() + §§pop());
                                                §§push(_loc5_);
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §§push(§§pop() + 7 * _loc7_);
                                                }
                                             }
                                             §§pop().§5!;§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                             return true;
                                          }
                                          §§goto(addr250);
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr90);
                  }
               }
               §§goto(addr39);
            }
            return §§pop();
         }
         §§goto(addr39);
      }
   }
}
