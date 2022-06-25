package §,G§
{
   import §#V§.*;
   import §,C§.b2Shape;
   import §3!m§.*;
   import §8w§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §!6§:b2WorldManifold;
      
      private static var §@x§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!6§ = new b2WorldManifold();
            do
            {
               §@x§ = new b2PositionSolverManifold();
            }
            while(!_loc2_);
            
         }
      }
      
      private var §^>§:b2TimeStep;
      
      private var §7!a§;
      
      b2internal var §#!8§:Vector.<b2ContactConstraint>;
      
      private var §=z§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§^>§ = new b2TimeStep();
            while(true)
            {
               this.§#!8§ = new Vector.<b2ContactConstraint>();
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     super();
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §'K§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
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
         while(_loc5_ < this.§=z§)
         {
            _loc7_ = (_loc6_ = this.§#!8§[_loc5_]).§0w§;
            _loc8_ = _loc6_.§^2§;
            if(_loc25_)
            {
               §§push(_loc7_.§-7§);
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc9_ = §§pop();
                     while(true)
                     {
                        §§push(_loc7_.§,!o§);
                        loop4:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              _loc10_ = §§pop();
                              if(_loc24_)
                              {
                                 break;
                              }
                              §§push(_loc8_.§-7§);
                              while(!(_loc24_ && this))
                              {
                                 §§push(Number(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    _loc11_ = §§pop();
                                    if(!(_loc25_ || _loc2_))
                                    {
                                       break;
                                       addr231:
                                    }
                                    §§push(_loc8_.§,!o§);
                                    while(!_loc24_)
                                    {
                                       §§push(Number(§§pop()));
                                       continue loop7;
                                    }
                                    continue loop4;
                                 }
                                 §§push(0);
                                 if(_loc25_)
                                 {
                                    _loc18_ = §§pop();
                                    if(!(_loc24_ && this))
                                    {
                                       §§goto(addr731);
                                    }
                                    §§goto(addr770);
                                 }
                                 §§goto(addr761);
                                 while(_loc25_ || _loc2_)
                                 {
                                    _loc15_ = §§pop();
                                    §§goto(addr209);
                                    §§goto(addr147);
                                 }
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr209);
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
      
      public function §32§() : void
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
         while(_loc1_ < this.§=z§)
         {
            _loc2_ = this.§#!8§[_loc1_];
            _loc3_ = _loc2_.§0q§;
            if(_loc7_)
            {
               §§push(0);
               if(_loc7_ || _loc1_)
               {
                  _loc4_ = §§pop();
                  if(_loc7_)
                  {
                     addr67:
                     loop6:
                     while(true)
                     {
                        §§push(_loc4_);
                        addr119:
                        while(§§pop() < _loc2_.§@!#§)
                        {
                           _loc5_ = _loc3_.§4!a§[_loc4_];
                           _loc6_ = _loc2_.§7!4§[_loc4_];
                           if(_loc7_ || this)
                           {
                              _loc5_.§-!s§ = _loc6_.normalImpulse;
                              loop2:
                              while(true)
                              {
                                 while(true)
                                 {
                                    _loc5_.§%%§ = _loc6_.tangentImpulse;
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          _loc4_++;
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                    addr95:
                                 }
                              }
                           }
                           while(true)
                           {
                              if(true)
                              {
                                 continue loop6;
                              }
                              §§goto(addr95);
                           }
                           continue loop6;
                        }
                        if(!(_loc7_ || this))
                        {
                           continue loop0;
                        }
                     }
                  }
                  _loc1_++;
                  continue;
               }
               §§goto(addr119);
            }
            §§goto(addr67);
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
         var _loc23_:* = NaN;
         §§push(0);
         if(!(_loc25_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < this.§=z§)
         {
            _loc5_ = (_loc4_ = this.§#!8§[_loc3_]).§0w§;
            _loc6_ = _loc4_.§^2§;
            if(_loc24_ || _loc3_)
            {
               §§push(_loc5_.§ ,§);
               if(!_loc25_)
               {
                  §§push(_loc5_.§-7§);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc24_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  addr211:
               }
               loop2:
               while(true)
               {
                  _loc7_ = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(_loc5_.§ ,§);
                     loop4:
                     while(true)
                     {
                        §§push(_loc5_.§,!o§);
                        loop5:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           loop6:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop7:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 loop8:
                                 while(!(_loc25_ && param1))
                                 {
                                    §§push(_loc6_.§ ,§);
                                    if(_loc24_)
                                    {
                                       §§push(_loc6_.§-7§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr135:
                                          §§push(_loc6_.§,!o§);
                                          if(!(_loc24_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          if(_loc25_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc24_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc25_)
                                             {
                                                if(!_loc24_)
                                                {
                                                   continue loop4;
                                                }
                                                §§push(Number(§§pop()));
                                             }
                                             addr154:
                                             if(!_loc25_)
                                             {
                                                if(!(_loc25_ && _loc2_))
                                                {
                                                   if(!_loc25_)
                                                   {
                                                      _loc10_ = §§pop();
                                                      loop14:
                                                      for(; !_loc25_; §§pop().§'K§(_loc4_),if(_loc25_ && param1)
                                                      {
                                                         continue;
                                                      },addr116:,if(!(_loc25_ && _loc3_))
                                                      {
                                                         if(false)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc6_.§ ,§);
                                                               if(!(_loc25_ && this))
                                                               {
                                                                  §§goto(addr135);
                                                               }
                                                               §§goto(addr154);
                                                            }
                                                            continue loop9;
                                                            addr125:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr223);
                                                            §§push(§@x§);
                                                         }
                                                      },while(true)
                                                      {
                                                         §§goto(addr125);
                                                         §§goto(addr116);
                                                      },addr188:)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§@x§);
                                                            if(!(_loc24_ || _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            continue loop14;
                                                         }
                                                         _loc11_ = §§pop().§-n§;
                                                         if(!(_loc24_ || _loc3_))
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§push(0);
                                                         if(_loc24_)
                                                         {
                                                            _loc12_ = §§pop();
                                                            if(!(_loc25_ && _loc2_))
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(_loc12_);
                                                                  addr1016:
                                                                  loop17:
                                                                  for(; §§pop() < _loc4_.§@!#§; continue loop16)
                                                                  {
                                                                     _loc13_ = _loc4_.§7!4§[_loc12_];
                                                                     _loc14_ = §@x§.§4!a§[_loc12_];
                                                                     if(_loc24_ || param1)
                                                                     {
                                                                        §§push(Number(§@x§.§2!i§[_loc12_]));
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           _loc15_ = §§pop();
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc14_.x);
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_.m_sweep);
                                                                                 addr992:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().c);
                                                                                    addr993:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr994:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          addr995:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr1006:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc16_ = §§pop();
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr774:
                                                                                 if(!(_loc24_ || _loc3_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(Number(§§pop()));
                                                                                 loop57:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc24_ || param1)
                                                                                    {
                                                                                       addr789:
                                                                                       if(!(_loc25_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc25_ && this))
                                                                                          {
                                                                                             loop109:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   if(_loc24_ || param1)
                                                                                                   {
                                                                                                      _loc21_ = §§pop();
                                                                                                      loop110:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc11_.x);
                                                                                                         addr816:
                                                                                                         loop58:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc25_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc25_)
                                                                                                               {
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            loop59:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc22_ = §§pop();
                                                                                                               loop60:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc21_);
                                                                                                                  if(_loc25_)
                                                                                                                  {
                                                                                                                     continue loop59;
                                                                                                                  }
                                                                                                                  §§push(_loc11_.y);
                                                                                                                  if(_loc25_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc24_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc24_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue loop59;
                                                                                                                     }
                                                                                                                     if(_loc25_ && this)
                                                                                                                     {
                                                                                                                        continue loop110;
                                                                                                                     }
                                                                                                                     if(!_loc25_)
                                                                                                                     {
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           continue loop59;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc18_ = §§pop();
                                                                                                                           addr973:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc14_.y);
                                                                                                                              break loop57;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr972:
                                                                                                                     }
                                                                                                                     loop111:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           loop50:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr907:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc2_ = §§pop();
                                                                                                                                 loop52:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(b2Math);
                                                                                                                                    §§push(param1);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc15_);
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          §§push(b2Settings.b2_linearSlop);
                                                                                                                                          if(_loc24_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!(_loc25_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr866:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                                                if(!(_loc25_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr864:
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                }
                                                                                                                                                §§push(§§pop().§]!M§(§§pop(),§§pop(),0));
                                                                                                                                                loop53:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         loop54:
                                                                                                                                                         while(!_loc25_)
                                                                                                                                                         {
                                                                                                                                                            _loc20_ = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc25_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc13_.§;§);
                                                                                                                                                                  if(_loc25_ && _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop110;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc24_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc24_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc24_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                           if(_loc25_ && this)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop110;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop53;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop109;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc25_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              while(!_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr774);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop54;
                                                                                                                                                                              addr772:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr929:
                                                                                                                                                                           }
                                                                                                                                                                           loop47:
                                                                                                                                                                           while(!(_loc25_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                 continue loop111;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop52;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc2_);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 addr894:
                                                                                                                                                                                 addr983:
                                                                                                                                                                                 addr712:
                                                                                                                                                                                 while(_loc24_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop50;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                                                                    addr984:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc14_.x);
                                                                                                                                                                                          while(!(_loc25_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_.m_sweep);
                                                                                                                                                                                             while(_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc25_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().c);
                                                                                                                                                                                                   while(_loc24_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         addr971:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr972);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                      break loop109;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr980:
                                                                                                                                                                                                   addr962:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr992);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr980);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1006);
                                                                                                                                                                                          addr943:
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1007:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc14_.y);
                                                                                                                                                                                          break loop54;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc25_ && param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc23_ = §§pop();
                                                                                                                                                                                    while(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc5_.m_sweep);
                                                                                                                                                                                       loop62:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().c);
                                                                                                                                                                                          loop63:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc5_.m_sweep);
                                                                                                                                                                                             loop64:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                                                                loop65:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                   loop66:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                      loop67:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                         loop68:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               loop70:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                  loop71:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop19;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                     loop72:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                                                                        loop73:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                           loop74:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().c);
                                                                                                                                                                                                                              loop75:
                                                                                                                                                                                                                              while(!_loc25_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                                 loop76:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(_loc23_);
                                                                                                                                                                                                                                       while(!(_loc25_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop68;
                                                                                                                                                                                                                                       addr627:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    loop78:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                       loop79:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                          loop80:
                                                                                                                                                                                                                                          while(_loc24_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                             loop81:
                                                                                                                                                                                                                                             for(; !_loc25_; if(!(_loc24_ || _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             },if(!_loc24_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop72;
                                                                                                                                                                                                                                             },§§push(_loc6_.m_sweep),if(!_loc25_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().a);
                                                                                                                                                                                                                                                if(!_loc25_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                                                                                                                      if(!_loc25_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                                                                         if(!(_loc25_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc23_);
                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr357:
                                                                                                                                                                                                                                                                     if(!(_loc25_ && _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc25_ && _loc2_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                                                                                                                           if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr379:
                                                                                                                                                                                                                                                                              if(_loc24_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                                                                                                                 if(!_loc25_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr390:
                                                                                                                                                                                                                                                                                    §§push(§§pop() * (§§pop() - §§pop() * §§pop()));
                                                                                                                                                                                                                                                                                    if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr407:
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          if(!_loc25_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop().a = §§pop();
                                                                                                                                                                                                                                                                                             §§goto(addr410);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr585);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr586);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr603);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr600);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr601);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr390);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr587);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr602);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr390);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr599);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr379);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr357);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr390);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr604);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr407);
                                                                                                                                                                                                                                             },§§goto(addr584))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop().a);
                                                                                                                                                                                                                                                   addr585:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                                                                      addr586:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                                                                         addr587:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc23_);
                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(_loc24_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                                                                     addr600:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        addr601:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr599:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  addr603:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                     addr604:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().a = §§pop();
                                                                                                                                                                                                                                                                        addr605:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc5_.§#3§();
                                                                                                                                                                                                                                                                           loop92:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                              loop93:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop().c);
                                                                                                                                                                                                                                                                                 loop94:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                    loop95:
                                                                                                                                                                                                                                                                                    while(!(_loc25_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop().c);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                                                                                                                          addr549:
                                                                                                                                                                                                                                                                                          while(_loc24_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                                                                             continue loop78;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop79;
                                                                                                                                                                                                                                                                                          addr455:
                                                                                                                                                                                                                                                                                          §§push(§§pop().c);
                                                                                                                                                                                                                                                                                          if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc25_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop76;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr564:
                                                                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop70;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                      loop104:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr533:
                                                                                                                                                                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                            if(!_loc25_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop81;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop93;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                                                                                                                                                                               if(!(_loc24_ || this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop94;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop73;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                               if(!(_loc24_ || _loc3_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop95;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop64;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr455);
                                                                                                                                                                                                                                                                                                               §§goto(addr533);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop63;
                                                                                                                                                                                                                                                                                                            addr430:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr572:
                                                                                                                                                                                                                                                                                                         addr410:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr430);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc24_ || param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop104;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(_loc25_ && param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop80;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(_loc25_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc6_.§#3§();
                                                                                                                                                                                                                                                                                                               continue loop92;
                                                                                                                                                                                                                                                                                                               addr286:
                                                                                                                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop17;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr973);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop52;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr601);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr549);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(!(_loc25_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                   §§goto(addr572);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop66;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop75;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop74;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr602:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr601);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop62;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop71;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop67;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop65;
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
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc24_ || this))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr286);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop60;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr880:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop47;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              break loop53;
                                                                                                                                                                              §§goto(addr881);
                                                                                                                                                                           }
                                                                                                                                                                           addr881:
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr971);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr894);
                                                                                                                                                               }
                                                                                                                                                               addr939:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr880);
                                                                                                                                                               }
                                                                                                                                                               if(_loc25_ && this)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc25_)
                                                                                                                                                               {
                                                                                                                                                                  _loc12_++;
                                                                                                                                                                  if(!(_loc25_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc25_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr279);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr605);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr410);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr293);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr984);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr983);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr979);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   addr938:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc19_ = §§pop();
                                                                                                                                                      §§goto(addr939);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(!(_loc25_ && this))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr938);
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                §§goto(addr943);
                                                                                                                                             }
                                                                                                                                             §§goto(addr864);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr866);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr907);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr994);
                                                                                                               }
                                                                                                               continue loop58;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr970);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr982);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr816);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr907);
                                                                                    if(_loc25_ && _loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       §§goto(addr712);
                                                                                    }
                                                                                    §§goto(addr772);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc25_ && _loc2_))
                                                                                    {
                                                                                       §§push(_loc6_.m_sweep);
                                                                                       if(!_loc25_)
                                                                                       {
                                                                                          §§push(§§pop().c);
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                §§goto(addr929);
                                                                                                §§push(§§pop().y);
                                                                                             }
                                                                                             §§goto(addr993);
                                                                                          }
                                                                                          §§goto(addr962);
                                                                                       }
                                                                                       §§goto(addr952);
                                                                                    }
                                                                                    break;
                                                                                    §§goto(addr789);
                                                                                 }
                                                                                 §§goto(addr995);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr1007);
                                                                  }
                                                                  if(_loc25_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                            _loc3_++;
                                                            continue loop0;
                                                         }
                                                         §§goto(addr1016);
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop7;
                                                }
                                                while(!(_loc25_ && this))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                continue loop6;
                                                addr177:
                                             }
                                             while(!_loc25_)
                                             {
                                                _loc9_ = §§pop();
                                                §§goto(addr188);
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr211);
                                       }
                                    }
                                    §§goto(addr177);
                                 }
                                 continue loop3;
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
