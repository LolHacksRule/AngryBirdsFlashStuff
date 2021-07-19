package §30§
{
   import § o§.*;
   import §"0§.*;
   import §-r§.*;
   import §6!H§.*;
   import §]!S§.b2Shape;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §%z§:b2WorldManifold;
      
      private static var §+9§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §%z§ = new b2WorldManifold();
         }
         do
         {
            §+9§ = new b2PositionSolverManifold();
         }
         while(!(_loc1_ || b2ContactSolver));
         
      }
      
      private var §1!>§:b2TimeStep;
      
      private var §`!Y§;
      
      b2internal var §4[§:Vector.<b2ContactConstraint>;
      
      private var §-!=§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1!>§ = new b2TimeStep();
            while(true)
            {
               this.§4[§ = new Vector.<b2ContactConstraint>();
               §§goto(addr58);
            }
         }
         addr58:
         while(true)
         {
            super();
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §#!O§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
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
         while(_loc5_ < this.§-!=§)
         {
            _loc7_ = (_loc6_ = this.§4[§[_loc5_]).§-'§;
            _loc8_ = _loc6_.§<!L§;
            if(!(_loc25_ && param1))
            {
               §§push(_loc7_.§+5§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  while(true)
                  {
                     _loc9_ = §§pop();
                     if(!_loc24_)
                     {
                        break;
                     }
                     §§push(_loc7_.§%L§);
                     if(!(_loc25_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                     while(true)
                     {
                        _loc10_ = §§pop();
                        while(true)
                        {
                           §§push(_loc8_.§+5§);
                           loop5:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr280:
                              while(true)
                              {
                                 _loc11_ = §§pop();
                                 addr281:
                                 while(true)
                                 {
                                    §§push(_loc8_.§%L§);
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§push(0);
                  if(_loc24_)
                  {
                     §§goto(addr737);
                  }
                  §§goto(addr769);
                  while(true)
                  {
                     if(_loc25_ && _loc2_)
                     {
                        continue loop1;
                     }
                     _loc15_ = §§pop();
                     §§goto(addr251);
                  }
               }
            }
            while(true)
            {
               §§push(_loc6_.normal);
               if(_loc24_)
               {
                  §§push(§§pop().y);
                  if(_loc24_ || param1)
                  {
                     §§goto(addr214);
                  }
                  §§goto(addr222);
               }
               §§goto(addr255);
            }
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
      
      public function §8!O§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§-!=§)
         {
            _loc2_ = this.§4[§[_loc1_];
            _loc3_ = _loc2_.§,S§;
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
                  addr103:
               }
               loop2:
               for(; §§pop() < _loc2_.§&n§; §§goto(addr103))
               {
                  _loc5_ = _loc3_.§@Z§[_loc4_];
                  _loc6_ = _loc2_.§ try§[_loc4_];
                  if(!_loc8_)
                  {
                     _loc5_.§'!?§ = _loc6_.normalImpulse;
                  }
                  while(true)
                  {
                     while(true)
                     {
                        _loc5_.§,m§ = _loc6_.tangentImpulse;
                        do
                        {
                           _loc4_++;
                        }
                        while(!_loc7_);
                        
                        if(!(_loc7_ || _loc1_))
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
                  continue;
               }
            }
            _loc1_++;
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
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
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
         loop0:
         while(_loc3_ < this.§-!=§)
         {
            _loc5_ = (_loc4_ = this.§4[§[_loc3_]).§-'§;
            _loc6_ = _loc4_.§<!L§;
            if(_loc25_)
            {
               §§push(_loc5_.§>§);
               if(_loc25_ || param1)
               {
                  §§push(_loc5_.§+5§);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                  }
                  addr224:
               }
               loop2:
               while(true)
               {
                  §§push(Number(§§pop()));
                  while(true)
                  {
                     _loc7_ = §§pop();
                     while(true)
                     {
                        §§push(_loc5_.§>§);
                        if(!_loc24_)
                        {
                           if(_loc24_)
                           {
                              break;
                           }
                           if(_loc24_ && _loc3_)
                           {
                              continue loop2;
                           }
                           §§push(_loc5_.§%L§);
                           while(!_loc24_)
                           {
                              §§push(§§pop() * §§pop());
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                              }
                              addr130:
                              if(!(_loc25_ || this))
                              {
                                 continue;
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc24_)
                              {
                                 addr140:
                                 if(!(_loc24_ && _loc2_))
                                 {
                                    addr147:
                                    if(!(_loc24_ && param1))
                                    {
                                       addr155:
                                       §§push(Number(§§pop()));
                                       if(_loc25_ || param1)
                                       {
                                          _loc10_ = §§pop();
                                          loop15:
                                          while(true)
                                          {
                                             if(_loc25_ || this)
                                             {
                                                if(_loc24_ && this)
                                                {
                                                   break;
                                                }
                                                §§push(§+9§);
                                                if(!_loc24_)
                                                {
                                                   continue;
                                                }
                                                addr229:
                                                _loc11_ = §§pop().§?!B§;
                                                if(_loc25_ || param1)
                                                {
                                                   §§push(0);
                                                   if(_loc25_ || this)
                                                   {
                                                      _loc12_ = §§pop();
                                                      if(_loc25_)
                                                      {
                                                         addr250:
                                                         loop112:
                                                         while(true)
                                                         {
                                                            §§push(_loc12_);
                                                            addr1007:
                                                            while(§§pop() < _loc4_.§&n§)
                                                            {
                                                               _loc13_ = _loc4_.§ try§[_loc12_];
                                                               _loc14_ = §+9§.§@Z§[_loc12_];
                                                               if(_loc25_)
                                                               {
                                                                  §§push(Number(§+9§.§'Y§[_loc12_]));
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     _loc15_ = §§pop();
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc14_.x);
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_.m_sweep);
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().c);
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc16_ = §§pop();
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc14_.y);
                                                                                             loop26:
                                                                                             for(; _loc25_ || _loc3_; loop36:
                                                                                             while(_loc25_ || param1)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop37:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc18_ = §§pop();
                                                                                                   loop38:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc14_.y);
                                                                                                      loop39:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                         if(!_loc24_)
                                                                                                         {
                                                                                                            §§push(§§pop().c);
                                                                                                            if(_loc25_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               loop40:
                                                                                                               while(_loc25_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  loop41:
                                                                                                                  for(; !(_loc24_ && _loc3_); while(_loc25_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        continue loop37;
                                                                                                                     }
                                                                                                                     §§goto(addr863);
                                                                                                                     §§push(_loc15_);
                                                                                                                     §§goto(addr705);
                                                                                                                  })
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop42:
                                                                                                                     while(!(_loc24_ && param1))
                                                                                                                     {
                                                                                                                        _loc19_ = §§pop();
                                                                                                                        loop43:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc2_);
                                                                                                                           continue loop41;
                                                                                                                           loop56:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc25_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop43;
                                                                                                                              }
                                                                                                                              §§push(_loc21_);
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    if(_loc25_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc11_.y);
                                                                                                                                       if(!(_loc24_ && this))
                                                                                                                                       {
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc25_)
                                                                                                                                                   {
                                                                                                                                                      continue loop40;
                                                                                                                                                   }
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc24_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      continue loop39;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop22;
                                                                                                                                                addr725:
                                                                                                                                             }
                                                                                                                                             addr677:
                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc25_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr693:
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(_loc25_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      _loc23_ = §§pop();
                                                                                                                                                      loop57:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_.m_sweep);
                                                                                                                                                         loop58:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                            loop59:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_.m_sweep);
                                                                                                                                                               loop60:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().c);
                                                                                                                                                                  loop61:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     loop62:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                        loop63:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc22_);
                                                                                                                                                                           loop64:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              loop65:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 loop66:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    loop67:
                                                                                                                                                                                    while(_loc25_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc5_.m_sweep);
                                                                                                                                                                                       loop68:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().c);
                                                                                                                                                                                          loop69:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc5_.m_sweep);
                                                                                                                                                                                             loop70:
                                                                                                                                                                                             while(_loc25_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                                                                loop71:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                   loop72:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                      loop73:
                                                                                                                                                                                                      while(_loc25_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                         loop74:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            loop75:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               addr624:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                  loop77:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc25_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc24_ && _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                        loop78:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                           loop79:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().a);
                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                                                                    addr591:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc23_);
                                                                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr595:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr596:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                          addr597:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             addr598:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                addr599:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   addr600:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr590:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop88:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().a = §§pop();
                                                                                                                                                                                                                                 loop89:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc5_.§&I§();
                                                                                                                                                                                                                                    loop90:
                                                                                                                                                                                                                                    while(!(_loc24_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().c);
                                                                                                                                                                                                                                          addr527:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                             addr529:
                                                                                                                                                                                                                                             while(!_loc24_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                                                                                                                continue loop71;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop70;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr305:
                                                                                                                                                                                                                                          if(_loc24_ && this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc25_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop78;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop79;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop().a);
                                                                                                                                                                                                                                          if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc25_ || _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop88;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc10_);
                                                                                                                                                                                                                                             if(_loc25_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                                                                      if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                                                                         if(_loc25_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc25_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr366:
                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                        if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr389:
                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr399:
                                                                                                                                                                                                                                                                                    §§pop().a = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                                    addr398:
                                                                                                                                                                                                                                                                                    loop102:
                                                                                                                                                                                                                                                                                    for(; _loc25_ || this; loop104:
                                                                                                                                                                                                                                                                                    while(_loc25_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr290:
                                                                                                                                                                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc25_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc12_++;
                                                                                                                                                                                                                                                                                                if(!(_loc25_ || param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop104;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop90;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop112;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr280);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop112;
                                                                                                                                                                                                                                                                                             addr299:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop57;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       loop101:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc24_ && _loc2_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop77;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr522:
                                                                                                                                                                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr305);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   loop100:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc25_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop68;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(!_loc25_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop58;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(§§pop().c);
                                                                                                                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc24_ && param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop69;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc24_ && this)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop59;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                                                                                                                                                                            if(!_loc25_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop71;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(!_loc25_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop61;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr458:
                                                                                                                                                                                                                                                                                                                     if(_loc24_ && _loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(_loc25_ || this)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                           §§goto(addr458);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop75;
                                                                                                                                                                                                                                                                                                                        addr545:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop74;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr483:
                                                                                                                                                                                                                                                                                                                     if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc25_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr493:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                           if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                              continue loop101;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop72;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop73;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(_loc25_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     break loop100;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop63;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop66;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr493);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr527);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr529);
                                                                                                                                                                                                                                                                                                      §§goto(addr522);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(_loc25_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop62;
                                                                                                                                                                                                                                                                                                   addr413:
                                                                                                                                                                                                                                                                                                   addr557:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                loop52:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc13_.§&!N§);
                                                                                                                                                                                                                                                                                                   addr705:
                                                                                                                                                                                                                                                                                                   while(_loc25_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc25_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop42;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr876:
                                                                                                                                                                                                                                                                                                         while(_loc25_ || _loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc25_ || this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc21_ = §§pop();
                                                                                                                                                                                                                                                                                                                     if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop17;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(_loc11_.x);
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                           break loop56;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     break loop56;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr943);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(!_loc24_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc25_ || param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop36;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc20_ = §§pop();
                                                                                                                                                                                                                                                                                                                     continue loop52;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr839:
                                                                                                                                                                                                                                                                                                               addr767:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr874:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                               continue loop19;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(!_loc24_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr879);
                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr983);
                                                                                                                                                                                                                                                                                                         addr876:
                                                                                                                                                                                                                                                                                                         addr752:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr849);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop41;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(_loc25_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr413);
                                                                                                                                                                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr985);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop67;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop88;
                                                                                                                                                                                                                                                                                    })
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop38;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc6_.§&I§();
                                                                                                                                                                                                                                                                                          continue loop102;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop89;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr591);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr597);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr598);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr389);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr595);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr599);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr389);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr596);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr389);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr366);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr590);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr600);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr398);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr399);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop56;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(b2Math);
                                                                                                                                                                                                                           §§push(param1);
                                                                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                              if(_loc25_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(b2Settings.b2_linearSlop);
                                                                                                                                                                                                                                 if(_loc25_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr827:
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                                                                                                                                       if(_loc25_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr836:
                                                                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr836);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr839);
                                                                                                                                                                                                                                 §§push(§§pop().§9!%§(§§pop(),§§pop(),§§pop()));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr836);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr827);
                                                                                                                                                                                                                           continue loop77;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr888:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop25;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc25_ || this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc25_ || param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop64;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr483);
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop65;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop60;
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
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc22_ = §§pop();
                                                                                                                                                      continue loop56;
                                                                                                                                                   }
                                                                                                                                                   continue loop19;
                                                                                                                                                   addr792:
                                                                                                                                                }
                                                                                                                                                §§goto(addr693);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                         if(_loc25_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr874);
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr876);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr879);
                                                                                                                                                      }
                                                                                                                                                      addr865:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr876);
                                                                                                                                                   §§goto(addr677);
                                                                                                                                                }
                                                                                                                                                addr863:
                                                                                                                                             }
                                                                                                                                             §§goto(addr865);
                                                                                                                                             §§goto(addr792);
                                                                                                                                          }
                                                                                                                                          §§goto(addr767);
                                                                                                                                       }
                                                                                                                                       §§goto(addr783);
                                                                                                                                    }
                                                                                                                                    §§goto(addr705);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr693);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc25_ || param1))
                                                                                                                              {
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              §§goto(addr693);
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(_loc24_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr725);
                                                                                                                        §§push(_loc20_);
                                                                                                                     }
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  §§goto(addr984);
                                                                                                               }
                                                                                                               §§goto(addr982);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr927);
                                                                                                      }
                                                                                                      §§goto(addr935);
                                                                                                   }
                                                                                                }
                                                                                             })
                                                                                             {
                                                                                                §§push(_loc5_.m_sweep);
                                                                                                loop27:
                                                                                                while(!(_loc24_ && this))
                                                                                                {
                                                                                                   §§push(§§pop().c);
                                                                                                   while(_loc25_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         addr983:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr984:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc17_ = §§pop();
                                                                                                               addr985:
                                                                                                               while(_loc25_)
                                                                                                               {
                                                                                                                  §§push(_loc14_.x);
                                                                                                                  if(_loc25_)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.m_sweep);
                                                                                                                     while(_loc25_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§goto(addr935);
                                                                                                                        §§push(§§pop().c);
                                                                                                                     }
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(!(_loc24_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            continue loop26;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop21;
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                             continue loop24;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(!(_loc24_ && _loc2_))
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              §§goto(addr888);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr299);
                                                               continue loop112;
                                                            }
                                                            if(_loc24_)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      _loc3_++;
                                                      continue loop0;
                                                   }
                                                   §§goto(addr1007);
                                                }
                                                §§goto(addr250);
                                             }
                                             addr190:
                                             while(true)
                                             {
                                                addr116:
                                                addr186:
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(_loc6_.§>§);
                                                   if(!_loc24_)
                                                   {
                                                      addr121:
                                                      §§push(_loc6_.§%L§);
                                                      if(!(_loc24_ && _loc3_))
                                                      {
                                                         §§goto(addr130);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         break loop14;
                                                         §§goto(addr121);
                                                      }
                                                      addr185:
                                                   }
                                                   §§goto(addr140);
                                                }
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                continue loop15;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(_loc6_.§>§);
                                             addr181:
                                             while(!_loc24_)
                                             {
                                                §§goto(addr185);
                                                §§push(_loc6_.§+5§);
                                                §§goto(addr147);
                                             }
                                             §§goto(addr210);
                                          }
                                          addr212:
                                       }
                                       while(_loc25_)
                                       {
                                          _loc9_ = §§pop();
                                          §§goto(addr190);
                                       }
                                       while(true)
                                       {
                                          _loc8_ = §§pop();
                                          §§goto(addr212);
                                       }
                                       addr211:
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr224);
                        }
                        §§goto(addr211);
                     }
                  }
               }
            }
            §§goto(addr190);
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
