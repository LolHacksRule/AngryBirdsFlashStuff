package §23§
{
   import §!§.*;
   import §'!_§.*;
   import §0"!§.*;
   import §=!!§.b2Shape;
   import §@!E§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §8!2§:b2WorldManifold;
      
      private static var §@e§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8!2§ = new b2WorldManifold();
         }
         do
         {
            §@e§ = new b2PositionSolverManifold();
         }
         while(_loc1_);
         
      }
      
      private var §#'§:b2TimeStep;
      
      private var §;!b§;
      
      b2internal var §,"+§:Vector.<b2ContactConstraint>;
      
      private var §2-§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§#'§ = new b2TimeStep();
            while(true)
            {
               this.§,"+§ = new Vector.<b2ContactConstraint>();
               loop1:
               while(!(_loc1_ && _loc2_))
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
         §§goto(addr69);
      }
      
      public function §6R§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         while(_loc5_ < this.§2-§)
         {
            _loc7_ = (_loc6_ = this.§,"+§[_loc5_]).§9!w§;
            _loc8_ = _loc6_.§>!W§;
            if(!_loc24_)
            {
               §§push(_loc7_.§ c§);
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc9_ = §§pop();
                     if(_loc25_ || _loc3_)
                     {
                        while(true)
                        {
                           §§push(_loc7_.§"k§);
                           loop6:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr279:
                              while(true)
                              {
                                 _loc10_ = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(_loc8_.§ c§);
                                    addr265:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop10:
                                       while(true)
                                       {
                                          _loc11_ = §§pop();
                                          if(_loc24_ && param1)
                                          {
                                             continue loop0;
                                          }
                                          §§push(_loc8_.§"k§);
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop12:
                                             while(true)
                                             {
                                                _loc12_ = §§pop();
                                                addr254:
                                                while(!(_loc24_ && param1))
                                                {
                                                   §§push(_loc6_.normal);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr230:
                                                      while(true)
                                                      {
                                                         if(!(_loc24_ && _loc2_))
                                                         {
                                                            if(!(_loc25_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            loop16:
                                                            while(_loc25_)
                                                            {
                                                               _loc13_ = §§pop();
                                                               continue loop14;
                                                               while(true)
                                                               {
                                                                  if(!(_loc24_ && param1))
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  continue loop16;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop10;
                                                   }
                                                }
                                                continue loop8;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr292:
                     }
                     break;
                  }
                  §§push(0);
                  if(_loc25_ || _loc3_)
                  {
                     §§goto(addr753);
                  }
                  §§goto(addr786);
                  if(_loc24_ && this)
                  {
                     continue;
                  }
                  §§goto(addr207);
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr292);
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
      
      public function §=Y§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2-§)
         {
            _loc2_ = this.§,"+§[_loc1_];
            _loc3_ = _loc2_.§7"+§;
            if(_loc8_)
            {
               §§push(0);
               if(_loc8_ || _loc2_)
               {
                  _loc4_ = §§pop();
                  if(!_loc8_)
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
               for(; §§pop() < _loc2_.§#!1§; §§goto(addr114))
               {
                  _loc5_ = _loc3_.§`9§[_loc4_];
                  _loc6_ = _loc2_.§>Q§[_loc4_];
                  if(!(_loc7_ && _loc3_))
                  {
                     _loc5_.§`!8§ = _loc6_.normalImpulse;
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           _loc5_.§;8§ = _loc6_.tangentImpulse;
                           do
                           {
                              _loc4_++;
                           }
                           while(_loc7_ && _loc3_);
                           
                           if(!_loc8_)
                           {
                              break;
                              addr101:
                           }
                           while(false)
                           {
                              continue loop4;
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr101);
               }
               if(!(_loc8_ || _loc3_))
               {
                  continue;
               }
            }
            _loc1_++;
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
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:* = NaN;
         §§push(0);
         if(!_loc25_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < this.§2-§)
         {
            _loc5_ = (_loc4_ = this.§,"+§[_loc3_]).§9!w§;
            _loc6_ = _loc4_.§>!W§;
            if(_loc24_)
            {
               §§push(_loc5_.§'q§);
               loop1:
               while(true)
               {
                  §§push(_loc5_.§ c§);
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
                              §§push(_loc5_.§'q§);
                              while(true)
                              {
                                 §§push(_loc5_.§"k§);
                                 addr213:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr214:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr215:
                                       while(true)
                                       {
                                          _loc8_ = §§pop();
                                          addr216:
                                          while(!_loc25_)
                                          {
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 loop15:
                                 for(; !(_loc25_ && this); if(_loc25_ && this)
                                 {
                                    continue;
                                 },if(!_loc25_)
                                 {
                                    if(_loc24_)
                                    {
                                       if(!(_loc24_ || param1))
                                       {
                                          continue loop3;
                                       }
                                       _loc10_ = §§pop();
                                       §§goto(addr154);
                                    }
                                    while(_loc24_ || this)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr214);
                                    addr165:
                                 },§§goto(addr184))
                                 {
                                    _loc9_ = §§pop();
                                    loop16:
                                    while(true)
                                    {
                                       if(_loc25_ && _loc2_)
                                       {
                                          break;
                                          addr103:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc6_.§'q§);
                                          if(_loc25_)
                                          {
                                             continue loop15;
                                          }
                                          addr108:
                                          §§push(_loc6_.§"k§);
                                          if(!(_loc25_ && _loc3_))
                                          {
                                             if(_loc25_ && _loc2_)
                                             {
                                                continue loop2;
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(!_loc24_)
                                             {
                                                continue loop15;
                                             }
                                             if(!(_loc25_ && _loc3_))
                                             {
                                                §§push(Number(§§pop()));
                                                continue loop15;
                                             }
                                          }
                                          else
                                          {
                                             while(_loc24_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                while(!(_loc25_ && param1))
                                                {
                                                   §§push(Number(§§pop()));
                                                   continue loop15;
                                                }
                                                continue loop4;
                                                §§goto(addr108);
                                             }
                                             §§goto(addr213);
                                             addr181:
                                          }
                                          §§goto(addr215);
                                       }
                                       continue loop3;
                                       addr154:
                                       while(true)
                                       {
                                          if(!(_loc25_ && _loc3_))
                                          {
                                             continue;
                                          }
                                          continue loop16;
                                       }
                                       _loc11_ = §§pop().§!!f§;
                                       if(_loc24_)
                                       {
                                          §§push(0);
                                          if(!(_loc25_ && this))
                                          {
                                             _loc12_ = §§pop();
                                             if(_loc25_ && param1)
                                             {
                                                continue loop0;
                                             }
                                             addr249:
                                             while(true)
                                             {
                                                §§push(_loc12_);
                                             }
                                             addr995:
                                          }
                                          while(§§pop() < _loc4_.§#!1§)
                                          {
                                             _loc13_ = _loc4_.§>Q§[_loc12_];
                                             _loc14_ = §@e§.§`9§[_loc12_];
                                             if(!_loc25_)
                                             {
                                                §§push(Number(§@e§.§!!A§[_loc12_]));
                                                loop20:
                                                while(true)
                                                {
                                                   _loc15_ = §§pop();
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(_loc14_.x);
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
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        _loc16_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc14_.y);
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.m_sweep);
                                                                              loop30:
                                                                              while(!(_loc25_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop().c);
                                                                                 loop31:
                                                                                 while(_loc24_ || this)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop34:
                                                                                          while(true)
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
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop41:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc18_ = §§pop();
                                                                                                                  while(!_loc25_)
                                                                                                                  {
                                                                                                                     §§push(_loc14_.y);
                                                                                                                     loop43:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc25_)
                                                                                                                        {
                                                                                                                           continue loop41;
                                                                                                                        }
                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           continue loop37;
                                                                                                                        }
                                                                                                                        if(_loc25_ && _loc2_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(§§pop().c);
                                                                                                                        if(!(_loc24_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue loop38;
                                                                                                                        }
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           continue loop31;
                                                                                                                        }
                                                                                                                        §§push(§§pop().y);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           continue loop20;
                                                                                                                           addr690:
                                                                                                                           if(_loc25_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              if(!_loc25_)
                                                                                                                              {
                                                                                                                                 if(!_loc25_)
                                                                                                                                 {
                                                                                                                                    addr704:
                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                    {
                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr719:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc24_)
                                                                                                                                          {
                                                                                                                                             addr721:
                                                                                                                                             if(_loc24_ || param1)
                                                                                                                                             {
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   _loc23_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_.m_sweep);
                                                                                                                                                         loop67:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                            loop68:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_.m_sweep);
                                                                                                                                                               loop69:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                  loop70:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     if(!_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc22_);
                                                                                                                                                                           addr660:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              addr661:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           loop105:
                                                                                                                                                                           while(_loc24_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              loop106:
                                                                                                                                                                              while(!(_loc25_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 loop107:
                                                                                                                                                                                 while(!_loc25_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.m_sweep);
                                                                                                                                                                                    loop108:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().c);
                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr433:
                                                                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                                                                                if(_loc24_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc25_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop69;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop().c);
                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                         if(!_loc25_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr457:
                                                                                                                                                                                                               §§push(_loc23_);
                                                                                                                                                                                                               if(!(_loc25_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc25_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr480:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc25_ && param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop105;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr487:
                                                                                                                                                                                                                        if(!(_loc25_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc25_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr497:
                                                                                                                                                                                                                              §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr661);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc23_);
                                                                                                                                                                                                                           addr642:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              addr643:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 break loop106;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr487);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr641:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr660);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr661);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr642);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop105;
                                                                                                                                                                                                                     §§goto(addr457);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr548:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr480);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr497);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(!_loc25_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc25_ && _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop70;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                            if(_loc25_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop108;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                            if(!(_loc24_ || this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop105;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc25_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr548);
                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr643);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                            if(_loc24_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr641);
                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break loop106;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr632:
                                                                                                                                                                                                         addr525:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr643);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr632);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr631:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr524:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr433);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr524:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr525);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr524);
                                                                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(!(_loc25_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr631);
                                                                                                                                                                                                   §§push(_loc5_.m_sweep);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop68;
                                                                                                                                                                                                addr622:
                                                                                                                                                                                                addr520:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr524);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr622);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr621:
                                                                                                                                                                                       }
                                                                                                                                                                                       addr582:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc5_.m_sweep);
                                                                                                                                                                                          addr584:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().a);
                                                                                                                                                                                             if(_loc24_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                if(_loc24_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc23_);
                                                                                                                                                                                                      addr602:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         addr603:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                            addr604:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                               addr605:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  addr606:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     addr607:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr601:
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                addr608:
                                                                                                                                                                                             }
                                                                                                                                                                                             addr609:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().a = §§pop();
                                                                                                                                                                                                addr610:
                                                                                                                                                                                                while(!(_loc25_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc5_.§+!X§();
                                                                                                                                                                                                   break loop107;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop106;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(_loc24_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.m_sweep);
                                                                                                                                                                                    continue loop67;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr610);
                                                                                                                                                                              }
                                                                                                                                                                              while(_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                 §§goto(addr647);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 §§goto(addr663);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr662);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                      if(_loc25_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc25_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr288);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr879);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc25_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                         if(!_loc25_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr870);
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr872);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                            if(!_loc25_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr853);
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr938:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop26;
                                                                                                                                                }
                                                                                                                                                continue loop43;
                                                                                                                                             }
                                                                                                                                             §§goto(addr878);
                                                                                                                                          }
                                                                                                                                          §§goto(addr753);
                                                                                                                                       }
                                                                                                                                       §§goto(addr872);
                                                                                                                                    }
                                                                                                                                    §§goto(addr846);
                                                                                                                                 }
                                                                                                                                 §§goto(addr740);
                                                                                                                              }
                                                                                                                              §§goto(addr788);
                                                                                                                           }
                                                                                                                           §§goto(addr719);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                                  continue loop35;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr923:
                                                                                                   while(!(_loc25_ && _loc3_))
                                                                                                   {
                                                                                                      if(!(_loc24_ || param1))
                                                                                                      {
                                                                                                         continue loop34;
                                                                                                      }
                                                                                                      _loc19_ = §§pop();
                                                                                                      §§goto(addr938);
                                                                                                      §§goto(addr740);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop24;
                                                                              }
                                                                              continue loop23;
                                                                              if(!(_loc24_ || this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(§§pop());
                                                                              if(!(_loc25_ && this))
                                                                              {
                                                                                 §§goto(addr787);
                                                                              }
                                                                              §§goto(addr790);
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
                                             §§goto(addr647);
                                             §§goto(addr995);
                                          }
                                          if(_loc24_ || _loc3_)
                                          {
                                             _loc3_++;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr249);
                                    }
                                    §§goto(addr216);
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc24_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr181);
                  §§push(_loc6_.§ c§);
               }
            }
            while(true)
            {
               §§goto(addr165);
            }
         }
         §§push(_loc2_);
         §§push(-1.5);
         if(!_loc25_)
         {
            §§push(§§pop() * b2Settings.b2_linearSlop);
         }
         return §§pop() > §§pop();
      }
   }
}
