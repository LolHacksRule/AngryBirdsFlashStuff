package §'"6§
{
   import §!"3§.b2Shape;
   import §'"-§.*;
   import §,"[§.*;
   import §6!^§.*;
   import §6"1§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §0e§:b2WorldManifold;
      
      private static var §]!D§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0e§ = new b2WorldManifold();
         }
         do
         {
            §]!D§ = new b2PositionSolverManifold();
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private var §!" §:b2TimeStep;
      
      private var §>!`§;
      
      b2internal var §6o§:Vector.<b2ContactConstraint>;
      
      private var §%f§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§!" § = new b2TimeStep();
         }
         while(true)
         {
            this.§6o§ = new Vector.<b2ContactConstraint>();
            while(!(_loc1_ && _loc2_))
            {
               super();
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §6!Q§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc2_:b2Vec2 = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Mat22 = null;
         var _loc6_:b2ContactConstraint = null;
         var _loc7_:b2Body = null;
         var _loc8_:b2Body = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:* = 0;
         var _loc19_:int = 0;
         var _loc20_:b2ContactConstraintPoint = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2ContactConstraintPoint = null;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < this.§%f§)
         {
            _loc7_ = (_loc6_ = this.§6o§[_loc5_]).§`y§;
            _loc8_ = _loc6_.§8!7§;
            if(!(_loc24_ && _loc3_))
            {
               §§push(_loc7_.§-@§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc9_ = §§pop();
                     if(_loc25_ || param1)
                     {
                        §§push(_loc7_.§,H§);
                        loop3:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc10_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc8_.§-@§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop7:
                                    while(!_loc24_)
                                    {
                                       _loc11_ = §§pop();
                                       while(!(_loc24_ && param1))
                                       {
                                          §§push(_loc8_.§,H§);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop10:
                                             while(true)
                                             {
                                                _loc12_ = §§pop();
                                                if(_loc24_ && this)
                                                {
                                                   break;
                                                }
                                                §§push(_loc6_.normal);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   loop12:
                                                   while(_loc25_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      while(true)
                                                      {
                                                         _loc13_ = §§pop();
                                                         continue loop11;
                                                         addr150:
                                                         if(!(_loc25_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc24_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         addr160:
                                                         §§push(Number(§§pop()));
                                                         if(_loc25_)
                                                         {
                                                            if(_loc24_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc25_ || this)
                                                                  {
                                                                     if(!_loc25_)
                                                                     {
                                                                        break;
                                                                        addr195:
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc14_ = §§pop());
                                                                        if(_loc25_ || _loc2_)
                                                                        {
                                                                           if(_loc24_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc15_ = §§pop();
                                                                           if(!(_loc25_ || _loc2_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc24_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           §§push(_loc13_);
                                                                           if(!(_loc24_ && param1))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr150);
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               continue loop2;
                                                               addr185:
                                                            }
                                                            if(!_loc24_)
                                                            {
                                                               if(!_loc24_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop12;
                                                         }
                                                         §§goto(addr195);
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                             addr735:
                                             §§push(0);
                                             if(_loc25_ || param1)
                                             {
                                                addr743:
                                                _loc18_ = §§pop();
                                                if(!(_loc25_ || param1))
                                                {
                                                   continue loop0;
                                                }
                                                addr780:
                                                §§push(_loc18_);
                                             }
                                             addr782:
                                             if(§§pop() < _loc19_)
                                             {
                                                (_loc23_ = _loc6_.§]!@§[_loc18_]).normalImpulse = 0;
                                                if(_loc25_)
                                                {
                                                   _loc23_.tangentImpulse = 0;
                                                   if(!_loc24_)
                                                   {
                                                      _loc18_++;
                                                   }
                                                }
                                                §§goto(addr780);
                                             }
                                             if(_loc25_ || this)
                                             {
                                                break loop2;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       continue loop5;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     break;
                  }
               }
            }
            §§goto(addr790);
         }
      }
      
      public function SolveVelocityConstraints() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §,t§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§%f§)
         {
            _loc2_ = this.§6o§[_loc1_];
            _loc3_ = _loc2_.§=_§;
            if(!(_loc8_ && _loc2_))
            {
               §§push(0);
               if(!_loc8_)
               {
                  _loc4_ = §§pop();
                  if(!(_loc7_ || _loc2_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr123:
               }
               while(§§pop() < _loc2_.§=!7§)
               {
                  _loc5_ = _loc3_.§4!_§[_loc4_];
                  _loc6_ = _loc2_.§]!@§[_loc4_];
                  if(!_loc8_)
                  {
                     _loc5_.§#!5§ = _loc6_.normalImpulse;
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           _loc5_.§@"%§ = _loc6_.tangentImpulse;
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 _loc4_++;
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop3;
                           }
                           addr100:
                        }
                     }
                  }
                  while(false)
                  {
                     §§goto(addr100);
                  }
                  §§goto(addr123);
               }
               if(!(_loc8_ && _loc1_))
               {
                  _loc1_++;
               }
            }
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
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
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
         if(!(_loc25_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         while(_loc3_ < this.§%f§)
         {
            _loc5_ = (_loc4_ = this.§6o§[_loc3_]).§`y§;
            _loc6_ = _loc4_.§8!7§;
            if(!(_loc25_ && _loc2_))
            {
               §§push(_loc5_.§,!v§);
               if(!(_loc25_ && param1))
               {
                  §§push(_loc5_.§-@§);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr224:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  addr223:
               }
               while(true)
               {
                  _loc7_ = §§pop();
                  while(true)
                  {
                     §§push(_loc5_.§,!v§);
                     loop5:
                     while(true)
                     {
                        §§push(_loc5_.§,H§);
                        loop6:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr209:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr210:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 addr211:
                                 while(true)
                                 {
                                    §§push(_loc6_.§,!v§);
                                    addr172:
                                    while(true)
                                    {
                                       §§push(_loc6_.§-@§);
                                       addr174:
                                       while(_loc24_ || _loc3_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          continue loop5;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr168);
         }
         §§push(_loc2_);
         §§push(-1.5);
         if(_loc24_)
         {
            §§push(§§pop() * b2Settings.b2_linearSlop);
         }
         return §§pop() > §§pop();
      }
   }
}
