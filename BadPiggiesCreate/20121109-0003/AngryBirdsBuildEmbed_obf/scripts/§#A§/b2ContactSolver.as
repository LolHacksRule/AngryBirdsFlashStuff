package §#A§
{
   import § !t§.*;
   import §#b§.b2Shape;
   import §'!;§.*;
   import §<!B§.*;
   import §?s§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §0!<§:b2WorldManifold;
      
      private static var §<4§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0!<§ = new b2WorldManifold();
            if(!(_loc1_ && _loc1_))
            {
               addr30:
               §<4§ = new b2PositionSolverManifold();
            }
            return;
         }
         §§goto(addr30);
      }
      
      private var §'!j§:b2TimeStep;
      
      private var §4!5§;
      
      b2internal var §1e§:Vector.<b2ContactConstraint>;
      
      private var §#!]§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§'!j§ = new b2TimeStep();
            if(_loc2_ || _loc1_)
            {
               this.§1e§ = new Vector.<b2ContactConstraint>();
               if(_loc2_)
               {
                  super();
               }
            }
         }
      }
      
      public function §6!V§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:* = 0;
         var _loc19_:int = 0;
         var _loc20_:b2ContactConstraintPoint = null;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:b2ContactConstraintPoint = null;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < this.§#!]§)
         {
            _loc7_ = (_loc6_ = this.§1e§[_loc5_]).§[!i§;
            _loc8_ = _loc6_.§;!K§;
            if(_loc24_ || _loc2_)
            {
               §§push(_loc7_.§7!?§);
               if(!(_loc25_ && this))
               {
                  §§push(Number(§§pop()));
                  if(!_loc25_)
                  {
                     _loc9_ = §§pop();
                     if(_loc24_ || this)
                     {
                        §§push(_loc7_.§`d§);
                        if(_loc24_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc25_)
                           {
                              _loc10_ = §§pop();
                              if(_loc24_)
                              {
                                 §§push(_loc8_.§7!?§);
                                 if(!(_loc25_ && param1))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc24_ || _loc2_)
                                    {
                                       _loc11_ = §§pop();
                                       if(_loc24_)
                                       {
                                          addr143:
                                          §§push(Number(_loc8_.§`d§));
                                          if(_loc24_ || _loc2_)
                                          {
                                             _loc12_ = §§pop();
                                             if(!_loc24_)
                                             {
                                                continue;
                                             }
                                             addr154:
                                             §§push(_loc6_.normal);
                                             if(_loc24_)
                                             {
                                                addr160:
                                                _loc13_ = §§pop().x;
                                                addr159:
                                                §§push(_loc6_.normal);
                                             }
                                             _loc15_ = _loc14_ = §§pop().y;
                                             if(!_loc25_)
                                             {
                                                addr171:
                                                §§push(-_loc13_);
                                                if(_loc24_ || _loc3_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc16_ = §§pop();
                                                if(param1.§ !K§)
                                                {
                                                   _loc19_ = _loc6_.§+6§;
                                                   if(_loc24_ || this)
                                                   {
                                                      _loc18_ = 0;
                                                      addr198:
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(_loc18_);
                                                         §§push(_loc19_);
                                                         if(_loc24_ || _loc3_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(_loc25_ && param1)
                                                               {
                                                                  addr568:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc18_);
                                                                     addr588:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc19_);
                                                                        break loop1;
                                                                     }
                                                                  }
                                                                  addr587:
                                                               }
                                                               addr590:
                                                               _loc5_++;
                                                               continue loop0;
                                                            }
                                                            _loc20_ = _loc6_.§>!@§[_loc18_];
                                                            §§push(_loc20_);
                                                            §§push(_loc20_.normalImpulse);
                                                            if(_loc24_)
                                                            {
                                                               §§push(§§pop() * param1.§5!;§);
                                                            }
                                                            §§pop().normalImpulse = §§pop();
                                                            if(_loc24_ || _loc3_)
                                                            {
                                                               §§push(_loc20_);
                                                               §§push(_loc20_.tangentImpulse);
                                                               if(_loc24_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() * param1.§5!;§);
                                                               }
                                                               §§pop().tangentImpulse = §§pop();
                                                               §§push(_loc20_.normalImpulse);
                                                               §§push(_loc13_);
                                                               if(_loc24_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(_loc20_.tangentImpulse);
                                                                  if(_loc24_ || this)
                                                                  {
                                                                     §§push(_loc15_);
                                                                     if(!(_loc25_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc24_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc25_ && param1))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc24_)
                                                                              {
                                                                                 _loc21_ = §§pop();
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    addr281:
                                                                                    §§push(_loc20_.normalImpulse);
                                                                                    §§push(_loc14_);
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       addr296:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc25_ && param1))
                                                                                       {
                                                                                          §§push(_loc20_.tangentImpulse);
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             addr310:
                                                                                             §§push(§§pop() + §§pop() * _loc16_);
                                                                                             if(_loc24_ || this)
                                                                                             {
                                                                                                addr318:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr310);
                                                                                       }
                                                                                       _loc22_ = §§pop();
                                                                                       if(!_loc25_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          §§push(_loc7_.m_angularVelocity);
                                                                                          if(!_loc25_)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             if(!_loc25_)
                                                                                             {
                                                                                                §§push(_loc20_.§?i§.x);
                                                                                                if(!_loc25_)
                                                                                                {
                                                                                                   §§push(_loc22_);
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      addr355:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc25_)
                                                                                                      {
                                                                                                         addr341:
                                                                                                         §§push(_loc20_.§?i§.y);
                                                                                                         if(!(_loc25_ && param1))
                                                                                                         {
                                                                                                            addr351:
                                                                                                            §§push(§§pop() * _loc21_);
                                                                                                         }
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                      }
                                                                                                      §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                      if(!(_loc24_ || _loc3_))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(_loc7_.§<&§);
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         §§push(_loc7_.§<&§);
                                                                                                         if(_loc24_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               §§push(_loc9_);
                                                                                                               §§push(_loc21_);
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop() * §§pop());
                                                                                                                  if(!_loc25_)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     §§push(_loc7_.§<&§);
                                                                                                                     if(!_loc25_)
                                                                                                                     {
                                                                                                                        §§push(_loc7_.§<&§);
                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           §§push(_loc9_);
                                                                                                                           §§push(_loc22_);
                                                                                                                           if(_loc24_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop() * §§pop());
                                                                                                                              if(!(_loc25_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr421:
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 §§push(_loc8_.m_angularVelocity);
                                                                                                                                 if(!_loc25_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc12_);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc20_.§9s§.x);
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc22_);
                                                                                                                                          if(!_loc25_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                addr449:
                                                                                                                                                §§push(_loc20_.§9s§.y);
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   addr446:
                                                                                                                                                   §§push(§§pop() * _loc21_);
                                                                                                                                                }
                                                                                                                                                §§pop().m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
                                                                                                                                                if(_loc24_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc8_.§<&§);
                                                                                                                                                   if(!(_loc25_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_.§<&§);
                                                                                                                                                      if(!(_loc25_ && param1))
                                                                                                                                                      {
                                                                                                                                                         addr477:
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         if(_loc24_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                            if(!_loc25_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                               if(!(_loc25_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr496:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     addr499:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(!_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        addr502:
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        §§push(_loc8_.§<&§);
                                                                                                                                                                        §§push(_loc8_.§<&§.y);
                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                        if(!(_loc25_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr518:
                                                                                                                                                                           §§push(§§pop() + §§pop() * _loc22_);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr518);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr527:
                                                                                                                                                                        _loc18_++;
                                                                                                                                                                     }
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr518);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr499);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr502);
                                                                                                                                             }
                                                                                                                                             §§goto(addr449);
                                                                                                                                          }
                                                                                                                                          §§goto(addr446);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr449);
                                                                                                                              }
                                                                                                                              §§goto(addr502);
                                                                                                                           }
                                                                                                                           §§goto(addr496);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr502);
                                                                                                                  }
                                                                                                                  §§goto(addr421);
                                                                                                               }
                                                                                                               §§goto(addr496);
                                                                                                            }
                                                                                                            §§goto(addr502);
                                                                                                         }
                                                                                                         §§goto(addr477);
                                                                                                      }
                                                                                                      §§goto(addr502);
                                                                                                   }
                                                                                                   §§goto(addr351);
                                                                                                }
                                                                                                §§goto(addr341);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                       §§goto(addr527);
                                                                                    }
                                                                                    §§goto(addr310);
                                                                                 }
                                                                                 §§goto(addr421);
                                                                              }
                                                                           }
                                                                           §§goto(addr318);
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                  }
                                                                  §§goto(addr310);
                                                               }
                                                               §§goto(addr296);
                                                            }
                                                            §§goto(addr281);
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            (_loc23_ = _loc6_.§>!@§[_loc18_]).normalImpulse = 0;
                                                            if(_loc24_)
                                                            {
                                                               _loc23_.tangentImpulse = 0;
                                                               if(_loc24_)
                                                               {
                                                                  addr586:
                                                                  _loc18_++;
                                                               }
                                                               §§goto(addr587);
                                                            }
                                                            §§goto(addr586);
                                                         }
                                                         §§goto(addr590);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr554:
                                                      §§push(0);
                                                      if(_loc24_)
                                                      {
                                                         addr567:
                                                         _loc18_ = §§pop();
                                                         §§goto(addr568);
                                                      }
                                                   }
                                                   §§goto(addr588);
                                                }
                                                else
                                                {
                                                   §§push(_loc6_.§+6§);
                                                   if(!_loc25_)
                                                   {
                                                      _loc19_ = §§pop();
                                                      if(_loc24_)
                                                      {
                                                         §§goto(addr554);
                                                      }
                                                      §§goto(addr590);
                                                   }
                                                }
                                                §§goto(addr567);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr554);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr154);
               }
               §§goto(addr143);
            }
            §§goto(addr171);
         }
      }
      
      public function SolveVelocityConstraints() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 3751
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §7!2§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < this.§#!]§)
         {
            _loc2_ = this.§1e§[_loc1_];
            _loc3_ = _loc2_.§3!D§;
            if(!(_loc8_ && _loc3_))
            {
               §§push(0);
               if(!(_loc8_ && this))
               {
                  _loc4_ = §§pop();
                  if(!(_loc8_ && _loc1_))
                  {
                     addr77:
                     loop2:
                     while(true)
                     {
                        §§push(_loc4_);
                        addr122:
                        while(§§pop() < _loc2_.§+6§)
                        {
                           _loc5_ = _loc3_.§`?§[_loc4_];
                           _loc6_ = _loc2_.§>!@§[_loc4_];
                           if(!_loc8_)
                           {
                              _loc5_.§,!9§ = _loc6_.normalImpulse;
                              if(!(_loc8_ && _loc2_))
                              {
                                 _loc5_.§?;§ = _loc6_.tangentImpulse;
                                 if(!_loc8_)
                                 {
                                    _loc4_++;
                                 }
                              }
                           }
                           continue loop2;
                        }
                        if(!(_loc7_ || _loc1_))
                        {
                           continue loop0;
                        }
                     }
                  }
                  _loc1_++;
                  continue;
               }
               §§goto(addr122);
            }
            §§goto(addr77);
         }
      }
      
      public function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = 0;
         var _loc13_:b2ContactConstraintPoint = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         §§push(0);
         if(!(_loc24_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         while(_loc3_ < this.§#!]§)
         {
            _loc5_ = (_loc4_ = this.§1e§[_loc3_]).§[!i§;
            _loc6_ = _loc4_.§;!K§;
            if(_loc25_ || this)
            {
               §§push(_loc5_.§+!U§);
               if(!_loc24_)
               {
                  §§push(_loc5_.§7!?§);
                  if(!_loc24_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc24_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                        if(_loc25_ || param1)
                        {
                           _loc7_ = §§pop();
                           if(_loc25_)
                           {
                              addr125:
                              §§push(_loc5_.§+!U§);
                              §§push(_loc5_.§`d§);
                              if(_loc25_ || _loc3_)
                              {
                                 _loc8_ = §§pop() * §§pop();
                                 if(!(_loc24_ && _loc2_))
                                 {
                                    §§push(_loc6_.§+!U§);
                                    if(!(_loc24_ && param1))
                                    {
                                       §§push(_loc6_.§7!?§);
                                       if(_loc25_ || this)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc25_ || _loc2_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc25_)
                                             {
                                                addr175:
                                                _loc9_ = §§pop();
                                                if(_loc25_)
                                                {
                                                   addr182:
                                                   addr180:
                                                   §§push(_loc6_.§+!U§ * _loc6_.§`d§);
                                                   if(_loc24_ && _loc3_)
                                                   {
                                                   }
                                                   addr191:
                                                   _loc10_ = §§pop();
                                                   if(!(_loc24_ && _loc2_))
                                                   {
                                                      addr199:
                                                      §§push(§<4§);
                                                      if(!_loc24_)
                                                      {
                                                         §§pop().§6!V§(_loc4_);
                                                         addr204:
                                                         §§push(§<4§);
                                                      }
                                                      _loc11_ = §§pop().§<!S§;
                                                      if(_loc25_ || _loc2_)
                                                      {
                                                         §§push(0);
                                                         if(!_loc24_)
                                                         {
                                                            _loc12_ = §§pop();
                                                            if(!(_loc25_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            addr226:
                                                            while(true)
                                                            {
                                                               §§push(_loc12_);
                                                            }
                                                            addr782:
                                                         }
                                                         for(; §§pop() < _loc4_.§+6§; §§goto(addr782))
                                                         {
                                                            _loc13_ = _loc4_.§>!@§[_loc12_];
                                                            _loc14_ = §<4§.§`?§[_loc12_];
                                                            if(_loc25_)
                                                            {
                                                               _loc15_ = §<4§.§+g§[_loc12_];
                                                               §§push(_loc14_.x);
                                                               §§push(_loc5_.m_sweep);
                                                               if(_loc25_ || _loc3_)
                                                               {
                                                                  §§push(§§pop().c);
                                                                  if(!(_loc24_ && _loc2_))
                                                                  {
                                                                     _loc16_ = §§pop() - §§pop().x;
                                                                     §§push(_loc14_.y);
                                                                     if(_loc25_ || param1)
                                                                     {
                                                                        §§push(_loc5_.m_sweep);
                                                                        if(_loc25_)
                                                                        {
                                                                           §§push(§§pop().c);
                                                                           if(_loc25_)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(!_loc24_)
                                                                              {
                                                                                 §§push(Number(§§pop() - §§pop()));
                                                                                 if(_loc25_ || _loc2_)
                                                                                 {
                                                                                    _loc17_ = §§pop();
                                                                                    if(!(_loc24_ && param1))
                                                                                    {
                                                                                       §§push(_loc14_.x);
                                                                                       §§push(_loc6_.m_sweep);
                                                                                       if(!(_loc24_ && _loc3_))
                                                                                       {
                                                                                          addr318:
                                                                                          §§push(§§pop().c);
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop().x);
                                                                                             if(!(_loc24_ && _loc3_))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                {
                                                                                                   _loc18_ = §§pop();
                                                                                                   addr344:
                                                                                                   §§push(_loc14_.y);
                                                                                                   §§push(_loc6_.m_sweep.c.y);
                                                                                                   if(_loc25_)
                                                                                                   {
                                                                                                      addr349:
                                                                                                      _loc19_ = §§pop() - §§pop();
                                                                                                      §§push(_loc2_);
                                                                                                      §§push(_loc15_);
                                                                                                   }
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      if(_loc25_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc25_)
                                                                                                         {
                                                                                                            addr363:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc25_)
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               if(!_loc25_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(b2Math);
                                                                                                               §§push(param1);
                                                                                                               if(_loc25_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(_loc15_);
                                                                                                                  if(!(_loc24_ && this))
                                                                                                                  {
                                                                                                                     §§push(b2Settings.b2_linearSlop);
                                                                                                                     if(!_loc24_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc24_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr409:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              addr413:
                                                                                                                              §§push(-§§pop());
                                                                                                                           }
                                                                                                                           §§push(0);
                                                                                                                        }
                                                                                                                        §§goto(addr413);
                                                                                                                     }
                                                                                                                     §§push(§§pop().§%!j§(§§pop(),§§pop(),§§pop()));
                                                                                                                     if(!(_loc24_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc25_ || _loc3_)
                                                                                                                        {
                                                                                                                           _loc20_ = §§pop();
                                                                                                                           if(_loc25_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr441:
                                                                                                                              addr444:
                                                                                                                              addr445:
                                                                                                                              §§push(Number(-_loc13_.§!!_§ * _loc20_));
                                                                                                                              §§push(Number(-_loc13_.§!!_§ * _loc20_));
                                                                                                                              if(!(_loc24_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr453:
                                                                                                                                 _loc21_ = §§pop();
                                                                                                                                 addr460:
                                                                                                                                 if(_loc25_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc11_.x);
                                                                                                                                 }
                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                 §§push(_loc21_);
                                                                                                                                 if(!(_loc24_ && param1))
                                                                                                                                 {
                                                                                                                                    addr469:
                                                                                                                                    §§push(Number(§§pop() * _loc11_.y));
                                                                                                                                 }
                                                                                                                                 _loc23_ = §§pop();
                                                                                                                                 §§push(_loc5_.m_sweep);
                                                                                                                                 if(!(_loc24_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().c);
                                                                                                                                    if(!(_loc24_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_.m_sweep);
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().c);
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             if(_loc25_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                   if(_loc25_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc25_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            if(!(_loc24_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_.m_sweep);
                                                                                                                                                               if(!(_loc24_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_.m_sweep);
                                                                                                                                                                     if(!(_loc24_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                        if(_loc25_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              addr564:
                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                              if(_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr569:
                                                                                                                                                                                 §§pop().y = §§pop() - §§pop() * §§pop();
                                                                                                                                                                                 §§push(_loc5_.m_sweep);
                                                                                                                                                                                 if(_loc25_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr579:
                                                                                                                                                                                    §§push(_loc5_.m_sweep);
                                                                                                                                                                                    if(_loc25_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().a);
                                                                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          if(_loc25_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                             if(_loc25_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc23_);
                                                                                                                                                                                                if(_loc25_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                                                                      if(_loc25_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(_loc25_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr635:
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(_loc25_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().a = §§pop();
                                                                                                                                                                                                                        _loc5_.§<=§();
                                                                                                                                                                                                                        if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                           if(!(_loc24_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().c);
                                                                                                                                                                                                                              if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                 if(_loc25_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr677:
                                                                                                                                                                                                                                    §§push(§§pop().c);
                                                                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr680:
                                                                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc9_);
                                                                                                                                                                                                                                          if(_loc25_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr723:
                                                                                                                                                                                                                                             §§push(_loc22_);
                                                                                                                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr694:
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr702:
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   if(_loc25_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr705:
                                                                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                                                                      addr729:
                                                                                                                                                                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                      if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr719:
                                                                                                                                                                                                                                                         §§push(§§pop().c);
                                                                                                                                                                                                                                                         §§push(_loc6_.m_sweep.c.y);
                                                                                                                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(_loc6_.m_sweep.a);
                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr737:
                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                            if(_loc25_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc23_);
                                                                                                                                                                                                                                                               if(_loc25_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr748:
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(_loc25_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr762:
                                                                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                                                                     if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr759:
                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc22_);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().a = §§pop() + §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr777:
                                                                                                                                                                                                                                                                        _loc6_.§<=§();
                                                                                                                                                                                                                                                                        if(_loc25_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr781:
                                                                                                                                                                                                                                                                           _loc12_++;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr762);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr759);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr762);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr724:
                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                   if(_loc25_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr727:
                                                                                                                                                                                                                                                      §§goto(addr729);
                                                                                                                                                                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr781);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc23_);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr724);
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr702);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr705);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr719);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr727);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr762);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr737);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr762);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr748);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr759);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr748);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr635);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr748);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr762);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr737);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr762);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr705);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr694);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr702);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr680);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr677);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr719);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr579);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr727);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr569);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr723);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr694);
                                                                                                                                                }
                                                                                                                                                §§goto(addr564);
                                                                                                                                             }
                                                                                                                                             §§goto(addr702);
                                                                                                                                          }
                                                                                                                                          §§goto(addr680);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr719);
                                                                                                                                 }
                                                                                                                                 §§goto(addr705);
                                                                                                                              }
                                                                                                                              §§goto(addr460);
                                                                                                                              §§push(Number(§§pop() * §§pop()));
                                                                                                                           }
                                                                                                                           §§goto(addr705);
                                                                                                                        }
                                                                                                                        §§goto(addr469);
                                                                                                                     }
                                                                                                                     §§goto(addr441);
                                                                                                                  }
                                                                                                                  §§goto(addr413);
                                                                                                               }
                                                                                                               §§goto(addr409);
                                                                                                            }
                                                                                                            §§goto(addr444);
                                                                                                         }
                                                                                                         §§goto(addr441);
                                                                                                      }
                                                                                                      §§goto(addr460);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(Number(_loc15_));
                                                                                                   }
                                                                                                   §§goto(addr363);
                                                                                                }
                                                                                                §§goto(addr349);
                                                                                             }
                                                                                             §§goto(addr469);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr344);
                                                                                    }
                                                                                    §§goto(addr727);
                                                                                 }
                                                                                 §§goto(addr445);
                                                                              }
                                                                              §§goto(addr453);
                                                                           }
                                                                           §§goto(addr344);
                                                                        }
                                                                        §§goto(addr318);
                                                                     }
                                                                     §§goto(addr469);
                                                                  }
                                                               }
                                                               §§goto(addr344);
                                                            }
                                                            §§goto(addr777);
                                                         }
                                                         if(!(_loc24_ && this))
                                                         {
                                                            _loc3_++;
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr204);
                                                }
                                                §§goto(addr199);
                                             }
                                             §§goto(addr191);
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr175);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr180);
                                 }
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr175);
                  }
               }
               §§goto(addr182);
            }
            §§goto(addr125);
         }
         §§push(_loc2_);
         §§push(-1.5);
         if(_loc25_)
         {
            §§push(§§pop() * b2Settings.b2_linearSlop);
         }
         return §§pop() > §§pop();
      }
   }
}
