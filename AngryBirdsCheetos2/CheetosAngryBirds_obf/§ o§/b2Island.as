package § o§
{
   import §"0§.*;
   import §-r§.*;
   import §30§.*;
   import §6!H§.*;
   import §;!#§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §&!J§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §&!J§ = new b2ContactImpulse();
         }
      }
      
      private var §`!Y§;
      
      private var §?t§:b2ContactListener;
      
      private var §2!T§:b2ContactSolver;
      
      b2internal var §4!#§:Vector.<b2Body>;
      
      b2internal var § !E§:Vector.<b2Contact>;
      
      b2internal var §7f§:Vector.<b2Joint>;
      
      b2internal var §`#§:int;
      
      b2internal var §;6§:int;
      
      b2internal var §,!^§:int;
      
      private var §3!A§:int;
      
      b2internal var §,<§:int;
      
      b2internal var §^$§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.§4!#§ = new Vector.<b2Body>();
               addr47:
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               return;
               addr54:
            }
         }
         while(true)
         {
            this.§ !E§ = new Vector.<b2Contact>();
            while(!_loc2_)
            {
               this.§7f§ = new Vector.<b2Joint>();
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr47);
            }
         }
         §§goto(addr54);
      }
      
      public function §#!O§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:int = 0;
         if(_loc8_ || param3)
         {
            this.§3!A§ = param1;
            while(true)
            {
               this.§,<§ = param2;
               loop1:
               while(true)
               {
                  this.§^$§ = param3;
                  loop2:
                  while(true)
                  {
                     this.§`#§ = 0;
                     addr240:
                     while(true)
                     {
                        this.§,!^§ = 0;
                        addr223:
                        if(_loc9_ && param1)
                        {
                           continue;
                        }
                        this.§`!Y§ = param4;
                        loop6:
                        while(true)
                        {
                           this.§?t§ = param5;
                           addr202:
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 this.§2!T§ = param6;
                                 continue loop1;
                              }
                              continue loop6;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(_loc9_ && this)
               {
                  continue;
               }
               §§goto(addr197);
            }
         }
         §§goto(addr235);
      }
      
      public function §#R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§`#§ = 0;
            while(true)
            {
               this.§,!^§ = 0;
               while(_loc1_ || this)
               {
                  this.§;6§ = 0;
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      public function § §(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:b2Joint = null;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = false;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         if(_loc19_ || param1)
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§`#§)
         {
            if((_loc6_ = this.§4!#§[_loc4_]).§7!_§() != b2Body.b2_dynamicBody)
            {
               if(!(_loc18_ && param1))
               {
                  loop20:
                  while(true)
                  {
                     _loc4_++;
                     if(!_loc18_)
                     {
                        addr231:
                        if(_loc19_)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 §§push(_loc6_);
                                 §§push(_loc6_.m_angularVelocity);
                                 if(_loc19_ || param3)
                                 {
                                    §§push(b2Math);
                                    §§push(1);
                                    §§push(param1.§1_§);
                                    if(!_loc18_)
                                    {
                                       §§push(§§pop() * _loc6_.§^,§);
                                    }
                                    §§push(§§pop() * §§pop().§9!%§(§§pop() - §§pop(),0,1));
                                 }
                                 §§pop().m_angularVelocity = §§pop();
                              }
                              addr169:
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§goto(addr169);
                        }
                        addr231:
                     }
                     while(!_loc18_)
                     {
                        continue loop20;
                     }
                     loop10:
                     while(true)
                     {
                        if(_loc19_)
                        {
                           while(true)
                           {
                              §§push(_loc6_.§2!@§);
                              if(_loc19_)
                              {
                                 while(true)
                                 {
                                    §§push(b2Math);
                                    §§push(1);
                                    §§push(param1.§1_§);
                                    if(_loc19_)
                                    {
                                       §§push(§§pop() * _loc6_.§;K§);
                                    }
                                    §§push(§§pop().§9!%§(§§pop() - §§pop(),0,1));
                                    if(!(_loc18_ && this))
                                    {
                                       if(_loc18_ && param3)
                                       {
                                          break loop10;
                                       }
                                       while(true)
                                       {
                                          §§pop().§[!T§(§§pop());
                                          §§goto(addr231);
                                       }
                                    }
                                    addr286:
                                    while(true)
                                    {
                                       §§pop().y = §§pop();
                                    }
                                 }
                                 addr203:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(_loc6_.§2!@§);
                                    addr261:
                                    while(true)
                                    {
                                       §§push(§§pop().y);
                                       break loop10;
                                    }
                                 }
                                 addr259:
                              }
                           }
                           addr256:
                        }
                        while(true)
                        {
                           §§push(_loc6_);
                           §§push(_loc6_.m_angularVelocity);
                           if(!_loc18_)
                           {
                              §§push(param1.§1_§);
                              if(_loc19_)
                              {
                                 §§push(_loc6_.§%L§);
                                 if(_loc19_)
                                 {
                                    addr253:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc18_)
                                    {
                                       addr251:
                                       §§push(§§pop() * _loc6_.§'!$§);
                                    }
                                    §§pop().m_angularVelocity = §§pop() + §§pop();
                                    continue loop10;
                                 }
                              }
                              §§goto(addr251);
                           }
                           §§goto(addr253);
                        }
                     }
                     while(true)
                     {
                        §§push(param1.§1_§);
                        if(_loc19_)
                        {
                           addr266:
                           loop15:
                           while(true)
                           {
                              §§push(param2.y);
                              if(_loc19_ || param3)
                              {
                                 while(true)
                                 {
                                    §§push(_loc6_.§+5§);
                                    if(!_loc18_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc6_.§']§);
                                          addr281:
                                          while(true)
                                          {
                                             §§push(§§pop().y);
                                             addr282:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                       }
                                       addr279:
                                    }
                                    addr283:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                    }
                                    continue loop15;
                                 }
                                 addr275:
                              }
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 continue loop15;
                              }
                           }
                           addr266:
                        }
                        while(true)
                        {
                           §§goto(addr286);
                        }
                     }
                  }
               }
               §§goto(addr231);
            }
            else
            {
               §§push(_loc6_.§2!@§);
               if(!(_loc18_ && param3))
               {
                  §§push(_loc6_.§2!@§);
                  if(_loc19_ || param2)
                  {
                     §§push(§§pop().x);
                     if(!_loc18_)
                     {
                        §§push(param1.§1_§);
                        if(_loc19_ || param2)
                        {
                           §§push(param2.x);
                           if(_loc19_)
                           {
                              §§push(_loc6_.§+5§);
                              if(!(_loc18_ && this))
                              {
                                 §§push(_loc6_.§']§);
                                 if(!(_loc18_ && this))
                                 {
                                    §§push(§§pop().x);
                                    if(_loc19_ || param2)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc18_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc18_ && this))
                                          {
                                             addr146:
                                             §§push(§§pop() * §§pop());
                                             if(_loc19_ || param2)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc18_)
                                                {
                                                   addr157:
                                                   §§pop().x = §§pop();
                                                   if(!_loc18_)
                                                   {
                                                      §§goto(addr259);
                                                      §§push(_loc6_.§2!@§);
                                                   }
                                                   §§goto(addr256);
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr266);
                                          }
                                          §§goto(addr275);
                                       }
                                       §§goto(addr279);
                                    }
                                    §§goto(addr282);
                                 }
                                 §§goto(addr281);
                              }
                              §§goto(addr283);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr266);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr261);
               }
            }
            §§goto(addr203);
         }
         if(_loc19_ || this)
         {
            §§push(this.§2!T§);
            if(!(_loc18_ && param1))
            {
               §§pop().§#!O§(param1,this.§ !E§,this.§,!^§,this.§`!Y§);
               addr316:
               §§push(this.§2!T§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(_loc19_)
            {
               §§push(0);
               if(!(_loc18_ && this))
               {
                  _loc4_ = §§pop();
                  if(!_loc18_)
                  {
                     loop22:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc19_)
                        {
                           §§push(this.§;6§);
                           if(!(_loc18_ && param2))
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§7f§[_loc4_]).InitVelocityConstraints(param1);
                                 if(_loc19_)
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
                                       addr1634:
                                       loop23:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc19_)
                                          {
                                             §§push(param1.§@-§);
                                             if(_loc19_ || param1)
                                             {
                                                loop24:
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc19_)
                                                      {
                                                         §§push(0);
                                                         if(!(_loc18_ && param3))
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(_loc19_)
                                                            {
                                                               addr446:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc18_ && param2))
                                                                  {
                                                                     §§push(this.§;6§);
                                                                     if(!(_loc18_ && param1))
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           (_loc7_ = this.§7f§[_loc4_]).§8!O§();
                                                                           if(!(_loc18_ && param1))
                                                                           {
                                                                              _loc4_++;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        if(!_loc18_)
                                                                        {
                                                                           _loc8_.§8!O§();
                                                                           if(_loc19_ || this)
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 break loop24;
                                                                              }
                                                                              loop111:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§;6§);
                                                                                 if(!(_loc18_ && this))
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(_loc19_ || param1)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc12_);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   loop112:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            loop113:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  addr1212:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc13_);
                                                                                                                     if(!(_loc18_ && param3))
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           addr1376:
                                                                                                                           loop100:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    addr1379:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       loop83:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr1362:
                                                                                                                                          loop84:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§"S§(_loc8_.§4[§);
                                                                                                                                             loop85:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param3);
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   loop86:
                                                                                                                                                   while(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            addr1323:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(Number.MAX_VALUE));
                                                                                                                                                               addr1326:
                                                                                                                                                               addr1341:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc15_ = §§pop();
                                                                                                                                                                  if(!(_loc19_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc15_ >= b2Settings.b2_timeToSleep)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc18_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr1657:
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           if(_loc19_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              addr1665:
                                                                                                                                                                              _loc4_ = §§pop();
                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              break loop86;
                                                                                                                                                                           }
                                                                                                                                                                           loop109:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§`#§);
                                                                                                                                                                              addr1695:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop86;
                                                                                                                                                                                 }
                                                                                                                                                                                 (_loc6_ = this.§4!#§[_loc4_]).SetAwake(false);
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc4_++;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop109;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1693:
                                                                                                                                                                        }
                                                                                                                                                                        addr1668:
                                                                                                                                                                        §§goto(addr1692);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1646:
                                                                                                                                                                  if(_loc19_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop84;
                                                                                                                                                               }
                                                                                                                                                               §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                                               loop104:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                                                  loop106:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     loop107:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1300:
                                                                                                                                                                           _loc16_ = §§pop();
                                                                                                                                                                           if(!(_loc18_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              addr1308:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 loop103:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                                                    if(_loc19_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop107;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc19_ || param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop106;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1258:
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(!(_loc18_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1268:
                                                                                                                                                                                                if(_loc18_ && param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop104;
                                                                                                                                                                                                }
                                                                                                                                                                                                _loc17_ = §§pop();
                                                                                                                                                                                                if(_loc19_ || param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc19_ || this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop85;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                      if(!(_loc18_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                                                                            if(!(_loc18_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1230:
                                                                                                                                                                                                               while(false)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop103;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop23;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1693);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1631:
                                                                                                                                                                                                               addr1230:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1668);
                                                                                                                                                                                                         addr1222:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break loop23;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1646);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1268);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1646);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1258);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1300);
                                                                                                                                                                              }
                                                                                                                                                                              addr1308:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1646);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1326);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr1323:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            loop87:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr1343:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                  if(_loc18_ && param3)
                                                                                                                                                                  {
                                                                                                                                                                     break loop87;
                                                                                                                                                                  }
                                                                                                                                                                  loop88:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§-!B§);
                                                                                                                                                                     if(!(_loc18_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr1360:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() >= §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              continue loop83;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop100;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           if(_loc18_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop112;
                                                                                                                                                                           }
                                                                                                                                                                           _loc12_ = §§pop();
                                                                                                                                                                           if(_loc19_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              loop89:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(true);
                                                                                                                                                                                 if(_loc19_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                                                                          if(_loc18_ && param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop111;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop88;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push((_loc6_ = this.§4!#§[_loc4_]).§7!_§());
                                                                                                                                                                                                   if(_loc19_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(b2Body.b2_staticBody);
                                                                                                                                                                                                      if(!(_loc18_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() == §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc18_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop123:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc4_++;
                                                                                                                                                                                                                  if(_loc19_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc18_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1631);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop124:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(b2Math.§?I§(_loc15_,_loc6_.§3!E§));
                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1493:
                                                                                                                                                                                                                                          _loc15_ = Number(§§pop());
                                                                                                                                                                                                                                          loop146:
                                                                                                                                                                                                                                          while(_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc18_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop123;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             loop144:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc19_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc18_ && param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               loop138:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc15_ = §§pop();
                                                                                                                                                                                                                                                                  loop139:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1616:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc6_.§0b§);
                                                                                                                                                                                                                                                                        addr1618:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(b2Body.§"!Z§);
                                                                                                                                                                                                                                                                           addr1620:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() & §§pop());
                                                                                                                                                                                                                                                                              addr1621:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                                                                 addr1622:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                                    loop135:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                       loop136:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                addr1626:
                                                                                                                                                                                                                                                                                                loop142:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                   addr1601:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                                                                                                      addr1603:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         addr1604:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                                                                                                                            addr1605:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                               addr1606:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop135;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop142;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1625:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          loop131:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop136;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                loop132:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                                                                   loop133:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(b2Math.§%!a§(_loc6_.§2!@§,_loc6_.§2!@§));
                                                                                                                                                                                                                                                                                                      addr1557:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                                                                                                                               if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop132;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           break loop131;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc19_ || param2)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc6_.§3!E§ = 0;
                                                                                                                                                                                                                                                                                                                                    continue loop144;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop139;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1580:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                              §§push(_loc6_.§3!E§);
                                                                                                                                                                                                                                                                                                                              if(_loc19_ || this)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + param1.§1_§);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§pop().§3!E§ = §§pop();
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop124;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop133;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1521:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1606);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1603);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1605);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop138;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1628:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1604);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop139;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1578);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1625);
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
                                                                                                                                                                                                                                                            §§goto(addr1557);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         _loc15_ = §§pop();
                                                                                                                                                                                                                                                         break loop146;
                                                                                                                                                                                                                                                         addr1539:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1601);
                                                                                                                                                                                                                                                      §§goto(addr1597);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1597:
                                                                                                                                                                                                                                                   addr1531:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1626);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop123;
                                                                                                                                                                                                                                          addr1494:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1531);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1539);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1493);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1468:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1580);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1521);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1494);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1628);
                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                            addr1449:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc6_.§0b§);
                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1421:
                                                                                                                                                                                                            §§push(b2Body.§"!Z§);
                                                                                                                                                                                                            if(!(_loc18_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1430:
                                                                                                                                                                                                               §§push(§§pop() & §§pop());
                                                                                                                                                                                                               if(_loc19_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() == §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc6_.§3!E§ = 0;
                                                                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1449);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1468);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1616);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1622);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1621);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1620);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1618);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1430);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1421);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1638:
                                                                                                                                                                                                addr1179:
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop89;
                                                                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1646);
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop86;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1665);
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop113;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1230);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1308);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1657);
                                                                                                                                                                        addr1360:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1638);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop100;
                                                                                                                                                               }
                                                                                                                                                               addr1380:
                                                                                                                                                               _loc4_++;
                                                                                                                                                            }
                                                                                                                                                            addr1381:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1657);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1646);
                                                                                                                                                   }
                                                                                                                                                   return;
                                                                                                                                                   addr1313:
                                                                                                                                                }
                                                                                                                                                continue loop100;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr1379:
                                                                                                                                 }
                                                                                                                                 §§goto(addr1646);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1380);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1375:
                                                                                                                     }
                                                                                                                     §§goto(addr1376);
                                                                                                                  }
                                                                                                                  addr1212:
                                                                                                               }
                                                                                                               §§goto(addr1657);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1376);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1375);
                                                                                             }
                                                                                             §§goto(addr1313);
                                                                                          }
                                                                                          addr1199:
                                                                                       }
                                                                                       §§goto(addr1323);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push((_loc7_ = this.§7f§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc19_ || param3)
                                                                                          {
                                                                                             _loc14_ = §§pop();
                                                                                             if(!(_loc18_ && param2))
                                                                                             {
                                                                                                §§push(_loc13_);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   loop91:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr1168:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               addr1169:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc13_ = §§pop();
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr1167:
                                                                                                      }
                                                                                                      addr1177:
                                                                                                      loop98:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr1178:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr1151:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc14_);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  continue loop91;
                                                                                                               }
                                                                                                               continue loop98;
                                                                                                            }
                                                                                                            §§goto(addr1168);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1177);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_++;
                                                                                                if(_loc18_ && param3)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc19_ || this)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr1151);
                                                                                                }
                                                                                                §§goto(addr1178);
                                                                                             }
                                                                                             §§goto(addr1179);
                                                                                          }
                                                                                          §§goto(addr1177);
                                                                                       }
                                                                                       §§goto(addr1164);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1638);
                                                                              }
                                                                           }
                                                                           §§goto(addr1362);
                                                                        }
                                                                        §§goto(addr1230);
                                                                     }
                                                                     §§goto(addr1360);
                                                                  }
                                                                  break loop22;
                                                               }
                                                            }
                                                            §§goto(addr1646);
                                                         }
                                                         addr1041:
                                                         _loc4_ = §§pop();
                                                         if(_loc19_ || param1)
                                                         {
                                                            §§goto(addr1343);
                                                         }
                                                         §§goto(addr1062);
                                                      }
                                                      §§goto(addr1212);
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                      if(_loc18_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!_loc19_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop24;
                                                      }
                                                   }
                                                   §§goto(addr1199);
                                                }
                                                _loc4_ = §§pop();
                                                if(_loc19_)
                                                {
                                                   addr1018:
                                                   while(true)
                                                   {
                                                      addr1025:
                                                      §§push(_loc4_);
                                                      if(!(_loc18_ && param3))
                                                      {
                                                         break loop22;
                                                      }
                                                      break loop23;
                                                   }
                                                   addr1018:
                                                }
                                                §§goto(addr1379);
                                             }
                                             §§goto(addr1360);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§`#§);
                                          if(!_loc18_)
                                          {
                                             §§goto(addr1638);
                                          }
                                          break;
                                       }
                                       §§goto(addr1695);
                                       addr1634:
                                    }
                                    §§goto(addr1290);
                                 }
                                 §§goto(addr1634);
                              }
                              §§goto(addr1323);
                           }
                           §§goto(addr1695);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(this.§`#§);
                        if(!(_loc18_ && this))
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc19_)
                              {
                                 §§push(0);
                                 if(!_loc18_)
                                 {
                                    §§goto(addr1041);
                                 }
                                 §§goto(addr1222);
                              }
                              §§goto(addr1308);
                           }
                           else
                           {
                              if((_loc6_ = this.§4!#§[_loc4_]).§7!_§() == b2Body.b2_staticBody)
                              {
                                 if(!(_loc18_ && param1))
                                 {
                                    loop79:
                                    while(true)
                                    {
                                       _loc4_++;
                                       if(!_loc18_)
                                       {
                                          if(_loc19_)
                                          {
                                             if(_loc19_ || param1)
                                             {
                                                if(_loc19_)
                                                {
                                                   if(false)
                                                   {
                                                      loop28:
                                                      while(true)
                                                      {
                                                         _loc6_.§&I§();
                                                         addr566:
                                                         addr575:
                                                         while(true)
                                                         {
                                                            if(_loc19_)
                                                            {
                                                               addr568:
                                                               if(_loc19_ || param1)
                                                               {
                                                                  break;
                                                               }
                                                               loop45:
                                                               while(true)
                                                               {
                                                                  if(!_loc18_)
                                                                  {
                                                                     if(!_loc18_)
                                                                     {
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_.m_sweep);
                                                                           loop32:
                                                                           while(true)
                                                                           {
                                                                              §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                              loop33:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_.m_sweep);
                                                                                 loop34:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_.m_sweep);
                                                                                    loop35:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().a);
                                                                                       loop36:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().a0 = §§pop();
                                                                                          addr732:
                                                                                          loop50:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc18_ && param1))
                                                                                             {
                                                                                                §§push(_loc6_.m_sweep);
                                                                                                loop51:
                                                                                                for(; _loc19_; if(!(_loc19_ || param1))
                                                                                                {
                                                                                                   continue;
                                                                                                },§§push(_loc6_.m_sweep),if(!(_loc19_ || param1))
                                                                                                {
                                                                                                   continue loop35;
                                                                                                },§§push(§§pop().a),if(_loc19_)
                                                                                                {
                                                                                                   if(!(_loc19_ || param3))
                                                                                                   {
                                                                                                      continue loop50;
                                                                                                   }
                                                                                                   §§push(param1.§1_§);
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                },§§pop().a = §§pop(),while(!(_loc18_ && param1))
                                                                                                {
                                                                                                   continue loop28;
                                                                                                },§§goto(addr713))
                                                                                                {
                                                                                                   §§push(§§pop().c);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                      addr696:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().c);
                                                                                                         addr697:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr698:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.§1_§);
                                                                                                               if(!(_loc18_ && param2))
                                                                                                               {
                                                                                                                  §§push(_loc6_.§2!@§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     addr710:
                                                                                                                     addr672:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                     }
                                                                                                                     §§push(_loc6_.§2!@§);
                                                                                                                     if(_loc18_ && param1)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        addr686:
                                                                                                                        §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                        addr685:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.m_sweep);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              continue loop51;
                                                                                                                           }
                                                                                                                           continue loop34;
                                                                                                                        }
                                                                                                                        addr687:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr710);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr711:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  addr712:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     addr713:
                                                                                                                     while(!_loc18_)
                                                                                                                     {
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           if(!(_loc18_ && param2))
                                                                                                                           {
                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                              continue loop34;
                                                                                                                           }
                                                                                                                           addr1008:
                                                                                                                           addr1008:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.§2!@§);
                                                                                                                              loop71:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.§2!@§);
                                                                                                                                 loop72:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(b2Settings.b2_maxTranslation);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§<l§);
                                                                                                                                          addr970:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             addr971:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr968:
                                                                                                                                    }
                                                                                                                                    loop76:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       addr973:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.§2!@§);
                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                          {
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.§2!@§);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   continue loop72;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(!(_loc18_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§<l§);
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            addr941:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc18_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr949:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!(_loc19_ || param1))
                                                                                                                                                               {
                                                                                                                                                                  continue loop76;
                                                                                                                                                               }
                                                                                                                                                               addr956:
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                               loop42:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  loop43:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§1_§);
                                                                                                                                                                     if(_loc19_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc19_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              if(_loc19_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              addr844:
                                                                                                                                                                              if(!(_loc18_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 addr851:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() <= §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop31;
                                                                                                                                                                                          }
                                                                                                                                                                                          loop44:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                             addr858:
                                                                                                                                                                                             loop47:
                                                                                                                                                                                             while(_loc19_ || param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr865:
                                                                                                                                                                                                if(!(_loc18_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   loop48:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() >= §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                         §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * param1.§<l§);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                         continue loop45;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc19_ || param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop42;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc18_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                            §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                               if(!(_loc18_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr901:
                                                                                                                                                                                                                  §§push(§§pop() * param1.§<l§);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop31;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr905:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr901);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            loop37:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                                                                               if(!(_loc18_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc10_);
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(_loc19_ || param3)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1004:
                                                                                                                                                                                                                              addr808:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() <= §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop43;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc6_.§2!@§);
                                                                                                                                                                                                                                    break loop45;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                              if(!(_loc19_ || param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              _loc11_ = §§pop();
                                                                                                                                                                                                                              if(_loc18_ && param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop48;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc19_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop47;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr844);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    addr1015:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       continue loop37;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1014:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           break loop44;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr865);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr987:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1004);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop44;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr873:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr987);
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1004);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr858);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1015);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr855:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr873);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr851:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1016);
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr806:
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr808);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1004);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr855);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_.§2!@§);
                                                                                                                                                                                 addr1013:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr1011:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1014);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr806);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr844);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr968);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr970);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr971);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr941);
                                                                                                                                                }
                                                                                                                                                §§goto(addr949);
                                                                                                                                             }
                                                                                                                                             break loop45;
                                                                                                                                          }
                                                                                                                                          continue loop71;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr905);
                                                                                                                     }
                                                                                                                     continue loop33;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop32;
                                                                                             }
                                                                                             §§goto(addr973);
                                                                                             continue loop36;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr1005);
                                                                  }
                                                                  §§goto(addr856);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop().Normalize();
                                                                  §§goto(addr1008);
                                                               }
                                                            }
                                                            §§goto(addr616);
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop79;
                                                            §§goto(addr568);
                                                         }
                                                         §§goto(addr1018);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr1018);
                                                   }
                                                   §§goto(addr1025);
                                                }
                                                §§goto(addr874);
                                             }
                                             §§goto(addr732);
                                          }
                                          §§goto(addr686);
                                       }
                                       §§goto(addr566);
                                    }
                                 }
                                 §§goto(addr1008);
                              }
                              else
                              {
                                 §§push(param1.§1_§);
                                 if(!_loc18_)
                                 {
                                    §§push(_loc6_.§2!@§);
                                    if(_loc19_)
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc18_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc19_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc18_ && param3))
                                             {
                                                _loc9_ = §§pop();
                                                if(!_loc18_)
                                                {
                                                   §§goto(addr1011);
                                                   §§push(param1.§1_§);
                                                }
                                                §§goto(addr575);
                                             }
                                             §§goto(addr851);
                                          }
                                          §§goto(addr1002);
                                       }
                                       §§goto(addr1004);
                                    }
                                    §§goto(addr1013);
                                 }
                              }
                              §§goto(addr851);
                           }
                        }
                        §§goto(addr1360);
                     }
                  }
                  §§goto(addr1212);
               }
               §§goto(addr376);
            }
            §§goto(addr413);
         }
         §§goto(addr316);
      }
      
      public function §6b§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = false;
         var _loc11_:Boolean = false;
         var _loc12_:* = false;
         if(_loc13_ || _loc3_)
         {
            §§push(this.§2!T§);
            if(_loc13_ || this)
            {
               §§pop().§#!O§(param1,this.§ !E§,this.§,!^§,this.§`!Y§);
               addr59:
               §§push(this.§2!T§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(_loc13_)
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
                  §§push(this.§;6§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc13_)
                        {
                           §§push(0);
                           while(true)
                           {
                              _loc2_ = §§pop();
                           }
                           addr191:
                        }
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc14_)
                              {
                                 if(_loc13_)
                                 {
                                    if(_loc13_)
                                    {
                                       §§push(param1.§@-§);
                                       if(!_loc14_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc13_)
                                             {
                                                if(!(_loc13_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(_loc13_)
                                                {
                                                   §§push(0);
                                                   if(!_loc14_)
                                                   {
                                                      if(!(_loc14_ && param1))
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc13_ || _loc3_)
                                                         {
                                                            if(_loc13_ || _loc2_)
                                                            {
                                                               if(false)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     addr119:
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§;6§);
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(!(_loc13_ || _loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              if(!(_loc14_ && _loc2_))
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    _loc2_++;
                                                                                    continue loop5;
                                                                                 }
                                                                                 addr180:
                                                                                 while(!_loc14_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    while(_loc13_)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              addr729:
                                                                              addr729:
                                                                              addr729:
                                                                              §§push(0.75);
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc5_:* = §§pop();
                                                                              if(_loc13_ || param1)
                                                                              {
                                                                                 addr978:
                                                                                 _loc2_ = 0;
                                                                                 addr746:
                                                                                 addr979:
                                                                                 §§push(_loc2_);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§push(param1.§-!B§);
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             if(!(_loc14_ && _loc3_))
                                                                                             {
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   if(!(_loc14_ && _loc2_))
                                                                                                   {
                                                                                                      if(!(_loc14_ && _loc2_))
                                                                                                      {
                                                                                                         §§goto(addr780);
                                                                                                      }
                                                                                                      §§goto(addr951);
                                                                                                   }
                                                                                                   §§goto(addr910);
                                                                                                }
                                                                                                §§goto(addr846);
                                                                                             }
                                                                                             §§goto(addr820);
                                                                                          }
                                                                                          addr780:
                                                                                          this.§"S§(_loc4_.§4[§);
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             addr829:
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                if(!(_loc14_ && this))
                                                                                                {
                                                                                                   §§goto(addr746);
                                                                                                }
                                                                                                addr932:
                                                                                                §§push(_loc12_);
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!(_loc14_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc13_ || this)
                                                                                                      {
                                                                                                         addr910:
                                                                                                         _loc11_ = §§pop();
                                                                                                         addr908:
                                                                                                         if(!(_loc14_ && param1))
                                                                                                         {
                                                                                                            _loc3_++;
                                                                                                            addr881:
                                                                                                            if(_loc13_ || this)
                                                                                                            {
                                                                                                               addr839:
                                                                                                               §§push(_loc3_);
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  addr845:
                                                                                                                  if(§§pop() >= this.§;6§)
                                                                                                                  {
                                                                                                                     addr846:
                                                                                                                     §§push(_loc10_);
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           addr852:
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(_loc13_ || param1)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr861:
                                                                                                                                 if(_loc13_)
                                                                                                                                 {
                                                                                                                                    if(_loc13_ || param1)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr871:
                                                                                                                                       if(!(_loc14_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          if(!_loc14_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc14_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(_loc13_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr807:
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   if(_loc13_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            addr818:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr820:
                                                                                                                                                               if(_loc13_ || this)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr780);
                                                                                                                                                               }
                                                                                                                                                               addr955:
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  addr948:
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc3_ = §§pop();
                                                                                                                                                                     §§goto(addr839);
                                                                                                                                                                     addr951:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr978);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr979);
                                                                                                                                                            }
                                                                                                                                                            _loc2_++;
                                                                                                                                                            §§goto(addr829);
                                                                                                                                                         }
                                                                                                                                                         addr975:
                                                                                                                                                         _loc10_ = §§pop();
                                                                                                                                                         _loc11_ = true;
                                                                                                                                                         §§goto(addr955);
                                                                                                                                                         addr976:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr852);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr861);
                                                                                                                                                }
                                                                                                                                                addr923:
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(Boolean(§§pop()))
                                                                                                                                                {
                                                                                                                                                   addr924:
                                                                                                                                                   if(_loc13_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      §§goto(addr932);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr975);
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                }
                                                                                                                                                §§goto(addr908);
                                                                                                                                             }
                                                                                                                                             §§goto(addr910);
                                                                                                                                          }
                                                                                                                                          §§goto(addr807);
                                                                                                                                       }
                                                                                                                                       §§goto(addr881);
                                                                                                                                    }
                                                                                                                                    §§goto(addr924);
                                                                                                                                 }
                                                                                                                                 §§goto(addr932);
                                                                                                                              }
                                                                                                                              §§goto(addr818);
                                                                                                                           }
                                                                                                                           §§goto(addr923);
                                                                                                                        }
                                                                                                                        addr944:
                                                                                                                        _loc12_ = §§pop();
                                                                                                                        §§goto(addr923);
                                                                                                                        §§push(_loc11_);
                                                                                                                        addr945:
                                                                                                                     }
                                                                                                                     §§goto(addr861);
                                                                                                                  }
                                                                                                                  §§goto(addr944);
                                                                                                                  §§push(Boolean(this.§7f§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                                                                               }
                                                                                                               §§goto(addr948);
                                                                                                               addr888:
                                                                                                            }
                                                                                                            §§goto(addr976);
                                                                                                         }
                                                                                                         §§goto(addr945);
                                                                                                      }
                                                                                                      §§goto(addr923);
                                                                                                   }
                                                                                                   §§goto(addr910);
                                                                                                }
                                                                                                §§goto(addr975);
                                                                                             }
                                                                                             §§goto(addr871);
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr924);
                                                                                       §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                                                                    }
                                                                                    §§goto(addr845);
                                                                                 }
                                                                                 §§goto(addr839);
                                                                              }
                                                                              §§goto(addr888);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.§7f§[_loc3_].SolveVelocityConstraints(param1);
                                                                              while(true)
                                                                              {
                                                                                 _loc3_++;
                                                                                 addr144:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc14_ && param1))
                                                                                    {
                                                                                       if(_loc14_ && param1)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              addr168:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr728:
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              if((_loc6_ = this.§4!#§[_loc2_]).§7!_§() == b2Body.b2_staticBody)
                                                                              {
                                                                                 if(_loc13_ || this)
                                                                                 {
                                                                                    addr254:
                                                                                    _loc2_++;
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          if(!(_loc14_ && _loc2_))
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                addr268:
                                                                                                _loc6_.§&I§();
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   if(_loc13_ || _loc3_)
                                                                                                   {
                                                                                                      §§goto(addr254);
                                                                                                   }
                                                                                                   addr455:
                                                                                                   _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                                                   addr621:
                                                                                                   addr452:
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      if(!(_loc14_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            addr450:
                                                                                                            _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                                                                                                            addr433:
                                                                                                            _loc6_.m_sweep.c.x += param1.§1_§ * _loc6_.§2!@§.x;
                                                                                                            addr451:
                                                                                                            addr449:
                                                                                                            addr447:
                                                                                                            addr432:
                                                                                                            addr431:
                                                                                                            addr430:
                                                                                                            addr428:
                                                                                                            addr426:
                                                                                                            addr425:
                                                                                                            addr424:
                                                                                                            addr422:
                                                                                                            addr421:
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               if(_loc13_ || _loc3_)
                                                                                                               {
                                                                                                                  addr334:
                                                                                                                  §§push(_loc6_.m_sweep);
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().c);
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.m_sweep);
                                                                                                                           if(!(_loc14_ && this))
                                                                                                                           {
                                                                                                                              §§push(§§pop().c);
                                                                                                                              if(!(_loc14_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(_loc13_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       §§push(param1.§1_§);
                                                                                                                                       if(!(_loc14_ && this))
                                                                                                                                       {
                                                                                                                                          if(_loc13_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.§2!@§);
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(_loc13_ || this)
                                                                                                                                                {
                                                                                                                                                   addr397:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc13_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr405:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         addr408:
                                                                                                                                                         if(_loc13_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                               if(!(_loc14_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_.m_sweep);
                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().a);
                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc14_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              addr315:
                                                                                                                                                                              §§push(param1.§1_§);
                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().a = §§pop() + §§pop();
                                                                                                                                                                              if(!(_loc14_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc14_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr268);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr689:
                                                                                                                                                                                 §§push(_loc6_.§2!@§);
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.§2!@§);
                                                                                                                                                                                    if(_loc13_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(!(_loc14_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc13_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                             if(_loc13_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param1.§<l§);
                                                                                                                                                                                                if(!_loc14_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr660:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr663:
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(!(_loc14_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                         addr495:
                                                                                                                                                                                                         §§push(param1.§1_§);
                                                                                                                                                                                                         if(!(_loc14_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                            if(_loc13_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc13_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr519:
                                                                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           if(!(_loc14_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr536:
                                                                                                                                                                                                                              if(!(_loc14_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr543:
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                    if(_loc13_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                                                                                                                       if(!(_loc14_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                                                                if(_loc13_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr581:
                                                                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc13_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr590:
                                                                                                                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr593:
                                                                                                                                                                                                                                                            addr591:
                                                                                                                                                                                                                                                            §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr596:
                                                                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                                                                               if(_loc13_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr599:
                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                     §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                                                     if(!(_loc14_ && _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                                                                                                                        if(!(_loc14_ && _loc2_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() * param1.§<l§);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                                     §§goto(addr621);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                                                                  §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * param1.§<l§);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                                                  addr494:
                                                                                                                                                                                                                                                                  §§goto(addr452);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            _loc8_ = §§pop();
                                                                                                                                                                                                                                                            addr724:
                                                                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr694:
                                                                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                                                                               if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr704:
                                                                                                                                                                                                                                                                  if(§§pop() * §§pop() + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr710:
                                                                                                                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr714:
                                                                                                                                                                                                                                                                        _loc6_.§2!@§.Normalize();
                                                                                                                                                                                                                                                                        §§push(_loc6_.§2!@§);
                                                                                                                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr680:
                                                                                                                                                                                                                                                                           §§push(_loc6_.§2!@§.x);
                                                                                                                                                                                                                                                                           §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr688:
                                                                                                                                                                                                                                                                              §§pop().x = §§pop() * (§§pop() * param1.§<l§);
                                                                                                                                                                                                                                                                              addr687:
                                                                                                                                                                                                                                                                              §§goto(addr689);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr687);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr714);
                                                                                                                                                                                                                                                                        addr715:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr724);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr495);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr704);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr621);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr704);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr596);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr593);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr596);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr704);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr581);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr704);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr593);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr718:
                                                                                                                                                                                                                        §§goto(addr596);
                                                                                                                                                                                                                        §§push(_loc6_.§2!@§.y);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr704);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr536);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr704);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr596);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr519);
                                                                                                                                                                                                         addr671:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr680);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr687);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr660);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr688);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr663);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr680);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr714);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr451);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr450);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr315);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr449);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr447);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr334);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr621);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr450);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr433);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr432);
                                                                                                                                                }
                                                                                                                                                §§goto(addr431);
                                                                                                                                             }
                                                                                                                                             §§goto(addr430);
                                                                                                                                          }
                                                                                                                                          §§goto(addr428);
                                                                                                                                       }
                                                                                                                                       §§goto(addr397);
                                                                                                                                    }
                                                                                                                                    §§goto(addr426);
                                                                                                                                 }
                                                                                                                                 §§goto(addr405);
                                                                                                                              }
                                                                                                                              §§goto(addr425);
                                                                                                                           }
                                                                                                                           §§goto(addr424);
                                                                                                                        }
                                                                                                                        §§goto(addr422);
                                                                                                                     }
                                                                                                                     §§goto(addr455);
                                                                                                                  }
                                                                                                                  §§goto(addr421);
                                                                                                                  addr443:
                                                                                                               }
                                                                                                               §§goto(addr715);
                                                                                                            }
                                                                                                            §§goto(addr599);
                                                                                                         }
                                                                                                         §§goto(addr710);
                                                                                                      }
                                                                                                      §§goto(addr671);
                                                                                                   }
                                                                                                   §§goto(addr591);
                                                                                                }
                                                                                                §§goto(addr315);
                                                                                             }
                                                                                             addr725:
                                                                                             §§push(_loc2_);
                                                                                             break loop5;
                                                                                          }
                                                                                          §§goto(addr494);
                                                                                       }
                                                                                       §§goto(addr408);
                                                                                    }
                                                                                    §§goto(addr268);
                                                                                 }
                                                                                 §§goto(addr443);
                                                                              }
                                                                              §§push(param1.§1_§);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§push(_loc6_.§2!@§);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§goto(addr718);
                                                                                                §§push(param1.§1_§);
                                                                                             }
                                                                                             §§goto(addr494);
                                                                                          }
                                                                                          §§goto(addr543);
                                                                                       }
                                                                                       §§goto(addr694);
                                                                                    }
                                                                                    §§goto(addr590);
                                                                                 }
                                                                                 §§goto(addr718);
                                                                              }
                                                                              §§goto(addr596);
                                                                           }
                                                                           §§goto(addr729);
                                                                        }
                                                                        §§goto(addr729);
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               §§goto(addr725);
                                                            }
                                                            §§goto(addr168);
                                                         }
                                                         §§goto(addr729);
                                                      }
                                                      §§goto(addr119);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr144);
                                             }
                                             §§goto(addr729);
                                          }
                                          else
                                          {
                                             _loc4_.SolveVelocityConstraints();
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr728);
                                    }
                                    else
                                    {
                                       §§goto(addr191);
                                    }
                                 }
                                 §§goto(addr171);
                              }
                              break;
                           }
                           §§goto(addr728);
                        }
                     }
                     else
                     {
                        this.§7f§[_loc2_].InitVelocityConstraints(param1);
                        if(!_loc14_)
                        {
                           _loc2_++;
                           continue loop0;
                        }
                     }
                     §§goto(addr729);
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function §"S§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(!_loc6_)
         {
            if(this.§?t§ == null)
            {
               if(_loc7_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!^§)
         {
            _loc3_ = this.§ !E§[_loc2_];
            _loc4_ = param1[_loc2_];
            if(_loc7_ || param1)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  _loc5_ = §§pop();
                  addr167:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr121);
            if(true)
            {
               continue;
            }
            §§goto(addr87);
         }
      }
      
      public function §^!,§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            param1.§-_§ = this.§`#§;
         }
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§`#§ + 1;
         _loc3_.§`#§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§`#§;
         this.§4!#§[_loc2_] = param1;
      }
      
      public function § null§(param1:b2Contact) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§,!^§ + 1;
         _loc3_.§,!^§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§,!^§;
         this.§ !E§[_loc2_] = param1;
      }
      
      public function §;!`§(param1:b2Joint) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§;6§ + 1;
         _loc3_.§;6§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§;6§;
         this.§7f§[_loc2_] = param1;
      }
   }
}
