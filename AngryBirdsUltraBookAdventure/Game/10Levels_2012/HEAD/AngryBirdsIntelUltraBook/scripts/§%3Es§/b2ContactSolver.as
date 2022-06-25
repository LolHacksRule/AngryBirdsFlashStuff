package §>s§
{
   import §,X§.b2Shape;
   import §1%§.*;
   import §8!H§.*;
   import §?!&§.*;
   import §`!H§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §=>§:b2WorldManifold;
      
      private static var §?W§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=>§ = new b2WorldManifold();
            do
            {
               §?W§ = new b2PositionSolverManifold();
            }
            while(!(_loc2_ || b2ContactSolver));
            
         }
      }
      
      private var §4![§:b2TimeStep;
      
      private var §5!X§;
      
      b2internal var §^!Y§:Vector.<b2ContactConstraint>;
      
      private var § !C§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§4![§ = new b2TimeStep();
            while(true)
            {
               this.§^!Y§ = new Vector.<b2ContactConstraint>();
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §3!a§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:* = 0;
         var _loc19_:* = 0;
         var _loc20_:b2ContactConstraintPoint = null;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:b2ContactConstraintPoint = null;
         §§push(0);
         if(!(_loc24_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(_loc5_ < this.§ !C§)
         {
            _loc6_ = this.§^!Y§[_loc5_];
            _loc7_ = _loc6_.§7!K§;
            _loc8_ = _loc6_.§'P§;
            if(_loc25_)
            {
               §§push(_loc7_.§4s§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc9_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc7_.§[!F§);
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr289:
                           while(true)
                           {
                              _loc10_ = §§pop();
                              if(!(_loc24_ && param1))
                              {
                                 §§push(_loc8_.§4s§);
                                 continue loop1;
                              }
                           }
                           loop10:
                           while(_loc25_ || _loc3_)
                           {
                              _loc12_ = §§pop();
                              if(_loc25_)
                              {
                                 §§push(_loc6_.normal);
                                 loop11:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    loop12:
                                    while(!_loc24_)
                                    {
                                       §§push(Number(§§pop()));
                                       while(true)
                                       {
                                          if(_loc24_)
                                          {
                                             continue loop1;
                                          }
                                          if(!(_loc25_ || _loc3_))
                                          {
                                             break;
                                          }
                                          _loc13_ = §§pop();
                                          if(!(_loc24_ && _loc2_))
                                          {
                                             continue loop11;
                                          }
                                          addr188:
                                          if(!(_loc25_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          if(_loc24_)
                                          {
                                             continue loop10;
                                          }
                                          if(!_loc24_)
                                          {
                                             §§push(Number(§§pop()));
                                             loop16:
                                             while(true)
                                             {
                                                _loc15_ = §§pop();
                                                loop17:
                                                while(true)
                                                {
                                                   if(!(_loc25_ || _loc3_))
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(_loc13_);
                                                   if(_loc25_)
                                                   {
                                                      if(_loc24_)
                                                      {
                                                         continue loop16;
                                                      }
                                                      §§push(-§§pop());
                                                      if(_loc25_)
                                                      {
                                                         if(!_loc24_)
                                                         {
                                                            addr166:
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc24_ && param1))
                                                            {
                                                               _loc16_ = §§pop();
                                                               if(_loc25_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(param1.§3!=§)
                                                                     {
                                                                        if(_loc25_)
                                                                        {
                                                                           if(!(_loc25_ || _loc2_))
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           §§push(_loc6_.§[![§);
                                                                           if(_loc25_ || _loc3_)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              if(_loc25_)
                                                                              {
                                                                                 _loc19_ = §§pop();
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc25_)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       if(_loc25_ || _loc2_)
                                                                                       {
                                                                                          addr108:
                                                                                          _loc18_ = §§pop();
                                                                                          if(!(_loc24_ && _loc2_))
                                                                                          {
                                                                                             if(!(_loc24_ && _loc3_))
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr751:
                                                                                                §§push(_loc18_);
                                                                                                if(_loc25_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc19_);
                                                                                                   if(_loc25_ || this)
                                                                                                   {
                                                                                                      if(§§pop() < §§pop())
                                                                                                      {
                                                                                                         _loc20_ = _loc6_.§&!3§[_loc18_];
                                                                                                         if(_loc25_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(_loc20_);
                                                                                                            §§push(_loc20_.normalImpulse);
                                                                                                            if(_loc25_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop() * param1.§&l§);
                                                                                                            }
                                                                                                            §§pop().normalImpulse = §§pop();
                                                                                                            §§push(_loc20_);
                                                                                                            §§push(_loc20_.tangentImpulse);
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               §§push(§§pop() * param1.§&l§);
                                                                                                            }
                                                                                                            §§pop().tangentImpulse = §§pop();
                                                                                                            addr735:
                                                                                                            addr750:
                                                                                                            §§push(_loc20_.normalImpulse);
                                                                                                            §§push(_loc13_);
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               addr723:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc25_)
                                                                                                               {
                                                                                                                  addr720:
                                                                                                                  §§push(Number(§§pop() + _loc20_.tangentImpulse * _loc15_));
                                                                                                               }
                                                                                                               _loc21_ = §§pop();
                                                                                                               addr724:
                                                                                                               §§push(_loc20_.normalImpulse);
                                                                                                               if(_loc25_ || param1)
                                                                                                               {
                                                                                                                  if(!(_loc24_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(_loc14_);
                                                                                                                     if(_loc25_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc25_)
                                                                                                                           {
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 §§push(_loc20_.tangentImpulse);
                                                                                                                                 if(_loc25_)
                                                                                                                                 {
                                                                                                                                    if(_loc25_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc16_);
                                                                                                                                       if(!(_loc24_ && param1))
                                                                                                                                       {
                                                                                                                                          addr695:
                                                                                                                                          §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                          if(_loc25_)
                                                                                                                                          {
                                                                                                                                             addr698:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          if(_loc25_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             _loc22_ = §§pop();
                                                                                                                                             addr707:
                                                                                                                                             §§push(_loc7_);
                                                                                                                                             §§push(_loc7_.m_angularVelocity);
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc10_);
                                                                                                                                                if(_loc25_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc20_.§[#§.x);
                                                                                                                                                   if(_loc25_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                      if(!(_loc24_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc24_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr644:
                                                                                                                                                            addr645:
                                                                                                                                                            addr646:
                                                                                                                                                            §§push(_loc20_.§[#§.y);
                                                                                                                                                            if(!(_loc24_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr641:
                                                                                                                                                               §§push(§§pop() * _loc21_);
                                                                                                                                                            }
                                                                                                                                                            §§pop().m_angularVelocity = §§pop() - §§pop() * (§§pop() - §§pop());
                                                                                                                                                            addr589:
                                                                                                                                                            _loc7_.§69§.x -= _loc9_ * _loc21_;
                                                                                                                                                            addr647:
                                                                                                                                                            addr587:
                                                                                                                                                            addr586:
                                                                                                                                                            addr582:
                                                                                                                                                            addr590:
                                                                                                                                                            addr585:
                                                                                                                                                            addr588:
                                                                                                                                                            §§push(_loc7_.§69§);
                                                                                                                                                            §§push(_loc7_.§69§);
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                               if(_loc25_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr555:
                                                                                                                                                                  §§push(_loc9_ * _loc22_);
                                                                                                                                                                  if(!(_loc24_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr564:
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc25_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           addr574:
                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                 §§push(_loc8_.m_angularVelocity);
                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc20_.§18§.x);
                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                          if(_loc25_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr527:
                                                                                                                                                                                             addr528:
                                                                                                                                                                                             addr529:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc20_.§18§.y);
                                                                                                                                                                                                if(_loc25_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * _loc21_);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                             addr530:
                                                                                                                                                                                             if(_loc25_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr453:
                                                                                                                                                                                                §§push(_loc8_.§69§);
                                                                                                                                                                                                if(_loc25_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr462:
                                                                                                                                                                                                   §§push(_loc8_.§69§);
                                                                                                                                                                                                   if(!(_loc24_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr470:
                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                      if(_loc25_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc25_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr482:
                                                                                                                                                                                                            §§push(§§pop() * _loc21_);
                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr485:
                                                                                                                                                                                                               §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                               addr486:
                                                                                                                                                                                                               if(_loc25_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr346:
                                                                                                                                                                                                                  §§push(_loc8_.§69§);
                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc8_.§69§);
                                                                                                                                                                                                                        if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                                                                           if(!(_loc24_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc25_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc25_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc24_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc25_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr407:
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr415:
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(_loc25_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                         addr423:
                                                                                                                                                                                                                                                         if(_loc25_ || _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc24_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                  if(_loc25_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + 1);
                                                                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr331:
                                                                                                                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     _loc18_ = §§pop();
                                                                                                                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc25_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr346);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr751);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr707);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr647);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr423);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr331);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr724);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr530);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr486);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr564);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr482);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr587);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr555);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr482);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr586);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr407);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr470);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr485);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr415);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr462);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr582);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr453);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr735);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr555);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr482);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr647);
                                                                                                                                                                                                addr537:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr574);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr527);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr528);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr529);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr750);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr590);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr585);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr589);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr588);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr564);
                                                                                                                                                            }
                                                                                                                                                            addr584:
                                                                                                                                                            §§goto(addr584);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr644);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr641);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr644);
                                                                                                                                                }
                                                                                                                                                §§goto(addr645);
                                                                                                                                             }
                                                                                                                                             §§goto(addr646);
                                                                                                                                          }
                                                                                                                                          §§goto(addr723);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr720);
                                                                                                                                 }
                                                                                                                                 §§goto(addr695);
                                                                                                                              }
                                                                                                                              §§goto(addr735);
                                                                                                                           }
                                                                                                                           §§goto(addr698);
                                                                                                                        }
                                                                                                                        §§goto(addr720);
                                                                                                                     }
                                                                                                                     §§goto(addr695);
                                                                                                                  }
                                                                                                                  §§goto(addr720);
                                                                                                               }
                                                                                                               §§goto(addr698);
                                                                                                            }
                                                                                                            §§goto(addr720);
                                                                                                         }
                                                                                                         §§goto(addr537);
                                                                                                      }
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      break loop17;
                                                                                                   }
                                                                                                   addr864:
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      _loc23_ = _loc6_.§&!3§[_loc18_];
                                                                                                      if(!(_loc24_ && param1))
                                                                                                      {
                                                                                                         _loc23_.normalImpulse = 0;
                                                                                                      }
                                                                                                      addr834:
                                                                                                      _loc23_.tangentImpulse = 0;
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         §§push(_loc18_);
                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                         _loc18_ = §§pop();
                                                                                                         if(_loc25_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr834);
                                                                                                            }
                                                                                                            addr879:
                                                                                                            §§push(_loc18_);
                                                                                                            if(!(_loc24_ && param1))
                                                                                                            {
                                                                                                               addr863:
                                                                                                               §§goto(addr864);
                                                                                                               §§push(_loc19_);
                                                                                                            }
                                                                                                            _loc5_ = §§pop();
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         §§goto(addr834);
                                                                                                      }
                                                                                                      addr844:
                                                                                                      §§goto(addr844);
                                                                                                   }
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr867:
                                                                                                   §§push(_loc5_);
                                                                                                   if(!(_loc24_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                      if(_loc25_)
                                                                                                      {
                                                                                                         addr878:
                                                                                                         §§push(int(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr879);
                                                                                                }
                                                                                                addr783:
                                                                                                _loc19_ = §§pop();
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   break loop17;
                                                                                                }
                                                                                                addr800:
                                                                                                §§goto(addr879);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_.§[!F§);
                                                                                                   break loop12;
                                                                                                }
                                                                                                addr284:
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       addr789:
                                                                                       §§push(int(§§pop()));
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          _loc18_ = §§pop();
                                                                                          if(!(_loc25_ || _loc2_))
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          §§goto(addr800);
                                                                                       }
                                                                                       §§goto(addr863);
                                                                                    }
                                                                                    §§goto(addr108);
                                                                                 }
                                                                                 §§goto(addr867);
                                                                              }
                                                                              §§goto(addr878);
                                                                           }
                                                                           §§goto(addr863);
                                                                        }
                                                                        §§goto(addr800);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc6_.§[![§);
                                                                        if(!_loc24_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           if(!(_loc24_ && _loc2_))
                                                                           {
                                                                              §§goto(addr783);
                                                                           }
                                                                           §§goto(addr789);
                                                                        }
                                                                     }
                                                                     §§goto(addr783);
                                                                  }
                                                                  addr770:
                                                                  §§goto(addr867);
                                                               }
                                                               break;
                                                            }
                                                            addr283:
                                                            while(true)
                                                            {
                                                               _loc11_ = §§pop();
                                                               §§goto(addr166);
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         else
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(_loc24_ && _loc3_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               _loc14_ = §§pop();
                                                               if(!_loc25_)
                                                               {
                                                                  break loop17;
                                                               }
                                                               §§push(_loc14_);
                                                               if(!(_loc25_ || _loc3_))
                                                               {
                                                                  continue loop16;
                                                               }
                                                               if(_loc25_)
                                                               {
                                                                  §§goto(addr188);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  addr220:
                                                               }
                                                            }
                                                            §§goto(addr289);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr166);
                                                }
                                                §§push(0);
                                                if(_loc25_)
                                                {
                                                   §§goto(addr789);
                                                }
                                                §§goto(addr863);
                                             }
                                          }
                                          §§goto(addr289);
                                       }
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                       continue loop10;
                                    }
                                 }
                              }
                              §§goto(addr770);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr770);
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
      
      public function §#!0§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         loop0:
         while(_loc1_ < this.§ !C§)
         {
            _loc2_ = this.§^!Y§[_loc1_];
            _loc3_ = _loc2_.§-%§;
            if(!(_loc8_ || this))
            {
               continue;
            }
            §§push(0);
            if(!(_loc7_ && _loc3_))
            {
               §§push(int(§§pop()));
               if(_loc8_ || _loc3_)
               {
                  _loc4_ = §§pop();
                  if(_loc7_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc7_)
                     {
                        break;
                     }
                     if(§§pop() >= _loc2_.§[![§)
                     {
                        if(!_loc7_)
                        {
                           §§push(_loc1_);
                           if(_loc8_ || _loc1_)
                           {
                              break;
                           }
                           addr162:
                           _loc1_ = §§pop();
                        }
                        continue loop0;
                     }
                     _loc5_ = _loc3_.§ 2§[_loc4_];
                     _loc6_ = _loc2_.§&!3§[_loc4_];
                     if(_loc8_)
                     {
                        _loc5_.§8!L§ = _loc6_.normalImpulse;
                        loop2:
                        while(true)
                        {
                           addr114:
                           while(true)
                           {
                              _loc5_.§-!V§ = _loc6_.tangentImpulse;
                              continue loop2;
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc8_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc8_)
                           {
                              addr108:
                              §§push(int(§§pop()));
                           }
                           _loc4_ = §§pop();
                           if(_loc8_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr108);
                     }
                  }
               }
               §§push(§§pop() + 1);
               if(_loc8_)
               {
                  addr161:
                  §§push(int(§§pop()));
               }
               §§goto(addr162);
            }
            §§goto(addr161);
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
         if(_loc25_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc25_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ < this.§ !C§)
         {
            _loc4_ = this.§^!Y§[_loc3_];
            _loc5_ = _loc4_.§7!K§;
            _loc6_ = _loc4_.§'P§;
            if(_loc25_ || this)
            {
               §§push(_loc5_.§;!3§);
               loop1:
               while(true)
               {
                  §§push(_loc5_.§4s§);
                  addr219:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr220:
                     loop3:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr221:
                        while(true)
                        {
                           _loc7_ = §§pop();
                           addr222:
                           while(true)
                           {
                              §§push(_loc5_.§;!3§);
                              if(_loc25_)
                              {
                                 if(!_loc25_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              addr213:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            §§goto(addr214);
         }
         §§push(_loc2_);
         §§push(-1.5);
         if(!(_loc24_ && _loc2_))
         {
            §§push(§§pop() * b2Settings.b2_linearSlop);
         }
         return §§pop() > §§pop();
      }
   }
}
