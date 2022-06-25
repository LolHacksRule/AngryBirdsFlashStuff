package §#I§
{
   import §&H§.*;
   import §2!'§.*;
   import §4]§.*;
   import §>!Z§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §for§:b2ContactImpulse;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §for§ = new b2ContactImpulse();
         }
      }
      
      private var §'!H§;
      
      private var §02§:b2ContactListener;
      
      private var §[!§:b2ContactSolver;
      
      b2internal var §?m§:Vector.<b2Body>;
      
      b2internal var §"!V§:Vector.<b2Contact>;
      
      b2internal var §"!2§:Vector.<b2Joint>;
      
      b2internal var §=!t§:int;
      
      b2internal var §9f§:int;
      
      b2internal var §,l§:int;
      
      private var §2! §:int;
      
      b2internal var §6%§:int;
      
      b2internal var § !3§:int;
      
      public function b2Island()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§?m§ = new Vector.<b2Body>();
               addr67:
               if(_loc1_ || _loc1_)
               {
                  this.§"!2§ = new Vector.<b2Joint>();
                  addr74:
                  if(_loc2_ && this)
                  {
                     while(!_loc2_)
                     {
                        §§goto(addr67);
                        §§goto(addr74);
                     }
                     while(true)
                     {
                        this.§"!V§ = new Vector.<b2Contact>();
                        §§goto(addr65);
                     }
                     addr65:
                     addr82:
                  }
                  return;
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §`!D§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = 0;
         if(_loc9_)
         {
            this.§2! § = param1;
            while(true)
            {
               this.§6%§ = param2;
               loop1:
               while(true)
               {
                  this.§ !3§ = param3;
                  addr251:
                  while(true)
                  {
                     this.§=!t§ = 0;
                     addr246:
                     while(true)
                     {
                        this.§,l§ = 0;
                        continue loop1;
                     }
                  }
               }
               loop5:
               while(!(_loc8_ && param1))
               {
                  this.§'!H§ = param4;
                  loop6:
                  do
                  {
                     if(_loc8_)
                     {
                        continue loop5;
                     }
                     this.§02§ = param5;
                     loop7:
                     for(; _loc9_; if(!(_loc8_ && this))
                     {
                        continue loop6;
                     })
                     {
                        if(_loc9_)
                        {
                           this.§[!§ = param6;
                           while(_loc9_)
                           {
                              _loc7_ = int(this.§?m§.length);
                              if(!_loc8_)
                              {
                                 continue loop7;
                              }
                           }
                           §§goto(addr246);
                        }
                        §§goto(addr251);
                     }
                     §§goto(addr234);
                  }
                  while(!_loc9_);
                  
                  loop9:
                  while(true)
                  {
                     §§push(_loc7_);
                     loop10:
                     while(true)
                     {
                        §§push(param1);
                        loop11:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              loop12:
                              while(true)
                              {
                                 §§push(int(this.§"!V§.length));
                                 loop13:
                                 while(true)
                                 {
                                    _loc7_ = §§pop();
                                    loop14:
                                    while(true)
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(!(_loc8_ && param3))
                                          {
                                             if(_loc9_)
                                             {
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                §§push(param2);
                                                while(true)
                                                {
                                                   if(!(_loc8_ && param3))
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         addr110:
                                                         this.§"!V§[_loc7_] = null;
                                                         break;
                                                         addr110:
                                                      }
                                                      while(_loc9_ || param3)
                                                      {
                                                         §§push(int(this.§"!2§.length));
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue loop11;
                                                   addr26:
                                                   §§push(param3);
                                                   if(!(_loc9_ || param3))
                                                   {
                                                      continue;
                                                   }
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(!(_loc9_ || param2))
                                                         {
                                                            addr74:
                                                            if(_loc9_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  if(_loc8_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     _loc7_++;
                                                                     addr49:
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(!(_loc8_ && param3))
                                                                        {
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              addr65:
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§goto(addr26);
                                                                                 }
                                                                                 addr131:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    addr132:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr110);
                                                                           }
                                                                           _loc7_++;
                                                                           continue loop9;
                                                                           addr166:
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                               §§goto(addr110);
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr49);
                                                   }
                                                   this.§"!2§[_loc7_] = null;
                                                   §§goto(addr74);
                                                }
                                                _loc7_++;
                                                continue;
                                             }
                                             continue loop13;
                                          }
                                          §§goto(addr131);
                                       }
                                       continue loop10;
                                    }
                                 }
                              }
                           }
                           else
                           {
                              this.§?m§[_loc7_] = null;
                           }
                           §§goto(addr166);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      public function §6!6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§=!t§ = 0;
            do
            {
               this.§,l§ = 0;
               do
               {
                  this.§9f§ = 0;
               }
               while(_loc2_);
               
            }
            while(!_loc1_);
            
         }
      }
      
      public function §,!&§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         if(_loc19_ || param2)
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc4_ < this.§=!t§)
         {
            if((_loc6_ = this.§?m§[_loc4_]).§ 5§() != b2Body.b2_dynamicBody)
            {
               if(_loc19_ || param1)
               {
                  loop17:
                  while(true)
                  {
                     _loc4_++;
                     if(!(_loc18_ && this))
                     {
                        addr160:
                        if(_loc19_ || param3)
                        {
                           if(!_loc18_)
                           {
                              if(false)
                              {
                                 loop13:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    §§push(_loc6_.m_angularVelocity);
                                    if(!_loc18_)
                                    {
                                       §§push(b2Math);
                                       §§push(1);
                                       §§push(param1.§?!C§);
                                       if(_loc19_)
                                       {
                                          §§push(§§pop() * _loc6_.§[!7§);
                                       }
                                       §§push(§§pop() * §§pop().§?!?§(§§pop() - §§pop(),0,1));
                                    }
                                    §§pop().m_angularVelocity = §§pop();
                                    addr192:
                                    while(!_loc18_)
                                    {
                                       continue loop17;
                                    }
                                    addr259:
                                    loop10:
                                    while(true)
                                    {
                                       §§push(_loc6_.§%!<§);
                                       if(!(_loc18_ && this))
                                       {
                                          while(true)
                                          {
                                             §§push(b2Math);
                                             §§push(1);
                                             §§push(param1.§?!C§);
                                             if(!_loc18_)
                                             {
                                                §§push(§§pop() * _loc6_.§];§);
                                             }
                                             §§push(§§pop().§?!?§(§§pop() - §§pop(),0,1));
                                             if(!(_loc19_ || this))
                                             {
                                                break loop10;
                                             }
                                             while(true)
                                             {
                                                §§pop().§9""§(§§pop());
                                                addr226:
                                                while(true)
                                                {
                                                   continue loop13;
                                                   §§goto(addr160);
                                                }
                                             }
                                          }
                                          addr205:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(_loc6_.§%!<§);
                                             addr264:
                                             while(true)
                                             {
                                                §§push(§§pop().y);
                                                if(_loc19_ || param2)
                                                {
                                                   §§push(param1.§?!C§);
                                                   if(_loc19_ || param1)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param2.y);
                                                         if(_loc19_)
                                                         {
                                                            §§push(_loc6_.§3!q§);
                                                            if(!_loc18_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_.§76§);
                                                                  addr291:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     addr292:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                  }
                                                               }
                                                               addr289:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                         }
                                                         addr294:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                      }
                                                      addr281:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      break loop10;
                                                   }
                                                }
                                                break loop10;
                                             }
                                             continue loop10;
                                          }
                                          addr262:
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop().y = §§pop();
                                    }
                                 }
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              §§push(_loc6_);
                              §§push(_loc6_.m_angularVelocity);
                              if(!_loc18_)
                              {
                                 §§push(param1.§?!C§);
                                 if(_loc19_ || param1)
                                 {
                                    §§push(_loc6_.§2!1§);
                                    if(!(_loc18_ && param1))
                                    {
                                       addr258:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc18_)
                                       {
                                          addr256:
                                          §§push(§§pop() * _loc6_.§5n§);
                                       }
                                       §§pop().m_angularVelocity = §§pop() + §§pop();
                                       §§goto(addr259);
                                    }
                                 }
                                 §§goto(addr256);
                              }
                              §§goto(addr258);
                           }
                           addr297:
                        }
                        §§goto(addr226);
                     }
                     §§goto(addr192);
                  }
               }
               else
               {
                  §§push(_loc6_.§%!<§);
                  addr150:
               }
               §§goto(addr262);
            }
            else
            {
               §§push(_loc6_.§%!<§);
               if(_loc19_)
               {
                  §§push(_loc6_.§%!<§);
                  if(_loc19_ || param1)
                  {
                     §§push(§§pop().x);
                     if(!_loc18_)
                     {
                        §§push(param1.§?!C§);
                        if(!(_loc18_ && this))
                        {
                           §§push(param2.x);
                           if(_loc19_ || this)
                           {
                              §§push(_loc6_.§3!q§);
                              if(_loc19_)
                              {
                                 §§push(_loc6_.§76§);
                                 if(!_loc18_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc19_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc18_)
                                       {
                                          addr123:
                                          §§push(§§pop() + §§pop());
                                          if(_loc19_ || param2)
                                          {
                                             addr131:
                                             §§push(§§pop() * §§pop());
                                             if(_loc19_)
                                             {
                                                addr134:
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc18_ && param2))
                                                {
                                                   §§pop().x = §§pop();
                                                   if(!(_loc18_ && this))
                                                   {
                                                      §§goto(addr150);
                                                   }
                                                   §§goto(addr297);
                                                }
                                                §§goto(addr225);
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr294);
                                       }
                                       §§goto(addr289);
                                    }
                                    §§goto(addr292);
                                 }
                                 §§goto(addr291);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr259);
                  }
                  §§goto(addr264);
               }
            }
            §§goto(addr205);
         }
         if(!_loc18_)
         {
            §§push(this.§[!§);
            if(_loc19_ || param2)
            {
               §§pop().§`!D§(param1,this.§"!V§,this.§,l§,this.§'!H§);
               addr321:
               §§push(this.§[!§);
            }
            var _loc8_:b2ContactSolver;
            (_loc8_ = §§pop()).InitVelocityConstraints(param1);
            if(_loc19_)
            {
               §§push(0);
               if(!(_loc18_ && this))
               {
                  _loc4_ = §§pop();
                  if(_loc19_)
                  {
                     loop19:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!_loc18_)
                        {
                           §§push(this.§9f§);
                           if(!_loc18_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 (_loc7_ = this.§"!2§[_loc4_]).InitVelocityConstraints(param1);
                                 if(_loc19_ || param3)
                                 {
                                    _loc4_++;
                                 }
                                 continue;
                              }
                              if(_loc19_ || param3)
                              {
                                 §§push(0);
                                 if(!_loc18_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc18_ && this))
                                    {
                                       loop20:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc19_)
                                          {
                                             loop21:
                                             while(true)
                                             {
                                                §§push(param1.§7q§);
                                                if(!_loc18_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc19_)
                                                      {
                                                         §§push(0);
                                                         if(_loc19_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(_loc19_)
                                                            {
                                                               addr1076:
                                                               loop134:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(this.§9f§);
                                                                     if(!(_loc18_ && param1))
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           (_loc7_ = this.§"!2§[_loc4_]).§@!O§();
                                                                           if(_loc19_)
                                                                           {
                                                                              _loc4_++;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        if(_loc19_ || param2)
                                                                        {
                                                                           _loc8_.§@!O§();
                                                                           addr1249:
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 if(!(_loc18_ && param3))
                                                                                 {
                                                                                    addr509:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(_loc19_ || param2)
                                                                                       {
                                                                                          break loop134;
                                                                                       }
                                                                                       addr1279:
                                                                                       loop139:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             if(_loc19_ || param3)
                                                                                             {
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            loop71:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                               if(!(_loc18_ && param2))
                                                                                                               {
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     §§push(b2Settings.b2_angularSleepTolerance);
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        addr1311:
                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              addr1321:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc19_ || this)
                                                                                                                              {
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    if(_loc19_ || this)
                                                                                                                                    {
                                                                                                                                       _loc17_ = §§pop();
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc18_ && param1))
                                                                                                                                                {
                                                                                                                                                   continue loop139;
                                                                                                                                                }
                                                                                                                                                loop152:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§7!?§);
                                                                                                                                                   if(_loc19_ || this)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                                                                                                                            if(_loc19_ || param2)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               loop60:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc12_ = §§pop();
                                                                                                                                                                  if(!(_loc18_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     addr1403:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(true);
                                                                                                                                                                        if(!(_loc19_ || param2))
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop60;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        addr1404:
                                                                                                                                                                        addr1697:
                                                                                                                                                                        loop64:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1407:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1394:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1395:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§7=§(_loc8_.§;!d§);
                                                                                                                                                                                          continue loop64;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1407:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              _loc4_++;
                                                                                                                                                                              if(!(_loc19_ || param3))
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop152;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        if(_loc19_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           break loop19;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1743);
                                                                                                                                                                     }
                                                                                                                                                                     addr1114:
                                                                                                                                                                     addr1403:
                                                                                                                                                                  }
                                                                                                                                                                  addr1691:
                                                                                                                                                                  break loop71;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc19_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1267:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1403);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1404);
                                                                                                                                                                           }
                                                                                                                                                                           addr1267:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1407);
                                                                                                                                                                     }
                                                                                                                                                                     addr1264:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1403);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1404);
                                                                                                                                                            }
                                                                                                                                                            addr1255:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1394);
                                                                                                                                                         continue loop152;
                                                                                                                                                      }
                                                                                                                                                      addr1393:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1745);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1674);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1399);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1723);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1362);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1363);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr1361);
                                                                                                                     }
                                                                                                                     addr1694:
                                                                                                                     if(§§pop() >= §§pop())
                                                                                                                     {
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§goto(addr1697);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1746);
                                                                                                                  }
                                                                                                                  §§goto(addr1380);
                                                                                                               }
                                                                                                               §§goto(addr1321);
                                                                                                            }
                                                                                                            §§goto(addr1694);
                                                                                                            §§push(b2Settings.b2_timeToSleep);
                                                                                                         }
                                                                                                         §§goto(addr1666);
                                                                                                      }
                                                                                                      addr1293:
                                                                                                   }
                                                                                                   §§goto(addr1395);
                                                                                                }
                                                                                                §§goto(addr1377);
                                                                                             }
                                                                                             §§goto(addr1381);
                                                                                          }
                                                                                          §§goto(addr1697);
                                                                                       }
                                                                                    }
                                                                                    addr1068:
                                                                                 }
                                                                                 §§goto(addr1267);
                                                                              }
                                                                              §§goto(addr1674);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc12_);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§goto(addr1255);
                                                                                 }
                                                                                 §§goto(addr1403);
                                                                              }
                                                                              §§goto(addr1264);
                                                                           }
                                                                           addr1249:
                                                                        }
                                                                        §§goto(addr1112);
                                                                     }
                                                                     break loop21;
                                                                  }
                                                                  break;
                                                               }
                                                               loop75:
                                                               while(true)
                                                               {
                                                                  §§push(this.§=!t§);
                                                                  if(_loc19_)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        if(_loc19_ || param3)
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc18_ && param2))
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§goto(addr1383);
                                                                                 addr1099:
                                                                              }
                                                                              §§goto(addr1138);
                                                                           }
                                                                           §§goto(addr1743);
                                                                        }
                                                                        §§goto(addr1395);
                                                                     }
                                                                     else if((_loc6_ = this.§?m§[_loc4_]).§ 5§() == b2Body.b2_staticBody)
                                                                     {
                                                                        if(!(_loc18_ && param3))
                                                                        {
                                                                           loop131:
                                                                           while(true)
                                                                           {
                                                                              _loc4_++;
                                                                              if(_loc19_ || param3)
                                                                              {
                                                                                 addr585:
                                                                                 if(_loc19_ || param3)
                                                                                 {
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          if(_loc19_ || param1)
                                                                                          {
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                if(_loc19_ || param3)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      continue loop75;
                                                                                                   }
                                                                                                   loop100:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc6_.§@!1§();
                                                                                                      addr617:
                                                                                                      while(_loc19_ || param3)
                                                                                                      {
                                                                                                         continue loop131;
                                                                                                      }
                                                                                                      addr1036:
                                                                                                      loop119:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_.§%!<§);
                                                                                                         if(!(_loc18_ && param1))
                                                                                                         {
                                                                                                            addr969:
                                                                                                            §§push(_loc6_.§%!<§);
                                                                                                            if(!(_loc18_ && param2))
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                  {
                                                                                                                     §§push(b2Settings.b2_maxTranslation);
                                                                                                                     if(!(_loc18_ && param3))
                                                                                                                     {
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           §§push(param1.§!!<§);
                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                           {
                                                                                                                              addr1011:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc19_ || param3)
                                                                                                                              {
                                                                                                                                 addr1019:
                                                                                                                                 §§pop().y = §§pop() * §§pop();
                                                                                                                                 loop120:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    loop121:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(param1.§?!C§);
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       addr919:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc18_ && param3))
                                                                                                                                          {
                                                                                                                                             addr927:
                                                                                                                                             §§push(0);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            §§push(b2Settings.b2_maxRotation);
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * param1.§!!<§);
                                                                                                                                                            }
                                                                                                                                                            §§pop().m_angularVelocity = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop120;
                                                                                                                                                               }
                                                                                                                                                               addr956:
                                                                                                                                                               addr1055:
                                                                                                                                                               while(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_.m_sweep);
                                                                                                                                                                     loop81:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().c0.SetV(_loc6_.m_sweep.c);
                                                                                                                                                                        loop82:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.m_sweep);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                                                                              addr792:
                                                                                                                                                                              addr748:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().a);
                                                                                                                                                                                 addr793:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().a0 = §§pop();
                                                                                                                                                                                    break loop100;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              loop87:
                                                                                                                                                                              for(; _loc19_ || param3; while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_ && param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop87;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr669);
                                                                                                                                                                                 §§goto(addr744);
                                                                                                                                                                              },§§goto(addr776))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop81;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop().c);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.m_sweep);
                                                                                                                                                                                    addr760:
                                                                                                                                                                                    addr669:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().c);
                                                                                                                                                                                       addr761:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                          if(_loc19_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param1.§?!C§);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_.§%!<§);
                                                                                                                                                                                                addr773:
                                                                                                                                                                                                addr733:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                   addr774:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      addr775:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr733:
                                                                                                                                                                                                if(!(_loc19_ || param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(!(_loc18_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_.m_sweep);
                                                                                                                                                                                                            continue loop87;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop111:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_.§%!<§);
                                                                                                                                                                                                            break loop119;
                                                                                                                                                                                                            addr1057:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().Normalize();
                                                                                                                                                                                                               continue loop111;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop82;
                                                                                                                                                                                                      addr777:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                                                                   if(!(_loc19_ || param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop87;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc6_.m_sweep);
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop().a);
                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param1.§?!C§);
                                                                                                                                                                                                      if(!(_loc18_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().a = §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop100;
                                                                                                                                                                                                         §§goto(addr585);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr658:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr793);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr792);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr776:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                             §§goto(addr777);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop().c);
                                                                                                                                                                                    if(_loc18_ && param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc6_.m_sweep);
                                                                                                                                                                                    if(_loc19_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().c);
                                                                                                                                                                                       if(_loc19_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          if(!(_loc18_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param1.§?!C§);
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_.§%!<§);
                                                                                                                                                                                                      if(!(_loc18_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                         if(!(_loc18_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr733);
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr774);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr773);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr775);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr733);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr776);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr741);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr761);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr760);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr761);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1057);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr818:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            §§push(b2Settings.b2_maxRotation);
                                                                                                                                                            if(!(_loc18_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  addr952:
                                                                                                                                                                  §§push(§§pop() * param1.§!!<§);
                                                                                                                                                               }
                                                                                                                                                               §§pop().m_angularVelocity = §§pop();
                                                                                                                                                               §§goto(addr956);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr952);
                                                                                                                                                         }
                                                                                                                                                         addr939:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         loop128:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            addr1041:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               addr1042:
                                                                                                                                                               loop102:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                  addr1043:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     addr1044:
                                                                                                                                                                     loop78:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        addr1045:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(b2Settings.b2_maxTranslationSquared);
                                                                                                                                                                           addr1047:
                                                                                                                                                                           addr1066:
                                                                                                                                                                           loop108:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc19_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() <= §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop121;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    addr1065:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       break loop108;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1064:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc10_ = §§pop();
                                                                                                                                                                              addr1067:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                 addr1039:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop128;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop78;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop102;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1040:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1055);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1044);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1047);
                                                                                                                                             }
                                                                                                                                             addr927:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1066);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr833:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.m_angularVelocity);
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             if(_loc19_ || param1)
                                                                                                                                             {
                                                                                                                                                if(_loc19_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc19_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(!(_loc18_ && param3))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               _loc11_ = §§pop();
                                                                                                                                                               if(!(_loc18_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     addr896:
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc19_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                           if(!(_loc18_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              addr914:
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr919);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr917:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr797);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1042);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr927);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1065);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1041);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr919);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr927);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1043);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr914);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.§%!<§);
                                                                                                                                                            addr1063:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1061:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1064);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr896);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1039);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1045);
                                                                                                                                          }
                                                                                                                                          §§goto(addr919);
                                                                                                                                       }
                                                                                                                                       §§goto(addr927);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1.§!!<§);
                                                                                                                              }
                                                                                                                              addr1031:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           continue loop119;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1011);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr1031);
                                                                                                                  }
                                                                                                                  addr1029:
                                                                                                               }
                                                                                                               §§goto(addr1019);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr1029);
                                                                                                               §§goto(addr969);
                                                                                                            }
                                                                                                            addr1028:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      while(_loc19_)
                                                                                                      {
                                                                                                         §§goto(addr1028);
                                                                                                         §§push(_loc6_.§%!<§);
                                                                                                         §§goto(addr1036);
                                                                                                      }
                                                                                                      §§goto(addr1057);
                                                                                                   }
                                                                                                   while(!_loc18_)
                                                                                                   {
                                                                                                      §§goto(addr748);
                                                                                                      §§push(_loc6_.m_sweep);
                                                                                                   }
                                                                                                   §§goto(addr939);
                                                                                                   addr794:
                                                                                                }
                                                                                                §§goto(addr1067);
                                                                                             }
                                                                                             §§goto(addr917);
                                                                                          }
                                                                                          §§goto(addr818);
                                                                                       }
                                                                                       §§goto(addr794);
                                                                                    }
                                                                                    §§goto(addr742);
                                                                                 }
                                                                                 §§goto(addr658);
                                                                              }
                                                                              §§goto(addr617);
                                                                           }
                                                                        }
                                                                        §§goto(addr827);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(param1.§?!C§);
                                                                        if(_loc19_ || param1)
                                                                        {
                                                                           §§push(_loc6_.§%!<§);
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(!(_loc18_ && param2))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc19_ || param2)
                                                                                    {
                                                                                       addr567:
                                                                                       _loc9_ = §§pop();
                                                                                       if(!(_loc18_ && this))
                                                                                       {
                                                                                          §§goto(addr1061);
                                                                                          §§push(param1.§?!C§);
                                                                                       }
                                                                                       §§goto(addr1067);
                                                                                    }
                                                                                    §§goto(addr833);
                                                                                 }
                                                                                 §§goto(addr1041);
                                                                              }
                                                                              §§goto(addr1040);
                                                                           }
                                                                           §§goto(addr1063);
                                                                        }
                                                                        §§goto(addr567);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr1393);
                                                               addr1076:
                                                            }
                                                            §§goto(addr509);
                                                         }
                                                         §§goto(addr1076);
                                                      }
                                                      §§goto(addr1293);
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                      if(_loc19_)
                                                      {
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(!_loc19_)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(this.§9f§);
                                                                     if(_loc19_ || this)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           (_loc7_ = this.§"!2§[_loc5_]).SolveVelocityConstraints(param1);
                                                                           if(_loc19_ || param1)
                                                                           {
                                                                              _loc5_++;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        if(!(_loc18_ && param3))
                                                                        {
                                                                           _loc8_.SolveVelocityConstraints();
                                                                           if(!(_loc18_ && param2))
                                                                           {
                                                                              _loc4_++;
                                                                              if(_loc19_)
                                                                              {
                                                                                 continue loop20;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1407);
                                                                           }
                                                                           §§goto(addr1697);
                                                                        }
                                                                        §§goto(addr1267);
                                                                     }
                                                                     break loop21;
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop21;
                                                            }
                                                         }
                                                         §§goto(addr1099);
                                                         addr391:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr1076);
                                                      }
                                                      §§goto(addr1279);
                                                   }
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!_loc18_)
                                                   {
                                                      §§goto(addr1249);
                                                   }
                                                   §§goto(addr1691);
                                                }
                                                else
                                                {
                                                   §§push((_loc7_ = this.§"!2§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte));
                                                   if(!_loc18_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc19_ || param1)
                                                      {
                                                         _loc14_ = §§pop();
                                                         if(!(_loc18_ && param3))
                                                         {
                                                            §§push(_loc13_);
                                                            if(!_loc18_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            loop23:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr1238:
                                                                     while(true)
                                                                     {
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc14_);
                                                                           if(_loc19_)
                                                                           {
                                                                              if(!_loc19_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!(_loc18_ && param3))
                                                                                 {
                                                                                    if(_loc18_ && param2)
                                                                                    {
                                                                                       continue loop24;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       addr1228:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc13_ = §§pop();
                                                                              do
                                                                              {
                                                                                 _loc5_++;
                                                                              }
                                                                              while(!(_loc19_ || param3));
                                                                              
                                                                              if(_loc18_)
                                                                              {
                                                                                 break loop27;
                                                                              }
                                                                              if(false)
                                                                              {
                                                                                 continue loop27;
                                                                              }
                                                                              §§goto(addr1239);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr1227);
                                                            }
                                                         }
                                                         §§goto(addr1238);
                                                      }
                                                      §§goto(addr1212);
                                                   }
                                                   §§goto(addr1228);
                                                }
                                             }
                                             §§goto(addr1674);
                                             addr1246:
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§9f§);
                                          if(_loc19_)
                                          {
                                             §§goto(addr1246);
                                          }
                                          §§goto(addr1683);
                                       }
                                    }
                                    §§goto(addr1249);
                                 }
                                 §§goto(addr1743);
                              }
                              §§goto(addr394);
                           }
                           §§goto(addr1683);
                        }
                        break;
                     }
                     _loc4_ = §§pop();
                     if(!(_loc18_ && param1))
                     {
                        §§goto(addr1723);
                     }
                     §§goto(addr1746);
                  }
                  §§goto(addr1723);
               }
               §§goto(addr391);
            }
            §§goto(addr1399);
         }
         §§goto(addr321);
      }
      
      public function §%!@§(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Boolean = false;
         var _loc11_:* = false;
         var _loc12_:* = false;
         if(_loc14_)
         {
            §§push(this.§[!§);
            if(_loc14_ || param1)
            {
               §§pop().§`!D§(param1,this.§"!V§,this.§,l§,this.§'!H§);
               addr55:
               §§push(this.§[!§);
            }
            var _loc4_:b2ContactSolver = §§pop();
            if(_loc14_ || param1)
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
                  §§push(this.§9f§);
                  if(!(_loc13_ && this))
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(!(_loc13_ && param1))
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
                                       if(!(_loc13_ && this))
                                       {
                                          if(_loc13_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(param1.§7q§);
                                          if(_loc14_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!(_loc13_ && _loc2_))
                                                {
                                                   if(!(_loc13_ && this))
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(0);
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr182:
                                                      while(true)
                                                      {
                                                      }
                                                      addr128:
                                                      if(!(_loc14_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(this.§9f§);
                                                      if(_loc14_)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               if(!(_loc13_ && this))
                                                               {
                                                                  _loc2_++;
                                                                  if(_loc14_)
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     addr171:
                                                                     if(!(_loc14_ || this))
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     _loc3_++;
                                                                  }
                                                                  addr775:
                                                                  §§push(0.75);
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc5_:* = §§pop();
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr1034:
                                                                     _loc2_ = 0;
                                                                     addr1035:
                                                                     §§push(_loc2_);
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(param1.§7!?§);
                                                                        if(!(_loc13_ && _loc2_))
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              if(_loc14_ || _loc3_)
                                                                              {
                                                                                 if(_loc14_ || _loc2_)
                                                                                 {
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          §§goto(addr819);
                                                                                       }
                                                                                       §§goto(addr989);
                                                                                    }
                                                                                    §§goto(addr848);
                                                                                 }
                                                                                 §§goto(addr846);
                                                                              }
                                                                              addr819:
                                                                              this.§7=§(_loc4_.§;!d§);
                                                                              if(!_loc14_)
                                                                              {
                                                                                 addr935:
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    addr874:
                                                                                    §§push(_loc3_);
                                                                                    if(_loc14_ || _loc3_)
                                                                                    {
                                                                                       addr885:
                                                                                       if(§§pop() >= this.§9f§)
                                                                                       {
                                                                                          addr886:
                                                                                          §§push(_loc10_);
                                                                                          if(_loc14_ || _loc3_)
                                                                                          {
                                                                                             if(!(_loc13_ && param1))
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(_loc14_ || param1)
                                                                                                {
                                                                                                   if(_loc14_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr920:
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr925:
                                                                                                                  if(!(_loc13_ && this))
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(_loc14_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                     }
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        if(_loc14_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr846:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr848:
                                                                                                                              if(_loc14_ || param1)
                                                                                                                              {
                                                                                                                                 if(!(_loc13_ && param1))
                                                                                                                                 {
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc13_ && param1))
                                                                                                                                       {
                                                                                                                                          addr871:
                                                                                                                                          §§goto(addr819);
                                                                                                                                       }
                                                                                                                                       addr1013:
                                                                                                                                       §§push(true);
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                          addr1016:
                                                                                                                                          if(_loc14_ || param1)
                                                                                                                                          {
                                                                                                                                             addr992:
                                                                                                                                             §§push(0);
                                                                                                                                             if(_loc14_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                _loc3_ = §§pop();
                                                                                                                                                §§goto(addr874);
                                                                                                                                                addr1010:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1034);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1035);
                                                                                                                                       }
                                                                                                                                       _loc10_ = §§pop();
                                                                                                                                       addr1032:
                                                                                                                                       §§goto(addr1032);
                                                                                                                                    }
                                                                                                                                    addr940:
                                                                                                                                    §§push(Boolean(_loc12_));
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       addr945:
                                                                                                                                       _loc11_ = Boolean(§§pop());
                                                                                                                                       if(_loc14_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          _loc3_++;
                                                                                                                                          §§goto(addr935);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1010);
                                                                                                                                       addr943:
                                                                                                                                    }
                                                                                                                                    §§goto(addr945);
                                                                                                                                    addr974:
                                                                                                                                 }
                                                                                                                                 §§goto(addr886);
                                                                                                                              }
                                                                                                                              §§goto(addr925);
                                                                                                                           }
                                                                                                                           _loc2_++;
                                                                                                                           §§goto(addr1034);
                                                                                                                        }
                                                                                                                        §§goto(addr1013);
                                                                                                                     }
                                                                                                                     §§goto(addr920);
                                                                                                                  }
                                                                                                                  §§goto(addr1016);
                                                                                                               }
                                                                                                               addr964:
                                                                                                               if(_loc14_ || _loc3_)
                                                                                                               {
                                                                                                                  addr972:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr973:
                                                                                                                     §§pop();
                                                                                                                     §§goto(addr974);
                                                                                                                  }
                                                                                                                  §§goto(addr943);
                                                                                                               }
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  _loc12_ = §§pop();
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(!(_loc13_ && param1))
                                                                                                                  {
                                                                                                                     §§goto(addr964);
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                  }
                                                                                                                  §§goto(addr973);
                                                                                                                  addr989:
                                                                                                               }
                                                                                                               §§goto(addr1013);
                                                                                                            }
                                                                                                            §§goto(addr945);
                                                                                                         }
                                                                                                         §§goto(addr846);
                                                                                                      }
                                                                                                      §§goto(addr972);
                                                                                                   }
                                                                                                   §§goto(addr940);
                                                                                                }
                                                                                                §§goto(addr920);
                                                                                             }
                                                                                             §§goto(addr973);
                                                                                          }
                                                                                          §§goto(addr920);
                                                                                       }
                                                                                       §§goto(addr964);
                                                                                       §§push(Boolean(this.§"!2§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte)));
                                                                                    }
                                                                                    §§goto(addr992);
                                                                                 }
                                                                                 §§goto(addr945);
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr1013);
                                                                           §§push(_loc4_.SolvePositionConstraints(_loc5_));
                                                                        }
                                                                        §§goto(addr885);
                                                                     }
                                                                     §§goto(addr874);
                                                                  }
                                                                  §§goto(addr871);
                                                               }
                                                               if(_loc14_)
                                                               {
                                                                  addr159:
                                                                  if(_loc14_)
                                                                  {
                                                                     addr124:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc14_)
                                                                        {
                                                                           §§goto(addr128);
                                                                        }
                                                                        addr772:
                                                                        if(§§pop() < this.§=!t§)
                                                                        {
                                                                           if((_loc6_ = this.§?m§[_loc2_]).§ 5§() == b2Body.b2_staticBody)
                                                                           {
                                                                              if(_loc14_)
                                                                              {
                                                                                 addr285:
                                                                                 _loc2_++;
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             if(_loc14_ || this)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   addr303:
                                                                                                   _loc6_.§@!1§();
                                                                                                   if(_loc14_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         §§goto(addr285);
                                                                                                      }
                                                                                                      addr620:
                                                                                                      §§push(_loc6_.m_angularVelocity);
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         addr625:
                                                                                                         if(§§pop() < 0)
                                                                                                         {
                                                                                                            addr626:
                                                                                                            §§push(_loc6_);
                                                                                                            §§push(b2Settings.b2_maxRotation);
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  addr634:
                                                                                                                  §§push(§§pop() * param1.§!!<§);
                                                                                                               }
                                                                                                               §§pop().m_angularVelocity = §§pop();
                                                                                                               addr473:
                                                                                                               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
                                                                                                               addr638:
                                                                                                               addr470:
                                                                                                               if(!(_loc13_ && _loc2_))
                                                                                                               {
                                                                                                                  addr466:
                                                                                                                  _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
                                                                                                                  addr465:
                                                                                                                  addr463:
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     addr435:
                                                                                                                     §§push(_loc6_.m_sweep);
                                                                                                                     if(!(_loc13_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr458:
                                                                                                                        addr446:
                                                                                                                        addr445:
                                                                                                                        addr443:
                                                                                                                        §§push(§§pop().c);
                                                                                                                        §§push(_loc6_.m_sweep.c.x);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           addr457:
                                                                                                                           §§push(param1.§?!C§);
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              addr456:
                                                                                                                              §§push(§§pop() * _loc6_.§%!<§.x);
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        addr376:
                                                                                                                        §§push(_loc6_.m_sweep);
                                                                                                                        if(_loc14_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop().c);
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.m_sweep);
                                                                                                                              if(!_loc13_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().c);
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(!(_loc13_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(param1.§?!C§);
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          if(_loc14_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.§%!<§);
                                                                                                                                             if(_loc14_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   addr425:
                                                                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                   if(_loc14_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      addr429:
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.m_sweep);
                                                                                                                                                         if(_loc14_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc13_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.m_sweep);
                                                                                                                                                               if(!(_loc13_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().a);
                                                                                                                                                                  if(_loc14_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§?!C§);
                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * _loc6_.m_angularVelocity);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc14_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().a = §§pop();
                                                                                                                                                                     addr366:
                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr303);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr638);
                                                                                                                                                                        }
                                                                                                                                                                        addr513:
                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr470);
                                                                                                                                                                        }
                                                                                                                                                                        addr705:
                                                                                                                                                                        §§push(param1.§?!C§);
                                                                                                                                                                        if(!(_loc13_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc14_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc14_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 addr540:
                                                                                                                                                                                 §§push(_loc6_.m_angularVelocity);
                                                                                                                                                                                 if(_loc14_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc14_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!(_loc13_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr567:
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             if(!(_loc13_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr575:
                                                                                                                                                                                                if(_loc14_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr584:
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      if(_loc14_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                                                                         if(!(_loc13_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr600:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(_loc14_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(b2Settings.b2_maxRotationSquared);
                                                                                                                                                                                                               if(_loc14_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr612:
                                                                                                                                                                                                                  if(!(_loc13_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr620);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr638);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr755:
                                                                                                                                                                                                                  if(§§pop() + §§pop() > b2Settings.b2_maxTranslationSquared)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr760:
                                                                                                                                                                                                                     _loc6_.§%!<§.Normalize();
                                                                                                                                                                                                                     addr725:
                                                                                                                                                                                                                     addr711:
                                                                                                                                                                                                                     addr709:
                                                                                                                                                                                                                     §§push(_loc6_.§%!<§);
                                                                                                                                                                                                                     §§push(_loc6_.§%!<§.x);
                                                                                                                                                                                                                     if(_loc14_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr724:
                                                                                                                                                                                                                        §§push(§§pop() * (b2Settings.b2_maxTranslation * param1.§!!<§));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                     if(_loc14_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc6_.§%!<§);
                                                                                                                                                                                                                        if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc6_.§%!<§);
                                                                                                                                                                                                                              if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(b2Settings.b2_maxTranslation);
                                                                                                                                                                                                                                    if(_loc14_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc14_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(param1.§!!<§);
                                                                                                                                                                                                                                          if(!(_loc13_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr689:
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(!(_loc13_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr697:
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(_loc14_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                   §§goto(addr705);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr725);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr724);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr689);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr697);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr711);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr760);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr709);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr739:
                                                                                                                                                                                                                        §§push(§§pop() * _loc7_);
                                                                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr755);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr769:
                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr745:
                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                        if(!(_loc13_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr753:
                                                                                                                                                                                                                           §§goto(addr755);
                                                                                                                                                                                                                           §§push(§§pop() * _loc8_);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     _loc8_ = §§pop();
                                                                                                                                                                                                                     addr770:
                                                                                                                                                                                                                     §§goto(addr770);
                                                                                                                                                                                                                     addr758:
                                                                                                                                                                                                                     addr761:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr705);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr625);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr620);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr612);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr753);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr745);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr612);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr600);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr620);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr567);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr739);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr575);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr769);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr612);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr567);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr429);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr466);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr465);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr473);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr376);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr626);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr458);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr456);
                                                                                                                                          }
                                                                                                                                          §§goto(addr457);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr425);
                                                                                                                                 }
                                                                                                                                 §§goto(addr446);
                                                                                                                              }
                                                                                                                              §§goto(addr445);
                                                                                                                           }
                                                                                                                           §§goto(addr443);
                                                                                                                        }
                                                                                                                        §§goto(addr435);
                                                                                                                        addr459:
                                                                                                                     }
                                                                                                                     §§goto(addr463);
                                                                                                                  }
                                                                                                                  §§goto(addr758);
                                                                                                               }
                                                                                                               §§goto(addr761);
                                                                                                            }
                                                                                                            §§goto(addr634);
                                                                                                         }
                                                                                                         §§push(_loc6_);
                                                                                                         §§push(b2Settings.b2_maxRotation);
                                                                                                         if(_loc14_ || param1)
                                                                                                         {
                                                                                                            §§push(§§pop() * param1.§!!<§);
                                                                                                         }
                                                                                                         §§pop().m_angularVelocity = §§pop();
                                                                                                         §§goto(addr513);
                                                                                                      }
                                                                                                      addr764:
                                                                                                      §§goto(addr745);
                                                                                                      §§push(_loc6_.§%!<§.y);
                                                                                                   }
                                                                                                   §§goto(addr466);
                                                                                                }
                                                                                                addr771:
                                                                                                §§goto(addr772);
                                                                                                §§push(_loc2_);
                                                                                             }
                                                                                             §§goto(addr760);
                                                                                          }
                                                                                          §§goto(addr473);
                                                                                       }
                                                                                       §§goto(addr459);
                                                                                    }
                                                                                    §§goto(addr366);
                                                                                 }
                                                                                 §§goto(addr303);
                                                                              }
                                                                              §§goto(addr626);
                                                                           }
                                                                           §§push(param1.§?!C§);
                                                                           if(_loc14_ || param1)
                                                                           {
                                                                              §§push(_loc6_.§%!<§);
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(!(_loc13_ && this))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc13_ && _loc3_))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc14_ || this)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             §§goto(addr764);
                                                                                             §§push(param1.§?!C§);
                                                                                          }
                                                                                          §§goto(addr473);
                                                                                       }
                                                                                       §§goto(addr745);
                                                                                    }
                                                                                    §§goto(addr612);
                                                                                 }
                                                                                 §§goto(addr584);
                                                                              }
                                                                              §§goto(addr764);
                                                                           }
                                                                           §§goto(addr540);
                                                                        }
                                                                        §§goto(addr775);
                                                                        §§goto(addr159);
                                                                     }
                                                                     addr124:
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr182);
                                                            }
                                                            §§goto(addr775);
                                                         }
                                                         this.§"!2§[_loc3_].SolveVelocityConstraints(param1);
                                                         §§goto(addr171);
                                                      }
                                                      §§goto(addr772);
                                                   }
                                                   addr188:
                                                }
                                                else
                                                {
                                                   addr122:
                                                   if(false)
                                                   {
                                                      §§goto(addr124);
                                                   }
                                                   §§goto(addr771);
                                                }
                                                §§goto(addr124);
                                             }
                                             else
                                             {
                                                _loc4_.SolveVelocityConstraints();
                                             }
                                             §§goto(addr188);
                                          }
                                          §§goto(addr772);
                                       }
                                       else
                                       {
                                          addr107:
                                          if(!(_loc14_ || _loc2_))
                                          {
                                             break;
                                          }
                                          _loc2_ = §§pop();
                                          if(!(_loc13_ && _loc3_))
                                          {
                                             §§goto(addr122);
                                          }
                                       }
                                       §§goto(addr775);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        this.§"!2§[_loc2_].InitVelocityConstraints(param1);
                     }
                     _loc2_++;
                     continue loop0;
                  }
                  §§goto(addr772);
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §7=§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:* = 0;
         if(_loc7_ || _loc2_)
         {
            if(this.§02§ == null)
            {
               if(!(_loc6_ && _loc2_))
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§,l§)
         {
            _loc3_ = this.§"!V§[_loc2_];
            _loc4_ = param1[_loc2_];
            if(!(_loc6_ && _loc2_))
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
                        §§push(_loc5_);
                        if(!_loc7_)
                        {
                           continue loop1;
                        }
                        if(§§pop() >= _loc4_.§%!3§)
                        {
                           if(_loc7_)
                           {
                              addr146:
                              if(_loc7_)
                              {
                                 if(_loc6_ && _loc2_)
                                 {
                                    continue loop2;
                                 }
                                 this.§02§.PostSolve(_loc3_,§for§);
                              }
                              while(true)
                              {
                                 _loc5_++;
                                 addr118:
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                              }
                              addr146:
                           }
                           do
                           {
                              _loc2_++;
                           }
                           while(!_loc7_);
                           
                           if(_loc7_)
                           {
                              if(_loc7_ || _loc2_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(§for§);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    break;
                                 }
                                 addr151:
                                 while(true)
                                 {
                                    §§pop().§]Q§[_loc5_] = _loc4_.§+"§[_loc5_].normalImpulse;
                                    continue loop5;
                                 }
                              }
                              §§pop().§5!K§[_loc5_] = _loc4_.§+"§[_loc5_].tangentImpulse;
                              §§goto(addr146);
                           }
                           §§goto(addr118);
                        }
                        else
                        {
                           §§push(§for§);
                        }
                        §§goto(addr151);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr146);
         }
      }
      
      public function §`!n§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            param1.§-!_§ = this.§=!t§;
         }
         var _loc2_:* = this.§=!t§++;
         this.§?m§[_loc2_] = param1;
      }
      
      public function §4N§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§,l§++;
         this.§"!V§[_loc2_] = param1;
      }
      
      public function §8!c§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§9f§++;
         this.§"!2§[_loc2_] = param1;
      }
   }
}
