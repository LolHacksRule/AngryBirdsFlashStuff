package §_-0DM§
{
   import §_-03n§.b2Shape;
   import §_-5§.*;
   import §_-Yp§.*;
   import §_-aU§.*;
   import §_-gE§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §_-lU§:b2WorldManifold;
      
      private static var §_-GD§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-lU§ = new b2WorldManifold();
         }
         do
         {
            §_-GD§ = new b2PositionSolverManifold();
         }
         while(_loc2_ && b2ContactSolver);
         
      }
      
      private var §_-004§:b2TimeStep;
      
      private var §_-qZ§;
      
      b2internal var §_-PC§:Vector.<b2ContactConstraint>;
      
      private var §_-04C§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§_-004§ = new b2TimeStep();
         }
         while(true)
         {
            this.§_-PC§ = new Vector.<b2ContactConstraint>();
            while(!_loc2_)
            {
               super();
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §_-bL§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc2_:b2Vec2 = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Mat22 = null;
         var _loc6_:b2ContactConstraint = null;
         var _loc7_:b2Body = null;
         var _loc8_:b2Body = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:b2ContactConstraintPoint = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2ContactConstraintPoint = null;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < this.§_-04C§)
         {
            _loc7_ = (_loc6_ = this.§_-PC§[_loc5_]).§_-ZR§;
            _loc8_ = _loc6_.§_-7b§;
            if(!(_loc24_ || this))
            {
               continue;
            }
            §§push(_loc7_.§_-03A§);
            loop1:
            while(true)
            {
               §§push(Number(§§pop()));
               loop2:
               while(true)
               {
                  _loc9_ = §§pop();
                  addr281:
                  while(true)
                  {
                     §§push(_loc7_.§_-Dz§);
                     loop4:
                     while(!_loc25_)
                     {
                        §§push(Number(§§pop()));
                        loop5:
                        while(true)
                        {
                           _loc10_ = §§pop();
                           if(_loc24_)
                           {
                              §§push(_loc8_.§_-03A§);
                              loop6:
                              while(!_loc25_)
                              {
                                 §§push(Number(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    _loc11_ = §§pop();
                                    addr266:
                                    while(true)
                                    {
                                       §§push(_loc8_.§_-Dz§);
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr241:
                                          while(true)
                                          {
                                             if(!_loc25_)
                                             {
                                                continue loop5;
                                             }
                                             continue loop6;
                                          }
                                          addr197:
                                          continue loop5;
                                          loop16:
                                          while(!(_loc25_ && _loc3_))
                                          {
                                             if(_loc25_)
                                             {
                                                continue loop7;
                                             }
                                             §§push(Number(§§pop()));
                                             while(true)
                                             {
                                                §§push(_loc14_ = §§pop());
                                                addr209:
                                                loop18:
                                                while(_loc24_)
                                                {
                                                   if(_loc24_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      continue loop1;
                                                   }
                                                   addr234:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      break loop18;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   _loc13_ = §§pop();
                                                   addr236:
                                                   addr233:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_.normal);
                                                      if(!(_loc24_ || this))
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().y);
                                                      continue loop16;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr234);
                                                      §§goto(addr236);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop4;
                           }
                           continue loop0;
                        }
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public function SolveVelocityConstraints() : void
      {
         var _loc58_:Boolean = false;
         var _loc59_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:b2ContactConstraintPoint = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:b2Mat22 = null;
         var _loc23_:b2Vec2 = null;
         var _loc25_:b2ContactConstraint = null;
         var _loc26_:b2Body = null;
         var _loc27_:b2Body = null;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:b2Vec2 = null;
         var _loc31_:b2Vec2 = null;
         var _loc32_:* = NaN;
         var _loc33_:* = NaN;
         var _loc34_:* = NaN;
         var _loc35_:* = NaN;
         var _loc36_:* = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:* = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:int = 0;
         var _loc43_:b2ContactConstraintPoint = null;
         var _loc44_:b2ContactConstraintPoint = null;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc48_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc24_:int = 0;
         while(_loc24_ < this.§_-04C§)
         {
            _loc26_ = (_loc25_ = this.§_-PC§[_loc24_]).§_-ZR§;
            _loc27_ = _loc25_.§_-7b§;
            if(!(_loc58_ && _loc1_))
            {
               §§push(_loc26_.m_angularVelocity);
               if(!_loc58_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc58_)
                  {
                     _loc28_ = §§pop();
                     addr185:
                     if(_loc59_ || this)
                     {
                        §§push(_loc27_.m_angularVelocity);
                        if(!_loc58_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc30_ = _loc26_.§_-kZ§;
                     _loc31_ = _loc27_.§_-kZ§;
                     if(_loc59_ || _loc2_)
                     {
                        §§push(_loc26_.§_-03A§);
                        loop1:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              _loc32_ = §§pop();
                              if(_loc59_ || this)
                              {
                                 §§push(_loc26_.§_-Dz§);
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc33_ = §§pop();
                                       if(!(_loc58_ && _loc3_))
                                       {
                                          §§push(_loc27_.§_-03A§);
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop6:
                                             while(!_loc58_)
                                             {
                                                _loc34_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc27_.§_-Dz§);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      while(true)
                                                      {
                                                         _loc35_ = §§pop();
                                                         if(!_loc58_)
                                                         {
                                                            §§push(_loc25_.normal);
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!(_loc58_ && _loc2_))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               addr349:
                                                               while(true)
                                                               {
                                                                  if(!_loc58_)
                                                                  {
                                                                     if(!(_loc59_ || _loc1_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc36_ = §§pop();
                                                                     continue loop10;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               continue loop6;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr1163);
                                                         }
                                                         §§goto(addr1175);
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop1;
                                             if(_loc58_ && _loc1_)
                                             {
                                                continue;
                                             }
                                             _loc38_ = §§pop();
                                             if(!(_loc58_ && _loc1_))
                                             {
                                                if(!_loc58_)
                                                {
                                                   §§goto(addr272);
                                                   §§push(_loc36_);
                                                }
                                                §§goto(addr375);
                                             }
                                             §§goto(addr1134);
                                          }
                                       }
                                       §§goto(addr1134);
                                    }
                                    if(!(_loc59_ || this))
                                    {
                                       continue;
                                    }
                                    §§goto(addr254);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr1161);
                           }
                        }
                     }
                     §§goto(addr218);
                  }
               }
               _loc29_ = §§pop();
            }
            §§goto(addr185);
         }
      }
      
      public function §_-dm§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-04C§)
         {
            _loc2_ = this.§_-PC§[_loc1_];
            _loc3_ = _loc2_.§_-07z§;
            if(_loc7_ || _loc1_)
            {
               §§push(0);
               if(_loc7_)
               {
                  _loc4_ = §§pop();
                  if(_loc8_ && _loc1_)
                  {
                     continue;
                  }
                  addr72:
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr123:
               }
               while(§§pop() < _loc2_.§_-0F6§)
               {
                  _loc5_ = _loc3_.§_-Eg§[_loc4_];
                  _loc6_ = _loc2_.§_-0BA§[_loc4_];
                  if(_loc7_)
                  {
                     _loc5_.§_-nd§ = _loc6_.normalImpulse;
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           _loc5_.§_-sw§ = _loc6_.tangentImpulse;
                           continue loop2;
                           addr95:
                        }
                     }
                  }
                  while(false)
                  {
                     §§goto(addr95);
                  }
                  §§goto(addr123);
               }
               if(!_loc8_)
               {
                  _loc1_++;
               }
               continue;
            }
            §§goto(addr72);
         }
      }
      
      public function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:int = 0;
         var _loc13_:b2ContactConstraintPoint = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         §§push(0);
         if(_loc24_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-04C§)
         {
            _loc5_ = (_loc4_ = this.§_-PC§[_loc3_]).§_-ZR§;
            _loc6_ = _loc4_.§_-7b§;
            if(_loc24_)
            {
               §§push(_loc5_.§_-5W§);
               loop1:
               while(true)
               {
                  §§push(_loc5_.§_-03A§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop4:
                        while(true)
                        {
                           _loc7_ = §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(_loc5_.§_-5W§);
                              while(true)
                              {
                                 §§push(_loc5_.§_-Dz§);
                                 addr191:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    continue loop1;
                                 }
                                 loop14:
                                 while(!(_loc25_ && this))
                                 {
                                    _loc9_ = §§pop();
                                    loop15:
                                    while(true)
                                    {
                                       addr100:
                                       loop16:
                                       while(true)
                                       {
                                          §§push(_loc6_.§_-5W§);
                                          if(!(_loc25_ && _loc3_))
                                          {
                                             §§push(_loc6_.§_-Dz§);
                                             if(!_loc25_)
                                             {
                                                if(!_loc24_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(_loc24_ || param1)
                                                {
                                                   if(!_loc24_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(!_loc24_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(_loc25_ && this)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr136:
                                                   §§push(Number(§§pop()));
                                                   if(!_loc24_)
                                                   {
                                                      break;
                                                   }
                                                   addr138:
                                                   if(_loc24_ || _loc2_)
                                                   {
                                                      addr145:
                                                      if(_loc24_ || _loc2_)
                                                      {
                                                         _loc10_ = §§pop();
                                                         continue loop15;
                                                      }
                                                      addr200:
                                                      while(true)
                                                      {
                                                         _loc8_ = §§pop();
                                                         addr201:
                                                         while(_loc24_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc6_.§_-5W§);
                                                               if(!(_loc25_ && _loc3_))
                                                               {
                                                                  §§push(_loc6_.§_-03A§);
                                                                  while(!_loc25_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§goto(addr191);
                                                                  addr173:
                                                               }
                                                            }
                                                         }
                                                         continue loop5;
                                                         §§goto(addr145);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      break loop16;
                                                      §§goto(addr138);
                                                   }
                                                }
                                                §§goto(addr136);
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr136);
                                       }
                                       continue loop14;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr203);
         }
         §§push(_loc2_);
         §§push(-1.5);
         if(_loc24_ || _loc3_)
         {
            §§push(§§pop() * b2Settings.b2_linearSlop);
         }
         return §§pop() > §§pop();
      }
   }
}
