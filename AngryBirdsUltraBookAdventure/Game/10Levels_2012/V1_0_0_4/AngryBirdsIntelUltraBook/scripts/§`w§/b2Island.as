package §`w§
{
   import §7!u§.*;
   import §72§.*;
   import §9!"§.*;
   import §>H§.*;
   import §break§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §&4§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&4§ = new b2ContactImpulse();
         }
      }
      
      private var §`o§;
      
      private var §,#§:b2ContactListener;
      
      private var §;!V§:b2ContactSolver;
      
      b2internal var §-!l§:Vector.<b2Body>;
      
      b2internal var §+G§:Vector.<b2Contact>;
      
      b2internal var §-!0§:Vector.<b2Joint>;
      
      b2internal var §[r§:int;
      
      b2internal var §&!o§:int;
      
      b2internal var §0V§:int;
      
      private var §"!,§:int;
      
      b2internal var §?!m§:int;
      
      b2internal var § !r§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.§-!l§ = new Vector.<b2Body>();
               while(true)
               {
                  this.§+G§ = new Vector.<b2Contact>();
                  while(_loc1_)
                  {
                     if(_loc1_)
                     {
                        this.§-!0§ = new Vector.<b2Joint>();
                        if(!_loc2_)
                        {
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §%%§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!(_loc9_ && param3))
         {
            this.§"!,§ = param1;
            while(true)
            {
               this.§?!m§ = param2;
               while(true)
               {
                  this.§ !r§ = param3;
                  while(_loc8_)
                  {
                     this.§[r§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§0V§ = 0;
                        loop4:
                        while(true)
                        {
                           this.§&!o§ = 0;
                           while(true)
                           {
                              this.§`o§ = param4;
                              while(_loc8_)
                              {
                                 addr193:
                                 if(_loc9_ && param2)
                                 {
                                    continue;
                                 }
                                 _loc7_ = int(this.§-!l§.length);
                                 addr200:
                                 if(!(_loc8_ || param1))
                                 {
                                    while(true)
                                    {
                                       if(_loc9_)
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr193);
                                       §§goto(addr200);
                                    }
                                    continue;
                                    addr191:
                                 }
                                 if(!_loc8_)
                                 {
                                    continue loop3;
                                 }
                                 loop10:
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    loop11:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop12:
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(int(this.§+G§.length));
                                                loop14:
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                   loop15:
                                                   while(_loc8_)
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!(_loc9_ && param3))
                                                         {
                                                            if(!(_loc9_ && param3))
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(param2);
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           this.§+G§[_loc7_] = null;
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              break loop17;
                                                                           }
                                                                           §§push(int(this.§-!0§.length));
                                                                           addr72:
                                                                           if(_loc8_ || param2)
                                                                           {
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!(_loc9_ && param2))
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 addr129:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    addr130:
                                                                                    while(!_loc9_)
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc7_++;
                                                                  continue;
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop14;
                                                         }
                                                         §§goto(addr129);
                                                      }
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             this.§-!l§[_loc7_] = null;
                                          }
                                          _loc7_++;
                                          continue loop10;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc8_ || param2))
               {
                  continue;
               }
               this.§;!V§ = param6;
               §§goto(addr191);
            }
         }
         while(true)
         {
            this.§,#§ = param5;
            §§goto(addr205);
         }
         §§goto(addr186);
      }
      
      public function §49§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§[r§ = 0;
            while(true)
            {
               this.§0V§ = 0;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§&!o§ = 0;
            if(!_loc1_)
            {
               if(_loc2_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §3!=§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         if(!(_loc18_ && param3))
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§[r§)
         {
            if((_loc6_ = this.§-!l§[_loc4_]).§2!r§() != b2Body.b2_dynamicBody)
            {
               if(!_loc18_)
               {
                  loop19:
                  while(true)
                  {
                     _loc4_++;
                     if(_loc19_ || param1)
                     {
                        if(true)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           §§push(_loc6_);
                           §§push(_loc6_.m_angularVelocity);
                           if(_loc19_ || param2)
                           {
                              §§push(b2Math);
                              §§push(1);
                              §§push(param1.§^Z§);
                              if(_loc19_ || param1)
                              {
                                 §§push(§§pop() * _loc6_.§[!j§);
                              }
                              §§push(§§pop() * §§pop().§]#§(§§pop() - §§pop(),0,1));
                           }
                           §§pop().m_angularVelocity = §§pop();
                           addr238:
                        }
                     }
                     while(true)
                     {
                        if(!_loc18_)
                        {
                           if(_loc19_)
                           {
                              break;
                           }
                           addr272:
                           loop5:
                           while(true)
                           {
                              §§push(_loc6_.§^O§);
                              if(_loc19_)
                              {
                                 §§push(b2Math);
                                 §§push(1);
                                 §§push(param1.§^Z§);
                                 if(!_loc18_)
                                 {
                                    §§push(§§pop() * _loc6_.§[s§);
                                 }
                                 §§push(§§pop().§]#§(§§pop() - §§pop(),0,1));
                                 if(_loc19_ || param3)
                                 {
                                    if(_loc18_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§pop().§^$§(§§pop());
                                       addr231:
                                       while(_loc18_ && param2)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             §§push(_loc6_.m_angularVelocity);
                                             if(!(_loc18_ && param1))
                                             {
                                                §§push(param1.§^Z§);
                                                if(_loc19_)
                                                {
                                                   §§push(_loc6_.§;5§);
                                                   if(!_loc18_)
                                                   {
                                                      addr265:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc18_)
                                                      {
                                                         addr263:
                                                         §§push(§§pop() * _loc6_.§3!T§);
                                                      }
                                                      §§pop().m_angularVelocity = §§pop() + §§pop();
                                                      continue loop5;
                                                   }
                                                }
                                                §§goto(addr263);
                                             }
                                             §§goto(addr265);
                                          }
                                       }
                                       §§goto(addr238);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().y = §§pop();
                                    §§goto(addr292);
                                 }
                                 addr291:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(_loc6_.§^O§);
                                    addr271:
                                    while(true)
                                    {
                                       §§push(§§pop().y);
                                       break loop5;
                                    }
                                 }
                                 addr269:
                              }
                           }
                           while(true)
                           {
                              §§push(param1.§^Z§);
                              if(_loc19_)
                              {
                                 while(true)
                                 {
                                    §§push(param2.y);
                                    if(!_loc18_)
                                    {
                                       addr280:
                                       while(true)
                                       {
                                          §§push(_loc6_.§7n§);
                                          if(!_loc18_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc6_.§84§);
                                                addr286:
                                                while(true)
                                                {
                                                   §§push(§§pop().y);
                                                   addr287:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                             }
                                             addr284:
                                          }
                                          addr288:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                          }
                                       }
                                       addr280:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                    }
                                 }
                                 addr276:
                              }
                              while(true)
                              {
                                 §§goto(addr291);
                              }
                           }
                        }
                        §§goto(addr231);
                     }
                     addr202:
                     while(true)
                     {
                        continue loop19;
                     }
                     continue loop0;
                  }
               }
               else
               {
                  §§push(_loc6_.§^O§);
                  addr155:
               }
            }
            else
            {
               §§push(_loc6_.§^O§);
               if(_loc19_ || param1)
               {
                  §§push(_loc6_.§^O§);
                  if(_loc19_)
                  {
                     §§push(§§pop().x);
                     if(_loc19_)
                     {
                        §§push(param1.§^Z§);
                        if(!(_loc18_ && param3))
                        {
                           §§push(param2.x);
                           if(_loc19_ || param3)
                           {
                              §§push(_loc6_.§7n§);
                              if(!(_loc18_ && this))
                              {
                                 §§push(_loc6_.§84§);
                                 if(!(_loc18_ && this))
                                 {
                                    §§push(§§pop().x);
                                    if(!(_loc18_ && param3))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc18_ && this))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc19_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc18_)
                                             {
                                                addr144:
                                                §§push(§§pop() + §§pop());
                                                if(_loc19_)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(_loc19_ || this)
                                                   {
                                                      §§goto(addr155);
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr272);
                                             }
                                             §§goto(addr276);
                                          }
                                          §§goto(addr280);
                                       }
                                       §§goto(addr284);
                                    }
                                    §§goto(addr287);
                                 }
                                 §§goto(addr286);
                              }
                              §§goto(addr288);
                           }
                           §§goto(addr280);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr230);
                  }
                  §§goto(addr271);
               }
            }
            §§goto(addr269);
         }
         if(!(_loc18_ && this))
         {
            §§push(this.§;!V§);
            if(!_loc18_)
            {
               §§pop().§%%§(param1,this.§+G§,this.§0V§,this.§`o§);
               addr316:
               §§push(this.§;!V§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(_loc19_ || param1)
            {
               §§push(0);
               if(!_loc18_)
               {
                  _loc4_ = §§pop();
                  if(!_loc18_)
                  {
                     loop21:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc19_)
                        {
                           §§push(this.§&!o§);
                           if(_loc19_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§-!0§[_loc4_]).InitVelocityConstraints(param1);
                                 if(!(_loc18_ && this))
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(!(_loc18_ && param1))
                              {
                                 §§push(0);
                                 if(!(_loc18_ && this))
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc18_ && param3))
                                    {
                                       loop22:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc19_ || param1)
                                          {
                                             §§push(param1.§>!,§);
                                             if(!_loc18_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!_loc18_)
                                                   {
                                                      §§push(0);
                                                      if(_loc19_)
                                                      {
                                                         addr458:
                                                         _loc4_ = §§pop();
                                                         if(!(_loc18_ && this))
                                                         {
                                                            addr1398:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc19_ || this)
                                                               {
                                                                  break loop21;
                                                               }
                                                               break;
                                                            }
                                                            loop149:
                                                            while(true)
                                                            {
                                                               §§push(param1.§44§);
                                                               if(!(_loc18_ && param1))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                        if(_loc19_)
                                                                        {
                                                                           addr1269:
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!_loc18_)
                                                                           {
                                                                              _loc12_ = §§pop();
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 addr1156:
                                                                                 while(true)
                                                                                 {
                                                                                    addr1119:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(true);
                                                                                       if(!(_loc18_ && param3))
                                                                                       {
                                                                                          addr1128:
                                                                                          _loc13_ = §§pop();
                                                                                          if(_loc19_ || param2)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          loop40:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§<%§(_loc8_.§`!§);
                                                                                             loop41:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param3);
                                                                                                if(_loc19_ || param3)
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      loop42:
                                                                                                      while(§§pop())
                                                                                                      {
                                                                                                         loop43:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc19_ || this)
                                                                                                            {
                                                                                                               addr1389:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(Number.MAX_VALUE));
                                                                                                                  loop153:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc15_ = §§pop();
                                                                                                                     loop154:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                        loop155:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§push(b2Settings.b2_timeToSleep);
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           addr1687:
                                                                                                                           continue loop153;
                                                                                                                           addr1325:
                                                                                                                           if(!(_loc19_ || param3))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              addr1335:
                                                                                                                              _loc17_ = §§pop();
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    continue loop154;
                                                                                                                                 }
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    continue loop43;
                                                                                                                                 }
                                                                                                                                 addr1342:
                                                                                                                                 §§push(0);
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    loop104:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             continue loop41;
                                                                                                                                          }
                                                                                                                                          if(_loc19_ || param1)
                                                                                                                                          {
                                                                                                                                             addr1294:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   loop157:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                      if(_loc19_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc19_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr1318:
                                                                                                                                                               if(_loc19_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1325);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc16_ = §§pop();
                                                                                                                                                                     if(_loc18_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        break loop42;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop157;
                                                                                                                                                                     §§goto(addr1318);
                                                                                                                                                                  }
                                                                                                                                                                  addr1361:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1687);
                                                                                                                                                         }
                                                                                                                                                         break loop155;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1335);
                                                                                                                                                   }
                                                                                                                                                   addr1686:
                                                                                                                                                   §§goto(addr1687);
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   loop160:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr1668:
                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                      if(_loc19_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr1669:
                                                                                                                                                         loop106:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§[r§);
                                                                                                                                                            if(_loc19_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr1678:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc18_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1686);
                                                                                                                                                                     }
                                                                                                                                                                     addr1692:
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(!(_loc18_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        addr1710:
                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           break loop104;
                                                                                                                                                                        }
                                                                                                                                                                        break loop42;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§[r§);
                                                                                                                                                                        break loop106;
                                                                                                                                                                     }
                                                                                                                                                                     addr1728:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push((_loc6_ = this.§-!l§[_loc4_]).§2!r§());
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(b2Body.b2_staticBody);
                                                                                                                                                                        if(!(_loc18_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() == §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 loop134:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc4_++;
                                                                                                                                                                                    if(_loc19_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop160;
                                                                                                                                                                                       }
                                                                                                                                                                                       loop112:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(b2Math.§>M§(_loc15_,_loc6_.§@!#§));
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc18_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1507:
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                if(_loc19_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc19_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc15_ = §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc18_ && param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop112;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc19_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc18_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1656:
                                                                                                                                                                                                                  loop130:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                     addr1622:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1626:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                                                                              §§goto(addr1626);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1627:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop118:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                                                                           if(_loc19_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop119:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break loop118;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    loop115:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                                                                          §§push(_loc6_.§@!#§);
                                                                                                                                                                                                                                          if(_loc19_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + param1.§^Z§);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().§@!#§ = §§pop();
                                                                                                                                                                                                                                          continue loop112;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc6_.§@!#§ = 0;
                                                                                                                                                                                                                                          addr1618:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   break loop115;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break loop119;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break loop115;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    loop113:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                                                                                                                       addr1574:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break loop113;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1642:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(b2Math.§'l§(_loc6_.§^O§,_loc6_.§^O§));
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                                                                         if(_loc18_ && param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop118;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                         if(_loc18_ && this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break loop118;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc18_ && param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1613);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                  addr1654:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop119;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1653:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                            continue loop130;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            addr1659:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                                                                                                                               addr1660:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1646:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc6_.§;!R§);
                                                                                                                                                                                                                                                                     addr1648:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(b2Body.§?!O§);
                                                                                                                                                                                                                                                                        addr1650:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() & §§pop());
                                                                                                                                                                                                                                                                           addr1651:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                                                                              addr1652:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1658:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1653);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1659);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1584:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1660);
                                                                                                                                                                                                                                             break loop118;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1613:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1480:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop134;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop160;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1573:
                                                                                                                                                                                                                                    addr1576:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1654);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1627);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           §§goto(addr1642);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1615);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1618);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1574);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1480);
                                                                                                                                                                                                      addr1522:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1622);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1584);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1573);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1507);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1522);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1668);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 addr1479:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1658);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_.§;!R§);
                                                                                                                                                                              if(_loc19_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(b2Body.§?!O§);
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() & §§pop());
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       if(_loc19_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc6_.§@!#§ = 0;
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1479);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1576);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1656);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1646);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1652);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1651);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1648);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1650);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1648);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1710);
                                                                                                                                                               }
                                                                                                                                                               addr1678:
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                            {
                                                                                                                                                               break loop42;
                                                                                                                                                            }
                                                                                                                                                            addr1727:
                                                                                                                                                            (_loc6_ = this.§-!l§[_loc4_]).SetAwake(false);
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               _loc4_++;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1728);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1669:
                                                                                                                                                         addr1730:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1710);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1686);
                                                                                                                                             }
                                                                                                                                             addr1294:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr1421:
                                                                                                                                             loop37:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr1395:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      break loop37;
                                                                                                                                                   }
                                                                                                                                                   continue loop149;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1669);
                                                                                                                                             addr1421:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1669);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                       §§goto(addr1342);
                                                                                                                                    }
                                                                                                                                    addr1713:
                                                                                                                                    §§goto(addr1727);
                                                                                                                                    addr1282:
                                                                                                                                 }
                                                                                                                                 §§goto(addr1669);
                                                                                                                              }
                                                                                                                              §§goto(addr1686);
                                                                                                                           }
                                                                                                                           §§goto(addr1687);
                                                                                                                        }
                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                        {
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              §§goto(addr1692);
                                                                                                                           }
                                                                                                                           break loop42;
                                                                                                                        }
                                                                                                                        break loop42;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1389:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     continue loop40;
                                                                                                                  }
                                                                                                                  addr1419:
                                                                                                                  addr1419:
                                                                                                                  addr1419:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop40;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1408:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      return;
                                                                                                      addr1381:
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                addr1418:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§goto(addr1419);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc4_++;
                                                                                                      §§goto(addr1421);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr1411:
                                                                                       }
                                                                                       addr1417:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr1418);
                                                                                       }
                                                                                    }
                                                                                    addr1136:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!(_loc18_ && param3))
                                                                                       {
                                                                                          break loop22;
                                                                                       }
                                                                                       continue loop149;
                                                                                       §§goto(addr1128);
                                                                                    }
                                                                                 }
                                                                                 addr1156:
                                                                              }
                                                                              §§goto(addr1389);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              if(!(_loc18_ && param3))
                                                                              {
                                                                                 §§goto(addr1417);
                                                                                 §§push(_loc13_);
                                                                              }
                                                                              §§goto(addr1421);
                                                                           }
                                                                           addr1269:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc19_ || this)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§goto(addr1269);
                                                                                 }
                                                                                 §§goto(addr1417);
                                                                              }
                                                                              §§goto(addr1418);
                                                                           }
                                                                           §§goto(addr1381);
                                                                        }
                                                                        addr1257:
                                                                     }
                                                                     §§goto(addr1408);
                                                                     continue loop149;
                                                                  }
                                                                  addr1407:
                                                               }
                                                               §§goto(addr1678);
                                                            }
                                                            addr484:
                                                            addr1398:
                                                         }
                                                         §§goto(addr1156);
                                                      }
                                                      §§goto(addr1692);
                                                   }
                                                   addr1093:
                                                   §§push(0);
                                                   if(_loc19_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(!(_loc18_ && param3))
                                                      {
                                                         §§goto(addr1395);
                                                         addr1104:
                                                      }
                                                      §§goto(addr1411);
                                                   }
                                                   §§goto(addr1669);
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(_loc19_ || param1)
                                                   {
                                                      loop158:
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(_loc19_)
                                                         {
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(this.§&!o§);
                                                                     if(_loc19_)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           (_loc7_ = this.§-!0§[_loc5_]).SolveVelocityConstraints(param1);
                                                                           if(!(_loc18_ && this))
                                                                           {
                                                                              _loc5_++;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        if(!(_loc18_ && param3))
                                                                        {
                                                                           _loc8_.SolveVelocityConstraints();
                                                                           if(!_loc18_)
                                                                           {
                                                                              _loc4_++;
                                                                              if(!_loc18_)
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                           }
                                                                           §§goto(addr1419);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr518:
                                                                           §§push(0);
                                                                           if(!_loc18_)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 break loop158;
                                                                              }
                                                                              §§goto(addr1419);
                                                                           }
                                                                        }
                                                                        §§goto(addr1669);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              if(_loc19_ || param1)
                                                                              {
                                                                                 _loc8_.§^y§();
                                                                                 if(!(_loc18_ && this))
                                                                                 {
                                                                                    §§goto(addr518);
                                                                                 }
                                                                                 §§goto(addr1136);
                                                                              }
                                                                              §§goto(addr1692);
                                                                           }
                                                                           else
                                                                           {
                                                                              (_loc7_ = this.§-!0§[_loc4_]).§^y§();
                                                                              if(!(_loc18_ && param3))
                                                                              {
                                                                                 _loc4_++;
                                                                              }
                                                                              §§goto(addr484);
                                                                           }
                                                                        }
                                                                        addr501:
                                                                     }
                                                                     §§goto(addr1398);
                                                                  }
                                                                  break;
                                                               }
                                                               loop147:
                                                               while(true)
                                                               {
                                                                  §§push(this.§&!o§);
                                                                  if(_loc19_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(_loc19_ || this)
                                                                           {
                                                                              §§push(_loc12_);
                                                                              if(!(_loc18_ && param3))
                                                                              {
                                                                                 §§goto(addr1257);
                                                                              }
                                                                              §§goto(addr1269);
                                                                           }
                                                                           §§goto(addr1294);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push((_loc7_ = this.§-!0§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 _loc14_ = §§pop();
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop31:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                   _loc13_ = §§pop();
                                                                                                   loop29:
                                                                                                   while(!_loc18_)
                                                                                                   {
                                                                                                      _loc5_++;
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      while(false)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc14_);
                                                                                                            if(_loc18_ && this)
                                                                                                            {
                                                                                                               continue loop31;
                                                                                                            }
                                                                                                            if(!(_loc18_ && param3))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                  {
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                                  continue loop31;
                                                                                                               }
                                                                                                               addr1205:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  break loop29;
                                                                                                               }
                                                                                                               addr1232:
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            continue loop147;
                                                                                                         }
                                                                                                         §§goto(addr1669);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr1189);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr1220:
                                                                                          }
                                                                                          §§goto(addr1232);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1187);
                                                                              }
                                                                           }
                                                                           §§goto(addr1205);
                                                                        }
                                                                     }
                                                                     addr1241:
                                                                  }
                                                                  §§goto(addr1678);
                                                               }
                                                            }
                                                            addr399:
                                                         }
                                                         break;
                                                      }
                                                      loop48:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc18_)
                                                         {
                                                            §§push(this.§[r§);
                                                            if(!_loc18_)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(!(_loc18_ && param1))
                                                                  {
                                                                     §§goto(addr1093);
                                                                  }
                                                                  §§goto(addr1713);
                                                               }
                                                               else if((_loc6_ = this.§-!l§[_loc4_]).§2!r§() == b2Body.b2_staticBody)
                                                               {
                                                                  if(!(_loc18_ && param1))
                                                                  {
                                                                     loop101:
                                                                     while(true)
                                                                     {
                                                                        _loc4_++;
                                                                        if(!(_loc18_ && param3))
                                                                        {
                                                                           if(_loc19_ || param1)
                                                                           {
                                                                              addr602:
                                                                              if(false)
                                                                              {
                                                                                 loop88:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc6_.§0!y§();
                                                                                    addr607:
                                                                                    loop89:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             if(!(_loc19_ || this))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop101;
                                                                                          }
                                                                                          loop67:
                                                                                          while(true)
                                                                                          {
                                                                                             loop68:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_.m_sweep);
                                                                                                loop69:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                   loop70:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc19_ || param1)
                                                                                                      {
                                                                                                         addr808:
                                                                                                         if(_loc19_ || param1)
                                                                                                         {
                                                                                                            if(_loc19_ || param1)
                                                                                                            {
                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                  addr788:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().a);
                                                                                                                     addr789:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().a0 = §§pop();
                                                                                                                        addr790:
                                                                                                                        while(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.m_sweep);
                                                                                                                           loop75:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().c);
                                                                                                                              loop76:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.m_sweep);
                                                                                                                                 loop77:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().c);
                                                                                                                                    loop78:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       loop79:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§^Z§);
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.§^O§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                addr770:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                }
                                                                                                                                                addr725:
                                                                                                                                                §§push(_loc6_.§^O§);
                                                                                                                                                if(_loc18_ && param2)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(_loc19_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr743:
                                                                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc19_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         addr754:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               continue loop75;
                                                                                                                                                            }
                                                                                                                                                            loop85:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                               if(_loc18_ && param3)
                                                                                                                                                               {
                                                                                                                                                                  continue loop76;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop77;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop78;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                               if(!(_loc18_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§^Z§);
                                                                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr725);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        addr772:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                           addr773:
                                                                                                                                                                           while(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc18_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop85;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr782:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr963:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                       if(_loc19_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr976:
                                                                                                                                                                                          §§push(§§pop() * param1.§[!%§);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop68;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr980:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr976);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr963:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop70;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr771:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr743);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr770);
                                                                                                                                                         }
                                                                                                                                                         continue loop69;
                                                                                                                                                         addr754:
                                                                                                                                                      }
                                                                                                                                                      continue loop79;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr772);
                                                                                                                                                }
                                                                                                                                                §§goto(addr770);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr771);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        loop95:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                           {
                                                                                                                              loop49:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 loop50:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       loop51:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc10_);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc10_);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   addr1059:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      addr1060:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr895:
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc18_ && param3)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   _loc11_ = §§pop();
                                                                                                                                                   if(_loc19_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr911:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_ && param2)
                                                                                                                                                         {
                                                                                                                                                            continue loop51;
                                                                                                                                                         }
                                                                                                                                                         §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                         if(_loc19_ || param2)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc18_ && param2))
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop68;
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                     loop97:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr954:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              addr955:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc18_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() >= §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                       if(!(_loc18_ && param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * param1.§[!%§);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                       continue loop67;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr963);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_.§^O§);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().Normalize();
                                                                                                                                                                                                break loop89;
                                                                                                                                                                                                addr986:
                                                                                                                                                                                                if(!(_loc19_ || param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc6_.§^O§);
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc19_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param1.§[!%§);
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1018:
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop60:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(param1.§[!%§);
                                                                                                                                                                                                                        addr1035:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           addr1036:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              addr1037:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                                                                 addr1038:
                                                                                                                                                                                                                                 loop64:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc6_.§^O§);
                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr986);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc6_.§^O§);
                                                                                                                                                                                                                                          addr1028:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break loop64;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                                             continue loop60;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop64;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1026:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1028);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().y = §§pop() * §§pop();
                                                                                                                                                                                                                  break loop70;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1035);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1036);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1018);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1037);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1018);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1028);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop89;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr841:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(param1.§^Z§);
                                                                                                                                                                                          if(_loc19_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                if(_loc19_ || param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop50;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!(_loc19_ || param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop97;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop97;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr895);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr911);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         addr1076:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc10_ = §§pop();
                                                                                                                                                                                                            continue loop95;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1075:
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr895);
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop97;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1060);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1062:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr954:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_.§^O§);
                                                                                                                                                                              addr1073:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                 addr1074:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1071:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1075);
                                                                                                                                                                     }
                                                                                                                                                                     addr952:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr963);
                                                                                                                                                               }
                                                                                                                                                               addr942:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1059);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr955);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr952);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr955);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1062);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1076);
                                                                                                                                       }
                                                                                                                                       continue loop49;
                                                                                                                                       addr1052:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1074);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1048:
                                                                                                                           }
                                                                                                                           §§goto(addr1052);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(_loc18_ && param3)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     continue loop69;
                                                                                                                  }
                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                  if(_loc19_ || param2)
                                                                                                                  {
                                                                                                                     §§push(§§pop().a);
                                                                                                                     if(_loc19_ || param1)
                                                                                                                     {
                                                                                                                        if(!(_loc18_ && param3))
                                                                                                                        {
                                                                                                                           addr677:
                                                                                                                           §§push(param1.§^Z§);
                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                           }
                                                                                                                           §§pop().a = §§pop() + §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 if(!(_loc19_ || param1))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue loop88;
                                                                                                                              }
                                                                                                                              §§goto(addr754);
                                                                                                                           }
                                                                                                                           §§goto(addr773);
                                                                                                                           addr678:
                                                                                                                        }
                                                                                                                        §§goto(addr789);
                                                                                                                     }
                                                                                                                     §§goto(addr677);
                                                                                                                  }
                                                                                                                  §§goto(addr788);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1038);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr980);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr841);
                                                                                                      §§goto(addr808);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr678);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr1026);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop48;
                                                                           }
                                                                           §§goto(addr790);
                                                                        }
                                                                        §§goto(addr607);
                                                                     }
                                                                  }
                                                                  §§goto(addr754);
                                                               }
                                                               else
                                                               {
                                                                  §§push(param1.§^Z§);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(_loc6_.§^O§);
                                                                     if(_loc19_ || param2)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc19_ || param2)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc18_ && param2))
                                                                           {
                                                                              addr579:
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc19_)
                                                                              {
                                                                                 _loc9_ = §§pop();
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§goto(addr1071);
                                                                                    §§push(param1.§^Z§);
                                                                                 }
                                                                                 §§goto(addr782);
                                                                              }
                                                                              §§goto(addr954);
                                                                           }
                                                                           §§goto(addr1048);
                                                                        }
                                                                        §§goto(addr942);
                                                                     }
                                                                     §§goto(addr1073);
                                                                  }
                                                                  §§goto(addr579);
                                                               }
                                                            }
                                                            §§goto(addr1678);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr1282);
                                                      addr396:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr458);
                                                   }
                                                   §§goto(addr1156);
                                                }
                                             }
                                             §§goto(addr1241);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc19_)
                                          {
                                             if(true)
                                             {
                                                §§goto(addr1234);
                                             }
                                             §§goto(addr1119);
                                          }
                                          §§goto(addr1419);
                                       }
                                    }
                                    §§goto(addr399);
                                 }
                                 §§goto(addr1398);
                              }
                              §§goto(addr1104);
                           }
                           §§goto(addr1730);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(this.§&!o§);
                        if(_loc19_ || param1)
                        {
                           §§goto(addr501);
                        }
                        break;
                     }
                     §§goto(addr1407);
                  }
                  §§goto(addr1389);
               }
               §§goto(addr396);
            }
            §§goto(addr1294);
         }
         §§goto(addr316);
      }
      
      public function §0P§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = false;
         var _loc11_:* = false;
         var _loc12_:Boolean = false;
         if(!(_loc14_ && this))
         {
            §§push(this.§;!V§);
            if(!_loc14_)
            {
               §§pop().§%%§(param1,this.§+G§,this.§0V§,this.§`o§);
               addr54:
               §§push(this.§;!V§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(!(_loc14_ && this))
            {
               _loc2_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§&!o§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           loop4:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop5:
                              while(_loc13_)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc13_)
                                    {
                                       if(!_loc14_)
                                       {
                                          if(_loc13_ || this)
                                          {
                                             if(!_loc13_)
                                             {
                                                continue loop4;
                                             }
                                             if(_loc14_ && _loc2_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(param1.§>!,§);
                                             if(_loc13_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc13_)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc14_)
                                                      {
                                                         if(_loc13_ || _loc2_)
                                                         {
                                                            §§push(0);
                                                            if(_loc13_ || param1)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(_loc13_ || param1)
                                                               {
                                                                  addr122:
                                                                  if(!(_loc14_ && _loc3_))
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           loop7:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              addr135:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§&!o§);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    if(!(_loc13_ || this))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       addr147:
                                                                                       _loc2_++;
                                                                                       continue loop6;
                                                                                    }
                                                                                    addr182:
                                                                                    this.§-!0§[_loc3_].SolveVelocityConstraints(param1);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          _loc3_++;
                                                                                          if(!(_loc14_ && _loc3_))
                                                                                          {
                                                                                             if(_loc14_ && _loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc14_ && _loc2_)
                                                                                             {
                                                                                                _loc2_++;
                                                                                                break loop5;
                                                                                             }
                                                                                             addr217:
                                                                                             continue loop7;
                                                                                          }
                                                                                          addr759:
                                                                                          addr759:
                                                                                          §§push(0.75);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc5_:* = §§pop();
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             addr1003:
                                                                                             _loc2_ = 0;
                                                                                             addr771:
                                                                                             addr1004:
                                                                                             §§push(_loc2_);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                if(!(_loc14_ && this))
                                                                                                {
                                                                                                   if(!(_loc14_ && param1))
                                                                                                   {
                                                                                                      §§push(param1.§44§);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               if(_loc13_ || _loc2_)
                                                                                                               {
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     addr805:
                                                                                                                     this.§<%§(_loc4_.§`!§);
                                                                                                                     if(!(_loc14_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              addr952:
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 addr918:
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    addr922:
                                                                                                                                    §§push(Boolean(Boolean(§§pop())));
                                                                                                                                    if(!(_loc14_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(!(_loc14_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                          _loc3_++;
                                                                                                                                          addr938:
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc14_ && param1))
                                                                                                                                             {
                                                                                                                                                addr873:
                                                                                                                                                if(_loc3_ >= this.§&!o§)
                                                                                                                                                {
                                                                                                                                                   addr878:
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         if(_loc13_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr891:
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!_loc14_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr895:
                                                                                                                                                                  if(!(_loc14_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr903:
                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                     if(!(_loc14_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc13_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 addr843:
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 if(!(_loc14_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc13_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc14_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr859:
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             addr861:
                                                                                                                                                                                             if(!(_loc14_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr805);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr903);
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc2_++;
                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr872:
                                                                                                                                                                                             §§goto(addr771);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr938);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr918);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr922);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr895);
                                                                                                                                                                              }
                                                                                                                                                                              addr942:
                                                                                                                                                                              addr941:
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              if(!(_loc14_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr950:
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    addr951:
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    §§goto(addr952);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr922);
                                                                                                                                                                              }
                                                                                                                                                                              addr991:
                                                                                                                                                                              _loc11_ = §§pop();
                                                                                                                                                                              addr980:
                                                                                                                                                                              _loc3_ = 0;
                                                                                                                                                                              addr981:
                                                                                                                                                                              if(_loc13_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr873);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr991);
                                                                                                                                                                              §§push(true);
                                                                                                                                                                              addr1001:
                                                                                                                                                                              addr992:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr951);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr922);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr843);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr942);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr859);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr950);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr895);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr891);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr938);
                                                                                                                                                }
                                                                                                                                                addr976:
                                                                                                                                                _loc12_ = this.§-!0§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
                                                                                                                                                §§goto(addr941);
                                                                                                                                                §§push(_loc11_);
                                                                                                                                                addr977:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1004);
                                                                                                                                          }
                                                                                                                                          §§goto(addr977);
                                                                                                                                       }
                                                                                                                                       addr999:
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                    }
                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                    §§goto(addr1001);
                                                                                                                                 }
                                                                                                                                 §§goto(addr976);
                                                                                                                              }
                                                                                                                              §§goto(addr981);
                                                                                                                           }
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr878);
                                                                                                                     }
                                                                                                                     §§goto(addr859);
                                                                                                                  }
                                                                                                                  §§goto(addr992);
                                                                                                               }
                                                                                                               §§goto(addr861);
                                                                                                            }
                                                                                                            §§goto(addr805);
                                                                                                         }
                                                                                                         §§goto(addr999);
                                                                                                         §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                                                                                      }
                                                                                                      §§goto(addr873);
                                                                                                   }
                                                                                                   §§goto(addr1003);
                                                                                                }
                                                                                                §§goto(addr980);
                                                                                             }
                                                                                             §§goto(addr873);
                                                                                          }
                                                                                          §§goto(addr872);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             addr187:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                addr188:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr194:
                                                                                       }
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 addr758:
                                                                                 addr758:
                                                                                 if(§§pop() < §§pop())
                                                                                 {
                                                                                    if((_loc6_ = this.§-!l§[_loc2_]).§2!r§() == b2Body.b2_staticBody)
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          addr279:
                                                                                          _loc2_++;
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             if(_loc13_ || param1)
                                                                                             {
                                                                                                if(!(_loc14_ && param1))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      addr298:
                                                                                                      _loc6_.§0!y§();
                                                                                                      if(_loc13_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            §§goto(addr279);
                                                                                                         }
                                                                                                         addr426:
                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            if(!(_loc14_ && param1))
                                                                                                            {
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().a);
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        if(!(_loc14_ && this))
                                                                                                                        {
                                                                                                                           addr352:
                                                                                                                           §§push(param1.§^Z§);
                                                                                                                           if(_loc13_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                           }
                                                                                                                           §§pop().a = §§pop() + §§pop();
                                                                                                                           if(_loc13_ || this)
                                                                                                                           {
                                                                                                                              if(!(_loc14_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§goto(addr298);
                                                                                                                              }
                                                                                                                              addr687:
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 addr516:
                                                                                                                                 §§push(param1.§^Z§);
                                                                                                                                 if(!(_loc14_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.m_angularVelocity);
                                                                                                                                    if(!(_loc14_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!(_loc14_ && param1))
                                                                                                                                          {
                                                                                                                                             addr546:
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(!(_loc14_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      _loc9_ = §§pop();
                                                                                                                                                      if(!(_loc14_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr567:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            addr570:
                                                                                                                                                            if(!(_loc14_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     addr581:
                                                                                                                                                                     §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        addr585:
                                                                                                                                                                        if(!(_loc14_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc14_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr605:
                                                                                                                                                                                    addr604:
                                                                                                                                                                                    if(_loc6_.m_angularVelocity < 0)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                          §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                          if(_loc13_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(-§§pop());
                                                                                                                                                                                             if(!(_loc14_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr621:
                                                                                                                                                                                                §§push(§§pop() * param1.§[!%§);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                             addr480:
                                                                                                                                                                                             _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                                             addr625:
                                                                                                                                                                                             if(_loc13_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr456:
                                                                                                                                                                                                §§push(_loc6_.m_sweep);
                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr461:
                                                                                                                                                                                                   §§pop().a0 = _loc6_.m_sweep.a;
                                                                                                                                                                                                   addr462:
                                                                                                                                                                                                   if(_loc13_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc13_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr442:
                                                                                                                                                                                                         _loc6_.m_sweep.c.x += param1.§^Z§ * _loc6_.§^O§.x;
                                                                                                                                                                                                         addr435:
                                                                                                                                                                                                         addr440:
                                                                                                                                                                                                         addr439:
                                                                                                                                                                                                         addr437:
                                                                                                                                                                                                         addr441:
                                                                                                                                                                                                         addr434:
                                                                                                                                                                                                         addr433:
                                                                                                                                                                                                         addr431:
                                                                                                                                                                                                         if(_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc14_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr371:
                                                                                                                                                                                                               §§push(_loc6_.m_sweep.c);
                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                                                                     if(_loc13_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                        if(_loc13_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(param1.§^Z§);
                                                                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc14_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc6_.§^O§);
                                                                                                                                                                                                                                    if(_loc13_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr415:
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                          if(_loc13_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                                                                §§goto(addr426);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr435);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr442);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr440);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr439);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr437);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr441);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr415);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr434);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr433);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr431);
                                                                                                                                                                                                               addr452:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr705:
                                                                                                                                                                                                            §§push(_loc6_.§^O§);
                                                                                                                                                                                                            if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc6_.§^O§);
                                                                                                                                                                                                               if(_loc13_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                     if(_loc13_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(param1.§[!%§);
                                                                                                                                                                                                                           if(_loc13_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr669:
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!(_loc14_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr677:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(_loc13_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                       §§goto(addr687);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr700:
                                                                                                                                                                                                                                    §§push(§§pop() * (b2Settings.b2_maxTranslation * param1.§[!%§));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                                                                 §§goto(addr705);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr700);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr669);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr677);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr697:
                                                                                                                                                                                                               §§goto(addr700);
                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr697);
                                                                                                                                                                                                               §§push(_loc6_.§^O§);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().Normalize();
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr625);
                                                                                                                                                                                                         addr430:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr705);
                                                                                                                                                                                                      §§push(_loc6_.§^O§);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr625);
                                                                                                                                                                                                   addr460:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr480);
                                                                                                                                                                                                addr502:
                                                                                                                                                                                             }
                                                                                                                                                                                             addr477:
                                                                                                                                                                                             §§goto(addr477);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr621);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr480);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * param1.§[!%§);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                    §§goto(addr477);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr480);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr477);
                                                                                                                                                                           }
                                                                                                                                                                           addr734:
                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              addr739:
                                                                                                                                                                              if(§§pop() + §§pop() * _loc8_ > b2Settings.b2_maxTranslationSquared)
                                                                                                                                                                              {
                                                                                                                                                                                 addr742:
                                                                                                                                                                                 §§goto(addr705);
                                                                                                                                                                                 §§push(_loc6_.§^O§);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr516);
                                                                                                                                                                           }
                                                                                                                                                                           addr753:
                                                                                                                                                                           _loc8_ = §§pop() * §§pop();
                                                                                                                                                                           addr752:
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc13_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                 if(_loc13_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!(_loc14_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr734);
                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr739);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr752);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr739);
                                                                                                                                                                           addr751:
                                                                                                                                                                           addr754:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr739);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr605);
                                                                                                                                                                  }
                                                                                                                                                                  addr748:
                                                                                                                                                                  §§goto(addr751);
                                                                                                                                                                  §§push(_loc6_.§^O§.y);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr753);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr739);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr604);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr585);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr739);
                                                                                                                                             }
                                                                                                                                             §§goto(addr567);
                                                                                                                                          }
                                                                                                                                          §§goto(addr570);
                                                                                                                                       }
                                                                                                                                       §§goto(addr546);
                                                                                                                                    }
                                                                                                                                    §§goto(addr585);
                                                                                                                                 }
                                                                                                                                 §§goto(addr546);
                                                                                                                              }
                                                                                                                              §§goto(addr742);
                                                                                                                           }
                                                                                                                           §§goto(addr462);
                                                                                                                        }
                                                                                                                        §§goto(addr461);
                                                                                                                     }
                                                                                                                     §§goto(addr352);
                                                                                                                  }
                                                                                                                  §§goto(addr460);
                                                                                                               }
                                                                                                               §§goto(addr456);
                                                                                                            }
                                                                                                            §§goto(addr430);
                                                                                                         }
                                                                                                         §§goto(addr371);
                                                                                                      }
                                                                                                      §§goto(addr352);
                                                                                                   }
                                                                                                   addr755:
                                                                                                   §§push(_loc2_);
                                                                                                   break loop6;
                                                                                                }
                                                                                                §§goto(addr754);
                                                                                             }
                                                                                             §§goto(addr442);
                                                                                          }
                                                                                          §§goto(addr298);
                                                                                       }
                                                                                       §§goto(addr452);
                                                                                    }
                                                                                    §§push(param1.§^Z§);
                                                                                    if(_loc13_ || this)
                                                                                    {
                                                                                       §§push(_loc6_.§^O§);
                                                                                       if(!(_loc14_ && this))
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc13_ || _loc2_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc14_ && _loc2_))
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      §§goto(addr748);
                                                                                                      §§push(param1.§^Z§);
                                                                                                   }
                                                                                                   §§goto(addr502);
                                                                                                }
                                                                                                §§goto(addr734);
                                                                                             }
                                                                                             §§goto(addr581);
                                                                                          }
                                                                                          §§goto(addr739);
                                                                                       }
                                                                                       §§goto(addr748);
                                                                                    }
                                                                                    §§goto(addr734);
                                                                                 }
                                                                                 §§goto(addr759);
                                                                                 §§goto(addr759);
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                        }
                                                                        §§goto(addr755);
                                                                     }
                                                                     §§goto(addr188);
                                                                  }
                                                                  §§goto(addr182);
                                                               }
                                                               §§goto(addr759);
                                                            }
                                                            break;
                                                         }
                                                         continue loop3;
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   §§goto(addr122);
                                                }
                                                else
                                                {
                                                   _loc4_.SolveVelocityConstraints();
                                                }
                                                §§goto(addr194);
                                             }
                                             §§goto(addr758);
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr135);
                                    }
                                    break;
                                 }
                                 §§goto(addr758);
                                 §§push(this.§[r§);
                              }
                              continue loop0;
                           }
                        }
                     }
                     else
                     {
                        this.§-!0§[_loc2_].InitVelocityConstraints(param1);
                     }
                     §§goto(addr217);
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §<%§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(!_loc6_)
         {
            if(this.§,#§ == null)
            {
               if(_loc7_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§0V§)
         {
            _loc3_ = this.§+G§[_loc2_];
            _loc4_ = param1[_loc2_];
            if(!_loc6_)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  _loc5_ = §§pop();
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        addr81:
                        loop4:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              continue loop1;
                           }
                           if(§§pop() < _loc4_.§'0§)
                           {
                              §§push(§&4§);
                              break;
                           }
                           do
                           {
                              if(_loc7_ || _loc3_)
                              {
                                 continue;
                              }
                              loop10:
                              while(true)
                              {
                                 if(_loc7_ || _loc2_)
                                 {
                                    continue loop3;
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc7_ || _loc3_)
                                    {
                                       if(_loc6_ && _loc2_)
                                       {
                                          break;
                                       }
                                       _loc5_++;
                                       continue loop10;
                                    }
                                    addr164:
                                    while(true)
                                    {
                                       §§push(§&4§);
                                       if(_loc6_ && this)
                                       {
                                          break loop4;
                                       }
                                       §§pop().§0W§[_loc5_] = _loc4_.§;!K§[_loc5_].tangentImpulse;
                                       continue loop9;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           while(this.§,#§.PostSolve(_loc3_,§&4§), do
                           {
                              _loc2_++;
                           }
                           while(!(_loc7_ || _loc3_));
                           , !(_loc7_ || _loc3_));
                           
                        }
                        while(true)
                        {
                           §§pop().§[!D§[_loc5_] = _loc4_.§;!K§[_loc5_].normalImpulse;
                           §§goto(addr164);
                        }
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr81);
            }
         }
      }
      
      public function §'!=§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            param1.§>!c§ = this.§[r§;
         }
         var _loc2_:* = this.§[r§++;
         this.§-!l§[_loc2_] = param1;
      }
      
      public function §<!V§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§0V§++;
         this.§+G§[_loc2_] = param1;
      }
      
      public function §>!l§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§&!o§++;
         this.§-!0§[_loc2_] = param1;
      }
   }
}
