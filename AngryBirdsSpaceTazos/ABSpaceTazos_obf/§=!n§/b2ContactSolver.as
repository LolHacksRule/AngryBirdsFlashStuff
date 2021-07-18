package §=!n§
{
   import §'!&§.*;
   import §,Z§.b2Shape;
   import §3c§.*;
   import §9t§.*;
   import §@!'§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §,!q§:b2WorldManifold;
      
      private static var §8!+§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,!q§ = new b2WorldManifold();
         }
         do
         {
            §8!+§ = new b2PositionSolverManifold();
         }
         while(_loc2_);
         
      }
      
      private var §-"6§:b2TimeStep;
      
      private var § B§;
      
      b2internal var §+"'§:Vector.<b2ContactConstraint>;
      
      private var §+"H§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-"6§ = new b2TimeStep();
            while(true)
            {
               this.§+"'§ = new Vector.<b2ContactConstraint>();
               while(_loc2_)
               {
                  super();
                  if(_loc2_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §>`§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:b2ContactConstraintPoint = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2ContactConstraintPoint = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.§+"H§)
         {
            _loc7_ = (_loc6_ = this.§+"'§[_loc5_]).§+,§;
            _loc8_ = _loc6_.§"R§;
            if(!(_loc25_ && _loc2_))
            {
               §§push(_loc7_.§6!W§);
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc9_ = §§pop();
                     while(true)
                     {
                        §§push(_loc7_.§<!%§);
                        if(!(_loc25_ && _loc2_))
                        {
                           §§push(Number(§§pop()));
                        }
                        loop4:
                        while(true)
                        {
                           _loc10_ = §§pop();
                           if(!_loc25_)
                           {
                              if(_loc25_ && _loc2_)
                              {
                                 break;
                              }
                              §§push(_loc8_.§6!W§);
                              if(_loc24_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              loop5:
                              while(true)
                              {
                                 _loc11_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc8_.§<!%§);
                                    addr245:
                                    while(!_loc25_)
                                    {
                                       §§push(Number(§§pop()));
                                       loop8:
                                       while(true)
                                       {
                                          _loc12_ = §§pop();
                                          if(!(_loc25_ && this))
                                          {
                                             §§push(_loc6_.normal);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc25_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                addr238:
                                                while(_loc24_)
                                                {
                                                   _loc13_ = §§pop();
                                                   continue loop9;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr764);
                                          }
                                          §§goto(addr764);
                                          addr213:
                                          loop13:
                                          while(true)
                                          {
                                             if(_loc24_ || param1)
                                             {
                                                _loc15_ = §§pop();
                                                if(!_loc25_)
                                                {
                                                   if(_loc25_ && this)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(_loc13_);
                                                   if(_loc24_)
                                                   {
                                                      §§push(-§§pop());
                                                      if(_loc24_)
                                                      {
                                                         if(_loc24_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr212:
                                                         while(true)
                                                         {
                                                            continue loop13;
                                                         }
                                                      }
                                                   }
                                                   if(_loc25_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   _loc16_ = §§pop();
                                                   if(!(_loc25_ && _loc2_))
                                                   {
                                                      §§goto(addr113);
                                                   }
                                                   §§goto(addr819);
                                                }
                                                break;
                                             }
                                             continue loop8;
                                          }
                                          §§goto(addr764);
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           §§goto(addr819);
                        }
                     }
                  }
                  if(_loc25_ && _loc3_)
                  {
                     continue;
                  }
                  §§push(Number(§§pop()));
                  if(!_loc25_)
                  {
                     if(_loc24_)
                     {
                        §§goto(addr212);
                        §§push(_loc14_ = §§pop());
                     }
                     §§goto(addr245);
                  }
                  §§goto(addr213);
               }
            }
            §§goto(addr780);
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
      
      public function §8!,§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+"H§)
         {
            _loc2_ = this.§+"'§[_loc1_];
            _loc3_ = _loc2_.§63§;
            if(!_loc8_)
            {
               §§push(0);
               if(!_loc8_)
               {
                  _loc4_ = §§pop();
                  if(_loc8_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr108:
               }
               while(§§pop() < _loc2_.§9">§)
               {
                  _loc5_ = _loc3_.§,!T§[_loc4_];
                  _loc6_ = _loc2_.§?!%§[_loc4_];
                  if(!(_loc8_ && _loc3_))
                  {
                     _loc5_.§?P§ = _loc6_.normalImpulse;
                     loop3:
                     while(true)
                     {
                        addr95:
                        while(true)
                        {
                           _loc5_.§["&§ = _loc6_.tangentImpulse;
                           addr100:
                           while(_loc7_)
                           {
                           }
                           continue loop3;
                        }
                     }
                  }
                  while(true)
                  {
                     _loc4_++;
                     if(_loc7_ || _loc1_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr108);
               }
               if(!_loc8_)
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
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = 0;
         var _loc13_:b2ContactConstraintPoint = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:Number = NaN;
         §§push(0);
         if(!_loc25_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < this.§+"H§)
         {
            _loc5_ = (_loc4_ = this.§+"'§[_loc3_]).§+,§;
            _loc6_ = _loc4_.§"R§;
            if(_loc24_)
            {
               §§push(_loc5_.§6!W§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc7_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc5_.§<!%§);
                        loop4:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop5:
                           while(true)
                           {
                              _loc8_ = §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push(_loc6_.§6!W§);
                                 loop7:
                                 for(; !(_loc25_ && _loc3_); if(_loc25_ && param1)
                                 {
                                    continue;
                                 },if(!(_loc24_ || this))
                                 {
                                    continue loop2;
                                 },_loc10_ = §§pop(),while(!_loc25_)
                                 {
                                    if(_loc25_)
                                    {
                                       continue loop3;
                                    }
                                    §§pop().§>`§(_loc4_);
                                    if(_loc25_ && param1)
                                    {
                                       continue;
                                    }
                                    if(_loc25_)
                                    {
                                       continue loop6;
                                    }
                                    if(true)
                                    {
                                       addr172:
                                       _loc11_ = §8!+§.§?!A§;
                                       if(_loc24_ || _loc2_)
                                       {
                                          §§push(0);
                                          if(_loc24_ || _loc2_)
                                          {
                                             _loc12_ = §§pop();
                                             if(!(_loc24_ || param1))
                                             {
                                                continue loop0;
                                             }
                                             while(true)
                                             {
                                                §§push(_loc12_);
                                             }
                                             addr964:
                                          }
                                          while(§§pop() < _loc4_.§9">§)
                                          {
                                             _loc13_ = _loc4_.§?!%§[_loc12_];
                                             _loc14_ = §8!+§.§,!T§[_loc12_];
                                             if(!(_loc25_ && _loc2_))
                                             {
                                                §§push(Number(§8!+§.§+$§[_loc12_]));
                                                loop15:
                                                while(true)
                                                {
                                                   _loc15_ = §§pop();
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(_loc14_.x);
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_.m_sweep);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().c);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        _loc16_ = §§pop();
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc14_.y);
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.m_sweep);
                                                                              loop25:
                                                                              while(_loc24_)
                                                                              {
                                                                                 §§push(§§pop().c);
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    loop27:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!(_loc25_ && param1))
                                                                                       {
                                                                                          if(!(_loc24_ || _loc2_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc17_ = §§pop();
                                                                                          addr945:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc14_.x);
                                                                                             addr911:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_.m_sweep);
                                                                                                addr913:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().c);
                                                                                                   addr914:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr915:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         addr916:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr917:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc18_ = §§pop();
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          loop45:
                                                                                          while(!(_loc25_ && _loc2_))
                                                                                          {
                                                                                             loop46:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop47:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   while(_loc24_)
                                                                                                   {
                                                                                                      §§push(b2Math);
                                                                                                      §§push(param1);
                                                                                                      if(!(_loc25_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc15_);
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            §§push(b2Settings.b2_linearSlop);
                                                                                                            if(!(_loc25_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc25_ && param1))
                                                                                                               {
                                                                                                                  addr795:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                  if(_loc24_)
                                                                                                                  {
                                                                                                                     addr799:
                                                                                                                     §§push(-§§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(0);
                                                                                                            }
                                                                                                            §§push(§§pop().§`J§(§§pop(),§§pop(),§§pop()));
                                                                                                            loop49:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc24_ || this)
                                                                                                               {
                                                                                                                  if(_loc25_ && param1)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop50:
                                                                                                                  while(_loc24_)
                                                                                                                  {
                                                                                                                     if(!(_loc24_ || this))
                                                                                                                     {
                                                                                                                        continue loop46;
                                                                                                                     }
                                                                                                                     _loc20_ = §§pop();
                                                                                                                     loop51:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc24_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue loop16;
                                                                                                                        }
                                                                                                                        §§push(_loc13_.§;]§);
                                                                                                                        loop52:
                                                                                                                        while(_loc24_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           loop55:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc24_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc25_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!_loc25_)
                                                                                                                                 {
                                                                                                                                    _loc21_ = §§pop();
                                                                                                                                    if(!_loc25_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc11_.x);
                                                                                                                                       loop105:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          loop106:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                if(_loc24_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc25_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      loop56:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc22_ = §§pop();
                                                                                                                                                         addr763:
                                                                                                                                                         addr729:
                                                                                                                                                         loop57:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                            if(_loc24_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop50;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc11_.y);
                                                                                                                                                               if(!_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop105;
                                                                                                                                                               }
                                                                                                                                                               addr637:
                                                                                                                                                               if(_loc24_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc25_)
                                                                                                                                                                  {
                                                                                                                                                                     addr646:
                                                                                                                                                                     if(!(_loc25_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc25_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc25_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr668:
                                                                                                                                                                              if(_loc24_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc24_ || _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop52;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr682);
                                                                                                                                                                                 continue loop52;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop56;
                                                                                                                                                                           }
                                                                                                                                                                           addr690:
                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop55;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop106;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop27;
                                                                                                                                                                     }
                                                                                                                                                                     addr902:
                                                                                                                                                                     while(!_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           addr906:
                                                                                                                                                                           addr848:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc19_ = §§pop();
                                                                                                                                                                              addr907:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc2_);
                                                                                                                                                                                 addr837:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                    continue loop49;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr848:
                                                                                                                                                                           while(_loc24_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              continue loop46;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr646);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop20;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        while(_loc24_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr848);
                                                                                                                                                                           §§push(_loc2_);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr907);
                                                                                                                                                                        addr840:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           addr682:
                                                                                                                                                                           break loop50;
                                                                                                                                                                           if(_loc25_ && _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr690);
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        break loop57;
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                     §§goto(addr637);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr915);
                                                                                                                                                                  addr726:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr668);
                                                                                                                                                         }
                                                                                                                                                         while(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            continue loop55;
                                                                                                                                                         }
                                                                                                                                                         continue loop47;
                                                                                                                                                      }
                                                                                                                                                      addr762:
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr906);
                                                                                                                                             }
                                                                                                                                             §§goto(addr848);
                                                                                                                                          }
                                                                                                                                          §§goto(addr917);
                                                                                                                                       }
                                                                                                                                       addr749:
                                                                                                                                    }
                                                                                                                                    §§goto(addr762);
                                                                                                                                 }
                                                                                                                                 §§goto(addr749);
                                                                                                                              }
                                                                                                                              addr874:
                                                                                                                              while(!_loc25_)
                                                                                                                              {
                                                                                                                                 if(_loc25_)
                                                                                                                                 {
                                                                                                                                    continue loop15;
                                                                                                                                 }
                                                                                                                                 §§push(_loc6_.m_sweep);
                                                                                                                                 if(!_loc25_)
                                                                                                                                 {
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().c);
                                                                                                                                    if(_loc24_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          continue loop26;
                                                                                                                                       }
                                                                                                                                       if(!(_loc24_ || this))
                                                                                                                                       {
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       §§goto(addr902);
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr913);
                                                                                                                                 }
                                                                                                                                 §§goto(addr914);
                                                                                                                                 continue loop55;
                                                                                                                              }
                                                                                                                              §§goto(addr911);
                                                                                                                           }
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        §§goto(addr916);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc25_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue loop51;
                                                                                                                           }
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr235);
                                                                                                                           §§goto(addr224);
                                                                                                                        }
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop45;
                                                                                                               }
                                                                                                               §§goto(addr837);
                                                                                                            }
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                         §§goto(addr799);
                                                                                                      }
                                                                                                      §§goto(addr795);
                                                                                                   }
                                                                                                   §§goto(addr945);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop21;
                                                                                 }
                                                                              }
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr918);
                                             §§goto(addr964);
                                          }
                                          if(!_loc24_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       _loc3_++;
                                       continue loop0;
                                    }
                                    §§goto(addr110);
                                 },§§goto(addr159))
                                 {
                                    if(_loc25_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(Number(§§pop()));
                                    loop8:
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       addr159:
                                       while(true)
                                       {
                                          addr110:
                                          while(true)
                                          {
                                             §§push(_loc6_.§<!%§);
                                             if(!(_loc25_ && _loc3_))
                                             {
                                                if(!_loc25_)
                                                {
                                                   if(!_loc25_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      continue loop7;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop8;
                                             }
                                             continue loop7;
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(§8!+§);
               if(!(_loc25_ && this))
               {
                  §§goto(addr97);
               }
               break;
            }
            §§goto(addr172);
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
