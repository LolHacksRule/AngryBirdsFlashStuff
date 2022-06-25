package §break§
{
   import §2!+§.b2Shape;
   import §7!u§.*;
   import §72§.*;
   import §>H§.*;
   import §`w§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §&;§:b2WorldManifold;
      
      private static var §28§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&;§ = new b2WorldManifold();
            do
            {
               §28§ = new b2PositionSolverManifold();
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      private var §'%§:b2TimeStep;
      
      private var §`o§;
      
      b2internal var §`!§:Vector.<b2ContactConstraint>;
      
      private var §7X§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§'%§ = new b2TimeStep();
            do
            {
               this.§`!§ = new Vector.<b2ContactConstraint>();
               do
               {
                  super();
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(_loc2_);
            
         }
      }
      
      public function §%%§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
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
         while(_loc5_ < this.§7X§)
         {
            _loc7_ = (_loc6_ = this.§`!§[_loc5_]).§3x§;
            _loc8_ = _loc6_.§8P§;
            if(_loc24_ || _loc3_)
            {
               §§push(_loc7_.§7n§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc9_ = §§pop();
                     while(true)
                     {
                        §§push(_loc7_.§;5§);
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop5:
                           while(true)
                           {
                              _loc10_ = §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push(_loc8_.§7n§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop8:
                                    while(true)
                                    {
                                       _loc11_ = §§pop();
                                       while(_loc24_ || _loc3_)
                                       {
                                          §§push(_loc8_.§;5§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             while(!_loc25_)
                                             {
                                                if(!_loc24_)
                                                {
                                                   continue loop7;
                                                }
                                                _loc12_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(_loc6_.normal);
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      continue loop10;
                                                      addr242:
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_.normal);
                                                         if(_loc25_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop().y);
                                                         while(_loc24_ || param1)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(_loc14_ = §§pop());
                                                               addr187:
                                                               while(_loc24_ || this)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     _loc15_ = §§pop();
                                                                     if(_loc25_ && this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop16;
                                                                     addr138:
                                                                     if(_loc24_ || this)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                  }
                                                                  while(_loc18_ < _loc19_)
                                                                  {
                                                                     (_loc23_ = _loc6_.§;!K§[_loc18_]).normalImpulse = 0;
                                                                     if(_loc24_)
                                                                     {
                                                                        _loc23_.tangentImpulse = 0;
                                                                        if(!(_loc24_ || param1))
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     _loc18_++;
                                                                  }
                                                                  if(_loc24_)
                                                                  {
                                                                     addr789:
                                                                     _loc5_++;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop8;
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                           if(!(_loc24_ || _loc3_))
                           {
                              continue;
                           }
                           if(!_loc24_)
                           {
                              continue loop1;
                           }
                           _loc13_ = §§pop();
                           §§goto(addr242);
                        }
                     }
                  }
               }
            }
            §§goto(addr750);
         }
      }
      
      public function SolveVelocityConstraints() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §^y§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7X§)
         {
            _loc2_ = this.§`!§[_loc1_];
            _loc3_ = _loc2_.§6!P§;
            if(_loc7_)
            {
               §§push(0);
               if(_loc7_)
               {
                  _loc4_ = §§pop();
                  if(!(_loc8_ && _loc2_))
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                     }
                     addr118:
                  }
                  addr124:
                  _loc1_++;
                  continue;
               }
               while(§§pop() < _loc2_.§'0§)
               {
                  _loc5_ = _loc3_.§,!f§[_loc4_];
                  _loc6_ = _loc2_.§;!K§[_loc4_];
                  if(!_loc8_)
                  {
                     _loc5_.§`!k§ = _loc6_.normalImpulse;
                     loop3:
                     while(true)
                     {
                        addr105:
                        while(true)
                        {
                           _loc5_.§?!+§ = _loc6_.tangentImpulse;
                           while(true)
                           {
                              if(_loc7_)
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
                        }
                     }
                  }
                  while(false)
                  {
                     §§goto(addr105);
                  }
                  §§goto(addr118);
               }
               if(!_loc7_)
               {
                  continue;
               }
            }
            §§goto(addr124);
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
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = 0;
         var _loc13_:b2ContactConstraintPoint = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         §§push(0);
         if(_loc25_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < this.§7X§)
         {
            _loc5_ = (_loc4_ = this.§`!§[_loc3_]).§3x§;
            _loc6_ = _loc4_.§8P§;
            if(_loc25_ || this)
            {
               §§push(_loc5_.§,0§);
               loop1:
               while(true)
               {
                  §§push(_loc5_.§7n§);
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
                           while(true)
                           {
                              §§push(_loc5_.§,0§);
                              loop6:
                              while(true)
                              {
                                 §§push(_loc5_.§;5§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop8:
                                    while(_loc25_ || param1)
                                    {
                                       §§push(Number(§§pop()));
                                       loop9:
                                       while(_loc25_)
                                       {
                                          _loc8_ = §§pop();
                                          loop10:
                                          while(true)
                                          {
                                             §§push(_loc6_.§,0§);
                                             loop11:
                                             while(!_loc24_)
                                             {
                                                §§push(_loc6_.§7n§);
                                                while(_loc25_ || _loc2_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr200:
                                                      while(true)
                                                      {
                                                         _loc9_ = §§pop();
                                                      }
                                                   }
                                                   addr137:
                                                   §§push(_loc6_.§;5§);
                                                   if(_loc24_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc24_ && param1)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc24_ && _loc2_))
                                                   {
                                                      addr161:
                                                      if(_loc25_ || _loc3_)
                                                      {
                                                         if(_loc24_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         addr171:
                                                         §§push(Number(§§pop()));
                                                         if(!_loc25_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(!(_loc25_ || this))
                                                         {
                                                            continue loop8;
                                                         }
                                                         _loc10_ = §§pop();
                                                         while(!_loc24_)
                                                         {
                                                            §§push(§28§);
                                                            if(!_loc24_)
                                                            {
                                                               §§pop().§%%§(_loc4_);
                                                               if(_loc25_ || this)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               continue;
                                                               continue;
                                                            }
                                                            addr229:
                                                            _loc11_ = §§pop().§'!L§;
                                                            if(!_loc24_)
                                                            {
                                                               §§push(0);
                                                               if(!_loc24_)
                                                               {
                                                                  _loc12_ = §§pop();
                                                                  if(_loc24_ && this)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc12_);
                                                                  }
                                                                  addr996:
                                                               }
                                                               while(§§pop() < _loc4_.§'0§)
                                                               {
                                                                  _loc13_ = _loc4_.§;!K§[_loc12_];
                                                                  _loc14_ = §28§.§,!f§[_loc12_];
                                                                  if(!(_loc24_ && param1))
                                                                  {
                                                                     §§push(Number(§28§.§7]§[_loc12_]));
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        _loc15_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc14_.x);
                                                                           if(!_loc24_)
                                                                           {
                                                                              §§push(_loc5_.m_sweep);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().c);
                                                                                 addr974:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr975:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr976:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr942:
                                                                                 if(!(_loc25_ || param1))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(§§pop().c);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr951:
                                                                                    addr900:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr952:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr953:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc18_ = §§pop();
                                                                                             addr954:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc14_.y);
                                                                                                continue loop20;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop().c);
                                                                                    if(_loc24_ && this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc25_)
                                                                                    {
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             while(!_loc24_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                while(_loc25_ || this)
                                                                                                {
                                                                                                   _loc19_ = §§pop();
                                                                                                   while(!_loc24_)
                                                                                                   {
                                                                                                      if(_loc25_)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         loop47:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc15_);
                                                                                                            addr856:
                                                                                                            while(_loc25_)
                                                                                                            {
                                                                                                               if(_loc25_ || this)
                                                                                                               {
                                                                                                                  if(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(_loc25_ || this)
                                                                                                                        {
                                                                                                                           addr884:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              addr885:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(b2Math);
                                                                                                                                 §§push(param1);
                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(_loc15_);
                                                                                                                                    if(!(_loc24_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(b2Settings.b2_linearSlop);
                                                                                                                                       if(_loc25_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc24_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr836:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                addr840:
                                                                                                                                                §§push(-§§pop());
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§push(0);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop().§]#§(§§pop(),§§pop(),§§pop()));
                                                                                                                                       continue loop47;
                                                                                                                                    }
                                                                                                                                    §§goto(addr840);
                                                                                                                                 }
                                                                                                                                 §§goto(addr836);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr884:
                                                                                                                        }
                                                                                                                        addr883:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr867:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc15_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           §§goto(addr883);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr880:
                                                                                                                  }
                                                                                                                  §§goto(addr884);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr975);
                                                                                                               }
                                                                                                            }
                                                                                                            loop31:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               addr963:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr964:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc17_ = §§pop();
                                                                                                                     addr965:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc14_.x);
                                                                                                                        addr933:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.m_sweep);
                                                                                                                           addr935:
                                                                                                                           while(!(_loc24_ && this))
                                                                                                                           {
                                                                                                                              §§goto(addr942);
                                                                                                                           }
                                                                                                                           addr960:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().c);
                                                                                                                              addr961:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop31;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr978);
                                                                                                   }
                                                                                                   §§goto(addr954);
                                                                                                }
                                                                                                §§goto(addr952);
                                                                                             }
                                                                                             §§goto(addr976);
                                                                                             if(!(_loc25_ || _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                _loc21_ = §§pop();
                                                                                                §§goto(addr774);
                                                                                             }
                                                                                             §§goto(addr951);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr974);
                                                                                       }
                                                                                       §§goto(addr975);
                                                                                    }
                                                                                    §§goto(addr961);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr977);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr799);
                                                                  §§goto(addr996);
                                                               }
                                                               if(!(_loc24_ && this))
                                                               {
                                                                  _loc3_++;
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                         while(true)
                                                         {
                                                            addr128:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_.§,0§);
                                                               if(!_loc24_)
                                                               {
                                                                  if(!_loc24_)
                                                                  {
                                                                     if(!_loc25_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§goto(addr137);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr199);
                                                                  }
                                                               }
                                                               §§goto(addr161);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                   §§goto(addr171);
                                                }
                                                continue loop7;
                                             }
                                             continue loop9;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr201);
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
