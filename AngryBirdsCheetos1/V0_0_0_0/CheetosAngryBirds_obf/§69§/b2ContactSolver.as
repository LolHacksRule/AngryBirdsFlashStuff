package §69§
{
   import § G§.*;
   import §&!"§.*;
   import §-!C§.b2Shape;
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §48§:b2WorldManifold;
      
      private static var §!h§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §48§ = new b2WorldManifold();
            do
            {
               §!h§ = new b2PositionSolverManifold();
            }
            while(!_loc2_);
            
         }
      }
      
      private var §^k§:b2TimeStep;
      
      private var §@!=§;
      
      b2internal var §9,§:Vector.<b2ContactConstraint>;
      
      private var §>!0§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§^k§ = new b2TimeStep();
         }
         do
         {
            this.§9,§ = new Vector.<b2ContactConstraint>();
            do
            {
               super();
            }
            while(!(_loc1_ || this));
            
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function §1D§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:* = 0;
         var _loc19_:* = 0;
         var _loc20_:b2ContactConstraintPoint = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2ContactConstraintPoint = null;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < this.§>!0§)
         {
            _loc7_ = (_loc6_ = this.§9,§[_loc5_]).§<§;
            _loc8_ = _loc6_.§,!M§;
            if(_loc24_)
            {
               §§push(_loc7_.§]m§);
               if(_loc24_)
               {
                  §§push(Number(§§pop()));
               }
               while(true)
               {
                  _loc9_ = §§pop();
                  addr266:
                  while(true)
                  {
                     §§push(_loc7_.§?0§);
                     addr250:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr251:
                        while(true)
                        {
                           _loc10_ = §§pop();
                           if(!(_loc24_ || param1))
                           {
                              break;
                           }
                           §§push(_loc8_.§]m§);
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr245:
                              while(true)
                              {
                                 _loc11_ = §§pop();
                              }
                           }
                        }
                        addr713:
                        _loc5_++;
                        continue loop0;
                     }
                  }
                  addr163:
                  if(!(_loc24_ || _loc3_))
                  {
                     continue;
                  }
                  _loc16_ = §§pop();
                  addr108:
                  addr171:
                  if(param1.§%!+§)
                  {
                     if(!(_loc25_ && _loc2_))
                     {
                        §§push(_loc6_.§,!H§);
                        if(!_loc25_)
                        {
                           §§push(int(§§pop()));
                           if(_loc24_ || _loc2_)
                           {
                              _loc19_ = §§pop();
                              if(_loc24_)
                              {
                                 §§push(0);
                                 if(_loc24_)
                                 {
                                    _loc18_ = §§pop();
                                    if(!(_loc25_ && this))
                                    {
                                       if(!(_loc25_ && _loc2_))
                                       {
                                          if(false)
                                          {
                                             §§goto(addr108);
                                          }
                                          addr694:
                                          §§push(_loc18_);
                                          if(_loc24_ || this)
                                          {
                                             §§push(_loc19_);
                                             if(!(_loc25_ && this))
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   _loc20_ = _loc6_.§=R§[_loc18_];
                                                   §§push(_loc20_);
                                                   §§push(_loc20_.normalImpulse);
                                                   if(_loc24_ || param1)
                                                   {
                                                      §§push(§§pop() * param1.§#b§);
                                                   }
                                                   §§pop().normalImpulse = §§pop();
                                                   if(!(_loc25_ && _loc3_))
                                                   {
                                                      §§push(_loc20_);
                                                      §§push(_loc20_.tangentImpulse);
                                                      if(!(_loc25_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * param1.§#b§);
                                                      }
                                                      §§pop().tangentImpulse = §§pop();
                                                      addr693:
                                                      §§push(_loc20_.normalImpulse);
                                                      if(_loc24_ || param1)
                                                      {
                                                         §§push(_loc13_);
                                                         if(!(_loc25_ && _loc2_))
                                                         {
                                                            addr668:
                                                            §§push(§§pop() * §§pop());
                                                            §§push(_loc20_.tangentImpulse);
                                                            if(!(_loc25_ && _loc3_))
                                                            {
                                                               addr667:
                                                               §§push(§§pop() * _loc15_);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc25_ && this))
                                                            {
                                                               addr677:
                                                               _loc21_ = §§pop();
                                                               addr678:
                                                               §§push(_loc20_.normalImpulse);
                                                               if(!(_loc25_ && this))
                                                               {
                                                                  if(_loc24_)
                                                                  {
                                                                     if(_loc24_)
                                                                     {
                                                                        §§push(_loc14_);
                                                                        if(!_loc25_)
                                                                        {
                                                                           if(_loc24_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc25_)
                                                                              {
                                                                                 addr624:
                                                                                 §§push(_loc20_.tangentImpulse);
                                                                                 if(!_loc25_)
                                                                                 {
                                                                                    §§push(_loc16_);
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       addr632:
                                                                                       §§push(§§pop() + §§pop() * §§pop());
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          addr636:
                                                                                          _loc22_ = §§pop();
                                                                                          addr637:
                                                                                          §§push(_loc7_);
                                                                                          §§push(_loc7_.m_angularVelocity);
                                                                                          if(!(_loc25_ && _loc3_))
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                §§push(_loc20_.§!!N§.x);
                                                                                                if(!_loc25_)
                                                                                                {
                                                                                                   §§push(_loc22_);
                                                                                                   if(!_loc25_)
                                                                                                   {
                                                                                                      addr599:
                                                                                                      addr600:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc25_)
                                                                                                      {
                                                                                                         addr590:
                                                                                                         §§push(_loc20_.§!!N§.y);
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            addr595:
                                                                                                            §§push(§§pop() * _loc21_);
                                                                                                         }
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                      }
                                                                                                      §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                      addr563:
                                                                                                      _loc7_.§%=§.x -= _loc9_ * _loc21_;
                                                                                                      addr601:
                                                                                                      addr560:
                                                                                                      addr558:
                                                                                                      addr564:
                                                                                                      addr559:
                                                                                                      addr561:
                                                                                                      addr562:
                                                                                                      §§push(_loc7_.§%=§);
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         addr516:
                                                                                                         §§push(_loc7_.§%=§.y);
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            addr520:
                                                                                                            §§push(_loc9_);
                                                                                                            if(!(_loc25_ && _loc2_))
                                                                                                            {
                                                                                                               addr528:
                                                                                                               §§push(_loc22_);
                                                                                                               if(_loc24_ || _loc2_)
                                                                                                               {
                                                                                                                  addr537:
                                                                                                                  §§push(§§pop() - §§pop() * §§pop());
                                                                                                                  if(_loc24_ || this)
                                                                                                                  {
                                                                                                                     if(_loc24_ || this)
                                                                                                                     {
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        addr552:
                                                                                                                        §§push(_loc8_);
                                                                                                                        §§push(_loc8_.m_angularVelocity);
                                                                                                                        if(!(_loc25_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc12_);
                                                                                                                           if(!(_loc25_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(_loc20_.§ !Y§.x);
                                                                                                                              if(!(_loc25_ && this))
                                                                                                                              {
                                                                                                                                 §§push(_loc22_);
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    addr504:
                                                                                                                                    addr505:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!(_loc25_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr495:
                                                                                                                                       §§push(_loc20_.§ !Y§.y);
                                                                                                                                       if(!_loc25_)
                                                                                                                                       {
                                                                                                                                          addr500:
                                                                                                                                          §§push(§§pop() * _loc21_);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                    addr506:
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       addr426:
                                                                                                                                       §§push(_loc8_.§%=§);
                                                                                                                                       §§push(_loc8_.§%=§);
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          addr429:
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          §§push(_loc21_);
                                                                                                                                          if(!(_loc25_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr439:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc25_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr447:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   addr450:
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         addr329:
                                                                                                                                                         §§push(_loc8_.§%=§);
                                                                                                                                                         if(_loc24_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(_loc24_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_.§%=§);
                                                                                                                                                               if(_loc24_ || this)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc25_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                        if(_loc24_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc25_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                 if(_loc24_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr381:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr396:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!(_loc25_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                addr406:
                                                                                                                                                                                                if(!(_loc25_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc25_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc18_++;
                                                                                                                                                                                                      if(!(_loc25_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc24_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc25_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc25_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(false)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr329);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr694);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr637);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr552);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr450);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr406);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr693);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr601);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr429);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr447);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr560);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr429);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr520);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr439);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr381);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr396);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr558);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr426);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr601);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr426);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr564);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr506);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr537);
                                                                                                                                          }
                                                                                                                                          §§goto(addr528);
                                                                                                                                       }
                                                                                                                                       §§goto(addr516);
                                                                                                                                    }
                                                                                                                                    §§goto(addr678);
                                                                                                                                 }
                                                                                                                                 §§goto(addr500);
                                                                                                                              }
                                                                                                                              §§goto(addr495);
                                                                                                                           }
                                                                                                                           §§goto(addr504);
                                                                                                                        }
                                                                                                                        §§goto(addr505);
                                                                                                                     }
                                                                                                                     §§goto(addr559);
                                                                                                                  }
                                                                                                                  §§goto(addr563);
                                                                                                               }
                                                                                                               §§goto(addr561);
                                                                                                            }
                                                                                                            §§goto(addr562);
                                                                                                         }
                                                                                                         §§goto(addr537);
                                                                                                      }
                                                                                                      addr556:
                                                                                                      §§goto(addr556);
                                                                                                   }
                                                                                                   §§goto(addr595);
                                                                                                }
                                                                                                §§goto(addr590);
                                                                                             }
                                                                                             §§goto(addr599);
                                                                                          }
                                                                                          §§goto(addr600);
                                                                                       }
                                                                                       §§goto(addr636);
                                                                                    }
                                                                                    §§goto(addr667);
                                                                                 }
                                                                                 §§goto(addr632);
                                                                              }
                                                                              §§goto(addr636);
                                                                           }
                                                                           §§goto(addr668);
                                                                        }
                                                                        §§goto(addr632);
                                                                     }
                                                                     §§goto(addr668);
                                                                  }
                                                                  §§goto(addr677);
                                                               }
                                                               §§goto(addr624);
                                                            }
                                                            §§goto(addr677);
                                                         }
                                                         §§goto(addr667);
                                                      }
                                                      §§goto(addr677);
                                                   }
                                                   §§goto(addr599);
                                                }
                                                if(!_loc25_)
                                                {
                                                   §§goto(addr713);
                                                }
                                                else
                                                {
                                                   addr734:
                                                   §§push(0);
                                                   if(_loc24_)
                                                   {
                                                      addr737:
                                                      _loc18_ = §§pop();
                                                      if(!_loc24_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr760:
                                                      §§push(_loc18_);
                                                      §§push(_loc19_);
                                                      addr740:
                                                   }
                                                   §§goto(addr760);
                                                }
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                (_loc23_ = _loc6_.§=R§[_loc18_]).normalImpulse = 0;
                                                if(!_loc25_)
                                                {
                                                   _loc23_.tangentImpulse = 0;
                                                   if(!_loc25_)
                                                   {
                                                      addr758:
                                                      _loc18_++;
                                                   }
                                                   §§goto(addr760);
                                                }
                                                §§goto(addr758);
                                             }
                                             if(!_loc24_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr713);
                                          }
                                          addr718:
                                          §§push(int(§§pop()));
                                          if(_loc24_ || this)
                                          {
                                             _loc19_ = §§pop();
                                             if(_loc25_ && _loc3_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr734);
                                          }
                                          §§goto(addr760);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr713);
                                 }
                                 §§goto(addr737);
                              }
                              §§goto(addr713);
                           }
                        }
                        §§goto(addr760);
                     }
                     §§goto(addr740);
                  }
                  §§push(_loc6_.§,!H§);
                  if(_loc24_)
                  {
                     §§goto(addr718);
                  }
                  §§goto(addr760);
               }
            }
            loop7:
            while(true)
            {
               §§push(_loc8_.§?0§);
               while(true)
               {
                  if(_loc24_)
                  {
                     §§push(Number(§§pop()));
                     while(true)
                     {
                        if(_loc24_)
                        {
                           _loc12_ = §§pop();
                           if(!_loc25_)
                           {
                              §§push(_loc6_.normal);
                              loop10:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr215:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr216:
                                    while(_loc24_)
                                    {
                                       _loc13_ = §§pop();
                                       if(_loc24_)
                                       {
                                          if(_loc24_ || _loc3_)
                                          {
                                             continue loop10;
                                          }
                                          continue loop7;
                                       }
                                       §§goto(addr734);
                                    }
                                    §§goto(addr251);
                                 }
                              }
                           }
                           break;
                        }
                        §§goto(addr245);
                     }
                     §§goto(addr760);
                  }
                  break;
                  if(_loc25_ && _loc3_)
                  {
                     continue;
                  }
                  §§push(-§§pop());
                  if(!_loc25_)
                  {
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr161);
               }
               §§goto(addr250);
            }
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
      
      public function §>h§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>!0§)
         {
            _loc2_ = this.§9,§[_loc1_];
            _loc3_ = _loc2_.§0t§;
            if(!(_loc7_ && _loc1_))
            {
               §§push(0);
               if(!(_loc7_ && this))
               {
                  _loc4_ = §§pop();
                  if(_loc7_ && _loc1_)
                  {
                     continue;
                  }
                  addr78:
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr119:
               }
               loop1:
               for(; §§pop() < _loc2_.§,!H§; §§goto(addr119))
               {
                  _loc5_ = _loc3_.§+!S§[_loc4_];
                  _loc6_ = _loc2_.§=R§[_loc4_];
                  if(!_loc7_)
                  {
                     _loc5_.§+7§ = _loc6_.normalImpulse;
                  }
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        _loc5_.§?!M§ = _loc6_.tangentImpulse;
                        do
                        {
                           _loc4_++;
                        }
                        while(!(_loc8_ || _loc1_));
                        
                        if(_loc8_)
                        {
                           if(true)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
               if(!(_loc7_ && this))
               {
                  _loc1_++;
               }
               continue;
            }
            §§goto(addr78);
         }
      }
      
      public function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
