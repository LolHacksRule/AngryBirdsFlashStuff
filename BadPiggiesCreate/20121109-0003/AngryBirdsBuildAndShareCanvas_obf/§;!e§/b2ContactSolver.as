package §;!e§
{
   import §"J§.*;
   import §%4§.*;
   import §2k§.b2Shape;
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §`!!§:b2WorldManifold;
      
      private static var §-!b§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`!!§ = new b2WorldManifold();
            do
            {
               §-!b§ = new b2PositionSolverManifold();
            }
            while(!_loc1_);
            
         }
      }
      
      private var §="#§:b2TimeStep;
      
      private var §9"6§;
      
      b2internal var §+!P§:Vector.<b2ContactConstraint>;
      
      private var §,!w§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§="#§ = new b2TimeStep();
            while(true)
            {
               this.§+!P§ = new Vector.<b2ContactConstraint>();
               while(_loc1_ || _loc2_)
               {
                  super();
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr38:
               }
            }
         }
         §§goto(addr38);
      }
      
      public function §&!§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
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
         while(_loc5_ < this.§,!w§)
         {
            _loc7_ = (_loc6_ = this.§+!P§[_loc5_]).§ !T§;
            _loc8_ = _loc6_.§import§;
            if(_loc24_ || _loc3_)
            {
               §§push(_loc7_.§@"!§);
               if(_loc24_)
               {
                  §§push(Number(§§pop()));
               }
               loop1:
               while(true)
               {
                  _loc9_ = §§pop();
                  addr276:
                  while(true)
                  {
                     §§push(_loc7_.§=!N§);
                     loop3:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr268:
                        while(true)
                        {
                           _loc10_ = §§pop();
                           addr269:
                           while(true)
                           {
                              §§push(_loc8_.§@"!§);
                              while(!_loc25_)
                              {
                                 §§push(Number(§§pop()));
                                 do
                                 {
                                    _loc11_ = §§pop();
                                 }
                                 while(_loc24_);
                                 
                                 continue loop0;
                                 while(_loc24_ || this)
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr251);
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
      
      public function §?"<§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!w§)
         {
            _loc2_ = this.§+!P§[_loc1_];
            _loc3_ = _loc2_.§3!-§;
            if(_loc8_ || _loc3_)
            {
               §§push(0);
               if(!_loc7_)
               {
                  _loc4_ = §§pop();
                  if(_loc7_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr114:
               }
               loop2:
               for(; §§pop() < _loc2_.§,!%§; §§goto(addr114))
               {
                  _loc5_ = _loc3_.§5S§[_loc4_];
                  _loc6_ = _loc2_.§5!1§[_loc4_];
                  if(!(_loc7_ && _loc3_))
                  {
                     _loc5_.§8!$§ = _loc6_.normalImpulse;
                  }
                  while(true)
                  {
                     while(true)
                     {
                        _loc5_.§!""§ = _loc6_.tangentImpulse;
                        do
                        {
                           _loc4_++;
                        }
                        while(!_loc8_);
                        
                        if(_loc7_ && _loc1_)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue;
                        }
                        continue loop2;
                     }
                  }
               }
               if(_loc8_)
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
         var _loc23_:* = NaN;
         §§push(0);
         if(!(_loc25_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < this.§,!w§)
         {
            _loc5_ = (_loc4_ = this.§+!P§[_loc3_]).§ !T§;
            _loc6_ = _loc4_.§import§;
            if(!(_loc25_ && this))
            {
               §§push(_loc5_.§?j§);
               loop1:
               while(true)
               {
                  §§push(_loc5_.§@"!§);
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
                              §§push(_loc5_.§?j§);
                              if(_loc24_ || param1)
                              {
                                 §§push(_loc5_.§=!N§);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr231:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 addr230:
                              }
                              loop8:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc6_.§?j§);
                                    while(true)
                                    {
                                       §§push(_loc6_.§@"!§);
                                       addr186:
                                       while(_loc24_ || param1)
                                       {
                                          §§push(§§pop() * §§pop());
                                          while(_loc24_ || _loc3_)
                                          {
                                             §§push(Number(§§pop()));
                                             continue loop1;
                                             addr150:
                                             if(!(_loc24_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             if(_loc25_ && _loc3_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(Number(§§pop()));
                                             if(!(_loc24_ || _loc2_))
                                             {
                                                continue loop4;
                                             }
                                             _loc10_ = §§pop();
                                             while(true)
                                             {
                                                if(_loc24_ || this)
                                                {
                                                   continue;
                                                }
                                                continue loop9;
                                             }
                                             _loc11_ = §§pop().§&!5§;
                                             if(!(_loc25_ && param1))
                                             {
                                                §§push(0);
                                                if(_loc24_ || _loc2_)
                                                {
                                                   _loc12_ = §§pop();
                                                   if(!(_loc25_ && _loc3_))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc12_);
                                                      }
                                                      addr1010:
                                                   }
                                                   addr1016:
                                                   _loc3_++;
                                                   continue loop0;
                                                }
                                                loop19:
                                                for(; §§pop() < _loc4_.§,!%§; §§goto(addr1010))
                                                {
                                                   _loc13_ = _loc4_.§5!1§[_loc12_];
                                                   _loc14_ = §-!b§.§5S§[_loc12_];
                                                   if(_loc24_)
                                                   {
                                                      §§push(Number(§-!b§.§6#§[_loc12_]));
                                                      loop20:
                                                      while(true)
                                                      {
                                                         _loc15_ = §§pop();
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§push(_loc14_.x);
                                                            loop22:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_.m_sweep);
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().c);
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              loop28:
                                                                              while(_loc24_)
                                                                              {
                                                                                 §§push(_loc14_.y);
                                                                                 loop29:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_.m_sweep);
                                                                                    loop30:
                                                                                    while(_loc24_)
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       loop31:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          loop32:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             loop33:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                while(!_loc25_)
                                                                                                {
                                                                                                   _loc17_ = §§pop();
                                                                                                   loop35:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc14_.x);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                         loop37:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().c);
                                                                                                            loop38:
                                                                                                            while(!_loc25_)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               loop39:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  loop40:
                                                                                                                  while(_loc24_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop41:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc18_ = §§pop();
                                                                                                                        loop42:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc14_.y);
                                                                                                                           addr932:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                              if(!(_loc24_ || this))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(_loc25_ && _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop30;
                                                                                                                              }
                                                                                                                              §§push(§§pop().c);
                                                                                                                              if(_loc25_)
                                                                                                                              {
                                                                                                                                 continue loop38;
                                                                                                                              }
                                                                                                                              if(_loc25_)
                                                                                                                              {
                                                                                                                                 continue loop31;
                                                                                                                              }
                                                                                                                              §§push(§§pop().y);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 addr955:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr956:
                                                                                                                                    while(!_loc25_)
                                                                                                                                    {
                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                    }
                                                                                                                                    continue loop40;
                                                                                                                                 }
                                                                                                                                 addr775:
                                                                                                                                 if(!(_loc24_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(!(_loc24_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    continue loop32;
                                                                                                                                 }
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    continue loop25;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(!(_loc25_ && this))
                                                                                                                                       {
                                                                                                                                          addr804:
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!_loc25_)
                                                                                                                                          {
                                                                                                                                             addr807:
                                                                                                                                             _loc21_ = §§pop();
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                addr810:
                                                                                                                                                §§push(_loc11_.x);
                                                                                                                                             }
                                                                                                                                             loop59:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc22_ = §§pop();
                                                                                                                                                loop60:
                                                                                                                                                while(_loc24_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                   if(_loc24_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc25_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc11_.y);
                                                                                                                                                            if(!_loc25_)
                                                                                                                                                            {
                                                                                                                                                               addr698:
                                                                                                                                                               if(!(_loc25_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  continue loop39;
                                                                                                                                                               }
                                                                                                                                                               addr894:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() < §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     break loop60;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  if(!_loc25_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  loop49:
                                                                                                                                                                  for(; !(_loc25_ && _loc3_); if(!(_loc25_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     continue loop59;
                                                                                                                                                                  })
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        addr920:
                                                                                                                                                                        loop54:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc2_ = §§pop();
                                                                                                                                                                           addr921:
                                                                                                                                                                           while(!(_loc25_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(b2Math);
                                                                                                                                                                              §§push(param1);
                                                                                                                                                                              if(_loc24_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(b2Settings.b2_linearSlop);
                                                                                                                                                                                    if(_loc24_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr863:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                                                                                          if(!(_loc25_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr872:
                                                                                                                                                                                             §§push(-§§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop().§5" §(§§pop(),§§pop(),§§pop()));
                                                                                                                                                                                    while(!_loc25_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       loop57:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc20_ = §§pop();
                                                                                                                                                                                          addr879:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc13_.§-!_§);
                                                                                                                                                                                             if(!_loc25_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                if(!_loc25_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop57;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr810);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr804);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!(_loc25_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop49;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop59;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop54;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop27;
                                                                                                                                                                                    addr875:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr872);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr863);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop42;
                                                                                                                                                                        }
                                                                                                                                                                        addr907:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop33;
                                                                                                                                                                  §§goto(addr698);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr812);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr898:
                                                                                                                                                            while(!(_loc25_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(_loc25_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop22;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr907);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr956);
                                                                                                                                                         }
                                                                                                                                                         addr897:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr875);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr732:
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         continue loop29;
                                                                                                                                                      }
                                                                                                                                                      _loc23_ = §§pop();
                                                                                                                                                      loop61:
                                                                                                                                                      for(; !(_loc25_ && param1); while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc25_ && _loc3_)
                                                                                                                                                         {
                                                                                                                                                            continue loop61;
                                                                                                                                                         }
                                                                                                                                                         if(_loc25_ && _loc2_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr615);
                                                                                                                                                         §§push(_loc5_.m_sweep);
                                                                                                                                                      },§§goto(addr921))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_.m_sweep);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                            addr657:
                                                                                                                                                            addr615:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_.m_sweep);
                                                                                                                                                               addr659:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                  addr660:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     addr661:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                        addr662:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc22_);
                                                                                                                                                                           addr663:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              addr664:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 addr665:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    continue loop61;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            loop72:
                                                                                                                                                            while(!(_loc25_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                               loop73:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_.m_sweep);
                                                                                                                                                                  loop74:
                                                                                                                                                                  while(_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                     loop75:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                           if(_loc24_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                              loop76:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 loop100:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          loop101:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             loop102:
                                                                                                                                                                                             while(!(_loc25_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                loop103:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop72;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop().c);
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop73;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr438:
                                                                                                                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                                                                                                                      if(_loc25_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(_loc24_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                                                                            continue loop75;
                                                                                                                                                                                                            §§goto(addr438);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop74;
                                                                                                                                                                                                         addr529:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop().c);
                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop75;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                      if(_loc24_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc25_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                                                                               if(!_loc25_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc24_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop100;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr641:
                                                                                                                                                                                                                  while(!(_loc25_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                     continue loop100;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                        continue loop35;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr664);
                                                                                                                                                                                                                  addr553:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr483:
                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop101;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr486:
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(_loc25_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop102;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!(_loc25_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr665);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr644);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr552:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr553);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr486);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr662);
                                                                                                                                                                                                   loop106:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc24_ || this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop103;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc25_ && _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop61;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc25_ && param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop28;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc6_.§=&§();
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               _loc12_++;
                                                                                                                                                                                                               if(!(_loc25_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop106;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr584);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop35;
                                                                                                                                                                                                         addr304:
                                                                                                                                                                                                         if(!(_loc24_ || param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr611);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr959:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                                                                      if(!_loc25_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop41;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr920);
                                                                                                                                                                                                      §§goto(addr420);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr661);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop76;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr663);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr641);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr644);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr659);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr879);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr897);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr828:
                                                                                                                                          }
                                                                                                                                          §§goto(addr812);
                                                                                                                                       }
                                                                                                                                       §§goto(addr810);
                                                                                                                                    }
                                                                                                                                    §§goto(addr955);
                                                                                                                                 }
                                                                                                                                 §§goto(addr828);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop37;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop23;
                                                                                 }
                                                                              }
                                                                              continue loop21;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr959);
                                                }
                                                if(_loc25_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             §§goto(addr1016);
                                          }
                                          §§goto(addr231);
                                       }
                                       continue loop2;
                                       if(_loc25_ && param1)
                                       {
                                          continue;
                                       }
                                       if(_loc25_ && param1)
                                       {
                                          continue loop8;
                                       }
                                       §§push(_loc6_.§=!N§);
                                       if(!_loc25_)
                                       {
                                          if(_loc24_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc24_)
                                             {
                                                §§goto(addr148);
                                             }
                                             §§goto(addr165);
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr186);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr217);
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
