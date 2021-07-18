package §+#$§
{
   import §1!2§.*;
   import §3"5§.*;
   import §5"i§.*;
   import §8[§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §`!!§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`!!§ = new b2ContactImpulse();
         }
      }
      
      private var §+!z§;
      
      private var § !5§:b2ContactListener;
      
      private var §"!k§:b2ContactSolver;
      
      b2internal var §%6§:Vector.<b2Body>;
      
      b2internal var §+"C§:Vector.<b2Contact>;
      
      b2internal var §8!s§:Vector.<b2Joint>;
      
      b2internal var §9#,§:int;
      
      b2internal var §5!I§:int;
      
      b2internal var §1N§:int;
      
      private var §-x§:int;
      
      b2internal var §5"x§:int;
      
      b2internal var §=!I§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.§%6§ = new Vector.<b2Body>();
            do
            {
               this.§+"C§ = new Vector.<b2Contact>();
               do
               {
                  this.§8!s§ = new Vector.<b2Joint>();
               }
               while(_loc2_ && _loc1_);
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
         while(!(_loc1_ || this));
         
      }
      
      public function §8#5§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:int = 0;
         if(!(_loc9_ && param2))
         {
            this.§-x§ = param1;
         }
         loop0:
         while(true)
         {
            this.§5"x§ = param2;
            loop1:
            while(true)
            {
               this.§=!I§ = param3;
               loop2:
               while(true)
               {
                  this.§9#,§ = 0;
                  loop3:
                  for(; _loc8_; if(!(_loc8_ || param3))
                  {
                     continue;
                  },if(_loc9_)
                  {
                     continue loop2;
                  },this.§ !5§ = param5,§§goto(addr217))
                  {
                     this.§1N§ = 0;
                     loop4:
                     while(true)
                     {
                        this.§5!I§ = 0;
                        loop5:
                        while(true)
                        {
                           this.§+!z§ = param4;
                           while(true)
                           {
                              if(!_loc9_)
                              {
                                 continue loop3;
                              }
                              continue loop4;
                              addr203:
                              if(!(_loc9_ && this))
                              {
                                 if(!_loc9_)
                                 {
                                    _loc7_ = this.§%6§.length;
                                    addr212:
                                    if(_loc8_ || param2)
                                    {
                                       continue loop5;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       if(!_loc9_)
                                       {
                                          §§goto(addr203);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§"!k§ = param6;
                                             continue loop8;
                                          }
                                          addr217:
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §#u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§9#,§ = 0;
            while(true)
            {
               this.§1N§ = 0;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§5!I§ = 0;
            if(_loc1_)
            {
               if(_loc1_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §=#6§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:b2Joint = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = false;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         if(!_loc18_)
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§9#,§)
         {
            if((_loc6_ = this.§%6§[_loc4_]).§8! §() != b2Body.b2_dynamicBody)
            {
               if(_loc19_ || this)
               {
                  loop23:
                  while(true)
                  {
                     _loc4_++;
                     if(!(_loc18_ && param3))
                     {
                        if(_loc19_)
                        {
                           while(false)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 §§push(_loc6_.m_angularVelocity);
                                 if(_loc19_)
                                 {
                                    §§push(b2Math);
                                    §§push(1);
                                    §§push(param1.§1!O§);
                                    if(!(_loc18_ && param2))
                                    {
                                       §§push(§§pop() * _loc6_.each);
                                    }
                                    §§push(§§pop() * §§pop().§<"X§(§§pop() - §§pop(),0,1));
                                 }
                                 §§pop().m_angularVelocity = §§pop();
                                 addr121:
                                 while(_loc19_)
                                 {
                                    continue loop23;
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    if(!_loc18_)
                                    {
                                       addr209:
                                       §§push(_loc6_.§ #`§);
                                       if(_loc19_ || this)
                                       {
                                          if(!(_loc18_ && param3))
                                          {
                                             addr141:
                                             §§push(b2Math);
                                             §§push(1);
                                             §§push(param1.§1!O§);
                                             if(!(_loc18_ && this))
                                             {
                                                §§push(§§pop() * _loc6_.§6"H§);
                                             }
                                             §§push(§§pop().§<"X§(§§pop() - §§pop(),0,1));
                                             if(_loc19_ || param2)
                                             {
                                                addr166:
                                                §§pop().§?1§(§§pop());
                                                while(_loc18_ && param2)
                                                {
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_.§ #`§);
                                                      addr213:
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_.§ #`§);
                                                         if(_loc19_ || param3)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc19_ || param1)
                                                            {
                                                               §§push(param1.§1!O§);
                                                               if(_loc19_ || param2)
                                                               {
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(_loc6_.§]"`§);
                                                                     if(!(_loc18_ && param1))
                                                                     {
                                                                        if(!(_loc18_ && param3))
                                                                        {
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§push(param2.y);
                                                                              if(!(_loc18_ && param3))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc19_ || param3)
                                                                                 {
                                                                                    §§push(_loc6_.§3#>§);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       if(!(_loc18_ && param2))
                                                                                       {
                                                                                          §§push(_loc6_.§#r§);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc19_ || param2)
                                                                                             {
                                                                                                addr300:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc18_ && param3))
                                                                                                {
                                                                                                   if(!(_loc18_ && this))
                                                                                                   {
                                                                                                      addr315:
                                                                                                      §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         addr319:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         while(_loc19_)
                                                                                                         {
                                                                                                            if(!(_loc18_ && param1))
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               loop8:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc18_ && param3))
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     §§push(_loc6_.m_angularVelocity);
                                                                                                                     if(!(_loc18_ && param3))
                                                                                                                     {
                                                                                                                        §§push(param1.§1!O§);
                                                                                                                        if(!(_loc18_ && param2))
                                                                                                                        {
                                                                                                                           §§push(_loc6_.§3"y§);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              addr205:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.§?"4§);
                                                                                                                              }
                                                                                                                              §§pop().m_angularVelocity = §§pop() + §§pop();
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr205);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr369:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.§ #`§);
                                                                                                                        break loop8;
                                                                                                                     }
                                                                                                                     addr369:
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.§ #`§);
                                                                                                                  break loop6;
                                                                                                               }
                                                                                                               addr340:
                                                                                                               addr329:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.§1!O§);
                                                                                                            }
                                                                                                            §§goto(addr141);
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                         addr319:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_.§]"`§);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            §§push(param2.x);
                                                                                                         }
                                                                                                         addr352:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_.§3#>§);
                                                                                                            addr354:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_.§#r§);
                                                                                                               addr356:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr357:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     addr358:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        addr359:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr360:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              continue loop5;
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
                                                                                                      §§goto(addr352);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr358);
                                                                                             }
                                                                                             §§goto(addr357);
                                                                                          }
                                                                                          §§goto(addr356);
                                                                                       }
                                                                                       §§goto(addr354);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr315);
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           §§goto(addr352);
                                                                        }
                                                                        §§goto(addr359);
                                                                     }
                                                                     §§goto(addr315);
                                                                  }
                                                                  §§goto(addr360);
                                                               }
                                                               §§goto(addr315);
                                                            }
                                                            §§goto(addr319);
                                                         }
                                                         break;
                                                         §§goto(addr209);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr343);
                                                      }
                                                   }
                                                   §§goto(addr166);
                                                }
                                                while(true)
                                                {
                                                   continue loop2;
                                                }
                                                addr167:
                                                addr174:
                                             }
                                             §§goto(addr319);
                                          }
                                          §§goto(addr340);
                                       }
                                       §§goto(addr213);
                                    }
                                    §§goto(addr329);
                                 }
                              }
                           }
                           continue loop0;
                           addr93:
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr121);
                  }
               }
               §§goto(addr174);
            }
            else
            {
               §§push(_loc6_.m_sweep);
               if(!_loc18_)
               {
                  §§pop().c0.SetV(_loc6_.m_sweep.c);
                  if(_loc19_)
                  {
                     addr365:
                     _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                     §§goto(addr369);
                  }
                  §§goto(addr93);
               }
               §§goto(addr365);
            }
         }
         if(!_loc18_)
         {
            §§push(this.§"!k§);
            if(_loc19_ || param2)
            {
               §§pop().§8#5§(param1,this.§+"C§,this.§1N§,this.§+!z§);
               addr393:
               §§push(this.§"!k§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(_loc19_ || param1)
            {
               §§push(0);
               if(_loc19_)
               {
                  _loc4_ = §§pop();
                  if(_loc19_)
                  {
                     loop26:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc19_ || param3)
                        {
                           §§push(this.§5!I§);
                           if(!_loc18_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§8!s§[_loc4_]).InitVelocityConstraints(param1);
                                 if(_loc19_ || this)
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(!_loc18_)
                              {
                                 §§push(0);
                                 if(_loc19_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc19_)
                                    {
                                       loop27:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc19_)
                                          {
                                             §§push(param1.§,H§);
                                             if(!(_loc18_ && param1))
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!(_loc18_ && param3))
                                                   {
                                                      §§push(0);
                                                      if(_loc19_)
                                                      {
                                                         break;
                                                      }
                                                      break loop26;
                                                   }
                                                   loop141:
                                                   while(true)
                                                   {
                                                      §§push(Number(Number.MAX_VALUE));
                                                      loop90:
                                                      while(true)
                                                      {
                                                         _loc15_ = §§pop();
                                                         if(!_loc18_)
                                                         {
                                                            if(_loc19_ || param1)
                                                            {
                                                               §§push(b2Settings.b2_linearSleepTolerance);
                                                               if(_loc19_)
                                                               {
                                                                  §§push(b2Settings.b2_linearSleepTolerance);
                                                                  loop91:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     loop92:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc19_ || param2)
                                                                        {
                                                                           _loc16_ = §§pop();
                                                                           if(!(_loc18_ && param2))
                                                                           {
                                                                              loop143:
                                                                              while(true)
                                                                              {
                                                                                 loop144:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(b2Settings.b2_angularSleepTolerance);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       §§push(b2Settings.b2_angularSleepTolerance);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             continue loop91;
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc19_ || param1)
                                                                                          {
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   break loop92;
                                                                                                }
                                                                                                addr1385:
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   _loc17_ = §§pop();
                                                                                                   if(_loc19_ || this)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(_loc19_ || this)
                                                                                                      {
                                                                                                         loop149:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            if(_loc19_ || param2)
                                                                                                            {
                                                                                                               addr1352:
                                                                                                               if(_loc19_ || param2)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     continue loop144;
                                                                                                                  }
                                                                                                                  loop150:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        addr1741:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§9#,§);
                                                                                                                           if(_loc19_ || param3)
                                                                                                                           {
                                                                                                                              addr1750:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       break loop90;
                                                                                                                                    }
                                                                                                                                    addr1770:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       break loop26;
                                                                                                                                    }
                                                                                                                                    addr1794:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push((_loc6_ = this.§%6§[_loc4_]).§8! §());
                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(b2Body.b2_staticBody);
                                                                                                                                       if(_loc19_ || param2)
                                                                                                                                       {
                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc18_ && param3))
                                                                                                                                             {
                                                                                                                                                loop94:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc4_++;
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc19_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  loop95:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(b2Math.§'#Z§(_loc15_,_loc6_.§9-§));
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc19_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc19_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr1602:
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              if(!(_loc18_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1735:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    loop110:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                                                                       addr1737:
                                                                                                                                                                                       loop98:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1723:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_.§6b§);
                                                                                                                                                                                             addr1725:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(b2Body.§&J§);
                                                                                                                                                                                                addr1727:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() & §§pop());
                                                                                                                                                                                                   addr1728:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                      addr1729:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                                                                         loop103:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            addr1731:
                                                                                                                                                                                                            loop101:
                                                                                                                                                                                                            while(!§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop104:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  addr1733:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                     addr1692:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop110;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1699:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                                                                           break loop101;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop104;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop100:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(_loc19_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc19_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop103;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1732);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        addr1721:
                                                                                                                                                                                                                        loop115:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(b2Math.§+#>§(_loc6_.§ #`§,_loc6_.§ #`§));
                                                                                                                                                                                                                           addr1649:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                                                                 if(!(_loc18_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                    if(!(_loc18_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop100;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                                                                             §§push(_loc6_.§9-§);
                                                                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + param1.§1!O§);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop().§9-§ = §§pop();
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc19_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop95;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1671:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc19_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc6_.§9-§ = 0;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1733);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1700);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc19_ || param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop98;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      addr1638:
                                                                                                                                                                                                                                                      while(_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1699);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1641:
                                                                                                                                                                                                                                                      _loc15_ = §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop94;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1625:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1671);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1711);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1733);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1700);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1692);
                                                                                                                                                                                                                              continue loop115;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1711:
                                                                                                                                                                                                                        addr1721:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1669);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1731);
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
                                                                                                                                                                              §§goto(addr1637);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1649);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1638);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1602);
                                                                                                                                                                  }
                                                                                                                                                                  _loc15_ = §§pop();
                                                                                                                                                                  addr1612:
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               continue loop150;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1721);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1641);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1625);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1612);
                                                                                                                                                }
                                                                                                                                                continue loop150;
                                                                                                                                             }
                                                                                                                                             §§goto(addr1721);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.§6b§);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                addr1533:
                                                                                                                                                §§push(b2Body.§&J§);
                                                                                                                                                if(_loc19_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr1542:
                                                                                                                                                   §§push(§§pop() & §§pop());
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() == §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc19_ || param2)
                                                                                                                                                            {
                                                                                                                                                               _loc6_.§9-§ = 0;
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1735);
                                                                                                                                                                  §§push(0);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1641);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1737);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1723);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1729);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1728);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1727);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1725);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1542);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1533);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1750:
                                                                                                                           }
                                                                                                                           addr1797:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 (_loc6_ = this.§%6§[_loc4_]).SetAwake(false);
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    _loc4_++;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1794);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1741:
                                                                                                                     }
                                                                                                                     break loop26;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop87:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§6#N§(_loc8_.§[#@§);
                                                                                                                     addr1480:
                                                                                                                     loop89:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param3);
                                                                                                                        if(_loc19_ || param3)
                                                                                                                        {
                                                                                                                           addr1430:
                                                                                                                           if(_loc18_ && param2)
                                                                                                                           {
                                                                                                                              loop83:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 addr1483:
                                                                                                                                 loop85:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       _loc4_++;
                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                       {
                                                                                                                                          addr1493:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr1462:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                if(_loc19_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§5"A§);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                                                            if(_loc18_ && param2)
                                                                                                                                                            {
                                                                                                                                                               continue loop85;
                                                                                                                                                            }
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            if(_loc19_ || param3)
                                                                                                                                                            {
                                                                                                                                                               _loc12_ = §§pop();
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  loop82:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(true);
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc13_ = §§pop();
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              if(_loc18_ && param2)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop149;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop82;
                                                                                                                                                                                       }
                                                                                                                                                                                       loop125:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                          if(_loc19_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§5!I§);
                                                                                                                                                                                             if(_loc19_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1798);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push((_loc7_ = this.§8!s§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                                                                                                if(!(_loc18_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc14_ = §§pop();
                                                                                                                                                                                                      if(_loc19_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                         loop133:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop130:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        addr1290:
                                                                                                                                                                                                                        loop126:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop127:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc14_);
                                                                                                                                                                                                                              if(_loc19_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                 if(!(_loc18_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc19_ || this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop133;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                                                                                                                    do
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc5_++;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(_loc18_);
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(false)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop127;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop125;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop126;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop130;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop130;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1289:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1272);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1287:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1289);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1284:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1290);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1287);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1284);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1750);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop26;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1169:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                 if(_loc18_ && param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop83;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop82;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop85;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1322:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc19_ || param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop141;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop89;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1798);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1437:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1178:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1770);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                        continue loop83;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop143;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr1484:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr1475:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop87;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1484:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1322);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1475);
                                                                                                                                                      }
                                                                                                                                                      addr1474:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1797);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             addr1767:
                                                                                                                                             _loc4_ = §§pop();
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1770);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1798);
                                                                                                                                          }
                                                                                                                                          addr1493:
                                                                                                                                       }
                                                                                                                                       §§goto(addr1798);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1484);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1437);
                                                                                                                        }
                                                                                                                        §§goto(addr1483);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1798);
                                                                                                            }
                                                                                                            break loop90;
                                                                                                         }
                                                                                                         addr1344:
                                                                                                      }
                                                                                                      break loop26;
                                                                                                   }
                                                                                                   break loop90;
                                                                                                }
                                                                                                continue loop90;
                                                                                             }
                                                                                             continue loop92;
                                                                                          }
                                                                                          §§goto(addr1385);
                                                                                       }
                                                                                       §§goto(addr1756);
                                                                                    }
                                                                                    §§goto(addr1385);
                                                                                 }
                                                                              }
                                                                              addr1420:
                                                                           }
                                                                           §§goto(addr1770);
                                                                        }
                                                                        break;
                                                                     }
                                                                  }
                                                               }
                                                               addr1754:
                                                               addr1756:
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(_loc19_ || param1)
                                                                  {
                                                                     addr1764:
                                                                     §§push(0);
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§goto(addr1767);
                                                                     }
                                                                     break loop26;
                                                                  }
                                                                  §§goto(addr1770);
                                                               }
                                                               addr1798:
                                                               return;
                                                               §§push(b2Settings.b2_timeToSleep);
                                                            }
                                                            §§goto(addr1484);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr1754);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(!(_loc18_ && param1))
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(!(_loc18_ && param3))
                                                      {
                                                         loop28:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc19_ || param2)
                                                            {
                                                               §§push(this.§5!I§);
                                                               if(!_loc18_)
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     (_loc7_ = this.§8!s§[_loc5_]).SolveVelocityConstraints(param1);
                                                                     if(!_loc18_)
                                                                     {
                                                                        _loc5_++;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(!(_loc18_ && param1))
                                                                  {
                                                                     _loc8_.SolveVelocityConstraints();
                                                                     if(_loc19_)
                                                                     {
                                                                        continue loop27;
                                                                     }
                                                                     addr548:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(this.§5!I§);
                                                                           if(!(_loc18_ && param2))
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 (_loc7_ = this.§8!s§[_loc4_]).§4"J§();
                                                                                 if(_loc19_ || this)
                                                                                 {
                                                                                    _loc4_++;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 _loc8_.§4"J§();
                                                                                 if(_loc19_ || param3)
                                                                                 {
                                                                                    addr595:
                                                                                    §§push(0);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       break loop28;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr1764);
                                                                              }
                                                                              addr1150:
                                                                              §§push(0);
                                                                              if(_loc19_)
                                                                              {
                                                                                 addr1153:
                                                                                 _loc4_ = §§pop();
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§goto(addr1462);
                                                                                 }
                                                                                 §§goto(addr1480);
                                                                              }
                                                                              §§goto(addr1741);
                                                                           }
                                                                           loop29:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§goto(addr1150);
                                                                                 }
                                                                                 §§goto(addr1484);
                                                                              }
                                                                              else
                                                                              {
                                                                                 if((_loc6_ = this.§%6§[_loc4_]).§8! §() == b2Body.b2_staticBody)
                                                                                 {
                                                                                    if(_loc19_ || param3)
                                                                                    {
                                                                                       loop78:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_++;
                                                                                          if(!(_loc18_ && this))
                                                                                          {
                                                                                             addr662:
                                                                                             if(_loc19_ || this)
                                                                                             {
                                                                                                if(_loc19_ || param2)
                                                                                                {
                                                                                                   if(!(_loc18_ && param2))
                                                                                                   {
                                                                                                      if(_loc19_ || param1)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            loop44:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc6_.§`"a§();
                                                                                                               addr695:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc19_ || param3)
                                                                                                                  {
                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc19_ || param2)
                                                                                                                        {
                                                                                                                           if(_loc19_ || param1)
                                                                                                                           {
                                                                                                                              continue loop78;
                                                                                                                           }
                                                                                                                           loop48:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.§ #`§);
                                                                                                                              loop49:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().Normalize();
                                                                                                                                 addr1125:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.§ #`§);
                                                                                                                                    loop51:
                                                                                                                                    for(; !_loc18_; while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.§ #`§);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(_loc6_.§ #`§);
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             if(_loc19_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§4"r§);
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         addr1065:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            addr1068:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                               loop59:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  loop60:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§1!O§);
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                           if(!(_loc18_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr922:
                                                                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    if(_loc19_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc11_ = §§pop();
                                                                                                                                                                                                if(_loc19_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc19_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr968:
                                                                                                                                                                                                         if(_loc19_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                            if(_loc19_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr984:
                                                                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop61:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                     addr987:
                                                                                                                                                                                                                     while(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                        loop69:
                                                                                                                                                                                                                        while(!(_loc18_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop59;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr902:
                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                           §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * param1.§4"r§);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr871:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                 loop63:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                                                                                    addr879:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                       addr857:
                                                                                                                                                                                                                                       while(_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().a);
                                                                                                                                                                                                                                             addr862:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().a0 = §§pop();
                                                                                                                                                                                                                                                addr863:
                                                                                                                                                                                                                                                loop68:
                                                                                                                                                                                                                                                while(_loc19_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                      addr831:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().c);
                                                                                                                                                                                                                                                         addr832:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                                            addr834:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                                                                                                                               addr835:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                                                                  addr836:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(param1.§1!O§);
                                                                                                                                                                                                                                                                     if(_loc19_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc6_.§ #`§);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                                                                                                                           addr848:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr847:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr849:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        addr850:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                                                                           break loop44;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop68;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1134:
                                                                                                                                                                                                                                                §§push(_loc9_);
                                                                                                                                                                                                                                                §§push(_loc9_);
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1094:
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!(_loc18_ && param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1102:
                                                                                                                                                                                                                                                      §§push(_loc10_ * _loc10_);
                                                                                                                                                                                                                                                      if(_loc19_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop48;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop60;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1121:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc6_.§ #`§);
                                                                                                                                                                                                                                                      addr1130:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                                                                         break loop69;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1128:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break loop61;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop63;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           break loop60;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1112:
                                                                                                                                                                                                                  if(_loc18_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc10_ = §§pop();
                                                                                                                                                                                                                        §§goto(addr1134);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1133:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1121);
                                                                                                                                                                                                                     §§goto(addr1112);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr985:
                                                                                                                                                                                                                  addr1119:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr871);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr990);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1134);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr987);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1102);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr984);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1102);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr990);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr987);
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr968);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr990);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1094);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr922);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1133);
                                                                                                                                                                     §§goto(addr1131);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1080);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1085);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1084);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1082);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1065);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1086);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1068);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr1079);
                                                                                                                                       }
                                                                                                                                    })
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.§ #`§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          addr1080:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(b2Settings.b2_maxTranslation);
                                                                                                                                             addr1082:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param1.§4"r§);
                                                                                                                                                addr1084:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   addr1085:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr1086:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         continue loop51;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop49;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr985);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  loop42:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.m_sweep);
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.m_sweep);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().a);
                                                                                                                              if(_loc19_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(param1.§1!O§);
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                              }
                                                                                                                              if(_loc19_ || param3)
                                                                                                                              {
                                                                                                                                 §§pop().a = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc18_ && param2))
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop44;
                                                                                                                                          }
                                                                                                                                          addr768:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr998);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                    §§goto(addr662);
                                                                                                                                 }
                                                                                                                                 §§goto(addr879);
                                                                                                                                 addr759:
                                                                                                                              }
                                                                                                                              §§goto(addr862);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr831);
                                                                                                                     }
                                                                                                                     addr772:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc19_ || param2)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 if(!(_loc18_ && param3))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§1!O§);
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.§ #`§);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr811:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc18_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr819:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc19_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         continue loop42;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr850);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr849);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr847);
                                                                                                                                          }
                                                                                                                                          §§goto(addr811);
                                                                                                                                       }
                                                                                                                                       §§goto(addr836);
                                                                                                                                    }
                                                                                                                                    §§goto(addr819);
                                                                                                                                 }
                                                                                                                                 §§goto(addr835);
                                                                                                                              }
                                                                                                                              §§goto(addr834);
                                                                                                                           }
                                                                                                                           §§goto(addr832);
                                                                                                                        }
                                                                                                                        §§goto(addr857);
                                                                                                                        continue loop42;
                                                                                                                     }
                                                                                                                     §§goto(addr848);
                                                                                                                  }
                                                                                                                  §§goto(addr861);
                                                                                                               }
                                                                                                               while(_loc19_ || param3)
                                                                                                               {
                                                                                                                  §§goto(addr871);
                                                                                                               }
                                                                                                               §§goto(addr1087);
                                                                                                            }
                                                                                                            while(!_loc18_)
                                                                                                            {
                                                                                                               §§goto(addr772);
                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                            }
                                                                                                            §§goto(addr863);
                                                                                                            addr851:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  break loop29;
                                                                                                               }
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                            addr1135:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1125);
                                                                                                   }
                                                                                                   §§goto(addr902);
                                                                                                }
                                                                                                §§goto(addr851);
                                                                                             }
                                                                                             §§goto(addr759);
                                                                                          }
                                                                                          §§goto(addr695);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr768);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(param1.§1!O§);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(_loc6_.§ #`§);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc18_ && param3))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc18_ && this))
                                                                                                {
                                                                                                   _loc9_ = §§pop();
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      §§goto(addr1128);
                                                                                                      §§push(param1.§1!O§);
                                                                                                   }
                                                                                                   §§goto(addr870);
                                                                                                }
                                                                                                §§goto(addr1119);
                                                                                             }
                                                                                             §§goto(addr1094);
                                                                                          }
                                                                                          §§goto(addr1102);
                                                                                       }
                                                                                       §§goto(addr1130);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1094);
                                                                              }
                                                                           }
                                                                           §§goto(addr1153);
                                                                           addr1147:
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr1166);
                                                                  }
                                                                  §§goto(addr1798);
                                                               }
                                                               §§goto(addr1147);
                                                            }
                                                            break;
                                                         }
                                                         _loc4_ = §§pop();
                                                         if(!_loc18_)
                                                         {
                                                            §§goto(addr1135);
                                                         }
                                                         §§goto(addr1493);
                                                      }
                                                      §§goto(addr1764);
                                                   }
                                                }
                                                §§goto(addr1741);
                                             }
                                             §§goto(addr1797);
                                          }
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       if(!(_loc18_ && this))
                                       {
                                          §§goto(addr548);
                                       }
                                       §§goto(addr595);
                                    }
                                    §§goto(addr1420);
                                 }
                                 §§goto(addr1138);
                              }
                              §§goto(addr1493);
                           }
                           §§goto(addr1474);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§goto(addr1797);
                        §§goto(addr1770);
                     }
                  }
                  §§goto(addr1150);
               }
               §§goto(addr1344);
            }
            §§goto(addr1178);
         }
         §§goto(addr393);
      }
      
      public function §,!x§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc9_:b2Body = null;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         if(!(_loc13_ && _loc3_))
         {
            §§push(this.§"!k§);
            if(_loc14_ || this)
            {
               §§pop().§8#5§(param1,this.§+"C§,this.§1N§,this.§+!z§);
               addr60:
               §§push(this.§"!k§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(_loc14_ || _loc2_)
            {
               _loc2_ = 0;
            }
            while(true)
            {
               loop1:
               while(true)
               {
                  if(_loc2_ < this.§5!I§)
                  {
                     this.§8!s§[_loc2_].InitVelocityConstraints(param1);
                     while(true)
                     {
                        _loc2_++;
                        if(!_loc14_)
                        {
                           break;
                        }
                        if(!_loc13_)
                        {
                           if(false)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§push(0.75);
                  if(_loc14_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  if(!(_loc13_ && this))
                  {
                     §§push(0);
                     loop3:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop6:
                              while(true)
                              {
                                 §§push(param1.§5"A§);
                                 if(_loc14_)
                                 {
                                    if(!(_loc13_ && param1))
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(_loc14_)
                                          {
                                             if(_loc14_ || _loc2_)
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(!(_loc13_ && _loc3_))
                                                      {
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!(_loc13_ && param1))
                                                            {
                                                               if(!(_loc13_ && _loc2_))
                                                               {
                                                                  if(_loc13_ && _loc2_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  §§push(param1.§,H§);
                                                                  if(_loc14_ || this)
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(!(_loc13_ && this))
                                                                           {
                                                                              if(_loc14_ || _loc2_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    if(!(_loc13_ && _loc3_))
                                                                                    {
                                                                                       addr175:
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             addr981:
                                                                                             §§push(_loc2_);
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             addr181:
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc13_ && _loc2_))
                                                                                                {
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(this.§5!I§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            addr195:
                                                                                                            _loc2_++;
                                                                                                            loop10:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                                  addr453:
                                                                                                                  loop34:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(true);
                                                                                                                     addr443:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        addr444:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                        }
                                                                                                                        continue loop34;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr247:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     addr229:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           break loop10;
                                                                                                                        }
                                                                                                                        if(!(_loc13_ && _loc3_))
                                                                                                                        {
                                                                                                                           _loc3_ = §§pop();
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              this.§6#N§(_loc4_.§[#@§);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr1001:
                                                                                                                              addr997:
                                                                                                                           }
                                                                                                                           continue loop15;
                                                                                                                           return;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr247:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  addr440:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr319:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_);
                                                                                                                        break loop10;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr195);
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                            addr196:
                                                                                                         }
                                                                                                         §§goto(addr1001);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         this.§8!s§[_loc3_].SolveVelocityConstraints(param1);
                                                                                                         loop14:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc13_ && param1))
                                                                                                            {
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               _loc3_++;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  continue loop14;
                                                                                                                  §§goto(addr226);
                                                                                                               }
                                                                                                               addr226:
                                                                                                               while(!_loc13_)
                                                                                                               {
                                                                                                                  §§goto(addr319);
                                                                                                               }
                                                                                                               addr373:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr331:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  loop37:
                                                                                                                  while(!_loc13_)
                                                                                                                  {
                                                                                                                     addr334:
                                                                                                                     if(!(_loc13_ && this))
                                                                                                                     {
                                                                                                                        if(_loc14_ || this)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(!(_loc13_ && param1))
                                                                                                                           {
                                                                                                                              addr356:
                                                                                                                              if(_loc14_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       loop40:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                             addr369:
                                                                                                                                             §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                if(!(_loc13_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      continue loop37;
                                                                                                                                                   }
                                                                                                                                                   if(_loc14_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         addr452:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc6_ = §§pop();
                                                                                                                                                            §§goto(addr453);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr451:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                   continue loop40;
                                                                                                                                                }
                                                                                                                                                §§goto(addr369);
                                                                                                                                             }
                                                                                                                                             §§goto(addr444);
                                                                                                                                             addr370:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                addr405:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc14_ || this)
                                                                                                                                                   {
                                                                                                                                                      _loc3_++;
                                                                                                                                                      §§goto(addr373);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr444);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr404:
                                                                                                                                          }
                                                                                                                                          §§goto(addr444);
                                                                                                                                       }
                                                                                                                                       addr367:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc13_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                             continue loop7;
                                                                                                                                          }
                                                                                                                                          §§goto(addr370);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          _loc2_++;
                                                                                                                                          if(!(_loc13_ && this))
                                                                                                                                          {
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          §§goto(addr997);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          break loop37;
                                                                                                                                       }
                                                                                                                                       addr402:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr403:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr356);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr417:
                                                                                                                                 }
                                                                                                                                 §§goto(addr404);
                                                                                                                              }
                                                                                                                              §§goto(addr403);
                                                                                                                           }
                                                                                                                           §§goto(addr367);
                                                                                                                        }
                                                                                                                        §§goto(addr452);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        addr416:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr417);
                                                                                                                        }
                                                                                                                        §§goto(addr334);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        if(!(_loc13_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              if(_loc13_ && this)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(!(_loc13_ && this))
                                                                                                                              {
                                                                                                                                 §§goto(addr402);
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr443);
                                                                                                                              }
                                                                                                                              §§goto(addr444);
                                                                                                                           }
                                                                                                                           §§goto(addr416);
                                                                                                                        }
                                                                                                                        §§goto(addr403);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr1001);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr433:
                                                                                                                  loop41:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     addr434:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           §§goto(addr415);
                                                                                                                           §§push(_loc7_);
                                                                                                                        }
                                                                                                                        §§goto(addr440);
                                                                                                                        continue loop41;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr331:
                                                                                                            }
                                                                                                            §§goto(addr405);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr444);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr229);
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr203);
                                                                                    }
                                                                                    §§goto(addr1001);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr196);
                                                                           }
                                                                           §§goto(addr175);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc4_.SolveVelocityConstraints();
                                                                           §§goto(addr247);
                                                                        }
                                                                     }
                                                                     §§goto(addr192);
                                                                  }
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if((_loc9_ = this.§%6§[_loc2_]).§8! §() == b2Body.b2_staticBody)
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           addr525:
                                                                           _loc2_++;
                                                                           if(_loc14_)
                                                                           {
                                                                              if(_loc14_)
                                                                              {
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    if(_loc14_ || param1)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          addr541:
                                                                                          _loc9_.§`"a§();
                                                                                          addr544:
                                                                                          if(!(_loc13_ && this))
                                                                                          {
                                                                                             §§goto(addr525);
                                                                                          }
                                                                                          if(_loc14_ || this)
                                                                                          {
                                                                                             addr722:
                                                                                             _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
                                                                                             addr721:
                                                                                             addr719:
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                addr693:
                                                                                                §§push(_loc9_.m_sweep);
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   addr707:
                                                                                                   §§pop().c.x = _loc9_.m_sweep.c.x + param1.§1!O§ * _loc9_.§ #`§.x;
                                                                                                   addr708:
                                                                                                   addr702:
                                                                                                   addr705:
                                                                                                   addr704:
                                                                                                   addr706:
                                                                                                   addr700:
                                                                                                   addr699:
                                                                                                   addr698:
                                                                                                   addr696:
                                                                                                   if(!(_loc13_ && param1))
                                                                                                   {
                                                                                                      addr603:
                                                                                                      §§push(_loc9_.m_sweep);
                                                                                                      if(_loc14_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop().c);
                                                                                                         if(!(_loc13_ && this))
                                                                                                         {
                                                                                                            §§push(_loc9_.m_sweep);
                                                                                                            if(_loc14_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop().c);
                                                                                                               if(_loc14_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(!(_loc13_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        if(!(_loc13_ && this))
                                                                                                                        {
                                                                                                                           §§push(param1.§1!O§);
                                                                                                                           if(!(_loc13_ && this))
                                                                                                                           {
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_.§ #`§);
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       addr671:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          addr674:
                                                                                                                                          §§pop().y = §§pop() + §§pop();
                                                                                                                                          if(_loc14_ || this)
                                                                                                                                          {
                                                                                                                                             if(!(_loc13_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_.m_sweep);
                                                                                                                                                if(!(_loc13_ && this))
                                                                                                                                                {
                                                                                                                                                   if(_loc14_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_.m_sweep);
                                                                                                                                                      if(!(_loc13_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().a);
                                                                                                                                                         if(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1.§1!O§);
                                                                                                                                                            if(_loc14_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * _loc9_.m_angularVelocity);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                         }
                                                                                                                                                         if(_loc14_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().a = §§pop();
                                                                                                                                                            addr592:
                                                                                                                                                            if(_loc14_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr541);
                                                                                                                                                            }
                                                                                                                                                            addr971:
                                                                                                                                                            §§push(_loc9_.§ #`§);
                                                                                                                                                            if(_loc14_)
                                                                                                                                                            {
                                                                                                                                                               addr932:
                                                                                                                                                               addr931:
                                                                                                                                                               addr919:
                                                                                                                                                               addr918:
                                                                                                                                                               §§push(_loc9_.§ #`§.x);
                                                                                                                                                               §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                               if(_loc14_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr930:
                                                                                                                                                                  §§push(§§pop() * param1.§4"r§);
                                                                                                                                                               }
                                                                                                                                                               §§pop().x = §§pop() * §§pop();
                                                                                                                                                               addr933:
                                                                                                                                                               §§push(_loc9_.§ #`§);
                                                                                                                                                               if(_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc9_.§ #`§);
                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc14_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.§4"r§);
                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr906:
                                                                                                                                                                                    §§push(§§pop() * (§§pop() * §§pop()));
                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                       addr910:
                                                                                                                                                                                       §§push(param1.§1!O§);
                                                                                                                                                                                       if(!(_loc13_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc9_.m_angularVelocity);
                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!(_loc13_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr788:
                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         if(!_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc14_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc14_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc12_ = §§pop();
                                                                                                                                                                                                                        if(_loc14_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr821:
                                                                                                                                                                                                                           if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr833:
                                                                                                                                                                                                                                    §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                                                    if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr842:
                                                                                                                                                                                                                                       if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr855:
                                                                                                                                                                                                                                                addr854:
                                                                                                                                                                                                                                                if(_loc9_.m_angularVelocity < 0)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr856:
                                                                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                                                                   §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr864:
                                                                                                                                                                                                                                                         §§push(§§pop() * param1.§4"r§);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                      addr868:
                                                                                                                                                                                                                                                      if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr729:
                                                                                                                                                                                                                                                         _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
                                                                                                                                                                                                                                                         addr726:
                                                                                                                                                                                                                                                         §§goto(addr541);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr933);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr864);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc9_);
                                                                                                                                                                                                                                                §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                                if(!(_loc13_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * param1.§4"r§);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr726);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr910);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr856);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr726);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr953:
                                                                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr957:
                                                                                                                                                                                                                                          if(§§pop() + §§pop() * _loc11_ > b2Settings.b2_maxTranslationSquared)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr961:
                                                                                                                                                                                                                                             if(!(_loc13_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr970:
                                                                                                                                                                                                                                                _loc9_.§ #`§.Normalize();
                                                                                                                                                                                                                                                §§goto(addr971);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr936:
                                                                                                                                                                                                                                             §§push(_loc10_);
                                                                                                                                                                                                                                             if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc10_);
                                                                                                                                                                                                                                                if(_loc14_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr952:
                                                                                                                                                                                                                                                   §§goto(addr953);
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr957);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr979:
                                                                                                                                                                                                                                             _loc11_ = §§pop();
                                                                                                                                                                                                                                             addr980:
                                                                                                                                                                                                                                             §§goto(addr980);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr910);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr980);
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr855);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr979);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr854);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr957);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr842);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr957);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr821);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr974:
                                                                                                                                                                                                               §§goto(addr842);
                                                                                                                                                                                                               §§push(_loc9_.§ #`§.y);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr957);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr855);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr936);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr855);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr957);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr821);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr952);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr788);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr932);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr930);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr931);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr906);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr919);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr906);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr918);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr971);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr970);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr722);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr721);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr693);
                                                                                                                                                }
                                                                                                                                                §§goto(addr603);
                                                                                                                                                addr689:
                                                                                                                                             }
                                                                                                                                             §§goto(addr856);
                                                                                                                                          }
                                                                                                                                          §§goto(addr708);
                                                                                                                                       }
                                                                                                                                       §§goto(addr702);
                                                                                                                                    }
                                                                                                                                    §§goto(addr705);
                                                                                                                                 }
                                                                                                                                 §§goto(addr704);
                                                                                                                              }
                                                                                                                              §§goto(addr706);
                                                                                                                           }
                                                                                                                           §§goto(addr671);
                                                                                                                        }
                                                                                                                        §§goto(addr700);
                                                                                                                     }
                                                                                                                     §§goto(addr707);
                                                                                                                  }
                                                                                                                  §§goto(addr674);
                                                                                                               }
                                                                                                               §§goto(addr699);
                                                                                                            }
                                                                                                            §§goto(addr698);
                                                                                                         }
                                                                                                         §§goto(addr696);
                                                                                                      }
                                                                                                      §§goto(addr729);
                                                                                                   }
                                                                                                   §§goto(addr722);
                                                                                                }
                                                                                                §§goto(addr719);
                                                                                             }
                                                                                             §§goto(addr961);
                                                                                          }
                                                                                          §§goto(addr855);
                                                                                       }
                                                                                       §§goto(addr981);
                                                                                    }
                                                                                    §§goto(addr868);
                                                                                 }
                                                                                 §§goto(addr674);
                                                                              }
                                                                              §§goto(addr592);
                                                                           }
                                                                           §§goto(addr544);
                                                                        }
                                                                        §§goto(addr689);
                                                                     }
                                                                     §§push(param1.§1!O§);
                                                                     if(_loc14_ || _loc3_)
                                                                     {
                                                                        §§push(_loc9_.§ #`§);
                                                                        if(_loc14_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(!(_loc13_ && param1))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc13_ && param1))
                                                                                 {
                                                                                    _loc10_ = §§pop();
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       §§goto(addr974);
                                                                                       §§push(param1.§1!O§);
                                                                                    }
                                                                                    §§goto(addr592);
                                                                                 }
                                                                                 §§goto(addr833);
                                                                              }
                                                                              §§goto(addr974);
                                                                           }
                                                                           §§goto(addr855);
                                                                        }
                                                                        §§goto(addr974);
                                                                     }
                                                                     §§goto(addr833);
                                                                  }
                                                                  if(_loc13_)
                                                                  {
                                                                  }
                                                                  §§goto(addr1001);
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr994);
                                                         §§push(this.§9#,§);
                                                      }
                                                      §§goto(addr1001);
                                                   }
                                                }
                                             }
                                             §§goto(addr434);
                                          }
                                          §§goto(addr1001);
                                       }
                                       else
                                       {
                                          §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                       }
                                       §§goto(addr451);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             §§goto(addr331);
                                          }
                                          else
                                          {
                                             §§push(Boolean(this.§8!s§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                          }
                                          §§goto(addr433);
                                       }
                                       addr330:
                                    }
                                    §§goto(addr331);
                                 }
                                 §§goto(addr994);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr247);
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §6#N§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(!(_loc7_ && _loc3_))
         {
            if(this.§ !5§ == null)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§1N§)
         {
            _loc3_ = this.§+"C§[_loc2_];
            _loc4_ = param1[_loc2_];
            if(!(_loc7_ && _loc3_))
            {
               §§push(0);
               while(true)
               {
                  _loc5_ = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(!(_loc6_ || _loc2_))
                     {
                        break;
                     }
                     if(§§pop() >= _loc4_.§6!c§)
                     {
                        if(_loc6_ || this)
                        {
                           if(!(_loc7_ && _loc2_))
                           {
                              this.§ !5§.PostSolve(_loc3_,§`!!§);
                              do
                              {
                                 _loc2_++;
                              }
                              while(_loc7_ && param1);
                              
                              if(!_loc7_)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 addr166:
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                              else
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       while(true)
                                       {
                                          _loc5_++;
                                          continue loop7;
                                       }
                                       addr140:
                                    }
                                    continue loop3;
                                 }
                              }
                              addr122:
                           }
                           else
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(§`!!§);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 addr145:
                                 while(true)
                                 {
                                    §§pop().§?"^§[_loc5_] = _loc4_.§9"`§[_loc5_].normalImpulse;
                                    continue loop4;
                                 }
                              }
                              §§pop().§[l§[_loc5_] = _loc4_.§9"`§[_loc5_].tangentImpulse;
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr122);
                     }
                     else
                     {
                        §§push(§`!!§);
                     }
                     §§goto(addr145);
                  }
               }
            }
            §§goto(addr166);
         }
      }
      
      public function §%j§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            param1.§[5§ = this.§9#,§;
         }
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§9#,§ + 1;
         _loc3_.§9#,§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§9#,§;
         this.§%6§[_loc2_] = param1;
      }
      
      public function §`"Q§(param1:b2Contact) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§1N§ + 1;
         _loc3_.§1N§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§1N§;
         this.§+"C§[_loc2_] = param1;
      }
      
      public function §^#1§(param1:b2Joint) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§5!I§ + 1;
         _loc3_.§5!I§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§5!I§;
         this.§8!s§[_loc2_] = param1;
      }
   }
}
