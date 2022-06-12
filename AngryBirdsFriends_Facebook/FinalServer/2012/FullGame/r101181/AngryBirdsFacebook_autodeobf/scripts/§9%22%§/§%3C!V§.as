package §9"%§
{
   import §#]§.b2Vec2;
   import §1!$§.Sprite;
   import §48§.b2Fixture;
   import §48§.b2World;
   import §55§.b2Distance;
   import §55§.b2DistanceInput;
   import §55§.b2DistanceOutput;
   import §55§.b2DistanceProxy;
   import §55§.b2RayCastInput;
   import §55§.b2RayCastOutput;
   import §55§.b2SimplexCache;
   import §9"!§.§9"3§;
   import §]!A§.;
   import flash.geom.Point;
   
   public class §<!V§ extends §="$§
   {
       
      
      private var §4q§:Boolean = false;
      
      private var §`@§:§]a§;
      
      public function §<!V§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12);
         }
         do
         {
            this.§`@§ = param1;
         }
         while(!_loc13_);
         
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(_loc8_ || param3)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!_loc9_)
         {
            §§push(§[" § <= 0);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(§§pop())
                  {
                     if(_loc8_ || param1)
                     {
                        while(true)
                        {
                           this.§3v§();
                        }
                        addr85:
                     }
                     while(true)
                     {
                        if(!(_loc9_ && this))
                        {
                           break loop3;
                        }
                        addr100:
                        while(true)
                        {
                           §§push(this.§4q§);
                           if(_loc8_)
                           {
                              §§push(!§§pop());
                           }
                           if(_loc9_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr101);
                        }
                        addr101:
                     }
                  }
                  return _loc7_;
                  addr76:
               }
               §§goto(addr100);
            }
         }
         §§goto(addr85);
      }
      
      private function §3v§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = null;
         if(!(_loc3_ && _loc1_))
         {
            this.§4q§ = true;
         }
         _loc1_ = this.§"!L§();
         var _loc2_:Array = §2!>§.split("_INFECTED");
         if(_loc4_ || _loc1_)
         {
            _loc1_.itemName = _loc2_[0] + "_ZOMBIE";
            do
            {
               (this.§`@§ as §1!Q§).§4!R§(_loc1_);
            }
            while(!(_loc4_ || this));
            
         }
      }
      
      private function §"!L§() : Object
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§2!>§ == "PIG_MUSTACHE_INFECTED")
            {
               if(_loc2_ || _loc1_)
               {
                  §§goto(addr39);
               }
            }
            return this.§;d§();
         }
         addr39:
         return this.§01§();
      }
      
      private function §01§() : Object
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc5_:b2Vec2 = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:Number = NaN;
         var _loc14_:§&!r§ = null;
         var _loc15_:b2Fixture = null;
         var _loc16_:b2RayCastOutput = null;
         §§push(§§findproperty(b2Vec2));
         §§push(0);
         §§push(§#6§.§8h§());
         if(!(_loc18_ && _loc2_))
         {
            §§push(§§pop() * §9"3§.§7"'§);
         }
         var _loc1_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
         var _loc2_:b2Vec2 = §=!y§().GetPosition();
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.x);
         §§push(_loc2_.y);
         if(_loc17_)
         {
            §§push(§§pop() + _loc1_.y);
         }
         var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
         var _loc4_:* = Number(1);
         var _loc6_:b2RayCastInput = new b2RayCastInput(_loc2_,_loc3_);
         §§push(§9"3§.§6!h§);
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc11_:* = Number(0);
         while(true)
         {
            §§push(_loc11_);
            if(!(_loc18_ && this))
            {
               if(§§pop() >= §#6§.§6!z§.§<f§.§'1§())
               {
                  §§push(_loc2_.x);
                  if(_loc17_)
                  {
                     break;
                  }
                  addr279:
                  var _loc12_:* = §§pop();
                  §§push(_loc2_.y);
                  if(_loc17_ || _loc1_)
                  {
                     §§push(_loc4_);
                     if(_loc17_)
                     {
                        §§push(§§pop() * _loc1_.y);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc17_)
                     {
                        addr308:
                        §§push(Number(§§pop()));
                     }
                     var _loc13_:* = §§pop();
                     return {
                        "point":new Point(_loc12_,_loc13_),
                        "normal":new Point(_loc5_.x,_loc5_.y)
                     };
                  }
                  §§goto(addr308);
               }
               else
               {
                  if((_loc14_ = §#6§.§6!z§.§<f§.§!!A§(_loc11_)) != this)
                  {
                     if(!(_loc17_ || _loc3_))
                     {
                        continue;
                     }
                     §§push(_loc14_.§=!y§());
                     if(!(_loc18_ && _loc2_))
                     {
                        §§push(§§pop().GetMass());
                        if(!_loc18_)
                        {
                           §§push(§§pop() == 0);
                           if(!(_loc18_ && _loc2_))
                           {
                              §§push(§§pop());
                              if(_loc17_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc18_ && _loc1_))
                                    {
                                       §§pop();
                                       if(!(_loc18_ && _loc1_))
                                       {
                                          §§push(_loc14_.§^6§());
                                          if(!_loc18_)
                                          {
                                             addr162:
                                             §§push(!§§pop());
                                             if(!_loc18_)
                                             {
                                                addr165:
                                                if(§§pop())
                                                {
                                                   if(_loc18_)
                                                   {
                                                   }
                                                   addr183:
                                                   if(§§pop())
                                                   {
                                                      if(_loc18_)
                                                      {
                                                         continue;
                                                      }
                                                      addr188:
                                                      _loc15_ = _loc14_.§=!y§().GetFixtureList();
                                                      _loc16_ = new b2RayCastOutput();
                                                      addr186:
                                                      if(!_loc18_)
                                                      {
                                                         if(!_loc15_.RayCast(_loc16_,_loc6_))
                                                         {
                                                            if(_loc17_ || _loc2_)
                                                            {
                                                               addr234:
                                                               §§push(_loc11_);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(_loc17_ || this)
                                                                  {
                                                                     addr245:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               _loc11_ = §§pop();
                                                               continue;
                                                            }
                                                            addr224:
                                                            §§push(_loc16_.fraction);
                                                            if(_loc17_)
                                                            {
                                                               addr228:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc4_ = §§pop();
                                                            _loc5_ = _loc16_.normal;
                                                            §§goto(addr234);
                                                            §§goto(addr234);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc16_.fraction);
                                                            if(!(_loc18_ && _loc2_))
                                                            {
                                                               if(§§pop() < _loc4_)
                                                               {
                                                                  if(!_loc17_)
                                                                  {
                                                                  }
                                                                  §§goto(addr224);
                                                               }
                                                               §§goto(addr234);
                                                            }
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr234);
                                                }
                                                §§goto(addr183);
                                             }
                                             §§pop();
                                             if(_loc17_ || _loc1_)
                                             {
                                                addr177:
                                                §§goto(addr183);
                                                §§push(_loc14_.§2!>§.indexOf("INVISIBLE") == -1);
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr177);
                                    }
                                 }
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr245);
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr234);
               }
            }
            break;
         }
         §§push(_loc4_);
         if(!_loc18_)
         {
            §§push(§§pop() * _loc1_.x);
         }
         §§push(§§pop() + §§pop());
         if(!(_loc18_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         §§goto(addr279);
      }
      
      private function §;d§() : Object
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc6_:b2Fixture = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:* = NaN;
         var _loc18_:§&!r§ = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2DistanceOutput = null;
         var _loc21_:b2SimplexCache = null;
         §§push(§§findproperty(b2Vec2));
         §§push(0);
         §§push(§#6§.§8h§());
         if(_loc23_)
         {
            §§push(§§pop() * §9"3§.§7"'§);
         }
         var _loc1_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
         var _loc2_:* = Number(1);
         var _loc4_:b2DistanceInput;
         (_loc4_ = new b2DistanceInput()).§@!4§ = §=!y§().GetTransform();
         if(_loc23_ || this)
         {
            _loc4_.§["@§ = new b2DistanceProxy();
            while(true)
            {
               loop1:
               while(true)
               {
                  _loc4_.§["@§.Set(§=!y§().GetFixtureList().GetShape());
                  do
                  {
                     _loc4_.§1k§ = true;
                  }
                  while(!_loc23_);
                  
                  if(_loc22_ && this)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  §§push(§9"3§.§6!h§);
                  if(_loc23_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  var _loc9_:Number = 0;
                  while(_loc9_ < §#6§.§6!z§.§<f§.§'1§())
                  {
                     if((_loc18_ = §#6§.§6!z§.§<f§.§!!A§(_loc9_)) != this)
                     {
                        if(!_loc23_)
                        {
                           continue;
                        }
                        §§push(_loc18_.§=!y§());
                        if(!(_loc22_ && _loc1_))
                        {
                           §§push(§§pop().GetMass());
                           if(_loc23_ || _loc3_)
                           {
                              §§push(§§pop() == 0);
                              if(!(_loc22_ && _loc1_))
                              {
                                 §§push(§§pop());
                                 if(!(_loc22_ && _loc2_))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc23_)
                                       {
                                          addr161:
                                          §§pop();
                                          if(_loc23_ || _loc3_)
                                          {
                                             §§push(_loc18_.§^6§());
                                             if(!(_loc22_ && this))
                                             {
                                                §§push(!§§pop());
                                                if(_loc23_)
                                                {
                                                   addr181:
                                                   if(§§pop())
                                                   {
                                                      if(_loc23_)
                                                      {
                                                         addr185:
                                                         §§pop();
                                                         if(_loc22_)
                                                         {
                                                            continue;
                                                         }
                                                         addr188:
                                                         §§push(_loc18_.§2!>§.indexOf("INVISIBLE") == -1);
                                                      }
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(!(_loc23_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   addr204:
                                                   _loc19_ = _loc18_.§=!y§().GetFixtureList();
                                                   if(!(_loc22_ && this))
                                                   {
                                                      _loc4_.§'!3§ = _loc18_.§=!y§().GetTransform();
                                                      loop5:
                                                      while(true)
                                                      {
                                                         addr227:
                                                         while(true)
                                                         {
                                                            _loc4_.§7!p§ = new b2DistanceProxy();
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                   while(false)
                                                   {
                                                      §§goto(addr227);
                                                   }
                                                   _loc20_ = new b2DistanceOutput();
                                                   (_loc21_ = new b2SimplexCache()).count = 0;
                                                   if(!_loc22_)
                                                   {
                                                      b2Distance.§;!h§(_loc20_,_loc21_,_loc4_);
                                                      if(_loc23_ || _loc3_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!(_loc22_ && _loc2_))
                                                         {
                                                            if(§§pop() > _loc20_.§0!e§)
                                                            {
                                                               addr305:
                                                               if(_loc23_ || this)
                                                               {
                                                                  addr299:
                                                                  §§push(_loc20_.§0!e§);
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               _loc6_ = _loc18_.§=!y§().GetFixtureList();
                                                               _loc7_ = _loc20_.§,!Z§;
                                                               if(_loc23_ || _loc1_)
                                                               {
                                                                  §§push(_loc20_.§0!e§);
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc8_ = §§pop();
                                                                  addr327:
                                                                  §§push(_loc9_);
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(!_loc22_)
                                                                     {
                                                                        addr334:
                                                                        _loc9_ = §§pop();
                                                                        continue;
                                                                     }
                                                                  }
                                                                  §§goto(addr334);
                                                               }
                                                            }
                                                            §§goto(addr327);
                                                         }
                                                         _loc5_ = §§pop();
                                                         §§goto(addr305);
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr305);
                                                }
                                                §§goto(addr327);
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr185);
                                    }
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr334);
                        }
                        §§goto(addr204);
                     }
                     §§goto(addr327);
                  }
                  var _loc10_:b2Vec2 = §=!y§().GetPosition();
                  if(!_loc22_)
                  {
                     §§push(_loc8_);
                     if(!_loc22_)
                     {
                        if(§§pop() == 0)
                        {
                           if(!(_loc22_ && this))
                           {
                              §§push(Number(1));
                              if(!_loc22_)
                              {
                                 _loc8_ = §§pop();
                                 addr365:
                                 §§push(_loc10_.x);
                                 if(!(_loc22_ && _loc3_))
                                 {
                                    §§push(_loc7_.x);
                                    if(!(_loc22_ && _loc1_))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc22_ && _loc3_))
                                       {
                                          addr392:
                                          §§push(§§pop() / _loc8_);
                                          if(_loc23_ || this)
                                          {
                                             addr400:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc11_:* = §§pop();
                                       §§push(_loc10_.y);
                                       if(_loc23_)
                                       {
                                          §§push(_loc7_.y);
                                          if(_loc23_ || this)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc22_ && this))
                                             {
                                                addr424:
                                                §§push(§§pop() / _loc8_);
                                                if(_loc23_)
                                                {
                                                   addr427:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc12_:* = §§pop();
                                             §§push(§§findproperty(b2Vec2));
                                             §§push(_loc10_.x);
                                             if(_loc23_)
                                             {
                                                §§push(_loc11_);
                                                if(_loc23_ || _loc1_)
                                                {
                                                   §§push(§9"3§.§6!h§);
                                                   if(!_loc22_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc23_)
                                                      {
                                                         addr450:
                                                         §§push(§§pop() - §§pop());
                                                         §§push(_loc10_.y);
                                                         if(!(_loc22_ && _loc3_))
                                                         {
                                                            addr466:
                                                            §§push(_loc12_);
                                                            if(!_loc22_)
                                                            {
                                                               addr462:
                                                               §§push(§§pop() * §9"3§.§6!h§);
                                                            }
                                                            var _loc13_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() - §§pop());
                                                            var _loc14_:b2RayCastInput = new b2RayCastInput(_loc10_,_loc13_);
                                                            var _loc15_:b2RayCastOutput = new b2RayCastOutput();
                                                            if(_loc23_)
                                                            {
                                                               if(!_loc6_.RayCast(_loc15_,_loc14_))
                                                               {
                                                                  if(!_loc22_)
                                                                  {
                                                                     throw new Error("Raycast failed");
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc15_.fraction);
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc2_ = §§pop();
                                                               }
                                                            }
                                                            _loc3_ = _loc15_.normal;
                                                            §§push(_loc10_.x);
                                                            if(!_loc22_)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!(_loc22_ && this))
                                                               {
                                                                  §§push(_loc13_.x);
                                                                  if(_loc23_)
                                                                  {
                                                                     §§push(§§pop() - _loc10_.x);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc22_ && _loc3_))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc16_:* = §§pop();
                                                            §§push(_loc10_.y);
                                                            if(!(_loc22_ && _loc2_))
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc23_ || this)
                                                               {
                                                                  §§push(_loc13_.y);
                                                                  if(_loc23_ || this)
                                                                  {
                                                                     §§push(§§pop() - _loc10_.y);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc23_)
                                                               {
                                                                  addr577:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc17_:* = §§pop();
                                                               return {
                                                                  "point":new Point(_loc16_,_loc17_),
                                                                  "normal":new Point(_loc3_.x,_loc3_.y)
                                                               };
                                                            }
                                                            §§goto(addr577);
                                                         }
                                                      }
                                                      §§goto(addr466);
                                                   }
                                                   §§goto(addr462);
                                                }
                                                §§goto(addr466);
                                             }
                                             §§goto(addr450);
                                          }
                                          §§goto(addr424);
                                       }
                                       §§goto(addr427);
                                    }
                                    §§goto(addr392);
                                 }
                                 §§goto(addr400);
                              }
                              §§goto(addr392);
                           }
                        }
                        §§goto(addr365);
                     }
                     §§goto(addr400);
                  }
                  §§goto(addr365);
               }
            }
         }
         §§goto(addr85);
      }
   }
}
