package §3!`§
{
   import §'F§.*;
   import §+C§.*;
   import §-"&§.*;
   import §6Z§.*;
   import §^9§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §#I§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §#I§ = new b2ContactImpulse();
         }
      }
      
      private var §]"#§;
      
      private var §5!N§:b2ContactListener;
      
      private var §?!?§:b2ContactSolver;
      
      b2internal var §0p§:Vector.<b2Body>;
      
      b2internal var §7!K§:Vector.<b2Contact>;
      
      b2internal var §6w§:Vector.<b2Joint>;
      
      b2internal var §3"'§:int;
      
      b2internal var §"F§:int;
      
      b2internal var §<$§:int;
      
      private var §0![§:int;
      
      b2internal var §!q§:int;
      
      b2internal var §&!t§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§0p§ = new Vector.<b2Body>();
            while(true)
            {
               this.§7!K§ = new Vector.<b2Contact>();
               while(!_loc1_)
               {
                  continue loop0;
                  this.§6w§ = new Vector.<b2Joint>();
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §",§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:int = 0;
         if(!(_loc8_ && param1))
         {
            this.§0![§ = param1;
            while(true)
            {
               this.§!q§ = param2;
            }
            addr270:
         }
         loop1:
         while(true)
         {
            this.§&!t§ = param3;
            loop2:
            while(!_loc8_)
            {
               this.§3"'§ = 0;
               loop3:
               while(true)
               {
                  this.§<$§ = 0;
                  loop4:
                  do
                  {
                     this.§"F§ = 0;
                     loop5:
                     for(; !_loc8_; if(_loc8_ && param2)
                     {
                        continue;
                     },§§goto(addr213))
                     {
                        this.§]"#§ = param4;
                        while(_loc9_)
                        {
                           this.§5!N§ = param5;
                           loop7:
                           while(!_loc8_)
                           {
                              this.§?!?§ = param6;
                              while(true)
                              {
                                 if(_loc9_ || param1)
                                 {
                                    continue loop5;
                                 }
                                 continue loop7;
                                 addr213:
                                 _loc7_ = this.§0p§.length;
                                 if(_loc9_)
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop5;
                           }
                        }
                        continue loop2;
                     }
                     continue loop3;
                  }
                  while(_loc8_ && param2);
                  
                  continue loop1;
               }
            }
            §§goto(addr270);
         }
      }
      
      public function §,A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3"'§ = 0;
         }
         while(true)
         {
            this.§<$§ = 0;
            while(!_loc2_)
            {
               this.§"F§ = 0;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §=^§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
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
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         if(_loc18_)
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§3"'§)
         {
            if((_loc6_ = this.§0p§[_loc4_]).§<!A§() != b2Body.b2_dynamicBody)
            {
               if(!(_loc19_ && this))
               {
                  loop19:
                  while(true)
                  {
                     _loc4_++;
                     if(!_loc19_)
                     {
                        if(!_loc19_)
                        {
                           if(_loc18_ || this)
                           {
                              if(false)
                              {
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    §§push(_loc6_.m_angularVelocity);
                                    if(_loc18_)
                                    {
                                       §§push(b2Math);
                                       §§push(1);
                                       §§push(param1.§`!9§);
                                       if(_loc18_ || param3)
                                       {
                                          §§push(§§pop() * _loc6_.§]!`§);
                                       }
                                       §§push(§§pop() * §§pop().§&a§(§§pop() - §§pop(),0,1));
                                    }
                                    §§pop().m_angularVelocity = §§pop();
                                    addr127:
                                    while(_loc18_ || this)
                                    {
                                       while(true)
                                       {
                                          continue loop19;
                                       }
                                    }
                                 }
                                 addr101:
                              }
                              continue loop0;
                           }
                           loop18:
                           while(true)
                           {
                              if(!_loc19_)
                              {
                                 addr319:
                                 §§push(_loc6_);
                                 §§push(_loc6_.m_angularVelocity);
                                 if(_loc18_ || this)
                                 {
                                    §§push(param1.§`!9§);
                                    if(_loc18_ || param3)
                                    {
                                       §§push(_loc6_.§`!`§);
                                       if(_loc18_)
                                       {
                                          addr203:
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc19_ && param2))
                                          {
                                             addr201:
                                             §§push(§§pop() * _loc6_.§#!K§);
                                          }
                                          §§pop().m_angularVelocity = §§pop() + §§pop();
                                          while(true)
                                          {
                                             if(_loc18_ || this)
                                             {
                                                §§push(_loc6_.§?!^§);
                                                if(_loc18_ || param3)
                                                {
                                                   §§push(b2Math);
                                                   §§push(1);
                                                   §§push(param1.§`!9§);
                                                   if(_loc18_ || this)
                                                   {
                                                      §§push(§§pop() * _loc6_.§8!a§);
                                                   }
                                                   §§push(§§pop().§&a§(§§pop() - §§pop(),0,1));
                                                   if(_loc18_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(_loc18_ || this)
                                                      {
                                                         §§push(_loc6_.§?!^§);
                                                         if(_loc18_ || param1)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc18_)
                                                            {
                                                               if(_loc18_)
                                                               {
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(param1.§`!9§);
                                                                     if(_loc18_ || this)
                                                                     {
                                                                        if(!(_loc19_ && param1))
                                                                        {
                                                                           §§push(_loc6_.§!!T§);
                                                                           if(!(_loc19_ && param3))
                                                                           {
                                                                              if(!(_loc19_ && param2))
                                                                              {
                                                                                 §§push(param2.y);
                                                                                 if(_loc18_ || param3)
                                                                                 {
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(_loc6_.§4!&§);
                                                                                          if(_loc18_ || param2)
                                                                                          {
                                                                                             §§push(_loc6_.§-[§);
                                                                                             if(_loc18_ || param2)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   addr306:
                                                                                                   §§push(§§pop() * (§§pop() + §§pop() * §§pop()));
                                                                                                   if(!(_loc19_ && param2))
                                                                                                   {
                                                                                                      addr316:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      §§goto(addr319);
                                                                                                      addr316:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_.§!!T§);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§push(param2.x);
                                                                                                            if(_loc18_ || param3)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc19_ && param3))
                                                                                                               {
                                                                                                                  addr362:
                                                                                                                  §§push(_loc6_.§4!&§);
                                                                                                                  if(_loc18_ || this)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr363:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr364:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr365:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              addr366:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop7;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr362:
                                                                                                               }
                                                                                                               §§goto(addr363);
                                                                                                            }
                                                                                                            §§push(_loc6_.§-[§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                            }
                                                                                                            addr360:
                                                                                                         }
                                                                                                         §§goto(addr363);
                                                                                                      }
                                                                                                      addr328:
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr362);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr360);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr306);
                                                                                    }
                                                                                    §§goto(addr362);
                                                                                 }
                                                                                 §§goto(addr306);
                                                                              }
                                                                              §§goto(addr363);
                                                                           }
                                                                           §§goto(addr306);
                                                                        }
                                                                        §§goto(addr364);
                                                                     }
                                                                     §§goto(addr306);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr326:
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                               §§goto(addr365);
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr325:
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                         }
                                                         addr323:
                                                      }
                                                      §§goto(addr325);
                                                   }
                                                }
                                                §§goto(addr316);
                                             }
                                             else
                                             {
                                                addr373:
                                                while(true)
                                                {
                                                }
                                                addr373:
                                             }
                                             §§goto(addr323);
                                             §§goto(addr203);
                                          }
                                          §§pop().§>[§(§§pop());
                                          addr166:
                                          while(true)
                                          {
                                             §§goto(addr101);
                                          }
                                          addr166:
                                          addr204:
                                       }
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr203);
                              }
                              §§goto(addr366);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr204);
                     }
                     §§goto(addr127);
                  }
               }
               §§goto(addr134);
            }
            else
            {
               §§push(_loc6_.m_sweep);
               if(_loc18_)
               {
                  §§pop().c0.SetV(_loc6_.m_sweep.c);
                  if(_loc18_ || param2)
                  {
                     addr369:
                     _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                     §§goto(addr373);
                  }
                  §§goto(addr166);
               }
               §§goto(addr369);
            }
         }
         if(_loc18_ || param2)
         {
            §§push(this.§?!?§);
            if(_loc18_ || param1)
            {
               §§pop().§",§(param1,this.§7!K§,this.§<$§,this.§]"#§);
               addr402:
               §§push(this.§?!?§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(!(_loc19_ && param2))
            {
               §§push(0);
               if(_loc18_ || param3)
               {
                  _loc4_ = §§pop();
                  if(!_loc19_)
                  {
                     loop22:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc18_)
                        {
                           §§push(this.§"F§);
                           if(!_loc19_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§6w§[_loc4_]).InitVelocityConstraints(param1);
                                 if(!(_loc19_ && param2))
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(!(_loc19_ && this))
                              {
                                 addr461:
                                 §§push(0);
                                 if(!_loc19_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc18_ || param3)
                                    {
                                       loop145:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc19_ && param1))
                                          {
                                             §§push(param1.§#!Y§);
                                             if(!(_loc19_ && param2))
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   §§push(0);
                                                   if(!_loc19_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(!_loc19_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc18_)
                                                            {
                                                               §§push(this.§"F§);
                                                               if(!(_loc19_ && param3))
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     (_loc7_ = this.§6w§[_loc5_]).SolveVelocityConstraints(param1);
                                                                     if(!(_loc19_ && param1))
                                                                     {
                                                                        _loc5_++;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(!(_loc19_ && param1))
                                                                  {
                                                                     _loc8_.SolveVelocityConstraints();
                                                                     if(!(_loc19_ && this))
                                                                     {
                                                                        _loc4_++;
                                                                        if(!_loc19_)
                                                                        {
                                                                           continue loop145;
                                                                        }
                                                                        §§goto(addr1479);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr1144);
                                                                     }
                                                                  }
                                                                  §§goto(addr1197);
                                                               }
                                                               §§goto(addr1464);
                                                            }
                                                            §§goto(addr1720);
                                                         }
                                                      }
                                                   }
                                                   break loop22;
                                                }
                                                if(!_loc19_)
                                                {
                                                   §§push(0);
                                                   if(_loc18_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(_loc18_)
                                                      {
                                                         addr575:
                                                         §§push(_loc4_);
                                                         if(!_loc19_)
                                                         {
                                                            §§push(this.§"F§);
                                                            if(!_loc19_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(_loc18_ || param1)
                                                                     {
                                                                        _loc8_.§2"%§();
                                                                        if(_loc18_)
                                                                        {
                                                                           addr594:
                                                                           §§push(0);
                                                                           if(_loc18_ || param1)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              if(_loc18_)
                                                                              {
                                                                                 addr1144:
                                                                                 while(true)
                                                                                 {
                                                                                    addr1151:
                                                                                    §§push(_loc4_);
                                                                                    addr1774:
                                                                                    if(!(_loc19_ && this))
                                                                                    {
                                                                                       break loop145;
                                                                                    }
                                                                                    addr1774:
                                                                                    loop79:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§3"'§);
                                                                                       addr1776:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             §§goto(addr1777);
                                                                                          }
                                                                                          addr1773:
                                                                                          (_loc6_ = this.§0p§[_loc4_]).SetAwake(false);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             _loc4_++;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop79;
                                                                                          }
                                                                                          continue loop79;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr1144:
                                                                              }
                                                                              loop151:
                                                                              while(true)
                                                                              {
                                                                                 this.§7s§(_loc8_.§]!I§);
                                                                                 loop40:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc19_ && param1))
                                                                                    {
                                                                                       §§push(param3);
                                                                                       if(_loc18_ || this)
                                                                                       {
                                                                                          if(!(_loc18_ || this))
                                                                                          {
                                                                                             loop37:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                addr1482:
                                                                                                loop38:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         addr1487:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr1452:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  §§push(param1.§5!6§);
                                                                                                                  if(_loc18_ || this)
                                                                                                                  {
                                                                                                                     addr1464:
                                                                                                                     loop81:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                        {
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop151;
                                                                                                                              }
                                                                                                                              addr1467:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr1777);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 continue loop37;
                                                                                                                              }
                                                                                                                              _loc12_ = §§pop();
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 addr1212:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(true);
                                                                                                                                    if(!(_loc18_ || param3))
                                                                                                                                    {
                                                                                                                                       continue loop37;
                                                                                                                                    }
                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    loop34:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(b2Settings.b2_linearSleepTolerance);
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             while(_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop36:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc16_ = §§pop();
                                                                                                                                                   addr1424:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr1345:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                         if(_loc19_ && param2)
                                                                                                                                                         {
                                                                                                                                                            continue loop36;
                                                                                                                                                         }
                                                                                                                                                         §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                                                         if(!(_loc19_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc18_ || param3))
                                                                                                                                                            {
                                                                                                                                                               continue loop36;
                                                                                                                                                            }
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(!(_loc19_ && this))
                                                                                                                                                            {
                                                                                                                                                               continue loop36;
                                                                                                                                                            }
                                                                                                                                                            addr1728:
                                                                                                                                                            §§push(b2Settings.b2_timeToSleep);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop36;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   break loop34;
                                                                                                                                                }
                                                                                                                                                continue loop34;
                                                                                                                                             }
                                                                                                                                             addr1420:
                                                                                                                                             addr1447:
                                                                                                                                          }
                                                                                                                                          if(§§pop() >= §§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1733);
                                                                                                                                             }
                                                                                                                                             addr1749:
                                                                                                                                             §§goto(addr1773);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1777);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1420);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1212);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(!(_loc19_ && param2))
                                                                                                                                    {
                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          addr1183:
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1185);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   break loop22;
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr1774);
                                                                                                                                             addr1290:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1774);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1424);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 addr1185:
                                                                                                                                 §§goto(addr1720);
                                                                                                                                 addr1197:
                                                                                                                              }
                                                                                                                              §§goto(addr1728);
                                                                                                                              §§push(_loc15_);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 break loop81;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    continue loop38;
                                                                                                                                 }
                                                                                                                                 if(_loc19_ && this)
                                                                                                                                 {
                                                                                                                                    continue loop38;
                                                                                                                                 }
                                                                                                                                 §§pop();
                                                                                                                                 if(!(_loc19_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    continue loop37;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1777);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr1313:
                                                                                                                        }
                                                                                                                        §§goto(addr1777);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§goto(addr1447);
                                                                                                                              §§push(Number(Number.MAX_VALUE));
                                                                                                                           }
                                                                                                                           §§goto(addr1450);
                                                                                                                        }
                                                                                                                        §§goto(addr1777);
                                                                                                                     }
                                                                                                                     addr1441:
                                                                                                                     addr1464:
                                                                                                                  }
                                                                                                                  §§goto(addr1724);
                                                                                                               }
                                                                                                               break loop40;
                                                                                                            }
                                                                                                         }
                                                                                                         addr1487:
                                                                                                      }
                                                                                                      §§goto(addr1467);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc4_++;
                                                                                                      §§goto(addr1487);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1441);
                                                                                       }
                                                                                       §§goto(addr1482);
                                                                                       addr1479:
                                                                                    }
                                                                                    §§goto(addr1487);
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 if(!(_loc19_ && param1))
                                                                                 {
                                                                                    §§goto(addr1749);
                                                                                 }
                                                                                 §§goto(addr1777);
                                                                              }
                                                                           }
                                                                           §§goto(addr1774);
                                                                        }
                                                                        §§goto(addr1733);
                                                                     }
                                                                     addr1170:
                                                                     §§goto(addr1452);
                                                                     addr1170:
                                                                  }
                                                                  else
                                                                  {
                                                                     (_loc7_ = this.§6w§[_loc4_]).§2"%§();
                                                                     if(_loc18_ || param1)
                                                                     {
                                                                        _loc4_++;
                                                                     }
                                                                     §§goto(addr575);
                                                                  }
                                                                  §§goto(addr1144);
                                                               }
                                                               addr582:
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(_loc18_ || param3)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc18_)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§goto(addr1170);
                                                                        }
                                                                        §§goto(addr1183);
                                                                     }
                                                                     §§goto(addr1338);
                                                                  }
                                                                  §§goto(addr1727);
                                                               }
                                                               else
                                                               {
                                                                  if((_loc6_ = this.§0p§[_loc4_]).§<!A§() == b2Body.b2_staticBody)
                                                                  {
                                                                     if(!_loc19_)
                                                                     {
                                                                        loop140:
                                                                        while(true)
                                                                        {
                                                                           _loc4_++;
                                                                           if(!(_loc19_ && param3))
                                                                           {
                                                                              if(_loc18_ || param3)
                                                                              {
                                                                                 if(_loc18_ || this)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       loop88:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc6_.§-F§();
                                                                                          addr675:
                                                                                          addr693:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                if(!(_loc19_ && param3))
                                                                                                {
                                                                                                   if(_loc18_ || param1)
                                                                                                   {
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      loop129:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop103:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.§`!9§);
                                                                                                            if(!(_loc19_ && this))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.m_angularVelocity);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc18_ || param3)
                                                                                                                        {
                                                                                                                           if(_loc18_ || param3)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc18_ || param2)
                                                                                                                                 {
                                                                                                                                    if(!(_loc19_ && param2))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                       {
                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             if(_loc19_ && param1)
                                                                                                                                             {
                                                                                                                                                continue loop103;
                                                                                                                                             }
                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                      if(_loc18_ || param3)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                         {
                                                                                                                                                            loop119:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.m_angularVelocity);
                                                                                                                                                               addr993:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc19_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        addr1008:
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                    if(_loc18_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                       if(!(_loc19_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1029:
                                                                                                                                                                                          §§push(§§pop() * param1.§4!z§);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                       loop126:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr863:
                                                                                                                                                                                          loop122:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_.m_sweep);
                                                                                                                                                                                             addr866:
                                                                                                                                                                                             addr883:
                                                                                                                                                                                             addr849:
                                                                                                                                                                                             loop101:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                                                addr871:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break loop101;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1101:
                                                                                                                                                                                                   loop102:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_.§?!^§);
                                                                                                                                                                                                      if(_loc18_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_.§?!^§);
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1.§4!z§);
                                                                                                                                                                                                                     if(_loc18_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1067:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1070:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc19_ && this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                              continue loop129;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                              if(_loc18_ || param3)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(param1.§4!z§);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1098:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1087:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           continue loop102;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1098);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1067);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1070);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1086:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1087);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().Normalize();
                                                                                                                                                                                                               addr1134:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc6_.§?!^§);
                                                                                                                                                                                                                  addr1084:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1133:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1086);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1084);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc6_.m_sweep);
                                                                                                                                                                                             while(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr866);
                                                                                                                                                                                                §§goto(addr883);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc6_.m_sweep);
                                                                                                                                                                                             loop117:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().a);
                                                                                                                                                                                                loop90:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().a0 = §§pop();
                                                                                                                                                                                                   addr855:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc18_ || param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop103;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                                                                                                                      loop91:
                                                                                                                                                                                                      for(; !(_loc19_ && param1); while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc19_ && this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop91;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr752);
                                                                                                                                                                                                      },§§goto(addr809))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().c);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                                                                            addr826:
                                                                                                                                                                                                            addr752:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                                                                               addr827:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                  addr828:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1.§`!9§);
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc6_.§?!^§);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                                                                           addr835:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr834:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr836:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        addr837:
                                                                                                                                                                                                                        loop99:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                           addr838:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc19_ && this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop99;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                              continue loop91;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr871);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                                                                            if(_loc19_ && param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().c);
                                                                                                                                                                                                               if(!(_loc19_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                  if(!(_loc19_ && param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1.§`!9§);
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc6_.§?!^§);
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                                                                           if(_loc18_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr797:
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr800:
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(_loc18_ || param3)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr809:
                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop119;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop91;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc6_.m_sweep);
                                                                                                                                                                                                                                          if(!(_loc18_ || param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop117;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop().a);
                                                                                                                                                                                                                                          if(!(_loc19_ && param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc18_ || param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop90;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(param1.§`!9§);
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().a = §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc18_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop88;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop126;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr901:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop122;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1134);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr809);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr810:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr828);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1101);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr837);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr836);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr835);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr834);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr797);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr800);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr827);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr826);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr827);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr849);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1033:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1029);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    loop104:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                       if(_loc18_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc19_ && param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc9_);
                                                                                                                                                                                                addr1121:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   addr1122:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                                                                      addr1123:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               addr1127:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  break loop104;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1126:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1140:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1120:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             continue loop104;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                                                       continue loop103;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1128:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr1009:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                              if(_loc18_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * param1.§4!z§);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr901);
                                                                                                                                                                        }
                                                                                                                                                                        addr1008:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1122);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1128);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr863);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1008);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr993);
                                                                                                                                                }
                                                                                                                                                addr978:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1123);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1008);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1126);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1127);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1008);
                                                                                                                              }
                                                                                                                              §§goto(addr993);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr1137:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.§?!^§);
                                                                                                                                 addr1139:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1137:
                                                                                                                           }
                                                                                                                           §§goto(addr1140);
                                                                                                                        }
                                                                                                                        §§goto(addr993);
                                                                                                                     }
                                                                                                                     §§goto(addr1121);
                                                                                                                  }
                                                                                                                  §§goto(addr1008);
                                                                                                               }
                                                                                                               addr914:
                                                                                                            }
                                                                                                            §§goto(addr993);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr1133);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1009);
                                                                                                }
                                                                                                §§goto(addr855);
                                                                                             }
                                                                                             §§goto(addr838);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop140;
                                                                                          }
                                                                                          §§goto(addr1144);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr1144);
                                                                                    }
                                                                                    §§goto(addr1148);
                                                                                 }
                                                                                 §§goto(addr810);
                                                                              }
                                                                              §§goto(addr732);
                                                                           }
                                                                           §§goto(addr675);
                                                                        }
                                                                        §§goto(addr1151);
                                                                     }
                                                                     §§goto(addr1033);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(param1.§`!9§);
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(_loc6_.§?!^§);
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    if(_loc18_ || param3)
                                                                                    {
                                                                                       §§goto(addr1137);
                                                                                       §§push(param1.§`!9§);
                                                                                    }
                                                                                    §§goto(addr693);
                                                                                 }
                                                                                 §§goto(addr1120);
                                                                              }
                                                                              §§goto(addr1137);
                                                                           }
                                                                           §§goto(addr978);
                                                                        }
                                                                        §§goto(addr1139);
                                                                     }
                                                                  }
                                                                  §§goto(addr914);
                                                               }
                                                            }
                                                            addr1156:
                                                         }
                                                         break loop22;
                                                      }
                                                      addr1777:
                                                      return;
                                                   }
                                                   §§goto(addr1774);
                                                }
                                                §§goto(addr1144);
                                                §§goto(addr1170);
                                             }
                                             addr1297:
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc18_ || this)
                                                {
                                                   §§push(_loc12_);
                                                   if(_loc18_ || this)
                                                   {
                                                      §§goto(addr1313);
                                                   }
                                                   §§goto(addr1316);
                                                }
                                                §§goto(addr1450);
                                             }
                                             §§push((_loc7_ = this.§6w§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                             if(_loc18_ || param1)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(!(_loc19_ && this))
                                                {
                                                   _loc14_ = §§pop();
                                                   if(_loc18_)
                                                   {
                                                      §§push(_loc13_);
                                                      if(_loc18_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop25:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr1273:
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        if(_loc18_ || param2)
                                                                        {
                                                                           _loc13_ = §§pop();
                                                                        }
                                                                        addr1288:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr1289:
                                                                           while(true)
                                                                           {
                                                                              addr1257:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc14_);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    break loop28;
                                                                                 }
                                                                                 continue loop25;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr1271:
                                                            }
                                                            §§goto(addr1288);
                                                         }
                                                      }
                                                      §§goto(addr1288);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc5_++;
                                                      if(!_loc18_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr1257);
                                                      }
                                                      §§goto(addr1289);
                                                   }
                                                   §§goto(addr1290);
                                                }
                                             }
                                             §§goto(addr1288);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§3"'§);
                                          if(_loc18_)
                                          {
                                             §§goto(addr1156);
                                          }
                                          §§goto(addr1464);
                                       }
                                    }
                                    §§goto(addr1144);
                                 }
                                 break;
                              }
                              §§goto(addr1212);
                           }
                           §§goto(addr582);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(this.§"F§);
                        if(_loc18_)
                        {
                           §§goto(addr1297);
                        }
                        §§goto(addr1464);
                     }
                  }
                  §§goto(addr461);
               }
               §§goto(addr1338);
            }
            §§goto(addr594);
         }
         §§goto(addr402);
      }
      
      public function §+Q§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc9_:b2Body = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         if(!(_loc14_ && _loc3_))
         {
            §§push(this.§?!?§);
            if(_loc13_)
            {
               §§pop().§",§(param1,this.§7!K§,this.§<$§,this.§]"#§);
               addr54:
               §§push(this.§?!?§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(_loc13_)
            {
               _loc2_ = 0;
            }
            while(true)
            {
               loop1:
               while(true)
               {
                  if(_loc2_ < this.§"F§)
                  {
                     this.§6w§[_loc2_].InitVelocityConstraints(param1);
                     while(true)
                     {
                        _loc2_++;
                        if(_loc14_ && _loc3_)
                        {
                           break;
                        }
                        if(_loc13_ || param1)
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
                  if(_loc13_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc14_)
                  {
                     §§push(0);
                     loop3:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!(_loc14_ && _loc3_))
                              {
                                 §§push(param1.§5!6§);
                                 if(!_loc14_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc13_ || _loc3_)
                                       {
                                          if(!_loc13_)
                                          {
                                             break;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             §§push(0);
                                             addr275:
                                             loop25:
                                             while(true)
                                             {
                                                if(_loc14_)
                                                {
                                                   continue loop3;
                                                }
                                                _loc2_ = §§pop();
                                                if(_loc13_ || _loc2_)
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   loop26:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc14_ && param1)
                                                      {
                                                         continue loop25;
                                                      }
                                                      if(_loc13_)
                                                      {
                                                         if(!(_loc14_ && _loc2_))
                                                         {
                                                            §§push(param1.§#!Y§);
                                                            if(!_loc14_)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(_loc13_ || _loc2_)
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc13_)
                                                                           {
                                                                              continue loop25;
                                                                           }
                                                                           addr988:
                                                                           addr988:
                                                                           §§goto(addr976);
                                                                        }
                                                                        else
                                                                        {
                                                                           loop27:
                                                                           for(; !(_loc14_ && _loc2_); this.§6w§[_loc3_].SolveVelocityConstraints(param1))
                                                                           {
                                                                              _loc3_++;
                                                                              loop28:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc14_ && this))
                                                                                 {
                                                                                    addr167:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       addr169:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§"F§);
                                                                                          if(!(_loc14_ && _loc2_))
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                continue loop27;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr976);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr167:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr400:
                                                                                    while(true)
                                                                                    {
                                                                                       addr328:
                                                                                       addr452:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          continue loop3;
                                                                                       }
                                                                                       addr452:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          addr453:
                                                                                          while(true)
                                                                                          {
                                                                                             break loop26;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr400:
                                                                                 }
                                                                                 addr180:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc13_ || _loc3_)
                                                                                    {
                                                                                       continue loop26;
                                                                                    }
                                                                                    continue loop28;
                                                                                 }
                                                                              }
                                                                           }
                                                                           loop16:
                                                                           while(_loc13_ || _loc2_)
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(!(_loc14_ && param1))
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    loop17:
                                                                                    while(_loc13_)
                                                                                    {
                                                                                       if(!(_loc14_ && _loc3_))
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop18:
                                                                                          for(; !(_loc14_ && _loc3_); if(_loc14_ && _loc3_)
                                                                                          {
                                                                                             continue;
                                                                                          },if(_loc14_)
                                                                                          {
                                                                                             continue loop17;
                                                                                          },§§goto(addr314))
                                                                                          {
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            _loc2_++;
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            addr318:
                                                                                                            if(!(_loc14_ && this))
                                                                                                            {
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            addr449:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr318);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr991);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                      addr314:
                                                                                                   }
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc14_ && _loc2_)
                                                                                                      {
                                                                                                         addr410:
                                                                                                         _loc7_ = §§pop();
                                                                                                         break loop16;
                                                                                                      }
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            if(_loc13_ || _loc3_)
                                                                                                            {
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                         addr397:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr460:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         addr461:
                                                                                                         loop8:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            addr462:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr452);
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr400);
                                                                                                   §§goto(addr328);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr430:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      break loop17;
                                                                                                   }
                                                                                                   addr408:
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                §§goto(addr410);
                                                                                             }
                                                                                             §§goto(addr461);
                                                                                          }
                                                                                          addr403:
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                §§goto(addr408);
                                                                                             }
                                                                                             §§goto(addr410);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr452);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc13_ || _loc2_))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   addr445:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(!(_loc14_ && this))
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                      }
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   continue loop24;
                                                                                                }
                                                                                                addr444:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr430);
                                                                                    }
                                                                                    §§pop();
                                                                                    §§goto(addr403);
                                                                                    §§push(_loc8_);
                                                                                    addr432:
                                                                                 }
                                                                                 §§goto(addr445);
                                                                              }
                                                                              §§goto(addr432);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc3_++;
                                                                              §§goto(addr400);
                                                                           }
                                                                           addr347:
                                                                           addr411:
                                                                        }
                                                                        §§goto(addr991);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc2_++;
                                                                        §§goto(addr180);
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc4_.SolveVelocityConstraints();
                                                                  if(_loc13_ || this)
                                                                  {
                                                                     if(_loc13_ || _loc2_)
                                                                     {
                                                                        addr217:
                                                                        _loc3_ = 0;
                                                                        if(_loc13_ || param1)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 §§goto(addr167);
                                                                              }
                                                                              §§goto(addr453);
                                                                           }
                                                                           §§goto(addr397);
                                                                        }
                                                                        §§goto(addr991);
                                                                     }
                                                                     §§goto(addr462);
                                                                  }
                                                               }
                                                               §§goto(addr991);
                                                            }
                                                            addr976:
                                                            if(§§pop() < this.§3"'§)
                                                            {
                                                               if((_loc9_ = this.§0p§[_loc2_]).§<!A§() == b2Body.b2_staticBody)
                                                               {
                                                                  if(!(_loc14_ && _loc3_))
                                                                  {
                                                                     addr544:
                                                                     _loc2_++;
                                                                     if(_loc13_)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              addr551:
                                                                              _loc9_.§-F§();
                                                                              if(_loc13_ || this)
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          if(_loc13_ || _loc2_)
                                                                                          {
                                                                                             §§goto(addr544);
                                                                                          }
                                                                                          addr737:
                                                                                          _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
                                                                                          addr730:
                                                                                          _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
                                                                                          addr734:
                                                                                          addr755:
                                                                                          addr742:
                                                                                       }
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          addr720:
                                                                                          _loc9_.m_sweep.c.x += param1.§`!9§ * _loc9_.§?!^§.x;
                                                                                          addr708:
                                                                                          addr713:
                                                                                          addr715:
                                                                                          addr719:
                                                                                          addr718:
                                                                                          addr717:
                                                                                          addr712:
                                                                                          addr711:
                                                                                          addr709:
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             addr637:
                                                                                             §§push(_loc9_.m_sweep.c);
                                                                                             if(!(_loc14_ && _loc2_))
                                                                                             {
                                                                                                §§push(_loc9_.m_sweep);
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   §§push(§§pop().c);
                                                                                                   if(_loc13_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(_loc13_ || this)
                                                                                                      {
                                                                                                         §§push(param1.§`!9§);
                                                                                                         if(_loc13_ || this)
                                                                                                         {
                                                                                                            §§push(_loc9_.§?!^§);
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  addr682:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        addr687:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           if(!(_loc14_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              addr697:
                                                                                                                              if(!(_loc14_ && this))
                                                                                                                              {
                                                                                                                                 §§push(_loc9_.m_sweep);
                                                                                                                                 if(!(_loc14_ && this))
                                                                                                                                 {
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          if(_loc13_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_.m_sweep);
                                                                                                                                             if(_loc13_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().a);
                                                                                                                                                if(!(_loc14_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§`!9§);
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * _loc9_.m_angularVelocity);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                }
                                                                                                                                                if(!(_loc14_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§pop().a = §§pop();
                                                                                                                                                   addr629:
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr551);
                                                                                                                                                      }
                                                                                                                                                      addr911:
                                                                                                                                                      §§push(param1.§`!9§);
                                                                                                                                                      if(!_loc14_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_.m_angularVelocity);
                                                                                                                                                            if(!(_loc14_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               addr772:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        addr780:
                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(_loc13_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(_loc13_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                                                                 if(_loc13_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc14_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!(_loc14_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr823:
                                                                                                                                                                                             if(_loc13_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                if(_loc13_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr839:
                                                                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr843:
                                                                                                                                                                                                      §§push(_loc9_.m_angularVelocity);
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                      if(_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr846:
                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                                                                               §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * param1.§4!z§);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                               addr860:
                                                                                                                                                                                                               if(_loc13_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr734);
                                                                                                                                                                                                                  addr867:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr957:
                                                                                                                                                                                                               _loc9_.§?!^§.Normalize();
                                                                                                                                                                                                               addr924:
                                                                                                                                                                                                               _loc9_.§?!^§.x *= b2Settings.b2_maxTranslation * param1.§4!z§;
                                                                                                                                                                                                               addr918:
                                                                                                                                                                                                               addr955:
                                                                                                                                                                                                               addr958:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc14_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc9_.§?!^§);
                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc9_.§?!^§);
                                                                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                              if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(param1.§4!z§);
                                                                                                                                                                                                                                    if(_loc13_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr905:
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr908:
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(_loc13_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                                                                             §§goto(addr911);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr918);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr905);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr924);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr908);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr924);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr957);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr935:
                                                                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr938:
                                                                                                                                                                                                               §§push(§§pop() * _loc10_);
                                                                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                                                                               if(_loc13_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc14_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr951:
                                                                                                                                                                                                                     if(§§pop() + §§pop() * _loc11_ > b2Settings.b2_maxTranslationSquared)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr955);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr911);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr972:
                                                                                                                                                                                                                  §§push(Number(§§pop() * §§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr951);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc11_ = §§pop();
                                                                                                                                                                                                            addr974:
                                                                                                                                                                                                            §§goto(addr974);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                                                                         §§push(b2Settings.b2_maxRotation);
                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * param1.§4!z§);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().m_angularVelocity = §§pop();
                                                                                                                                                                                                         §§goto(addr755);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr951);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr734);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr843);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr972);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr843);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr938);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr951);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr839);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr951);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr843);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr935);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr823);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr938);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr780);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr843);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr951);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr843);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr860);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr730);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr737);
                                                                                                                                    }
                                                                                                                                    §§goto(addr708);
                                                                                                                                 }
                                                                                                                                 §§goto(addr637);
                                                                                                                              }
                                                                                                                              §§goto(addr742);
                                                                                                                           }
                                                                                                                           §§goto(addr713);
                                                                                                                        }
                                                                                                                        §§goto(addr720);
                                                                                                                     }
                                                                                                                     §§goto(addr715);
                                                                                                                  }
                                                                                                                  §§goto(addr719);
                                                                                                               }
                                                                                                               §§goto(addr718);
                                                                                                            }
                                                                                                            §§goto(addr717);
                                                                                                         }
                                                                                                         §§goto(addr682);
                                                                                                      }
                                                                                                      §§goto(addr687);
                                                                                                   }
                                                                                                   §§goto(addr712);
                                                                                                }
                                                                                                §§goto(addr711);
                                                                                             }
                                                                                             §§goto(addr709);
                                                                                          }
                                                                                          §§goto(addr843);
                                                                                       }
                                                                                       §§goto(addr958);
                                                                                    }
                                                                                    §§goto(addr720);
                                                                                 }
                                                                                 §§goto(addr697);
                                                                              }
                                                                              §§goto(addr629);
                                                                           }
                                                                           addr975:
                                                                           §§goto(addr976);
                                                                           §§push(_loc2_);
                                                                        }
                                                                        §§goto(addr846);
                                                                     }
                                                                     §§goto(addr551);
                                                                  }
                                                                  §§goto(addr843);
                                                               }
                                                               §§push(param1.§`!9§);
                                                               if(_loc13_ || param1)
                                                               {
                                                                  §§push(_loc9_.§?!^§);
                                                                  if(_loc13_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc13_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc13_ || param1)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc14_)
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              if(_loc13_ || this)
                                                                              {
                                                                                 §§push(param1.§`!9§);
                                                                                 if(!(_loc14_ && param1))
                                                                                 {
                                                                                    addr970:
                                                                                    §§goto(addr972);
                                                                                    §§push(_loc9_.§?!^§.y);
                                                                                 }
                                                                                 §§goto(addr972);
                                                                              }
                                                                              §§goto(addr867);
                                                                           }
                                                                           §§goto(addr846);
                                                                        }
                                                                        §§goto(addr938);
                                                                     }
                                                                     §§goto(addr772);
                                                                  }
                                                                  §§goto(addr970);
                                                               }
                                                               §§goto(addr938);
                                                            }
                                                            if(_loc13_)
                                                            {
                                                               addr991:
                                                               this.§7s§(_loc4_.§]!I§);
                                                               §§goto(addr995);
                                                            }
                                                            addr995:
                                                            return;
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      §§goto(addr449);
                                                   }
                                                }
                                                §§goto(addr991);
                                             }
                                          }
                                       }
                                       §§goto(addr991);
                                    }
                                    else
                                    {
                                       §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                    }
                                    §§goto(addr460);
                                 }
                                 §§goto(addr988);
                              }
                              §§goto(addr275);
                           }
                        }
                     }
                  }
                  §§goto(addr411);
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §7s§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(!_loc6_)
         {
            if(this.§5!N§ == null)
            {
               if(_loc7_ || this)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§<$§)
         {
            _loc3_ = this.§7!K§[_loc2_];
            _loc4_ = param1[_loc2_];
            if(!_loc6_)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  _loc5_ = §§pop();
                  addr152:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr113);
         }
      }
      
      public function §<",§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            param1.§6d§ = this.§3"'§;
         }
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§3"'§ + 1;
         _loc3_.§3"'§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§3"'§;
         this.§0p§[_loc2_] = param1;
      }
      
      public function §@!#§(param1:b2Contact) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§<$§ + 1;
         _loc3_.§<$§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§<$§;
         this.§7!K§[_loc2_] = param1;
      }
      
      public function §]!C§(param1:b2Joint) : void
      {
         var _loc3_:*;
         var _loc4_:* = (_loc3_ = this).§"F§ + 1;
         _loc3_.§"F§ = _loc4_;
         var _loc2_:* = (_loc3_ = this).§"F§;
         this.§6w§[_loc2_] = param1;
      }
   }
}
