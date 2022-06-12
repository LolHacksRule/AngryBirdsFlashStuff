package §48§
{
   import §!D§.*;
   import §#]§.*;
   import §4!!§.*;
   import §55§.*;
   import §8k§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §8@§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §8@§ = new b2ContactImpulse();
         }
      }
      
      private var §"!7§;
      
      private var §6s§:b2ContactListener;
      
      private var §<8§:b2ContactSolver;
      
      b2internal var §1!l§:Vector.<b2Body>;
      
      b2internal var §2!S§:Vector.<b2Contact>;
      
      b2internal var § try§:Vector.<b2Joint>;
      
      b2internal var §]!M§:int;
      
      b2internal var §0!$§:int;
      
      b2internal var §3M§:int;
      
      private var §7!?§:int;
      
      b2internal var §`E§:int;
      
      b2internal var §4c§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§1!l§ = new Vector.<b2Body>();
               loop1:
               while(!(_loc2_ && _loc1_))
               {
                  this.§2!S§ = new Vector.<b2Contact>();
                  while(true)
                  {
                     this.§ try§ = new Vector.<b2Joint>();
                     if(!_loc2_)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      public function §`!r§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:int = 0;
         if(!_loc8_)
         {
            this.§7!?§ = param1;
            loop0:
            while(true)
            {
               this.§`E§ = param2;
               while(true)
               {
                  this.§4c§ = param3;
                  while(_loc9_ || this)
                  {
                     this.§]!M§ = 0;
                     while(true)
                     {
                        this.§3M§ = 0;
                        loop4:
                        while(_loc9_ || param1)
                        {
                           this.§0!$§ = 0;
                           loop5:
                           while(true)
                           {
                              this.§"!7§ = param4;
                              loop6:
                              for(; _loc9_; if(!(_loc9_ || param2))
                              {
                                 continue;
                              },if(!_loc9_)
                              {
                                 continue loop4;
                              },§§goto(addr195))
                              {
                                 this.§6s§ = param5;
                                 loop7:
                                 while(true)
                                 {
                                    this.§<8§ = param6;
                                    while(true)
                                    {
                                       if(!(_loc8_ && param1))
                                       {
                                          continue loop6;
                                       }
                                       continue loop7;
                                       addr195:
                                       _loc7_ = this.§1!l§.length;
                                       if(!(_loc8_ && param1))
                                       {
                                          continue loop5;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr174);
      }
      
      public function §;!R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§]!M§ = 0;
            while(true)
            {
               this.§3M§ = 0;
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     this.§0!$§ = 0;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §#!6§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
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
         if(!(_loc19_ && param3))
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§]!M§)
         {
            if((_loc6_ = this.§1!l§[_loc4_]).§"r§() != b2Body.b2_dynamicBody)
            {
               if(!(_loc19_ && this))
               {
                  loop16:
                  while(true)
                  {
                     _loc4_++;
                     if(_loc18_)
                     {
                        addr154:
                        if(_loc18_ || param2)
                        {
                           addr161:
                           if(false)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 §§push(_loc6_.m_angularVelocity);
                                 if(_loc18_ || this)
                                 {
                                    §§push(b2Math);
                                    §§push(1);
                                    §§push(param1.§4"?§);
                                    if(_loc18_)
                                    {
                                       §§push(§§pop() * _loc6_.§1f§);
                                    }
                                    §§push(§§pop() * §§pop().§<O§(§§pop() - §§pop(),0,1));
                                 }
                                 §§pop().m_angularVelocity = §§pop();
                                 addr189:
                                 addr296:
                                 while(_loc18_)
                                 {
                                    continue loop16;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    §§push(_loc6_.m_angularVelocity);
                                    if(!_loc19_)
                                    {
                                       §§push(param1.§4"?§);
                                       if(_loc18_ || param1)
                                       {
                                          §§push(_loc6_.§"g§);
                                          if(!(_loc19_ && param1))
                                          {
                                             addr262:
                                             §§push(§§pop() * §§pop());
                                             if(_loc18_ || param2)
                                             {
                                                addr260:
                                                §§push(§§pop() * _loc6_.§;!+§);
                                             }
                                             §§pop().m_angularVelocity = §§pop() + §§pop();
                                             while(true)
                                             {
                                                §§push(_loc6_.§="8§);
                                                if(_loc19_)
                                                {
                                                   break;
                                                }
                                                §§push(b2Math);
                                                §§push(1);
                                                §§push(param1.§4"?§);
                                                if(_loc18_ || param1)
                                                {
                                                   §§push(§§pop() * _loc6_.§?Q§);
                                                }
                                                §§push(§§pop().§<O§(§§pop() - §§pop(),0,1));
                                                if(!(_loc19_ && param1))
                                                {
                                                   §§pop().§8`§(§§pop());
                                                   while(_loc18_)
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                   continue;
                                                   addr223:
                                                }
                                                else
                                                {
                                                   addr295:
                                                }
                                                addr295:
                                                while(true)
                                                {
                                                   §§pop().y = §§pop();
                                                   continue loop3;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(_loc6_.§="8§);
                                                addr268:
                                                while(true)
                                                {
                                                   §§push(§§pop().y);
                                                   if(_loc18_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param1.§4"?§);
                                                         if(_loc18_)
                                                         {
                                                            §§push(param2.y);
                                                            if(_loc18_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_.§["A§);
                                                                  if(!(_loc19_ && param2))
                                                                  {
                                                                     §§push(_loc6_.§&e§);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        addr291:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                     }
                                                                     addr290:
                                                                  }
                                                                  addr292:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                               }
                                                               addr279:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            addr293:
                                                         }
                                                         addr294:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr271:
                                                   }
                                                   §§goto(addr295);
                                                }
                                             }
                                             addr266:
                                          }
                                       }
                                       §§goto(addr260);
                                    }
                                    §§goto(addr262);
                                 }
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr189);
                  }
               }
               §§goto(addr296);
            }
            else
            {
               §§push(_loc6_.§="8§);
               if(_loc18_ || this)
               {
                  §§push(_loc6_.§="8§);
                  if(!_loc19_)
                  {
                     §§push(§§pop().x);
                     if(!_loc19_)
                     {
                        §§push(param1.§4"?§);
                        if(_loc18_)
                        {
                           §§push(param2.x);
                           if(!_loc19_)
                           {
                              §§push(_loc6_.§["A§);
                              if(!(_loc19_ && this))
                              {
                                 §§push(_loc6_.§&e§);
                                 if(_loc18_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc18_ || this)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc19_ && this))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc18_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc19_)
                                             {
                                                addr133:
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc19_ && this))
                                                {
                                                   §§pop().x = §§pop();
                                                   if(!(_loc19_ && param3))
                                                   {
                                                      §§goto(addr266);
                                                      §§push(_loc6_.§="8§);
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr295);
                                             }
                                             §§goto(addr294);
                                          }
                                          §§goto(addr293);
                                       }
                                       §§goto(addr292);
                                    }
                                    §§goto(addr291);
                                 }
                                 §§goto(addr290);
                              }
                              §§goto(addr292);
                           }
                           §§goto(addr279);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr271);
                  }
                  §§goto(addr268);
               }
            }
            §§goto(addr262);
         }
         if(_loc18_)
         {
            §§push(this.§<8§);
            if(!_loc19_)
            {
               §§pop().§`!r§(param1,this.§2!S§,this.§3M§,this.§"!7§);
               addr315:
               §§push(this.§<8§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(_loc18_ || param1)
            {
               §§push(0);
               if(_loc18_ || this)
               {
                  _loc4_ = §§pop();
                  if(!_loc19_)
                  {
                     addr340:
                     loop150:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc18_)
                        {
                           §§push(this.§0!$§);
                           if(!(_loc19_ && param2))
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§ try§[_loc4_]).InitVelocityConstraints(param1);
                                 if(_loc18_ || param2)
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(_loc18_ || param1)
                              {
                                 §§push(0);
                                 if(!_loc19_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc19_)
                                    {
                                       loop18:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(!_loc19_)
                                          {
                                             §§push(param1.§ get§);
                                             if(_loc18_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!_loc19_)
                                                   {
                                                      §§push(0);
                                                      if(_loc18_ || this)
                                                      {
                                                         addr467:
                                                         _loc4_ = §§pop();
                                                         if(_loc18_)
                                                         {
                                                            loop21:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!_loc19_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§0!$§);
                                                                     if(!(_loc19_ && param2))
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           (_loc7_ = this.§ try§[_loc4_]).§;%§();
                                                                           if(_loc18_)
                                                                           {
                                                                              _loc4_++;
                                                                           }
                                                                           continue loop21;
                                                                        }
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           _loc8_.§;%§();
                                                                           if(_loc18_ || param1)
                                                                           {
                                                                              addr512:
                                                                              §§push(0);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 break loop18;
                                                                              }
                                                                              addr1679:
                                                                              _loc4_ = §§pop();
                                                                              if(_loc19_ && this)
                                                                              {
                                                                              }
                                                                              §§goto(addr1705);
                                                                           }
                                                                           addr1687:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              addr1702:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§]!M§);
                                                                                 §§goto(addr1704);
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              loop129:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    loop130:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§0!$§);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                break loop130;
                                                                                             }
                                                                                             if(_loc18_ || this)
                                                                                             {
                                                                                                §§push(_loc12_);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr1361:
                                                                                                               if(_loc18_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr1359:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        addr1360:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              _loc4_++;
                                                                                                                              if(_loc18_ || this)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    break loop21;
                                                                                                                                 }
                                                                                                                                 addr1332:
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1687);
                                                                                                                     }
                                                                                                                     addr1359:
                                                                                                                  }
                                                                                                                  §§goto(addr1360);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr1343:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop87:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§=!s§(_loc8_.§#!$§);
                                                                                                                        if(!(_loc19_ && param1))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(param3);
                                                                                                                              if(!(_loc19_ && param1))
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       loop83:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(Number.MAX_VALUE));
                                                                                                                                          loop84:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                             addr1330:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!(_loc19_ && param2))
                                                                                                                                                      {
                                                                                                                                                         addr1311:
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         loop82:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc16_ = §§pop();
                                                                                                                                                            addr1313:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop87;
                                                                                                                                                               }
                                                                                                                                                               addr1315:
                                                                                                                                                               loop81:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                                  if(!(_loc19_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!(_loc19_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc19_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop82;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           addr1651:
                                                                                                                                                                           if(§§pop() >= b2Settings.b2_timeToSleep)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc19_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 addr1661:
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1679);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1702);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1679);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1651);
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc17_ = §§pop();
                                                                                                                                                                     if(_loc18_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc18_ || param2))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop83;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop150;
                                                                                                                                                                              }
                                                                                                                                                                              break loop21;
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        loop96:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§]!M§);
                                                                                                                                                                           if(_loc18_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr1647:
                                                                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop81;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1679);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push((_loc6_ = this.§1!l§[_loc4_]).§"r§());
                                                                                                                                                                                 if(!(_loc19_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(b2Body.b2_staticBody);
                                                                                                                                                                                    if(!(_loc19_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             loop97:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc4_++;
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop96;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      loop98:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(b2Math.§]"=§(_loc15_,_loc6_.§4!@§));
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc19_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1463:
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  if(!(_loc19_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc15_ = §§pop();
                                                                                                                                                                                                                     loop113:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc19_ && param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop97;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop114:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc19_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                          if(_loc18_ || param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc18_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1628:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc15_ = §§pop();
                                                                                                                                                                                                                                                         addr1629:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1615:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc6_.§`">§);
                                                                                                                                                                                                                                                               addr1617:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(b2Body.§9!t§);
                                                                                                                                                                                                                                                                  addr1619:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() & §§pop());
                                                                                                                                                                                                                                                                     addr1620:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                                                                        addr1621:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                           loop104:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              loop105:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1624:
                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 loop101:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                    if(_loc19_ && param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop105;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       loop106:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                                                                          addr1613:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(b2Math.§+'§(_loc6_.§="8§,_loc6_.§="8§));
                                                                                                                                                                                                                                                                                             addr1540:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                                                                                                                if(!(_loc19_ && param2))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1555:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                      if(_loc19_ && param2)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop106;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                                                                            §§push(_loc6_.§4!@§);
                                                                                                                                                                                                                                                                                                            if(_loc18_ || param2)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + param1.§4"?§);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§pop().§4!@§ = §§pop();
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     break loop105;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop98;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1500:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc6_.§4!@§ = 0;
                                                                                                                                                                                                                                                                                                            continue loop114;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1555);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   loop108:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      addr1584:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                                                                                                                         continue loop108;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1583:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break loop101;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc18_ || param2)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop101;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop104;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop106;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop106;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1563);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1624);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc6_.m_angularVelocity);
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
                                                                                                                                                                                                                                                      §§goto(addr1583);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                                                                addr1522:
                                                                                                                                                                                                                                                break loop113;
                                                                                                                                                                                                                                                addr1522:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1627:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1628);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1522);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1577:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1629);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1613);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1500);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop97;
                                                                                                                                                                                                                     addr1471:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1522);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1584);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1540);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1463);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1443:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1471);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1577);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_.§`">§);
                                                                                                                                                                                          if(!(_loc19_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1410:
                                                                                                                                                                                             §§push(b2Body.§9!t§);
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1414:
                                                                                                                                                                                                §§push(§§pop() & §§pop());
                                                                                                                                                                                                if(_loc18_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc19_ && param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc6_.§4!@§ = 0;
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1627);
                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1443);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1509);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1615);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1621);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1620);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1619);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1617);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1414);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1410);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1704);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop84;
                                                                                                                                                                  §§goto(addr1315);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1651);
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1651);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1679);
                                                                                                                                 }
                                                                                                                                 addr1325:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr1355:
                                                                                                                        }
                                                                                                                        §§goto(addr1679);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1361:
                                                                                                            }
                                                                                                            §§goto(addr1359);
                                                                                                         }
                                                                                                         §§goto(addr1360);
                                                                                                      }
                                                                                                      addr1209:
                                                                                                   }
                                                                                                   §§goto(addr1325);
                                                                                                }
                                                                                                §§goto(addr1359);
                                                                                             }
                                                                                             §§goto(addr1687);
                                                                                          }
                                                                                          addr1195:
                                                                                       }
                                                                                       addr1342:
                                                                                       while(§§pop() < §§pop())
                                                                                       {
                                                                                          §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             loop93:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc12_ = §§pop();
                                                                                                addr1110:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr1080:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      if(_loc19_ && this)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop93;
                                                                                                   }
                                                                                                   §§goto(addr1209);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1359);
                                                                                       }
                                                                                       §§goto(addr1343);
                                                                                    }
                                                                                    §§push((_loc7_ = this.§ try§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          _loc14_ = §§pop();
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             if(!(_loc19_ && param3))
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop142:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop134:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr1187:
                                                                                                         loop135:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            loop136:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc14_);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  if(!(_loc18_ || param1))
                                                                                                                  {
                                                                                                                     continue loop142;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     if(_loc18_ || param3)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              break loop136;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1169:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc13_ = §§pop();
                                                                                                                        do
                                                                                                                        {
                                                                                                                           _loc5_++;
                                                                                                                        }
                                                                                                                        while(_loc19_ && this);
                                                                                                                        
                                                                                                                        if(_loc18_ || param2)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              continue loop136;
                                                                                                                           }
                                                                                                                           continue loop129;
                                                                                                                        }
                                                                                                                        continue loop135;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1169);
                                                                                                            }
                                                                                                            continue loop134;
                                                                                                         }
                                                                                                      }
                                                                                                      addr1186:
                                                                                                   }
                                                                                                   §§goto(addr1171);
                                                                                                }
                                                                                                addr1184:
                                                                                             }
                                                                                             §§goto(addr1186);
                                                                                          }
                                                                                          §§goto(addr1187);
                                                                                       }
                                                                                       §§goto(addr1161);
                                                                                    }
                                                                                    §§goto(addr1184);
                                                                                    addr1191:
                                                                                 }
                                                                                 §§goto(addr1679);
                                                                              }
                                                                           }
                                                                           §§goto(addr1080);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!_loc19_)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§goto(addr1332);
                                                                                 addr1058:
                                                                              }
                                                                              §§goto(addr1687);
                                                                           }
                                                                           §§goto(addr1191);
                                                                        }
                                                                        addr1242:
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr1244);
                                                                        }
                                                                        §§goto(addr1630);
                                                                     }
                                                                     else
                                                                     {
                                                                        if((_loc6_ = this.§1!l§[_loc4_]).§"r§() == b2Body.b2_staticBody)
                                                                        {
                                                                           if(_loc18_ || param2)
                                                                           {
                                                                              loop77:
                                                                              while(true)
                                                                              {
                                                                                 _loc4_++;
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    addr584:
                                                                                    if(!(_loc19_ && param1))
                                                                                    {
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   loop46:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc6_.§,6§();
                                                                                                      addr602:
                                                                                                      while(_loc18_ || param2)
                                                                                                      {
                                                                                                         continue loop77;
                                                                                                      }
                                                                                                      addr887:
                                                                                                      loop27:
                                                                                                      while(_loc18_)
                                                                                                      {
                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                         loop28:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                            loop29:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().a);
                                                                                                               loop30:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().a0 = §§pop();
                                                                                                                  loop31:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.m_sweep);
                                                                                                                     loop32:
                                                                                                                     while(_loc18_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().c);
                                                                                                                        loop33:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.m_sweep);
                                                                                                                           loop34:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().c);
                                                                                                                              loop35:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 loop36:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§4"?§);
                                                                                                                                    loop37:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.§="8§);
                                                                                                                                       loop38:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().x);
                                                                                                                                          loop39:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             loop40:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                loop41:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   addr741:
                                                                                                                                                   while(!(_loc19_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                                                                      loop43:
                                                                                                                                                      for(; !_loc19_; §§push(_loc6_.m_sweep),if(!(_loc18_ || this))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      },if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                         if(!(_loc18_ || this))
                                                                                                                                                         {
                                                                                                                                                            continue loop29;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop().a);
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc19_ && this)
                                                                                                                                                            {
                                                                                                                                                               continue loop30;
                                                                                                                                                            }
                                                                                                                                                            §§push(param1.§4"?§);
                                                                                                                                                            if(!(_loc19_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§pop().a = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc19_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop46;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr720);
                                                                                                                                                            §§goto(addr584);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr780);
                                                                                                                                                      },§§goto(addr760))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().c);
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            continue loop33;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            continue loop34;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop().c);
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            continue loop35;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                         if(!(_loc19_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               continue loop36;
                                                                                                                                                            }
                                                                                                                                                            §§push(param1.§4"?§);
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc19_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue loop37;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc6_.§="8§);
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop38;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop39;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                            }
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               continue loop40;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc18_ || param3))
                                                                                                                                                         {
                                                                                                                                                            continue loop41;
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         while(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            continue loop43;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         loop51:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            loop58:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               loop57:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc19_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     addr1021:
                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                     loop52:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                        addr1012:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           addr1013:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              addr1014:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop52;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1034:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    addr1035:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc10_ = §§pop();
                                                                                                                                                                                       continue loop51;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                                        loop64:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              loop65:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_.§="8§);
                                                                                                                                                                                 loop66:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().Normalize();
                                                                                                                                                                                    loop67:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_.§="8§);
                                                                                                                                                                                       loop68:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_.§="8§);
                                                                                                                                                                                          loop69:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                             loop70:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                if(_loc18_ || param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(param1.§,Q§);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr995:
                                                                                                                                                                                                }
                                                                                                                                                                                                loop72:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   loop73:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                      addr998:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc6_.§="8§);
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc19_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc6_.§="8§);
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                  if(!(_loc19_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc19_ && param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop72;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(param1.§,Q§);
                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr995);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc18_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc19_ && this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop67;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc19_ && param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop65;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop67;
                                                                                                                                                                                                                        addr963:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop70;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop73;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop69;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop66;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop68;
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
                                                                                                                                                                              §§push(param1.§4"?§);
                                                                                                                                                                              if(!(_loc19_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop57;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc19_ && param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop51;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr814:
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc18_ || param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop58;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      if(_loc18_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc11_ = §§pop();
                                                                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc18_ || param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop64;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop() > §§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc18_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr883:
                                                                                                                                                                                                                              §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                 addr884:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break loop27;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr780:
                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                       §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * param1.§,Q§);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1013);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr883:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break loop46;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                           addr760:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                                                                              continue loop27;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr757:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1033:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1034);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr884);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1014);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr883);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr884);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1012);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr884);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr883);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr814);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1011);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr884);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1035);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr814);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr1011:
                                                                                                                                                                     addr1021:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr1030:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_.§="8§);
                                                                                                                                                                        addr1032:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr1030:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1033);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1036:
                                                                                                                                                      }
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
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
                                                                                                                     }
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         §§push(b2Settings.b2_maxRotation);
                                                                                                         if(_loc18_ || this)
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               addr900:
                                                                                                               §§push(§§pop() * param1.§,Q§);
                                                                                                            }
                                                                                                            §§pop().m_angularVelocity = §§pop();
                                                                                                            break loop46;
                                                                                                         }
                                                                                                         §§goto(addr900);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc18_ || this)
                                                                                                      {
                                                                                                         §§goto(addr757);
                                                                                                      }
                                                                                                      §§goto(addr998);
                                                                                                   }
                                                                                                   addr904:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      §§goto(addr1679);
                                                                                                   }
                                                                                                   addr1037:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr963);
                                                                                          }
                                                                                          §§goto(addr904);
                                                                                       }
                                                                                       §§goto(addr741);
                                                                                    }
                                                                                    §§goto(addr655);
                                                                                 }
                                                                                 §§goto(addr602);
                                                                              }
                                                                           }
                                                                           §§goto(addr998);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(param1.§4"?§);
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(_loc6_.§="8§);
                                                                              if(_loc18_ || param3)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc19_ && param3))
                                                                                       {
                                                                                          _loc9_ = §§pop();
                                                                                          if(_loc18_ || this)
                                                                                          {
                                                                                             §§goto(addr1030);
                                                                                             §§push(param1.§4"?§);
                                                                                          }
                                                                                          §§goto(addr887);
                                                                                       }
                                                                                       §§goto(addr1030);
                                                                                    }
                                                                                    §§goto(addr1021);
                                                                                 }
                                                                                 §§goto(addr824);
                                                                              }
                                                                              §§goto(addr1032);
                                                                           }
                                                                        }
                                                                        §§goto(addr1021);
                                                                     }
                                                                  }
                                                                  addr1704:
                                                                  while(§§pop() < §§pop())
                                                                  {
                                                                     (_loc6_ = this.§1!l§[_loc4_]).SetAwake(false);
                                                                     if(!_loc19_)
                                                                     {
                                                                        _loc4_++;
                                                                     }
                                                                     continue loop127;
                                                                  }
                                                                  addr1705:
                                                                  return;
                                                                  addr486:
                                                                  addr1049:
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1.§7!;§);
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  §§goto(addr1342);
                                                               }
                                                               §§goto(addr1647);
                                                            }
                                                         }
                                                         §§goto(addr1661);
                                                      }
                                                      §§goto(addr1040);
                                                   }
                                                   §§goto(addr1679);
                                                }
                                                else
                                                {
                                                   §§push(0);
                                                   if(_loc18_ || param2)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(_loc18_ || param2)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc18_ || param3)
                                                            {
                                                               §§push(this.§0!$§);
                                                               if(_loc18_ || param1)
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     (_loc7_ = this.§ try§[_loc5_]).SolveVelocityConstraints(param1);
                                                                     if(_loc18_)
                                                                     {
                                                                        _loc5_++;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(!_loc19_)
                                                                  {
                                                                     _loc8_.SolveVelocityConstraints();
                                                                     if(!_loc19_)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     §§goto(addr1361);
                                                                  }
                                                                  §§goto(addr1099);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr486);
                                                            }
                                                            §§goto(addr1704);
                                                         }
                                                         §§goto(addr1679);
                                                      }
                                                      §§goto(addr1058);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr467);
                                                   }
                                                }
                                                §§goto(addr467);
                                             }
                                             §§goto(addr1195);
                                          }
                                          break;
                                       }
                                       addr515:
                                       _loc4_ = §§pop();
                                       if(_loc18_ || this)
                                       {
                                          §§goto(addr1037);
                                       }
                                       §§goto(addr1293);
                                       addr449:
                                    }
                                    §§goto(addr512);
                                 }
                                 §§goto(addr515);
                              }
                              §§goto(addr441);
                           }
                           §§goto(addr1049);
                        }
                        break;
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                        if(_loc18_)
                        {
                           if(_loc18_)
                           {
                              if(!_loc19_)
                              {
                                 if(_loc18_ || param3)
                                 {
                                    §§goto(addr1242);
                                 }
                                 §§goto(addr1361);
                              }
                              §§goto(addr1330);
                           }
                           §§goto(addr1313);
                        }
                        §§goto(addr1650);
                     }
                  }
                  §§goto(addr449);
               }
               §§goto(addr1040);
            }
            §§goto(addr340);
         }
         §§goto(addr315);
      }
      
      public function §`!!§(param1:b2TimeStep) : void
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
         var _loc12_:* = false;
         if(!_loc14_)
         {
            §§push(this.§<8§);
            if(_loc13_)
            {
               §§pop().§`!r§(param1,this.§2!S§,this.§3M§,this.§"!7§);
               addr49:
               §§push(this.§<8§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(!(_loc14_ && _loc3_))
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
                  §§push(this.§0!$§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop3:
                        while(_loc13_ || this)
                        {
                           if(_loc13_ || _loc3_)
                           {
                              §§push(0);
                              loop4:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc14_)
                                       {
                                          if(!_loc13_)
                                          {
                                             continue loop4;
                                          }
                                          if(!(_loc13_ || _loc3_))
                                          {
                                             break;
                                          }
                                          §§push(param1.§ get§);
                                          if(!(_loc14_ && param1))
                                          {
                                             if(!_loc13_)
                                             {
                                                continue loop2;
                                             }
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!_loc14_)
                                                {
                                                   if(_loc13_ || param1)
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         §§push(0);
                                                         if(_loc13_ || _loc2_)
                                                         {
                                                            addr105:
                                                            if(!(_loc14_ && this))
                                                            {
                                                               if(_loc13_ || _loc2_)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(_loc13_)
                                                                  {
                                                                     if(!(_loc13_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc14_ && _loc2_))
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              addr142:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§0!$§);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    break loop8;
                                                                                 }
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    while(!_loc13_)
                                                                                    {
                                                                                    }
                                                                                    _loc2_++;
                                                                                    continue loop6;
                                                                                    addr147:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr170:
                                                                                 }
                                                                                 this.§ try§[_loc3_].SolveVelocityConstraints(param1);
                                                                                 while(true)
                                                                                 {
                                                                                    _loc3_++;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc14_ && param1))
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    addr180:
                                                                                    while(_loc13_ || _loc3_)
                                                                                    {
                                                                                       §§push(0);
                                                                                       while(true)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          addr174:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                              }
                                                                              addr227:
                                                                              if((_loc6_ = this.§1!l§[_loc2_]).§"r§() == b2Body.b2_staticBody)
                                                                              {
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    addr274:
                                                                                    _loc2_++;
                                                                                    if(!(_loc14_ && _loc3_))
                                                                                    {
                                                                                       if(_loc13_ || _loc2_)
                                                                                       {
                                                                                          addr289:
                                                                                          if(false)
                                                                                          {
                                                                                             addr291:
                                                                                             _loc6_.§,6§();
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                if(_loc13_ || this)
                                                                                                {
                                                                                                   §§goto(addr274);
                                                                                                }
                                                                                                addr407:
                                                                                                if(!(_loc14_ && this))
                                                                                                {
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                               if(!(_loc14_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(§§pop().a);
                                                                                                                  if(!(_loc14_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(param1.§4"?§);
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     §§pop().a = §§pop();
                                                                                                                     addr341:
                                                                                                                     §§goto(addr291);
                                                                                                                  }
                                                                                                                  addr453:
                                                                                                                  §§pop().a0 = §§pop();
                                                                                                                  addr432:
                                                                                                                  _loc6_.m_sweep.c.x += param1.§4"?§ * _loc6_.§="8§.x;
                                                                                                                  addr427:
                                                                                                                  addr431:
                                                                                                                  addr430:
                                                                                                                  addr429:
                                                                                                                  addr425:
                                                                                                                  addr424:
                                                                                                                  addr423:
                                                                                                                  addr421:
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        if(!(_loc14_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              addr345:
                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                              if(_loc13_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.m_sweep);
                                                                                                                                    if(_loc13_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().c);
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          if(!_loc14_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc14_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(param1.§4"?§);
                                                                                                                                                if(!_loc14_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.§="8§);
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         addr389:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc14_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            if(_loc13_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr404:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  §§goto(addr407);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr432);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr427);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr431);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr430);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr429);
                                                                                                                                                }
                                                                                                                                                §§goto(addr389);
                                                                                                                                             }
                                                                                                                                             §§goto(addr425);
                                                                                                                                          }
                                                                                                                                          §§goto(addr404);
                                                                                                                                       }
                                                                                                                                       §§goto(addr424);
                                                                                                                                    }
                                                                                                                                    §§goto(addr423);
                                                                                                                                 }
                                                                                                                                 §§goto(addr421);
                                                                                                                              }
                                                                                                                              addr458:
                                                                                                                              §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                              if(!(_loc14_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr593:
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    addr452:
                                                                                                                                    §§goto(addr453);
                                                                                                                                    §§push(_loc6_.m_sweep);
                                                                                                                                    §§push(_loc6_.m_sweep.a);
                                                                                                                                 }
                                                                                                                                 if(_loc13_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    §§push(b2Settings.b2_maxRotation);
                                                                                                                                    if(_loc13_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(_loc13_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr613:
                                                                                                                                          §§push(§§pop() * param1.§,Q§);
                                                                                                                                       }
                                                                                                                                       §§pop().m_angularVelocity = §§pop();
                                                                                                                                       addr455:
                                                                                                                                       §§goto(addr458);
                                                                                                                                       §§push(_loc6_.m_sweep);
                                                                                                                                       addr617:
                                                                                                                                    }
                                                                                                                                    §§goto(addr613);
                                                                                                                                 }
                                                                                                                                 addr718:
                                                                                                                                 §§push(_loc6_.§="8§);
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    addr678:
                                                                                                                                    addr666:
                                                                                                                                    addr679:
                                                                                                                                    addr665:
                                                                                                                                    §§push(_loc6_.§="8§.x);
                                                                                                                                    §§push(b2Settings.b2_maxTranslation);
                                                                                                                                    if(_loc13_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr677:
                                                                                                                                       §§push(§§pop() * param1.§,Q§);
                                                                                                                                    }
                                                                                                                                    §§pop().x = §§pop() * §§pop();
                                                                                                                                    §§push(_loc6_.§="8§);
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.§="8§);
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc14_ && this))
                                                                                                                                             {
                                                                                                                                                if(!_loc14_)
                                                                                                                                                {
                                                                                                                                                   §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§,Q§);
                                                                                                                                                      if(!(_loc14_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr653:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            addr656:
                                                                                                                                                            §§pop().y = §§pop() * §§pop();
                                                                                                                                                            addr501:
                                                                                                                                                            §§push(param1.§4"?§);
                                                                                                                                                            if(_loc13_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc14_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           addr526:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc14_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr536:
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 if(_loc13_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr544:
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!(_loc14_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc9_ = §§pop();
                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr558:
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc13_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                if(_loc13_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr575:
                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc13_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc14_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr589:
                                                                                                                                                                                                               §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr592:
                                                                                                                                                                                                                  if(§§pop() < 0)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr593);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                  §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                                  if(!(_loc14_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * param1.§,Q§);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                                  §§goto(addr455);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr683:
                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                               if(_loc13_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr692:
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr704:
                                                                                                                                                                                                                  addr705:
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(!(_loc14_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr714:
                                                                                                                                                                                                                     if(§§pop() > b2Settings.b2_maxTranslationSquared)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr717:
                                                                                                                                                                                                                        _loc6_.§="8§.Normalize();
                                                                                                                                                                                                                        addr715:
                                                                                                                                                                                                                        §§goto(addr718);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr501);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr733:
                                                                                                                                                                                                                  _loc8_ = §§pop();
                                                                                                                                                                                                                  §§goto(addr683);
                                                                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                                                                  addr732:
                                                                                                                                                                                                                  addr734:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc13_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr703:
                                                                                                                                                                                                                  §§goto(addr704);
                                                                                                                                                                                                                  §§push(§§pop() * _loc8_);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr732);
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr715);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr593);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr455);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr714);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr592);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr589);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr575);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr703);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr558);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr589);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr733);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr544);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr704);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr575);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr692);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr705);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr544);
                                                                                                                                                            addr657:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr678);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr677);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr653);
                                                                                                                                                }
                                                                                                                                                §§goto(addr666);
                                                                                                                                             }
                                                                                                                                             §§goto(addr679);
                                                                                                                                          }
                                                                                                                                          §§goto(addr656);
                                                                                                                                       }
                                                                                                                                       §§goto(addr665);
                                                                                                                                    }
                                                                                                                                    §§goto(addr593);
                                                                                                                                    addr680:
                                                                                                                                 }
                                                                                                                                 §§goto(addr717);
                                                                                                                              }
                                                                                                                              §§goto(addr592);
                                                                                                                           }
                                                                                                                           §§goto(addr734);
                                                                                                                        }
                                                                                                                        §§goto(addr680);
                                                                                                                     }
                                                                                                                     §§goto(addr657);
                                                                                                                  }
                                                                                                                  addr454:
                                                                                                                  §§goto(addr454);
                                                                                                                  addr420:
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr452);
                                                                                                         }
                                                                                                         §§goto(addr420);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr345);
                                                                                                }
                                                                                                §§goto(addr453);
                                                                                             }
                                                                                             §§goto(addr341);
                                                                                          }
                                                                                          §§push(_loc2_);
                                                                                          §§push(this.§]!M§);
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr617);
                                                                                    }
                                                                                    §§goto(addr291);
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              }
                                                                              §§push(param1.§4"?§);
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§push(_loc6_.§="8§);
                                                                                 if(_loc13_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!(_loc14_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          addr266:
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                §§push(param1.§4"?§);
                                                                                                if(!(_loc14_ && _loc2_))
                                                                                                {
                                                                                                   addr730:
                                                                                                   §§goto(addr589);
                                                                                                   §§push(_loc6_.§="8§.y);
                                                                                                }
                                                                                                §§goto(addr692);
                                                                                             }
                                                                                             §§goto(addr656);
                                                                                          }
                                                                                          §§goto(addr544);
                                                                                       }
                                                                                       §§goto(addr536);
                                                                                    }
                                                                                    §§goto(addr526);
                                                                                 }
                                                                                 §§goto(addr730);
                                                                              }
                                                                              §§goto(addr266);
                                                                           }
                                                                           addr738:
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              §§goto(addr227);
                                                                           }
                                                                           addr739:
                                                                           §§push(0.75);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc5_:* = §§pop();
                                                                           if(_loc13_)
                                                                           {
                                                                              addr993:
                                                                              _loc2_ = 0;
                                                                              addr751:
                                                                              addr994:
                                                                              §§push(_loc2_);
                                                                              if(!(_loc14_ && this))
                                                                              {
                                                                                 §§push(param1.§7!;§);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(!(_loc14_ && _loc3_))
                                                                                       {
                                                                                          if(_loc13_ || _loc2_)
                                                                                          {
                                                                                             addr780:
                                                                                             this.§=!s§(_loc4_.§#!$§);
                                                                                             addr779:
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   if(!(_loc13_ || param1))
                                                                                                   {
                                                                                                      addr969:
                                                                                                      if(!(_loc14_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            addr860:
                                                                                                            §§push(_loc3_);
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  addr868:
                                                                                                                  if(§§pop() >= this.§0!$§)
                                                                                                                  {
                                                                                                                     addr869:
                                                                                                                     if(!(_loc14_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr877:
                                                                                                                        §§push(Boolean(_loc10_));
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc13_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr889:
                                                                                                                                 §§pop();
                                                                                                                                 addr890:
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 if(!(_loc14_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             if(_loc13_ || param1)
                                                                                                                                             {
                                                                                                                                                addr819:
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(_loc13_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         addr830:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr832:
                                                                                                                                                            if(!(_loc14_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc13_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr779);
                                                                                                                                                                  }
                                                                                                                                                                  addr931:
                                                                                                                                                                  §§push(Boolean(_loc11_));
                                                                                                                                                                  if(!(_loc14_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr940:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr941:
                                                                                                                                                                        §§pop();
                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                        if(_loc13_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc14_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr911:
                                                                                                                                                                              §§push(Boolean(Boolean(§§pop())));
                                                                                                                                                                              if(!(_loc14_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc14_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                                                                    _loc3_++;
                                                                                                                                                                                    addr893:
                                                                                                                                                                                    §§goto(addr860);
                                                                                                                                                                                    addr928:
                                                                                                                                                                                 }
                                                                                                                                                                                 addr981:
                                                                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                                                                 _loc3_ = 0;
                                                                                                                                                                                 §§goto(addr969);
                                                                                                                                                                                 addr982:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr941);
                                                                                                                                                                           }
                                                                                                                                                                           addr990:
                                                                                                                                                                           _loc10_ = §§pop();
                                                                                                                                                                           §§goto(addr981);
                                                                                                                                                                           §§push(true);
                                                                                                                                                                           addr991:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr931);
                                                                                                                                                                        addr942:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr911);
                                                                                                                                                                  }
                                                                                                                                                                  addr989:
                                                                                                                                                                  §§goto(addr990);
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  addr965:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr869);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr890);
                                                                                                                                                         }
                                                                                                                                                         _loc2_++;
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc13_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr751);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr982);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr893);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr911);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr877);
                                                                                                                                                }
                                                                                                                                                §§goto(addr889);
                                                                                                                                             }
                                                                                                                                             addr964:
                                                                                                                                             _loc12_ = §§pop();
                                                                                                                                             §§goto(addr965);
                                                                                                                                          }
                                                                                                                                          §§goto(addr931);
                                                                                                                                       }
                                                                                                                                       §§goto(addr911);
                                                                                                                                    }
                                                                                                                                    §§goto(addr877);
                                                                                                                                 }
                                                                                                                                 §§goto(addr819);
                                                                                                                              }
                                                                                                                              §§goto(addr830);
                                                                                                                           }
                                                                                                                           §§goto(addr940);
                                                                                                                        }
                                                                                                                        §§goto(addr941);
                                                                                                                     }
                                                                                                                     §§goto(addr928);
                                                                                                                  }
                                                                                                                  §§goto(addr964);
                                                                                                                  §§push(Boolean(this.§ try§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                                                                               }
                                                                                                               §§goto(addr993);
                                                                                                            }
                                                                                                            §§goto(addr981);
                                                                                                         }
                                                                                                         §§goto(addr994);
                                                                                                      }
                                                                                                      §§goto(addr991);
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr832);
                                                                                             }
                                                                                             §§goto(addr830);
                                                                                          }
                                                                                          §§goto(addr942);
                                                                                       }
                                                                                       §§goto(addr779);
                                                                                    }
                                                                                    §§goto(addr989);
                                                                                    §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                                                                 }
                                                                                 §§goto(addr868);
                                                                              }
                                                                              §§goto(addr860);
                                                                           }
                                                                           §§goto(addr780);
                                                                        }
                                                                        §§goto(addr289);
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                                  §§goto(addr739);
                                                               }
                                                               §§goto(addr173);
                                                            }
                                                            §§goto(addr142);
                                                         }
                                                         §§goto(addr289);
                                                      }
                                                      §§goto(addr174);
                                                   }
                                                   §§goto(addr147);
                                                }
                                                §§goto(addr739);
                                             }
                                             else
                                             {
                                                _loc4_.SolveVelocityConstraints();
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr738);
                                       }
                                       §§goto(addr105);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                     this.§ try§[_loc2_].InitVelocityConstraints(param1);
                     _loc2_++;
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §=!s§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(!_loc7_)
         {
            if(this.§6s§ == null)
            {
               if(!(_loc7_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§3M§)
         {
            _loc3_ = this.§2!S§[_loc2_];
            _loc4_ = param1[_loc2_];
            if(_loc6_ || this)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  _loc5_ = §§pop();
                  addr176:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr173);
         }
      }
      
      public function §53§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            param1.§]!E§ = this.§]!M§;
         }
         var _loc2_:* = this.§]!M§++;
         this.§1!l§[_loc2_] = param1;
      }
      
      public function §1!@§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§3M§++;
         this.§2!S§[_loc2_] = param1;
      }
      
      public function §^!g§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§0!$§++;
         this.§ try§[_loc2_] = param1;
      }
   }
}
